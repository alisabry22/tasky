import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/features/Project/presentation/widgets/custom_project_dash_widget.dart';
import 'package:tasky/features/Project/presentation/widgets/productivity_widget.dart';
import 'package:tasky/features/auth/presentation/widgets/custom_login_text_field.dart';
import 'package:tasky/shared/widgets/custom_app_bar.dart';
import 'package:tasky/shared/widgets/custom_button.dart';
import 'package:tasky/utils/colors.dart';

class ProjectSummaryPage extends StatelessWidget {
  const ProjectSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWeight100Color,
      appBar: customAppBar("Project Summary"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24).w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(
                          color: AppColors.neutralWeight200Color,
                          thickness: 1.5,
                        ),
                        10.verticalSpace,
                        CustomLoginTextFieldWidget(
                            labelText: "Search",
                            suffix: const Icon(Icons.search),
                            onChanged: (value) {},
                            hintText: "Search project here"),
                        15.verticalSpace,
                        //projects dashboard
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //in progress
                            CustomProjectDashWidget(
                              gradient: AppColors.diamondGradient,
                              projectTitle: "Project in Progress",
                              total: "10",
                              iconPath:"assets/svg/clock.svg",
                            ),
                            //completed
                            CustomProjectDashWidget(
                              gradient: AppColors.completedGradient,
                              projectTitle: "Project Completed",
                              total: "10",
                           iconPath:"assets/svg/verify.svg",
                            ),
          
                            //cancelled
                            CustomProjectDashWidget(
                              gradient: AppColors.cancelledGradient,
                              projectTitle: "Project in Progress",
                              total: "10",
                              iconPath:"assets/svg/close-circle.svg",
                            ),
                          ],
                        ),
          
                        20.verticalSpace,
          
                        //view all projects
                        CustomElevatedButton(
                          btnText: "View All Projects",
                          onPressed: () {},
                          btnColor: AppColors.whiteBgColor,
                          borderColor: AppColors.neutralWeight900Color,
                          textColor: AppColors.neutralWeight900Color,
                        ),
                        20.verticalSpace,
                        //productivity
                      ],
                    ),
                  ),
                  const ProductivityWidget(),
                ],
              )),
        ),
      ),
    );
  }
}



//p