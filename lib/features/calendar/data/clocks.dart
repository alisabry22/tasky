import 'package:flutter/material.dart';
import 'package:tasky/utils/colors.dart';

class Clock {
  static List<String> hours = [
    "09.00",
    "10.00",
    "10.40",
    "11.00",
    "12.00",
    "13.00",
  ];

  static List<Meeting> meetings = [
    Meeting(
        from: "09.00",
        to: "10.00",
        title: "Sprint Review Period 02 in May 2022",
        time: "09:00 AM - 10:00 AM",
        cardColor: const Color(0xffF9F1FB),
        starterCardColor: AppColors.purpleColor),
    Meeting(
        from: "11.00",
        to: "12.00",
        title: "Meeting with client",
        time: "11:00 AM - 12:00 AM",
        cardColor: const Color(0xffFEDFCC),
        starterCardColor: AppColors.darkerorangeColor
        ),
    Meeting(
        from: "12.00",
        to: "12.30",
        title: "Daily Standup",
        time: "12:00 AM - 12:30 PM",
        cardColor: const Color(0xffEBF9F5),
        starterCardColor: AppColors.greenColor
        
        ),
  ];
}

class Meeting {
  String from;
  String to;
  String title;
  String time;
  Color cardColor;
  Color starterCardColor;

  Meeting(
      {required this.title,
      required this.cardColor,
      required this.starterCardColor,
      required this.time,
      required this.from,
      required this.to});
}
