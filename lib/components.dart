import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class TabWeb extends StatefulWidget {
  final String taboption;
  final Widget page;

  const TabWeb({
    Key? key, // Fixing key parameter
    required this.taboption,
    required this.page,
  }) : super(key: key);

  @override
  State<TabWeb> createState() => _TabWebState();
}

class _TabWebState extends State<TabWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          Get.to(Page); // Navigate to the desired page on tap
        },
        child: Text(
          widget.taboption,
          style: isSelected
              ? GoogleFonts.lato(fontSize: 25, color: Colors.white)
              : GoogleFonts.lato(fontSize: 20, color: Colors.white70),
        ),
      ),
    );
  }
}
