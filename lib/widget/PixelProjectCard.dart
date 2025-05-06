
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PixelProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const PixelProjectCard({
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