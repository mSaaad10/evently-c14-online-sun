import 'package:evently_c14_online_sun/data/data_model/categoryDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTab extends StatelessWidget {
  const CustomTab(
      {super.key,
      required this.category,
      required this.isSelected,
      required this.selectedTabBg,
      required this.selectedLabelColor,
      required this.unSelectedLabelColor});

  final CategoryDM category;
  final bool isSelected;
  final Color selectedTabBg;
  final Color selectedLabelColor;
  final Color unSelectedLabelColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: isSelected ? selectedTabBg : Colors.transparent,
          borderRadius: BorderRadius.circular(42.r),
          border: Border.all(color: selectedTabBg, width: 1.w)),
      child: Row(
        children: [
          SvgPicture.asset(
            category.iconPath,
            colorFilter: ColorFilter.mode(
                isSelected ? selectedLabelColor : unSelectedLabelColor,
                BlendMode.srcIn),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            category.name,
            style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: isSelected ? selectedLabelColor : unSelectedLabelColor),
          )
        ],
      ),
    );
  }
}
