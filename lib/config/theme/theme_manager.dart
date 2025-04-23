import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
      useMaterial3: false,
      primaryColor: ColorsManager.blue,
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.blue,
          primary: ColorsManager.blue,
          secondary: ColorsManager.white,
          onSecondary: ColorsManager.blue,
          secondaryContainer: ColorsManager.white),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: ColorsManager.light,
          foregroundColor: ColorsManager.blue,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 18.sp,
              color: ColorsManager.blue,
              fontWeight: FontWeight.normal),
          iconTheme: const IconThemeData(color: ColorsManager.blue)),
      cardColor: ColorsManager.light,
      cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      )),
      iconTheme: const IconThemeData(color: ColorsManager.black1C),
      scaffoldBackgroundColor: ColorsManager.light,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorsManager.blue,
          foregroundColor: ColorsManager.white,
          shape: StadiumBorder(
              side: BorderSide(color: ColorsManager.white, width: 4.w))),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: ColorsManager.blue,
        shape: CircularNotchedRectangle(),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: ColorsManager.grey,
        labelStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          color: ColorsManager.grey,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: GoogleFonts.inter(
          fontSize: 14.sp,
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
        titleSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: ColorsManager.white),
        titleMedium: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: ColorsManager.white),
        headlineSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: ColorsManager.white),
        headlineMedium: GoogleFonts.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: ColorsManager.white),
        displayMedium: GoogleFonts.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: ColorsManager.black1C),
        displaySmall: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: ColorsManager.blue),
        labelMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: ColorsManager.blue),
        labelSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: ColorsManager.blue),
      ));
  static final ThemeData dark = ThemeData();
}
