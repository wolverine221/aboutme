import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/app_colors.dart';
import '../widgets/ProjectCard.dart';

class ProjectsSection extends StatelessWidget {
  final bool isMobile;
  const ProjectsSection({super.key,this.isMobile=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgDark,
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isMobile?const SizedBox():Text(
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
          SizedBox(height: isMobile?20:40),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children:  [
                ProjectCard(
                  title: 'PAYMENT APP',
                  subtitle: 'Experimental UI Series',
                  color: AppColors.primary,
                  isMobile: isMobile,
                ),
                 ProjectCard(
                  title: 'FOOD DELIVERY APP',
                  subtitle: 'UI/UX Design',
                  color: AppColors.secondary,
                  isMobile: isMobile,
                ),
                 ProjectCard(
                  title: 'TRADING APP',
                  subtitle: 'Interactive Art',
                  color: AppColors.tertiary,
                   isMobile: isMobile,
                ),
                 ProjectCard(
                  title: 'PERSONAL PORTFOLIO',
                  subtitle: 'Creative Coding',
                  color: AppColors.mediumAccent,
                  isMobile: isMobile,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}