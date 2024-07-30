import 'package:flutter/material.dart';

class AppColors{
  //dark bg colors
 static const Color neutralWeight900Color=Color(0xff191D2B);
 static const Color darkBgWeight800Color=Color(0xff21273B);
 static const Color darkBgWeight700Color=Color(0xff121F3E);
 static const Color darkBgWeight600Color=Color(0xff697896);
 static const Color neutralWeight500Color=Color(0xff96A0B5);


 //ligh bg colors
 static const Color whiteBgColor=Color(0xffFFFFFF);
 static const Color lightBgWeight50Color=Color(0xffF3F7F9);
 static const Color neutralWeight100Color=Color(0xffF6F7F8);
 static const Color neutralWeight200Color=Color(0xffE8EAEE);
 static const Color lightBgWeight300Color=Color(0xffD0D5DC);
 static const Color lightBgWeight400Color=Color(0xffB6BEC9);

 //additional colors
 static const Color blueColor=Color(0xff5599F5);
 static const Color darkerorangeColor=Color(0xffFD7722);
 static const Color lightOrangecolor=Color(0xffFEDFCC);
 static const Color pinkColor=Color(0xffE84C88);
 static const Color greenColor=Color(0xff5ECEB3);
 static const Color purpleColor=Color(0xffD08CDF);


 //background colors
 static const Color darkBgColor=Color(0xff111111);
 static const Color lightWeight400BgColor=Color(0xff707070);
 static const Color lightWeight300BgColor=Color(0xffB7B7B7);
 static const Color lightWeight200BgColor=Color(0xffE7E7E7);
 static const Color lightWeight100BgColor=Color(0xffF3F3F3);


 //diamond Gradient 
 static const LinearGradient diamondGradient=LinearGradient(
  colors: [
    Color(0xff3A9ADE),
    Color(0xff5EACE4)
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight
 );


 //completed gradiant
 static const LinearGradient completedGradient=LinearGradient(
  colors: [
    Color(0xff3F8B8D),
    Color(0xff58B2B4)
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight
 );

 //cancelled gradiant
 static const LinearGradient cancelledGradient=LinearGradient(
  colors: [
    Color(0xffDD4A4A),
    Color(0xffE87777)
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,

 );





}