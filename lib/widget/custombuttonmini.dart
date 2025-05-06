import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/app_textstyle.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.borderLight,
            borderRadius: BorderRadius.all(Radius.circular(20.r))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_downward, color: Colors.black,),),
              SizedBox(width: 10),
              Text("Download CV",style: AppTextStyles.xxlMedium,),
            ],
          ),
        ),
        // icon: const Icon(Icons.arrow_downward, color: Colors.black),
        // label: Text(
        //   'DOWNLOAD CV',
        //   style: TextStyle(color: Colors.black),
        // ),
        // style: ElevatedButton.styleFrom(
        //   backgroundColor: Colors.white,
        //   shape: StadiumBorder(),
        //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        // ),
      ),
    );
  }
}