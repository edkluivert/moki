import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moki/config/pallete.dart';
import 'package:moki/core/model/episode.dart';
import 'package:moki/core/model/movie.dart';
import 'package:moki/features/details/components/back_drop.dart';

import 'components/episodes_card.dart';

class DetailScreen extends StatefulWidget{

  final Movie movie;

  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  _DetailState createState() => _DetailState();

}

class _DetailState extends State<DetailScreen>{

  @override
  Widget build(BuildContext context) {

    double _rating = 3.5;

    return Scaffold(
      backgroundColor: mPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackDrop(key: null, movie: widget.movie),
            Container(
              height: 710.h,
              color: mPrimaryColor,
              child: Padding(
                padding:EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    SizedBox(height: 5.h,),
                    Text(widget.movie.title, style: GoogleFonts.poppins(
                      color: Colors.white,
                       fontSize: 24.sp,
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 5.h,),
                    Text(widget.movie.genre, style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w300,
                    ),),
                    SizedBox(height: 5.h,),
                    GFRating(
                      value: _rating,
                      size: 20,
                      color: nRatingColorBg,
                      onChanged: (value) {
                        setState(() {
                          _rating = value;},
                        );
                      },
                    ),
                    SizedBox(height: 36.h,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Episodes",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp
                       ),
                      )
                    ),
                    SizedBox(height: 10.h,),
                    SizedBox(
                      width: double.infinity,
                      height: 200.h,
                      child: ListView.separated(
                        itemCount: 3,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 10.w,
                          );
                        },
                        itemBuilder: (context, index){
                          return EpisodeCard(
                            episode: episodes[index],
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(height: 36.h,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Plot",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 24.sp
                        ),
                        )
                    ),
                    SizedBox(height:10.h,), Text(
                      widget.movie.plot,style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp
                    ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ) ,
    );
  }
}