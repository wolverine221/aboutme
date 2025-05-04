import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

class Constants {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

//////////////////////////////////////////////


class WebPrimary {
  static const Color kPrimaryColor = Color.fromARGB(255, 21, 20, 20);
  static const Color kDarkColor = Color.fromARGB(255, 222, 213, 211);
  static const Color kwhiteColor = Color.fromARGB(255, 255, 255, 255);


}


////////////////////////////////////////////////


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.h,
    required this.Pageclick,
    required this.w,
    required this.text,
    this.clr =Colors.transparent,
    this.textcolor =WebPrimary.kDarkColor,
    this.fontSize = 22,
  });

  final double h;
  final Color clr;
  final Color textcolor;
  final double w;
  final String text;
  final double fontSize;
  final Widget Pageclick;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: GestureDetector(
        onTap: (){
          Get.to(Pageclick);
        },
        child:
        SizedBox(
          width: w/9.3,
          height: h/15.7,
          child:
          // AnimatedButton.strip(
          //   width: 200,
          //   height: 70,
          //   text: 'SUBMIT',
          //   isReverse: true,
          //   selectedTextColor: Colors.black,
          //   stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
          //   selectedBackgroundColor: Colors.white,
          //   textStyle: GoogleFonts.nunito(
          //       fontSize: 28,
          //       letterSpacing: 5,
          //       color: Colors.white,
          //       fontWeight: FontWeight.w300), onPress: () {  },
          // ),
          NeoPopButton(
            topShadowColor: WebPrimary.kwhiteColor,
            bottomShadowColor: WebPrimary.kwhiteColor,
            leftShadowColor: WebPrimary.kwhiteColor,
            rightShadowColor: WebPrimary.kwhiteColor,
            color: WebPrimary.kDarkColor,
            onTapUp: () => HapticFeedback.vibrate(),
            onTapDown: () => HapticFeedback.vibrate(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(text,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fingerPaint(fontSize: fontSize, color: WebPrimary.kPrimaryColor),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



////////////////////////////////////////////


AnimatedButton Option(double fontSizemore,String text) {
  return AnimatedButton(
    height: 50,
    width: 250,
    text: text,
    textStyle: GoogleFonts.spaceGrotesk(
        fontSize: fontSizemore, color: Colors.white),
    isReverse: true,
    selectedTextColor: Colors.black,
    transitionType: TransitionType.LEFT_TO_RIGHT,
    backgroundColor: Colors.black,
    borderColor: Colors.white,
    borderRadius: 50,
    borderWidth: 2, onPress: () {  },
  );
}

