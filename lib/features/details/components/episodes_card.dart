import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moki/config/pallete.dart';
import 'package:moki/core/model/episode.dart';

class EpisodeCard extends StatelessWidget{

   final Episode episode;

  const EpisodeCard({Key? key, required this.episode}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: mPrimaryColor.withBlue(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r)
      ),
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120.w,
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(episode.thumbNail),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 120.h,
            child: Text(episode.numbering, style: GoogleFonts.poppins(
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.w300
            ),),
          ),
       Positioned(
         top: 150.h,
            child: Text(episode.title, style: GoogleFonts.poppins(
                fontSize: 12.sp,
                color: mGreyTextColor,
                fontWeight: FontWeight.w300
            ),),
          )
        ],
      ),
    );
  }

}