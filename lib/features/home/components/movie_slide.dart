import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moki/core/model/movie.dart';
import 'package:moki/features/home/components/movie_card.dart';

class MovieSlide extends StatefulWidget {
  const MovieSlide({Key? key}) : super(key: key);

  @override
  _MovieSlideState createState() => _MovieSlideState();
}

class _MovieSlideState extends State<MovieSlide> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      // so that we can have small portion shown on left and right side
      viewportFraction: 0.8,
      // by default our movie poster
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: const ClampingScrollPhysics(),
          itemCount: movies.length, // we have 3 demo movies
          itemBuilder: (context, index) => buildMovieSlider(index),
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child) {
      double value = 0;
      if (_pageController.position.haveDimensions) {
        value = index - _pageController.page!;
        // We use 0.038 because 180*0.038 = 7 almost and we need to rotate our poster 7 degree
        // we use clamp so that our value vary from -1 to 1
        value = (value * 0.038).clamp(-1, 1);
      }
      return AnimatedOpacity(
        duration: const Duration(milliseconds: 350),
        opacity: initialPage == index ? 1 : 0.4,
        child: Transform.rotate(
          angle: 3.14 * value,
          child: MovieCard(movie: movies[index], key: null,),
        ),
      );
    },
  );
}