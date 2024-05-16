import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/constant.dart';
import 'LandingMobile.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {

  double _getFontSize(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) {
      return 8.0;
    } else if (width > 480 && width <= 960) {
      return 22.0;
    } else {
      return 22.0;
    }
  }
  double _getFontSizemore(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) {
      return 6.0;
    } else if (width > 580 && width <= 1000) {
      return 10.0;
    } else {
      return 19.0;
    }
  }
  double _getFontSizemin(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) {
      return 5.0;
    } else if (width > 480 && width <= 960) {
      return 11.2;
    } else {
      return 12.0;
    }
  }

  double _getFontSizemain(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) {
      return 8.0;
    } else if (width > 480 && width <= 960) {
      return 12.2;
    } else {
      return 15.0;
    }
  }
  double _getFontSizehead(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) {
      return 9.0;
    } else if (width > 480 && width <= 960) {
      return 28.0;
    } else {
      return 30.0;
    }
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final fontSize = _getFontSize(constraints);
        final fontSizehead = _getFontSizehead(constraints);
        final fontSizemin = _getFontSizemin(constraints);
        final fontSizemain = _getFontSizemain(constraints);
        final fontSizemore = _getFontSizemore(constraints);
        var height = MediaQuery.of(context).size.height;
        var h = MediaQuery.of(context).size.height;
        var w = MediaQuery.of(context).size.width;
        return Scaffold(
          backgroundColor: WebPrimary.kPrimaryColor,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "asset/dian10.jpg",
                fit: BoxFit.fitWidth,
              ),
              SingleChildScrollView(
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: h / 13.5,
                        width: w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: w / 3,
                            ),
                            TabWeb(
                                taboption: 'Home', page: LandingPageMobile()),
                            TabWeb(
                                taboption: 'About',
                                page: LandingPageMobile()),
                            TabWeb(
                                taboption: 'Resume',
                                page: LandingPageMobile()),
                            TabWeb(
                                taboption: 'Skills',
                                page: LandingPageMobile()),
                            TabWeb(
                                taboption: 'Project',
                                page: LandingPageMobile()),
                            TabWeb(
                                taboption: 'My Blog',
                                page: LandingPageMobile()),
                            TabWeb(
                                taboption: 'Contact',
                                page: LandingPageMobile()),
                            SizedBox(
                              width: w / 9,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: h / 7),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: w / 99),
                              Container(
                                width: w / 1.9,
                                height: h / 1.9,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: WebPrimary.kDarkColor,
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('asset/IMG_6788.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi,',
                                    style: GoogleFonts.lato(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                  Text(
                                    'I\'m Rizvin K Salim',
                                    style: GoogleFonts.spaceGrotesk(
                                        fontSize: fontSizehead, color: Colors.white),
                                  ),
                                  Text(
                                    'Front-end Software Developer',
                                    style: GoogleFonts.fingerPaint(
                                        fontSize: fontSizemin, color: Colors.white),
                                  ),
                                  SizedBox(height: 10,),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'I am a frontend Flutter developer with expertise in'
                                          ' \nUI/UX design and state management, crafting intuitive '
                                          '\ninterfaces for cross-platform applications.',
                                      style: GoogleFonts.spaceGrotesk(
                                          fontSize: fontSizemin, color: Colors.white54),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      height: 2,
                                      width: w / 5,
                                      color: Colors.white70),
                                  SizedBox(height: 23),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      CustomButton(
                                          h: h,
                                          w: w,
                                          text: 'More',
                                          fontSize: fontSizemore,
                                          Pageclick: LandingPageWeb()),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      CustomButton(
                                          h: h,
                                          w: w,
                                          fontSize: fontSizemore,
                                          text: 'Project',
                                          Pageclick: LandingPageWeb()),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 200),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width:w/3,
                                child: Image.asset('asset/Programmer-rafiki.png',),),

                              SizedBox(
                                width: w/3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text(
                                        'About Me',
                                        style: GoogleFonts.fingerPaint(
                                            fontSize: fontSizehead, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 50,),
                                    Row(
                                      children: [
                                        Text('Name: ',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.firaSans(
                                              fontSize: fontSizemain, color: Colors.white54),
                                        ),
                                        Text('Rizvin K Salim',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.firaSans(
                                              fontSize: fontSizemain, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Text('DOB: ',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.firaSans(
                                              fontSize: fontSizemain, color: Colors.white54),
                                        ),
                                        Text('07/12/2000',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.firaSans(
                                              fontSize: fontSizemain, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Text('About me: ',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.firaSans(
                                          fontSize: fontSizemain, color: Colors.white54),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('With a B.Tech degree and hands-on experience, '
                                        'I specialize in Flutter for mobile apps, web apps, and websites, coupled with UI/UX design expertise using tools like Figma, and '
                                        'Im dedicated to delivering high-quality solutions that exceed user expectations.',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.firaSans(
                                          fontSize: fontSizemain, color: Colors.white),
                                    ),
                                    SizedBox(height: 30,),
                                    Row(
                                      children: [
                                        CustomButton(
                                            h: h,
                                            w: w,
                                            fontSize: fontSizemore,
                                            text: 'Hire ME',
                                            Pageclick: LandingPageWeb()),
                                        SizedBox(width: 18,),
                                        CustomButton(
                                            h: h,
                                            w: w,
                                            fontSize: fontSizemore,
                                            text: 'download cv',
                                            Pageclick: LandingPageWeb()),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 200),
                          Text(
                            textAlign: TextAlign.left,
                            'Skills & Service',
                            style: GoogleFonts.fingerPaint(
                                fontSize: fontSizehead, color: Colors.white),
                          ),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  SizedBox(
  width: 450.0,
  height: 450.0,
  child: Center(
    child: DefaultTextStyle(
      style: GoogleFonts.fingerPaint(
          fontSize: fontSizehead, color: Colors.white),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText('"In the realm of software development,'),
          TypewriterAnimatedText(' innovation is our compass, and code is our canvas. '),
          TypewriterAnimatedText('Lets craft tomorrows solutions, today."'),

        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  ),
),
    Container(
      height: 400,width: 550,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Option(fontSizemore,'FLUTTER'),
              Option(fontSizemore,'UI/UX DESIGNING'),
              Option(fontSizemore,'DART'),
              Option(fontSizemore,'FIGMA'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Option(fontSizemore,'ADOBE'),
              Option(fontSizemore,'MS OFFICE'),
              Option(fontSizemore,'GIT'),
              Option(fontSizemore,'API INTEGRATION'),
            ],
          )
        ],
      ),
    ),
  ],
),
                          SizedBox(height: h),
                          Container(
                            height: 100,
                            color: Colors.black12,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
