import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/app_colors.dart';
import '../widgets/ProjectCard.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgDark,
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SELECTED WORKS',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.tertiary,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'PROJECTS\nTHAT DEFY\nCONVENTION',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 72,
              fontWeight: FontWeight.w900,
              height: 0.9,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children:  const [
                ProjectCard(
                  title: 'PAYMENT APP',
                  subtitle: 'Experimental UI Series',
                  color: AppColors.primary,
                ),
                ProjectCard(
                  title: 'FOOD DELIVERY APP',
                  subtitle: 'UI/UX Design',
                  color: AppColors.secondary,
                ),
                ProjectCard(
                  title: 'TRADING APP',
                  subtitle: 'Interactive Art',
                  color: AppColors.tertiary,
                ),
                ProjectCard(
                  title: 'PERSONAL PORTFOLIO',
                  subtitle: 'Creative Coding',
                  color: AppColors.mediumAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}