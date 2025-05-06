import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/constants/app_textstyle.dart';

import '../../constants/app_colors.dart';
import '../widget/custombuttonmini.dart';
import '../widget/widget.dart';

class LandingWebPage extends StatefulWidget {
  const LandingWebPage({super.key});

  @override
  State<LandingWebPage> createState() => _LandingWebPageState();
}

class _LandingWebPageState extends State<LandingWebPage> {
  final Constants constants = Constants();
  final ConstantWidget widgetConstant = ConstantWidget();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            widgetConstant.BoxWidget(
              size,
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: const Align(
                        alignment: Alignment.bottomRight,
                        child: CustomButton()),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'RIZVIN K SALIM',
                              style: AppTextStyles.xxlBold.copyWith(
                                  color: AppColors.neutral, fontSize: 40.sp),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'MOBILE APP DEVELOPER\n'
                              'SPECIALIZED IN FLUTTER FRAMEWORK\n'
                              'WITH UI/UX DESIGN EXPERTISE\n'
                              'AND CREATIVE TECH SOLUTIONS',
                              style: AppTextStyles.xxlMedium.copyWith(
                                color: AppColors.neutral,
                                height:
                                    1.4, // Optional: for better spacing between lines
                              ),
                              textAlign:
                                  TextAlign.left, // or center based on layout
                            ),
                            Spacer(),
                            widgetConstant.bulletPoints("iOS & Android App Development"),
                            widgetConstant.bulletPoints(
                                "Cross-Platform Development with Flutter"),
                            widgetConstant.bulletPoints("Expert in UI/UX Design"),
                            widgetConstant.bulletPoints("Proficient in Figma for Prototyping"),
                            widgetConstant.bulletPoints("State Management (BLoC, gRPC)"),
                            widgetConstant.bulletPoints("API Integration & RESTful Services"),
                            widgetConstant.bulletPoints("Version Control with Git & GitHub"),
                            widgetConstant.bulletPoints(
                                "Graphic & Video Editing (Adobe, Premiere Pro)"),
                            widgetConstant.bulletPoints(
                                "Photography & Creative Content Creation"),
                            widgetConstant.bulletPoints(
                                "Attention to Detail & User-Centered Design"),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Expanded(
                        child: Image.asset('asset/images/dpimage.png')),
                  ),
                  Spacer(),
                  //AnimatedProfileImage(scrollController: _scrollController,containerSize: size,),
                ],
              ),
            ),

            // Projects Section with Pixel Grid
            Padding(
              padding: EdgeInsets.all(25.r),
              child: Container(
                height: size.height,
                decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PROJECTS',
                      style: GoogleFonts.spaceMono(
                        fontSize: isMobile ? 32 : 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset("asset/images/mobile uiremove.png"),
                    // Pixel grid projects
                    if (isMobile) ...[
                      _PixelProjectCard(
                        title: 'Mobile UI Design',
                        description:
                            'VISA card interface with installment payments',
                        image: 'assets/images/mobileui1.png',
                      ),
                      const SizedBox(height: 30),
                      _PixelProjectCard(
                        title: 'Card Design',
                        description:
                            'Platinum Visa card customization interface',
                        image: 'assets/images/mobileui2.jpeg',
                      ),
                    ] else
                      Row(
                        children: const [
                          Expanded(
                            child: _PixelProjectCard(
                              title: 'Mobile UI Design',
                              description:
                                  'VISA card interface with installment payments',
                              image: 'asset/images/mobileui1.png',
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            child: _PixelProjectCard(
                              title: 'Card Design',
                              description:
                                  'Platinum Visa card customization interface',
                              image: 'assets/mobileui2.jpeg',
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),

            // Cultural Influences Section
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : size.width * 0.1,
                vertical: 80,
              ),
              // color: AppColors.primary.withOpacity(0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CULTURAL INFLUENCES',
                    style: GoogleFonts.spaceMono(
                      fontSize: isMobile ? 32 : 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'STYLE TRENDS ARE INFLUENCED BY THE CULTURES.\n\nWhen they write that the name of a historical hero they mean woman',
                    style: GoogleFonts.spaceMono(
                      fontSize: isMobile ? 16 : 20,
                      color: Colors.white70,
                      height: 1.8,
                    ),
                  ),
                  const SizedBox(height: 60),
                  // Pixel art grid
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isMobile ? 3 : 6,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: isMobile ? 9 : 18,
                    itemBuilder: (context, index) {
                      return Container(
                        color: [
                          Colors.red,
                          Colors.blue,
                          Colors.green,
                          Colors.yellow,
                          Colors.purple,
                          Colors.orange,
                        ][index % 6]
                            .withOpacity(0.7),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Contact Section
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : size.width * 0.1,
                vertical: 80,
              ),
              color: AppColors.primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CONTACT',
                    style: GoogleFonts.spaceMono(
                      fontSize: isMobile ? 32 : 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'For collaborations and projects inspired by cultural trends and pixel art aesthetics.',
                    style: GoogleFonts.spaceMono(
                      fontSize: isMobile ? 16 : 20,
                      color: Colors.white70,
                      height: 1.8,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'email@example.com',
                    style: GoogleFonts.spaceMono(
                      fontSize: isMobile ? 18 : 24,
                      color: const Color(0xFF4FC3F7),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}

class _PixelProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const _PixelProjectCard({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white30, width: 2),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: GoogleFonts.spaceMono(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: GoogleFonts.spaceMono(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
