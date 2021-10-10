import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moki/config/pallete.dart';
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
                    colors: [mPrimaryColor, Colors.black12.withOpacity(0.5)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ).createShader(bounds),
              blendMode: BlendMode.darken,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.r),
                      bottomLeft: Radius.circular(30.r)),
                  image: DecorationImage(
                    image: AssetImage(movie.backdrop),
                    fit: BoxFit.cover,
                   // colorFilter: const ColorFilter.mode(Colors.black45, BlendMode.darken),
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
                height: MediaQuery.of(context).size.height * 0.05,

                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.r),
                      bottomLeft: Radius.circular(30.r)),
                ),
              ),
              ),
            ),
          ),
          Positioned(
              top: 280.h,
              left: 170.w,
              right: 170.w,
              child: Container(
                width: 53.w,
                height: 53.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF3B30),

                ),
                child: IconButton(onPressed: (){

                }, icon: const Icon(Icons.play_arrow, color: Colors.white, size: 25,)),
              )),
          Positioned(
              top: 100.h,
              left: 350.w,
              //right: 32.w,
              child: SvgPicture.asset(
                'assets/icons/fav.svg',
                width: 26.w,
                height: 26.h,
              )),
          Positioned(
              top: 90.h,
              left: 42.w,
              child: Container(
                   width: 40.w,
                  height: 36.w,
                 color: Colors.white.withOpacity(0.12),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: IconButton(onPressed: (){

                    }, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 20,)),
                  )))
        ],
      ),
    );
  }
}
