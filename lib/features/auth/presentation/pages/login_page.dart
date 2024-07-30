import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/features/auth/presentation/widgets/custom_login_form_widget.dart';
import 'package:tasky/features/auth/presentation/widgets/dont_have_account_widget.dart';
import 'package:tasky/features/auth/presentation/widgets/top_login_text_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SafeArea(
        child: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24).w,
              child:   Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                //build top text login , sign in to your account
                const TopLoginTextWidget(),
                
            
                //login form email/username , password
                const LoginFormWidget(),
              30.verticalSpace,
                //dont have an account
                const DontHaveAccountWidget()
            
               ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
