import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/config/app_theme.dart';
import 'package:tasky/features/auth/presentation/logic/bloc/login_bloc.dart';
import 'package:tasky/features/auth/presentation/pages/login_page.dart';
import 'package:tasky/features/home/presentation/logic/bottomNav/bottom_nav_cubit.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => BottomNavCubit(),
      ),
      BlocProvider(
        create: (context) => LoginBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const LoginPage(),
      ),
    );
  }
}
