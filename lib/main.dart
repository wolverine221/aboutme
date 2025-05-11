import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/presentation/design/screens/homepage.dart';
import 'package:portfolio/presentation/screens/landingmobile.dart';
import 'package:portfolio/presentation/screens/landingweb.dart';

import 'constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 736),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Portfolio',
          theme: ThemeData(
            textTheme: GoogleFonts.spaceGroteskTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          darkTheme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.spaceGroteskTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const PortfolioWebPage();
              } else {
                return const PortfolioWebPage();
              }
            },
          ),
        );
      },
    );
  }
}
