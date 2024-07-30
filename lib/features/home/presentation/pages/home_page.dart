import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:tasky/features/Project/presentation/pages/project_summary_page.dart';
import 'package:tasky/features/calendar/presentation/pages/calendar_page.dart';
import 'package:tasky/features/home/presentation/logic/bottomNav/bottom_nav_cubit.dart';
import 'package:tasky/features/home/presentation/pages/first_nav_screen.dart';
import 'package:tasky/features/home/presentation/widgets/calendar_widget.dart';
import 'package:tasky/shared/widgets/custom_button.dart';
import 'package:tasky/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateTime _currentMonth = DateTime.now();

  @override
  void initState() {
    initializeDateFormatting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom nav bar
      body: PersistentTabView(
          onTabChanged: (value) {
            context.read<BottomNavCubit>().onBottomNavChange(value);
          },
          tabs: [
            PersistentTabConfig(
              screen: const FirstNavScreen(),
              item: ItemConfig(
                icon: SvgPicture.asset("assets/svg/category.svg"),
              ),
            ),
            PersistentTabConfig(
              screen: const ProjectSummaryPage(),
              item: ItemConfig(
                icon: BlocBuilder<BottomNavCubit, BottomNavState>(
                  builder: (context, state) {
                    return state.navIndex == 1
                        ? SvgPicture.asset("assets/svg/dark_folder.svg")
                        : SvgPicture.asset("assets/svg/Folder.svg");
                  },
                ),
              ),
            ),
            PersistentTabConfig.noScreen(
              onPressed: (context) {
                _showOpenCalendarDialog(context);
              },
              item: ItemConfig(
                activeForegroundColor: AppColors.neutralWeight900Color,
                activeColorSecondary: AppColors.whiteBgColor,
                iconSize: 32.w,
                icon: const Icon(
                  Icons.add,
                  color: AppColors.whiteBgColor,
                ),
              ),
            ),
            PersistentTabConfig(
              screen: const CalendarPage(),
              item: ItemConfig(
                icon: BlocBuilder<BottomNavCubit, BottomNavState>(
                  builder: (context, state) {
                    return state.navIndex == 3
                        ? SvgPicture.asset("assets/svg/dark_calendar.svg")
                        : SvgPicture.asset("assets/svg/calendar.svg");
                  },
                ),
              ),
            ),
            PersistentTabConfig(
              screen: const FirstNavScreen(),
              item: ItemConfig(
                icon: Image.asset("assets/pictures/Memoji 2.png"),
              ),
            ),
          ],
          navBarBuilder: (navBarConfig) => Style13BottomNavBar(
                navBarConfig: navBarConfig,
                navBarDecoration: NavBarDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(24).r,
                    topRight: const Radius.circular(24).r,
                  ),
                  color: AppColors.whiteBgColor,
                ),
              )),
    );
  }

  _showOpenCalendarDialog(BuildContext context) {
    //show picker dialog for open calendar
    return showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        builder: (
          context,
        ) {
          return Container(
            height: 603.h,
            width: 1.sw,
            decoration: BoxDecoration(
              color: AppColors.whiteBgColor,
              borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))
                  .r,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(
                        "Choose Date",
                        style: TextStyle(
                            color: AppColors.neutralWeight900Color,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: AppColors.neutralWeight900Color,
                          ))
                    ],
                  ),
                  15.verticalSpace,
                  //divider
                  const Divider(
                    color: AppColors.neutralWeight200Color,
                    thickness: 1.5,
                  ),
                  SizedBox(
                      width: 327.w,
                      height: 368.h,
                      child: CalendarWidget(
                        currentMonth: _currentMonth,
                      )),

                  //     _buildSingleDatePickerWithValue(context),
                  const Divider(
                    color: AppColors.neutralWeight200Color,
                    thickness: 1.5,
                  ),
                  15.verticalSpace,
                  //custom button
                  CustomElevatedButton(
                    btnSize: Size(327.w, 56.h),
                    onPressed: () {},
                    btnText: "Continue",
                    btnColor: AppColors.neutralWeight900Color,
                    textColor: AppColors.whiteBgColor,
                  ),
                ]),
          );
        });
  }
}
