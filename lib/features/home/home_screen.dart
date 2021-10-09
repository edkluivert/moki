import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moki/config/pallete.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moki/features/home/components/movie_slide.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: Column(
                children: [
                  SizedBox(height : 20.h),
                  SizedBox(
                    height: 61.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text.rich(TextSpan(
                                 children: [
                                   TextSpan(text: "Hello", style: GoogleFonts.poppins(
                                     fontSize: 24.sp,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.white
                                   )),
                                   TextSpan(text: " Daisy!", style: GoogleFonts.poppins(
                                       fontSize: 24.sp,
                                       fontWeight: FontWeight.w300,
                                       color: Colors.white)),
                                 ]
                               )),
                              Text("Check for latest addition.",  style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: mGreyTextColor))
                            ],
                          ),
                           Image.asset('assets/images/avatar.png', width: 53.w , height: 53.h,)
                      ],
                    ),
                  ),
                  SizedBox(height: 36.h,),
                  SizedBox(
                    height: 51.w,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          contentPadding: const EdgeInsets.all(10.0),
                          hintStyle: GoogleFonts.poppins(
                              color: mGreyDarkColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: SizedBox(
                            width: 60.w,
                            child: Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("|", style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: mGreyDarkColor,
                                    fontSize: 24.sp
                                  ),),
                                  SvgPicture.asset('assets/icons/mic.svg', width: 20.w,height: 20.h,color: mGreyDarkColor,),
                                ],
                              ),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r),
                              borderSide: BorderSide.none),
                          fillColor: mGreyDarkColor.withOpacity(0.12),
                          filled: true),
                    ),
                  ),
                  SizedBox(height: 36.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Filters", style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),),
                  ),
                  SizedBox(height: 16.h,),
                  SizedBox(
                    height: 120.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap:(){},
                              borderRadius: BorderRadius.circular(15.r),
                              child: Container(
                                height : 70.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: mGreyTextColor,
                                  borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/genre.svg',width: 30.w, height: 30.h,),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Center(
                              child: Text("Genre", style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap:(){},
                              borderRadius: BorderRadius.circular(15.r),
                              child: Container(
                                height : 70.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: mGreyTextColor,
                                    borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/fav.svg',width: 30.w, height: 30.h,),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Center(
                              child: Text("Top IMDB", style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap:(){},
                              borderRadius: BorderRadius.circular(15.r),
                              child: Container(
                                height : 70.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: mGreyTextColor,
                                    borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/language.svg',width: 30.w, height: 30.h,),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Center(
                              child: Text("Language", style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap:(){},
                              borderRadius: BorderRadius.circular(15.r),
                              child: Container(
                                height : 70.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    color: mGreyTextColor,
                                    borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/watched.svg',width: 30.w, height: 30.h,),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Center(
                              child: Text("Watched", style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 36.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(TextSpan(
                        children: [
                          TextSpan(text: "Featured", style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          )),
                          TextSpan(text: " Series", style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.white)),
                        ]
                    )),
                  ),
                  const MovieSlide(),
                ],
              ),
            ),
          ),
        ),
    );
  }

}