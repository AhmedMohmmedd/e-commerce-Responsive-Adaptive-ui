import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleMedium12Poppins(context) {
    return TextStyle(
       color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium18Poppins(context) {
    return TextStyle(
       color: const Color(0xFF5B5959),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold14OpenSans(context) {
    return TextStyle(
       color:  Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      //fontFamily: 'Open Sans',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium14Roboto(context) {
    return TextStyle(
       color: const Color(0xFF00E0C6),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      //fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium12Roboto(context) {
    return TextStyle(
       color: const Color(0xFF068181),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      //fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium16Poppins(context) {
    return TextStyle(
       color: const Color(0xFF009393),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold24Roboto(context) {
    return TextStyle(
       color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      //fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium14Poppins(context) {
    return TextStyle(
       color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold14Roboto(context) {
    return TextStyle(
       color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      //fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold14Poppins(context) {
    return TextStyle(
       color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold25PublicSans(context) {
    return TextStyle(
       color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      // //fontFamily: 'Public Sans',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold12Poppins(context) {
    return TextStyle(
       color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium26Poppins(context) {
    return TextStyle(
       color:  Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular16Poppins(context) {
    return TextStyle(
       color:  Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium20Poppins(context) {
    return TextStyle(
       color:  Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular14Poppins(context) {
    return TextStyle(
       color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular12_5Poppins(context) {
    return TextStyle(
       color: const Color(0xFF5C5C5C),
      fontSize: getResponsiveFontSize(context, fontSize: 12.5),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16OpenSans(context) {
    return TextStyle(
       color:  Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      //fontFamily: 'Open Sans',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium15Poppins(context) {
    return TextStyle(
       color: const Color(0xFF016170),
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold26Poppins(context) {
    return TextStyle(
       color: const Color(0xE5016170),
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 600;
  } else if (width < 1050) {
    return width / 900;
  } else {
    return width / 1300;
  }
}
