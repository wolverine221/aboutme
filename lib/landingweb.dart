import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/constant.dart';
import 'LandingMobile.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     elevation: 0.0,
      //     scrolledUnderElevation: 0.0,
      //     title: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Spacer(
      //           flex: 3,
      //         ),
      //         TabWeb(Taboption: 'Home'),
      //         Spacer(),
      //         TabWeb(Taboption: 'Works'),
      //         Spacer(),
      //         TabWeb(Taboption: 'Certificate'),
      //         Spacer(),
      //         TabWeb(Taboption: 'About me'),
      //         Spacer(),
      //       ],
      //     )),
      body:

        Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("asset/dian10.jpg",fit: BoxFit.fitWidth,),
            Container(color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: h/13.5,width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: w/3,),
                      TabWeb(taboption:'Home',page:LandingPageMobile()),
                      TabWeb(taboption: 'About', page:LandingPageMobile()),
                      TabWeb(taboption: 'Resume', page:LandingPageMobile()),
                      TabWeb(taboption: 'Skills', page:LandingPageMobile()),
                      TabWeb(taboption: 'Project',page:LandingPageMobile()),
                      TabWeb(taboption: 'My Blog',page:LandingPageMobile()),
                      TabWeb(taboption: 'Contact',page:LandingPageMobile()),
                      SizedBox(width: w/9),
                    ],
                  )),
                SizedBox(height: h/7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: w/99),
                    Container(
                      width: w/1.9,
                      height: h/1.9,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(w / 2.2),
                        boxShadow: [BoxShadow(
                          color: WebPrimary.kDarkColor,
                          blurRadius: 20.0,
                        ),],
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
                        Text('Hi',style: GoogleFonts.lato(fontSize: 25, color: Colors.white),),
                        Text('I''m Rizvin K Salim',style: GoogleFonts.spaceGrotesk(fontSize: 51, color: Colors.white),),
                        Text('Front-end Software Developer',style: GoogleFonts.firaSans(fontSize: 28, color: Colors.white),),
                        Container(
                          width: w/4,
                          height: 20,
                          decoration: BoxDecoration(
                              color: WebPrimary.kDarkColor,shape: BoxShape.circle),
                          child: Text('More',style: GoogleFonts.firaSans(fontSize: 20, color: Colors.white),),
                        )
                      ],
                    )
                  ],
                )
              ],
            )),

          ],
        ),
      // Stack(
      //   children: [
      //     Row(children: [
      //       Expanded(
      //           flex: 1,
      //           child: SizedBox(
      //             child: Container(
      //               width: w/200,
      //               height: h/1.2,
      //               child: Center(
      //                 child: Container(
      //                   decoration: BoxDecoration(
      //                       color: Colors.black12,
      //                         borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50))),
      //                     height: 520,
      //                     width: 480,
      //                     child: Center(child: Text('Hi Rizvin'))),
      //               ),
      //               // decoration: BoxDecoration(
      //               //     color: Colors.red,
      //               //     borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
      //             ),
      //           )
      //       ),
      //       Expanded(
      //           flex: 1,
      //           child: SizedBox(
      //             child: Container(
      //               width: w/200,
      //               height: h/1.2,
      //               child: Center(
      //                 child: Container(
      //                     decoration: BoxDecoration(
      //                         color: Colors.black12,
      //                         borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50))),
      //                     height: 520,
      //                     width: 480,
      //                     child: Center(child: Text('About me'))),
      //               ),
      //               // decoration: BoxDecoration(
      //               //     color: Colors.red,
      //               //     borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
      //             ),
      //           )
      //       ),
      //     ],),
      //     // Image.asset('asset/bg.jpeg'),
      //   ],
      // )

    //   Stack(
    //     children: [
    //       Positioned(
    //         child: ListView(
    //           children: [
    //             Container(
    //               height: height - 56.0,
    //               color: Colors.white,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: [
    //                   Container(
    //                     height: h / 2,
    //                     width: w / 2,
    //                     child: (Padding(
    //                         padding: const EdgeInsets.only(top: 330, left: 70),
    //                         child: Container(
    //                           // height: h/1.5,
    //                           // width: w/3.4,
    //                           // decoration: BoxDecoration(
    //                           //   borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft:Radius.circular(20) ),
    //                           //   color: Color.fromARGB(255, 96, 93, 86),
    //                           // ),
    //                           child: Row(
    //                             children: [
    //                               Text(
    //                                 'Rizvin K Salim',
    //                                 style: GoogleFonts.lato(
    //                                     fontSize: 33.5,
    //                                     color: Color.fromARGB(255, 228, 211, 79)),
    //                               ),
    //                               Text('| FLUTTER DEVELOPER',
    //                                   style: GoogleFonts.lato(
    //                                       fontSize: 33.5,
    //                                       color:
    //                                           Color.fromARGB(255, 228, 211, 79))),
    //                             ],
    //                           ),
    //                         ))),
    //                     // color: Colors.yellow,
    //                   ),
    //                   Expanded(
    //                     child: Stack(
    //                       children: [
    //                         Container(
    //                           height: h / 1,
    //                           width: w / 1,
    //                           decoration: BoxDecoration(
    //                             shape: BoxShape.circle,
    //                             color: Color.fromARGB(255, 228, 211, 79),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 180,
    //                         ),
    //                         Container(
    //                           height: h / 1.7,
    //                           width: w / 2,
    //                           decoration: BoxDecoration(
    //                             shape: BoxShape.circle,
    //                             color: const Color.fromARGB(255, 77, 74, 53),
    //                           ),
    //                         ),
    //                         //    CircleAvatar(
    //                         //   backgroundColor: Colors.transparent,
    //                         //   child: SizedBox(
    //                         //       width: 330,
    //                         //       height: 330,
    //                         //       child: ClipOval(
    //                         //         child: Image.asset(
    //                         //           "asset/6818146.jpg",
    //                         //         ),
    //                         //       )),
    //                         // ),
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: h,
    //         width: w,
    //         decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //             colors: [Color.fromARGB(255, 228, 211, 79), Colors.white],
    //           ),
    //         ),
    //       )
    //
    //       // Expanded(child: Image.asset("/asset/bgbgyellow.jpeg")),
    //     ],
    //   ),
     );
  }
}

