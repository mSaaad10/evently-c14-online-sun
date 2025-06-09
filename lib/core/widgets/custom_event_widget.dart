import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/event_date_widget.dart';
import 'package:evently_c14_online_sun/core/widgets/event_title_widget.dart';
import 'package:evently_c14_online_sun/data/data_model/event_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEventWidget extends StatelessWidget {
  const CustomEventWidget({super.key, required this.event});

  final EventDM event;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      height: 203.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(width: 1.w, color: ColorsManager.blue),
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage(ImageAssets.base)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EventDateWidget(
            date: event.dateTime,
          ),
          const Spacer(),
          EventTitleWidget(
            title: event.title,
          ),
        ],
      ),
    );
  }
}
