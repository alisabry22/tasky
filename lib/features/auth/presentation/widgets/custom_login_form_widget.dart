import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasky/features/auth/presentation/logic/bloc/login_bloc.dart';
import 'package:tasky/features/auth/presentation/widgets/custom_login_text_field.dart';
import 'package:tasky/features/home/presentation/pages/home_page.dart';
import 'package:tasky/shared/widgets/custom_button.dart';
import 'package:tasky/utils/colors.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //login form email/username
        CustomLoginTextFieldWidget(
          labelText: "Username / Email",
          hintText: "Enter username or email here",
          onChanged: (p0) => context
              .read<LoginBloc>()
              .add(UserNameEmailChanged(userNameEmail: p0)),
        ),
        10.verticalSpace,
        //login form password
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return CustomLoginTextFieldWidget(
                labelText: "Password",
                hintText: "Enter password here",
                obscureText: !state.passwordVisible,
                onChanged: (p0) {
                  context.read<LoginBloc>().add(PasswordChanged(password: p0));
                },
                suffix: InkWell(
                    onTap: () {
                      context.read<LoginBloc>().add(ChangePasswordVisibility());
                    },
                    child: state.passwordVisible
                        ? SvgPicture.asset("assets/svg/eye.svg")
                        : SvgPicture.asset("assets/svg/eye-slash.svg")));
          },
        ),

        //forget password
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                  color: AppColors.neutralWeight900Color,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        14.verticalSpace,
        BlocBuilder<LoginBloc, LoginState>(

          builder: (context, state) {
            return CustomElevatedButton(
              onPressed:state.username!=null && state.username!.isNotEmpty && state.password!=null && state.password!.isNotEmpty ? () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              }:null,
              btnText: "Login",
            );
          },
        ),
        30.verticalSpace,
        //login with social
        Align(
            alignment: Alignment.center,
            child: Text(
              "Or login with account",
              style: TextStyle(
                  color: AppColors.neutralWeight500Color,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            )),
        30.verticalSpace,
        //social logins
        const CustomSocialLogin(
          iconPath: "assets/svg/Google.svg",
          text: "Continue with Google",
        ),
        15.verticalSpace,

        const CustomSocialLogin(
          iconPath: "assets/svg/Facebook.svg",
          text: "Continue With Facebook",
        ),
        15.verticalSpace,
        const CustomSocialLogin(
          iconPath: "assets/svg/Apple.svg",
          text: "Continue with Apple",
        ),
      ],
    );
  }
}

class CustomSocialLogin extends StatelessWidget {
  final String text;
  final String iconPath;
  const CustomSocialLogin({
    super.key,
    required this.iconPath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 327.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8).r,
          border: Border.all(
            color: AppColors.neutralWeight200Color,
            width: 1.5,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            const Spacer(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.neutralWeight900Color,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
