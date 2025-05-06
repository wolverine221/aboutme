// import 'dart:io';
//
// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:grpc/grpc.dart';
// import 'package:intl/intl.dart';
// import 'package:local_auth/local_auth.dart';
// import 'package:local_auth_android/local_auth_android.dart';
// import 'package:local_auth_darwin/types/auth_messages_ios.dart';
// import 'package:local_auth_platform_interface/local_auth_platform_interface.dart';
// import 'package:package_info_plus/package_info_plus.dart';
//

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_textstyle.dart';



//
// import 'app_colors.dart';
// import 'app_textstyle.dart';
// import 'dimension.dart';
//
// ///dialog [ErrorType] on [Constants.showCustomPopupMessage]
// enum ErrorType {
//   success,
//   defaultError,
//   networkError,
//   uploadError,
//   saveError,
//   authError,
// }
//
// enum SnackBarType { info, warning, error, success }
//
// typedef CheckIfTemplateCallback = void Function(String, String, String, String, bool);
//

class Constants {


  static var boxPadding = EdgeInsets.all(25.r);
  BoxDecoration AppDecorationBox({Color? color}) {
    return BoxDecoration(
        color: color??AppColors.secondary,
        borderRadius: BorderRadius.all(Radius.circular(20.r)));
  }


  Widget bulletPoints(String point) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text("-${point}",
          style: AppTextStyles.displayMedium
              .copyWith(color: AppColors.neutral, fontSize: 20)),
    );
  }
//   static String expiredMessageKey = "your session has expired";
//
//   static String supportEmail = "ebox@thoughtbox.io";
//   static String supportPhone = "+974XXXXXXXX";
//   static String whatsappPhone = "+974XXXXXXXX";
//
//   static final whitespaceRE = RegExp(r"(?! )\s+| \s+");
//
//   static bool isProfileScreen = false;
//
//   static const List<ThemeMode> themes = [
//     ThemeMode.system,
//     ThemeMode.light,
//     ThemeMode.dark,
//   ];
//
//   static String changeDateFormat(String inputDate, String inputFormat, String outputFormat) {
//     try {
//       final inputDateFormat = DateFormat(inputFormat);
//       final outputDateFormat = DateFormat(outputFormat);
//       final date = inputDateFormat.parse(inputDate);
//       return outputDateFormat.format(date);
//     } catch (e) {
//       debugPrint('abc_changeDateFormat: $e');
//       return ''; // Return an empty string if there's an error
//     }
//   }
//
//   static bool isDarkMode (BuildContext context){
//     return Theme.of(context).brightness == Brightness.dark;
//   }
//
//
//
//   static String getInitials(String name) {
//     if (name.trim().isEmpty) return ""; // Handle empty or null names
//
//     List<String> words = name.trim().split(' ');
//     String initials = words.map((word) => word.isNotEmpty ? word[0].toUpperCase() : "").join();
//
//     return initials.length > 2 ? initials.substring(0, 2) : initials; // Limit to 2 characters
//   }
//
//   // String getInitials(List<GetAllReceiveModes> items, int index) {
//   //   var fullName = getFullName(items, index);
//   //   return fullName.toInitials().toUpperCase();
//   // }
//   static void displaySnackBar(String message, BuildContext context,
//       {String? actionMessage, VoidCallback? onClick}) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text(
//         message,
//         style: const TextStyle(color: Colors.white, fontSize: 14.0),
//       ),
//       action: (actionMessage != null)
//           ? SnackBarAction(
//         textColor: AppColors.textBlack,
//         label: actionMessage,
//         onPressed: () {
//           if (onClick != null) {
//             return onClick();
//           } else {
//             ScaffoldMessenger.of(context).hideCurrentSnackBar();
//           }
//         },
//       )
//           : null,
//       duration: const Duration(seconds: 5),
// // backgroundColor: const Color(0x854E4E4E),
//     ));
//   }
//
//   // static String getInitials({String? fullName}) {
//   //   var name = "";
//   //   if (fullName == null || fullName.isEmpty) {
//   //     name =
//   //         "${Universal.userPayload.firstName.replaceAll(" ", "")} ${Universal.userPayload.middlename.replaceAll(" ", "")} ${Universal.userPayload.lastName.replaceAll(" ", "")}"
//   //             .trim()
//   //             .replaceAll(AppConstants.whitespaceRE, " ");
//   //   } else {
//   //     name = fullName;
//   //   }
//   //
//   //   if (name.isEmpty) {
//   //     return "";
//   //   }
//   //
//   //   final parts = name.split(' ');
//   //   final initials = [];
//   //
//   //   for (int i = 0; i < parts.length && initials.length < 3; i++) {
//   //     final part = parts[i];
//   //     if (part.isNotEmpty) {
//   //       initials.add(part[0].toUpperCase());
//   //     }
//   //   }
//   //
//   //   return initials.isEmpty ? "" : initials.join();
//   // }
//
//   static bool isUnderage(DateTime birthDate) {
//     final currentDate = DateTime.now();
//     var ageDifference = currentDate.year - birthDate.year;
//
//     if (currentDate.month < birthDate.month ||
//         (currentDate.month == birthDate.month && currentDate.day < birthDate.day)) {
//       ageDifference--;
//     }
//
//     return ageDifference < 18;
//   }
//
//   static bool isNotNullOrEmpty(String? input) {
//     if (input != null && input.isNotEmpty) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   static String kFormatDateWithNullSafety(String? date) {
//     if (date == null) return '';
//     if (date.isEmpty) return '';
//     DateTime? dateTime = DateTime.tryParse(date);
//     if (dateTime == null) return '';
//     return DateFormat('dd-MM-yyyy').format(dateTime);
//   }
//
//   // static void showThemeDialog(BuildContext context) {
//   //   showDialog(
//   //     context: context,
//   //     builder: (context) {
//   //       return AlertDialog(
//   //         title: Text('Choose Theme'),
//   //         content: Column(
//   //           mainAxisSize: MainAxisSize.min,
//   //           children: ThemeMode.values.map((mode) {
//   //             return ListTile(
//   //               title: Text(themeLabel(mode)),
//   //               onTap: () {
//   //                 context.read<UpdateProfileBloc>().add(ChangeThemeEvent(mode));
//   //                 Navigator.of(context).pop();
//   //               },
//   //             );
//   //           }).toList(),
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }
//
//   static String themeLabel(ThemeMode mode) {
//     switch (mode) {
//       case ThemeMode.system: return "System Default";
//       case ThemeMode.light: return "Light";
//       case ThemeMode.dark: return "Dark";
//     }
//   }
//
//   static void showCustomSnackBar(String message, {SnackBarType type = SnackBarType.info}) {
//     Color backgroundColor;
//     IconData icon;
//
//     switch (type) {
//       case SnackBarType.warning:
//         backgroundColor = AppColors.brandShadeYellow400;
//         icon = Icons.warning_amber_rounded;
//         break;
//       case SnackBarType.error:
//         backgroundColor = AppColors.brandRed;
//         icon = Icons.error_outline;
//         break;
//       case SnackBarType.success:
//         backgroundColor = AppColors.alertSuccess800;
//         icon = Icons.check_circle_outline;
//         break;
//       case SnackBarType.info:
//       default:
//         backgroundColor = AppColors.grey50;
//         icon = Icons.info_outline;
//         break;
//     }
//     Get.closeAllSnackbars();
//     Get.showSnackbar(
//       GetSnackBar(
//         messageText: Text(
//           message,
//           style: AppTextStyles.mRegular
//               .copyWith(color: SnackBarType.info == type ? AppColors.gray950 : AppColors.white),
//         ),
//         icon: Icon(icon, color: SnackBarType.info == type ? AppColors.gray400 : Colors.white),
//         backgroundColor: backgroundColor,
//         duration: Duration(seconds: 3),
//         borderRadius: 10,
//         margin: EdgeInsets.only(left: 12, right: 12, bottom: 64),
//         snackPosition: SnackPosition.BOTTOM,
//       ),
//     );
//   }
//
//   static Future<dynamic> showCustomPopupMessage(String? title, String message,
//       {SnackPosition? snackPosition,
//         Duration? duration,
//         Color? bgColor,
//         Color? textColor,
//         Widget? mainButton,
//         List<Widget>? actions,
//         String? header,
//         ErrorType errorType = ErrorType.defaultError,
//         VoidCallback? additionalActionInButton,
//         String? customTextForButton}) async {
//     // final actions = [];
//     if (mainButton != null) actions?.add(mainButton);
//     if (Get.isDialogOpen ?? false) {
//       Get.back();
//     }
//     await Get.dialog(
//       Center(
//         child: Card(
//           clipBehavior: Clip.hardEdge,
//           shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(6)),
//           margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//           child: Container(
//             color: Colors.white,
//             height: 120.h,
//             width: 280.h,
//             padding: EdgeInsets.only(left: 16.w, top: 20.h, right: 16.w, bottom: 13.h),
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           getErrorWidgetByType(
//                             ///
//                             errorType,
//                             title,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       // Row(
//                       //   children: [
//                       //     const SizedBox(
//                       //       width: 60,
//                       //     ),
//                       //     Flexible(
//                       //       child: Text(
//                       //         title ?? '',
//                       //         style: const TextStyle(
//                       //           fontWeight: FontWeight.w700,
//                       //           fontSize: 14,
//                       //           color: Color(0xff4e6378),
//                       //         ),
//                       //       ),
//                       //     )
//                       //   ],
//                       // ),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 38.w,
//                           ),
//                           Flexible(
//                             child: Text(
//                               message,
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12,
//                                 color: Color(0xff4e6378),
//                               ),
//                               textAlign: TextAlign.justify,
//                               overflow: TextOverflow.ellipsis,
//                               maxLines: 3,
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       const SizedBox(
//                         width: 60,
//                       ),
//                       Flexible(
//                         child: GestureDetector(
//                           onTap: () {
//                             Get.close(1);
//                             if (additionalActionInButton != null) {
//                               additionalActionInButton();
//                             }
//                           },
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: AppColors.appPrimary,
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             height: 35,
//                             width: 80,
//                             child: Center(
//                               child: Text(
//                                 customTextForButton ?? 'Okay',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 17.sp,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       barrierDismissible: false,
//     );
//   }
//
//   static String getFlag(String? countryCode) {
//     if (countryCode != null && countryCode == "DOLLAR") {
//       return "https://thoughtbox.io/dollar.png";
//     }
//     // return "https://www.countryflagicons.com/SHINY/48/$countryCode.png";
//     return "https://flagsapi.com/$countryCode/shiny/48.png";
//   }
//
//   static Widget getErrorWidgetByType(
//       ErrorType error, [
//         String? title,
//       ]) {
//     IconData icon = Icons.error_outline;
//     Color baseColor = const Color(0xffffffff);
//     Color mainColor = const Color(0xff003657);
//     String errorHead = 'Error';
//     switch (error) {
//       case ErrorType.defaultError:
//         icon = Icons.error_outline;
//         break;
//       case ErrorType.success:
//         icon = Icons.check_circle;
//         errorHead = 'Success';
//         baseColor = const Color(0xffe3f8e6);
//         mainColor = AppColors.alertInfo800;
//         break;
//
//       case ErrorType.networkError:
//         icon = Icons.cell_tower;
//         errorHead = 'Network Error';
//
//         break;
//
//       case ErrorType.uploadError:
//         icon = Icons.cloud_off;
//         errorHead = 'Upload Error';
//
//         break;
//
//       case ErrorType.authError:
//         icon = Icons.pattern;
//         errorHead = 'Authentication Error';
//
//         break;
//
//       case ErrorType.saveError:
//         icon = Icons.save;
//         errorHead = 'Save Error';
//
//         break;
//
//       default:
//         icon = Icons.error_outline;
//         break;
//     }
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       // spacing: 12.w,
//       children: [
//         Icon(
//           icon,
//           color: mainColor,
//           size: 25,
//         ),
//         SizedBox(
//           width: 12,
//         ),
//         Text(
//           title ?? errorHead,
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 18,
//             color: Colors.grey.shade900,
//           ),
//         ),
//       ],
//     );
//   }
//
//   // static bool logOutIfSessionExpired(GrpcError e) {
//   //   if ("${e.message}".contains(Constants.expiredMessageKey)) {
//   //     Constants.showCustomPopupMessage('Error', e.message ?? "Your Session has expired",
//   //         additionalActionInButton: () {
//   //           Get.offAll(() => const SignInScreen());
//   //         });
//   //     return true;
//   //   }
//   //   return false;
//   // }
//
//   // static Future<dynamic> showCustomPopupTwoMessage(
//   //     BuildContext context,
//   //     String title,
//   //     VoidCallback tapAction,
//   //     String message, {
//   //       SnackPosition? snackPosition,
//   //       Duration? duration,
//   //       Color? bgColor,
//   //       Color? textColor,
//   //       Widget? mainButton,
//   //       List<Widget>? actions,
//   //       String? header,
//   //       ErrorType errorType = ErrorType.defaultError,
//   //       VoidCallback? additionalActionInButton,
//   //       String? option,
//   //       String? customTextForButton,
//   //     }) async {
//   //   if (mainButton != null) actions?.add(mainButton);
//   //   await Get.dialog(
//   //     Center(
//   //       child: Card(
//   //         clipBehavior: Clip.hardEdge,
//   //         shape: RoundedRectangleBorder(
//   //           side: BorderSide.none,
//   //           borderRadius: BorderRadius.circular(25),
//   //         ),
//   //         margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
//   //         elevation: 20,
//   //         child: Container(
//   //           color: Constants.isDarkMode(context)?AppColors.deepBackgroundDarkCard:AppColors.white,
//   //           constraints: BoxConstraints(
//   //             maxWidth: 350.w,
//   //           ),
//   //           child: Column(
//   //             mainAxisSize: MainAxisSize.min,
//   //             crossAxisAlignment: CrossAxisAlignment.center,
//   //             children: [
//   //               Column(
//   //                 mainAxisAlignment: MainAxisAlignment.start,
//   //                 crossAxisAlignment: CrossAxisAlignment.center,
//   //                 children: [
//   //                   Container(
//   //                     width: double.infinity,
//   //                     height: 50.h,
//   //                     decoration:  BoxDecoration(
//   //                       color:Constants.isDarkMode(context)?AppColors.deepBackground: AppColors.appPrimary,
//   //                     ),
//   //                     child: const Icon(
//   //                       Icons.warning_amber,
//   //                       weight: 100,
//   //                       color: Colors.white,
//   //                       size: 50,
//   //                     ),
//   //                   ),
//   //                   Padding(
//   //                     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
//   //                     child: Text(
//   //                       title,
//   //                       textAlign: TextAlign.center,
//   //                       style: TextStyle(
//   //                         fontWeight: FontWeight.w600,
//   //                         fontSize: 16.sp,
//   //                       ),
//   //                     ),
//   //                   ),
//   //                 ],
//   //               ),
//   //               Padding(
//   //                 padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
//   //                 child: SingleChildScrollView(
//   //                   child: Padding(
//   //                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
//   //                     child: Center(
//   //                       child: Text(
//   //                         message,
//   //                         style: TextStyle(
//   //                           fontWeight: FontWeight.w500,
//   //                           fontSize: 14.spMax,
//   //                           color: const Color(0xff4e6378),
//   //                         ),
//   //                         textAlign: TextAlign.center,
//   //                       ),
//   //                     ),
//   //                   ),
//   //                 ),
//   //               ),
//   //               Padding(
//   //                 padding: EdgeInsets.only(
//   //                   top: Dimensions.margin14,
//   //                   left: Dimensions.margin32,
//   //                   right: Dimensions.margin32,
//   //                   bottom: Dimensions.margin14,
//   //                 ),
//   //                 child: Row(
//   //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //                   children: [
//   //                     Flexible(
//   //                       flex: 1,
//   //                       child: CustomButton(
//   //                         onClick: () {
//   //                           Get.close(1);
//   //                           if (additionalActionInButton != null) {
//   //                             additionalActionInButton();
//   //                           }
//   //                         },
//   //                         text: customTextForButton ?? 'Cancel',
//   //                         buttonHeight: 40.h,
//   //                         fontSize: 14.spMin,
//   //                         buttonWidth: 120.w,
//   //                         backgroundColor:Constants.isDarkMode(context)?AppColors.mutedBlueGray: Colors.white,
//   //                         textColor:Constants.isDarkMode(context)? AppColors.white:AppColors.appPrimary,
//   //                       ),
//   //                     ),
//   //                     SizedBox(
//   //                       width: Dimensions.width30,
//   //                     ),
//   //                     Flexible(
//   //                       flex: 1,
//   //                       child: CustomButton(
//   //                         buttonHeight: 40.h,
//   //                         fontSize: 14.spMin,
//   //                         buttonWidth: 120.w,
//   //                         onClick: tapAction,
//   //                         text: option ?? "Confirm",
//   //                         // backgroundColor: AppColors.appPrimary,
//   //                         // textColor: Colors.white,
//   //                       ),
//   //                     ),
//   //                   ],
//   //                 ),
//   //               ),
//   //             ],
//   //           ),
//   //         ),
//   //       ),
//   //     ),
//   //     barrierDismissible: false,
//   //   );
//   // }
//
//   //
//   // /////Passowrd
//   //
//   // static Future<bool> showPasswordChangeSheet(
//   //     BuildContext context, UserController userController, bool isDismissible, Widget? customHeader,
//   //     {required bool fromSettings}) {
//   //   return showModalBottomSheet<NewAndOldPassword>(
//   //       context: context,
//   //       shape: const RoundedRectangleBorder(
//   //           borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))),
//   //       backgroundColor: AppColors.sheetBgPrimary,
//   //       isScrollControlled: false,
//   //       builder: (BuildContext context) {
//   //         return ChangePasswordSheet(
//   //           customHeader: customHeader,
//   //           showCurrentPassField: fromSettings,
//   //         );
//   //       },
//   //       isDismissible: isDismissible,
//   //       enableDrag: false)
//   //       .then((value) async {
//   //     if (value != null) {
//   //       final rs = await changeLoginPin(
//   //           value.old, value.newP, userController, context, isDismissible, customHeader,
//   //           fromSettings: fromSettings);
//   //       return rs;
//   //     }
//   //     return false;
//   //   });
//   // }
//
//   // static Future<bool> changeLoginPin(String old, String newPwd, UserController userController,
//   //     BuildContext context, bool isDismissible, Widget? customHeader,
//   //     {required bool fromSettings}) async {
//   //   final res = await userController.changeLoginPin(old, newPwd);
//   //
//   //   if (res) {
//   //     return true;
//   //   } else {
//   //     fromSettings
//   //         ? Constants.showCustomPopupMessage('Failed', 'Current password mismatched, Please try again')
//   //         : null;
//   //
//   //     // if (context.mounted && fromSettings) {
//   //     //   showPasswordChangeSheet(
//   //     //       context, userController, isDismissible, customHeader,
//   //     //       fromSettings: fromSettings);
//   //     // }
//   //     return false;
//   //   }
//   // }
//
//   // static Future<bool> authWithSecondFactor(String mode, BuildContext context) async {
//   //   if (!context.mounted) return false;
//   //
//   //   if (mode == Universal.authMode) {
//   //     final val = await showModalBottomSheet<bool>(
//   //       enableDrag: false,
//   //       isDismissible: false,
//   //       isScrollControlled: true,
//   //       context: context,
//   //       builder: (context) {
//   //         return Container(
//   //           height: MediaQuery.of(context).size.height * .9,
//   //           color: Colors.white,
//   //           child: StaticPin(
//   //             ctx: context,
//   //             isSettingUp: false,
//   //           ),
//   //         );
//   //       },
//   //     );
//   //
//   //     return val ?? false;
//   //   }
//   //
//   //   if (mode == Universal.biometricName) {
//   //     final bioStatus = await authUsingBiometric(context);
//   //     if (bioStatus) {
//   //       //sign in
//   //       //
//   //       // return await Get.find<UserController>().verifyTransferPin('', true);
//   //     } else if (context.mounted) {
//   //       return await authWithSecondFactor(Universal.authMode, context);
//   //     }
//   //   } else {
//   //     if (context.mounted) {
//   //       Constants.showCustomPopupMessage(
//   //         'PIN not found',
//   //         'Set a transfer pin by going to settings',
//   //         mainButton: TextButton(
//   //           onPressed: () {
//   //             Get.to(() => const MoreSettingsPage());
//   //           },
//   //           child: const Text('Open settings'),
//   //         ),
//   //       );
//   //     }
//   //     return false;
//   //   }
//   //   return true;
//   //   //check
//   // }
//
//   static Future<String> getVersion() async {
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();
//
//     // String appName = packageInfo.appName;
//     // String packageName = packageInfo.packageName;
//     // String buildNumber = packageInfo.buildNumber;
//     String version = packageInfo.version + ' ' + packageInfo.buildNumber;
//     return version;
//   }
// }
//
// Future<bool> authUsingBiometric(BuildContext context) async {
//   final res = await loginWithBiometric(context);
//   if (res != null) {
//     return res;
//   }
//   return false;
// }
//
// final LocalAuthentication localAuth = LocalAuthentication();
//
// Future<bool?> loginWithBiometric(BuildContext context) async {
//   try {
//     final bool didAuthenticate = await localAuth.authenticate(
//         localizedReason: 'Please authenticate to login',
//         authMessages: <AuthMessages>[
//           AndroidAuthMessages(
//             signInTitle: 'Oops! Biometric authentication required!',
//             cancelButton: 'No thanks',
//           ),
//           IOSAuthMessages(
//             cancelButton: 'No thanks',
//           ),
//         ],
//         options: const AuthenticationOptions());
//     if (didAuthenticate) {
//       return true;
//     } else {
//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: const Text('Failed to authenticate'),
//           action: SnackBarAction(
//             label: 'Retry',
//             onPressed: () {
//               loginWithBiometric(context);
//             },
//           ),
//         ));
//       }
//     }
//   } on Exception {
//     return null;
//   }
//   return null;
// }
//
// Future<bool> authenticateBiometric() async {
//   final LocalAuthentication auth = LocalAuthentication();
//   bool isAuthenticated = await auth.authenticate(
//     localizedReason: 'Please authenticate to enable biometric',
//     options: const AuthenticationOptions(biometricOnly: true),
//   );
//   return isAuthenticated;
// }
//
// // Future<user.DeviceInfo> gatherDeviceInfo([bool isInUserCreate = false]) async {
// //   final bioMetricToken = await getBiometricToken();
// //   DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
// //   user.DeviceInfo details = user.DeviceInfo();
// //   if (Platform.isIOS) {
// //     IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
// //     details.deviceId = iosInfo.identifierForVendor ?? '';
// //     details.modelName = iosInfo.model;
// //     details.manufacturer = 'Apple inc.';
// //     details.userRef = isInUserCreate ? Universal.regId : Universal.userPayload.id;
// //     details.biometricToken.add(bioMetricToken);
// //     details.registrationDate = DateTime.now().toString();
// //     details.platform = Platform.operatingSystem.toUpperCase();
// //     details.modelNumber = iosInfo.identifierForVendor ?? '';
// //   } else if (Platform.isAndroid) {
// //     AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
// //
// //     details.deviceId = androidInfo.id;
// //     details.modelName = androidInfo.model;
// //     details.biometricToken.add(bioMetricToken);
// //     //todo we need to pass device id and check uniqueness
// //     details.userRef = isInUserCreate ? Universal.regId : Universal.userPayload.id;
// //     details.manufacturer = androidInfo.manufacturer;
// //     details.registrationDate = DateTime.now().toString();
// //     details.platform = Platform.operatingSystem.toUpperCase();
// //     details.modelNumber = androidInfo.serialNumber;
// //   }
// //   return details;
// // }
//
// Future<String> getBiometricToken() async {
//   DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
//   if (Platform.isIOS) {
//     IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
//
//     return iosInfo.localizedModel + iosInfo.systemName + iosInfo.systemVersion;
//   } else if (Platform.isAndroid) {
//     AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
//     return androidInfo.fingerprint + androidInfo.id;
//   }
//   return '';
// }
//
// extension ReturnIfCharExistAtIndex on String {
//   String returnIfCharExistAtIndex(int index) {
//     if (split('').isIndexExist(index)) {
//       return split('')[index];
//     } else {
//       return '';
//     }
//   }
// }
//
// extension DeleteLastCarOfString on String {
//   String deleteLastChar() {
//     if (isNotEmpty) {
//       return substring(0, length - 1);
//     } else {
//       return '';
//     }
//   }
// }
//
// extension CheckIndexAvailable on List {
//   bool isIndexExist(int index) {
//     if (asMap().containsKey(index)) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
//
// extension StringCasingExtension on String {
//   String get toCapitalized => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
//
//   String get toTitleCase =>
//       replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized).join(' ');
//
//   bool get isZero {
//     RegExp zeroRegex = RegExp(r'^((0+(\.0+)?)|((\.0*)?))$');
//     return zeroRegex.hasMatch(this);
//   }
// }
//
// // extension SentenceCaseExtension on String {
// //   String toSentenceCase() {
// //     final buffer = StringBuffer();
// //     final sentences = split(RegExp(r'(?<=[.?!])\s*'));
// //
// //     for (var sentence in sentences) {
// //       if (sentence.isEmpty) continue;
// //
// //       // Trim leading and trailing spaces
// //       sentence = sentence.trim();
// //
// //       // Capitalize the first letter
// //       final firstChar = sentence[0];
// //       final remaining = sentence.substring(1);
// //
// //       if (RegExp(r'[a-zA-Z]').hasMatch(firstChar)) {
// //         buffer.write(firstChar.toUpperCase());
// //       } else {
// //         buffer.write(firstChar);
// //       }
// //
// //       // Convert the rest of the sentence
// //       buffer.write(remaining.replaceAllMapped(
// //         RegExp(r'(?<![A-Z])([A-Z][a-z]*)|([a-z])'),
// //         (match) => match.group(0)!.toLowerCase(),
// //       ));
// //
// //       // Add a period if missing
// //       if (!RegExp(r'[.?!]$').hasMatch(sentence)) {
// //         buffer.write('.');
// //       }
// //
// //       buffer.write(' ');
// //     }
// //
// //     // Ensure proper spacing after punctuation
// //     var result = buffer.toString().trim();
// //     result = result.replaceAll(RegExp(r'([,.?!])(\S)'), r'\1 \2');
// //
// //     // Ensure the string ends with a period
// //     if (!result.endsWith('.')) {
// //       result += '.';
// //
// //   bool get isZero {
// //     RegExp zeroRegex = RegExp(r'^((0+(\.0+)?)|((\.0*)?))$');
// //     return zeroRegex.hasMatch(this);
// //   }
// // }
// //
// //     return result;
// //   }
// // }
// String getUpdatedPaymentHTML({required String ref, required String token}) {
//   print("----------------------------------------");
//   print(token);
//   print("----------------------------------------");
//   print(ref);
//   print("----------------------------------------");
//   return """
// <!DOCTYPE html>
// <html lang='en'>
// <head>
// <meta charset='UTF-8'>
// <title>Title</title>
// </head>
// <body>
// <form id='transferpg' name='trandferpg' method='post' enctype='application/x-www-form-urlencoded' action='https://omtapi.unimoniqatar.com:444/onlinepayments/processpayment'>
// <input type='hidden' id='referenceno' name='referenceno' value='$ref'>
// <input type='hidden' id='token' name='token' value='$token'>
// </form>
// <script type='text/javascript'>document.forms[0].submit();</script>
// </body>
// </html>
// """;
// }
//
// extension SentenceCaseExtension on String {
//   String toSentenceCase() {
//     final buffer = StringBuffer();
//     final sentences = split(RegExp(r'(?<=[.?!])\s*'));
//
//     for (var sentence in sentences) {
//       if (sentence.isEmpty) continue;
//
//       // Trim leading and trailing spaces
//       sentence = sentence.trim();
//
//       // Capitalize the first letter
//       final firstChar = sentence[0];
//       final remaining = sentence.substring(1);
//
//       if (RegExp(r'[a-zA-Z]').hasMatch(firstChar)) {
//         buffer.write(firstChar.toUpperCase());
//       } else {
//         buffer.write(firstChar);
//       }
//
//       // Convert the rest of the sentence
//       buffer.write(remaining.replaceAllMapped(
//         RegExp(r'(?<![A-Z])([A-Z][a-z]*)|([a-z])'),
//             (match) => match.group(0)!.toLowerCase(),
//       ));
//
//       // Add a period if missing
//       if (!RegExp(r'[.?!]$').hasMatch(sentence)) {
//         buffer.write('.');
//       }
//
//       buffer.write(' ');
//     }
//
//     // Ensure proper spacing after punctuation
//     var result = buffer.toString().trim();
//     result = result.replaceAll(RegExp(r'([,.?!])(\S)'), r'\1 \2');
//
//     // Ensure the string ends with a period
//     if (!result.endsWith('.')) {
//       result += '.';
//     }
//
//     return result;
//   }
//
//   static Map<String, bool> updateKeys = {
//     UpdateKeys.profileImage: false,
//     UpdateKeys.mobileNumber: false,
//     UpdateKeys.idExpiry: false,
//     UpdateKeys.nationality: false,
//     UpdateKeys.gender: false,
//     UpdateKeys.dob: false,
//     UpdateKeys.idNumber: false,
//     UpdateKeys.email: false,
//     UpdateKeys.address1: false,
//     UpdateKeys.address2: false,
//     UpdateKeys.passportNumber: false,
//     UpdateKeys.passportExpiry: false,
//     UpdateKeys.employerType: false,
//     UpdateKeys.employerName: false,
//     UpdateKeys.income: false,
//     UpdateKeys.profession: false,
//     UpdateKeys.videoKyc: false,
//     UpdateKeys.signature: false,
//     UpdateKeys.idFront: false,
//     UpdateKeys.idBack: false,
//     UpdateKeys.zone: false,
//   };
//
//   static Map<String, List<String>> dependencies = {
//     UpdateKeys.profession: [UpdateKeys.income],
//     UpdateKeys.income: [UpdateKeys.profession],
//     UpdateKeys.passportNumber: [UpdateKeys.passportExpiry],
//     UpdateKeys.passportExpiry: [UpdateKeys.passportNumber],
//     UpdateKeys.idNumber: [UpdateKeys.idExpiry, UpdateKeys.idFront, UpdateKeys.idBack],
//     UpdateKeys.idExpiry: [UpdateKeys.idNumber, UpdateKeys.idFront, UpdateKeys.idBack],
//     UpdateKeys.idFront: [UpdateKeys.idNumber, UpdateKeys.idExpiry, UpdateKeys.idBack],
//     UpdateKeys.idBack: [UpdateKeys.idNumber, UpdateKeys.idExpiry, UpdateKeys.idFront],
//     UpdateKeys.employerType: [UpdateKeys.employerName],
//     UpdateKeys.employerName: [UpdateKeys.employerType],
//     UpdateKeys.address1: [UpdateKeys.zone, UpdateKeys.city, UpdateKeys.address2],
//     UpdateKeys.zone: [UpdateKeys.address1, UpdateKeys.address2, UpdateKeys.city],
//     UpdateKeys.city: [UpdateKeys.address1, UpdateKeys.address2, UpdateKeys.zone],
//   };
// }
//
// class UpdateKeys {
//   static const String profileImage = 'profile image';
//   static const String mobileNumber = 'mobile number';
//   static const String idExpiry = 'id expiry';
//   static const String idFront = 'id front';
//   static const String idBack = 'id back';
//   static const String nationality = 'nationality';
//   static const String birthCountry = 'country of birth';
//   static const String gender = 'gender';
//   static const String dob = 'dob';
//   static const String idNumber = 'id number';
//   static const String email = 'email';
//   static const String address1 = 'address1';
//   static const String address2 = 'address2';
//   static const String zone = 'zone';
//   static const String passportNumber = 'passport number';
//   static const String passportExpiry = 'passport expiry';
//   static const String employerType = 'employer type';
//   static const String employerName = 'employer name';
//   static const String income = 'income';
//   static const String profession = 'profession';
//   static const String videoKyc = 'videokyc';
//   static const String signature = 'signature';
//   static const String city = 'city';
// }
//
// class FormFieldKeys {
//   static String firstName = "firstName";
//   static String middleName = "middleName";
//   static String lastName = "lastName";
//   static String country = "country";
//   static String relation = "relation";
//   static String gender = "gender";
//   static String address1 = "address1";
//   static String address2 = "address2";
//   static String mobile = "mobile";
//   static String confMobile = "confMobile";
//   static String idNumber = "idNumber";
//   static String bankName = "bankName";
//   static String branchName = "branchName";
//   static String accNumber = "accNumber";
//   static String confAccNumber = "confAccNumber";
//   static String nationality = "nationality";
//   static String collectionPoint = "collectionPoint";
//   static String agentBranch = "agentBranch";
//   static String dob = "dob";
//   static String idExpirey = "idExpirey";
//   static String idIssuedCountry = "idIssuedCountry";
//   static String proffessionAsOnId = "proffessionAsOnId";
//   static String actualOccupation = "actualOccupation";
//   static String employer = "employer";
//   static String employementType = "employementType";
//   static String workPlace = "workPlace";
//   static String idIssuer = "idIssuer";
//   static String city = "city";
//   static String email = "email";
//   static String state = "state";
//   static String street = "street";
//   static String zone = "zone";
// // static String airport = "airport";
// }
//
// extension ZeroExtension on double {
//   bool get isZero {
//     RegExp zeroRegex = RegExp(r'^((0+(\.0+)?)|((\.0*)?))$'); //RegExp(r'^0+(\.0+)?$');
//     return zeroRegex.hasMatch(toString());
//   }
}
