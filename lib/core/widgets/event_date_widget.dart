import 'package:evently_c14_online_sun/core/extensions/date_time_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDateWidget extends StatelessWidget {
  const EventDateWidget({super.key, required this.date});

  final DateTime date;

  // day month year hour min sec mill sec mico sec

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              date.day.toString(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              date.getMonth,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }

  /// Mon
  /// 1   2 3 4 5 6 7
  /// 1
  /// 2
  /// 3
}
