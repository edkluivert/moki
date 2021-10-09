import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moki/core/model/movie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackDrop extends StatelessWidget {
  final Movie movie;

  const BackDrop({required Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Stack(
        children: [
          ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                    colors: [Colors.black, Colors.black12.withOpacity(0.5)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ).createShader(bounds),
              blendMode: BlendMode.darken,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(movie.backdrop),
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(Colors.black45, BlendMode.darken),
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
             left: 0,
            right: 0,
            child: ClipRect(
              child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.transparent,
              ),
              ),
            ),
          ),
          Positioned(
              top: 250.h,
              left: 170.w,
              right: 170.w,
              child: SvgPicture.asset(
                'assets/icons/play.svg',
                width: 53.w,
                height: 53.h,
              ))
        ],
      ),
    );
  }
}
