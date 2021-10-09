import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moki/config/constants.dart';
import 'package:moki/config/pallete.dart';
import 'package:moki/core/model/movie.dart';
import 'package:animations/animations.dart';
import 'package:moki/features/details/detail_screen.dart';


class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({required Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: OpenContainer(
        closedColor: mPrimaryColor,
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildMovieCard(context),
        openBuilder: (context, action) => DetailScreen(movie: movie),
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 400.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            boxShadow: const [mDefaultShadow],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(movie.poster),
            ),
          ),
        ),
      ],
    );
  }
}