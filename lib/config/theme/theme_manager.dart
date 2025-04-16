import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
      primaryColor: ColorsManager.blue,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: ColorsManager.light,
          foregroundColor: ColorsManager.black10,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 22.sp,
              color: ColorsManager.black10,
              fontWeight: FontWeight.normal),
          iconTheme: IconThemeData(color: ColorsManager.black)),
      scaffoldBackgroundColor: ColorsManager.light,
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: ColorsManager.grey,
        labelStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          color: ColorsManager.grey,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: ColorsManager.grey, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: ColorsManager.grey, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: ColorsManager.grey, width: 1.w),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              foregroundColor: ColorsManager.blue,
              textStyle: GoogleFonts.inter(
                  color: ColorsManager.blue,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r)),
              backgroundColor: ColorsManager.blue,
              padding: REdgeInsets.symmetric(vertical: 12),
              foregroundColor: ColorsManager.white,
              textStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManager.white))),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorsManager.black1C),
          titleMedium: GoogleFonts.inter(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: ColorsManager.blue)));
  static final ThemeData dark = ThemeData();
}
