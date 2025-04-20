import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventTitleWidget extends StatelessWidget {
  const EventTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: REdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            )),
            const Icon(
              Icons.favorite_border_rounded,
              color: ColorsManager.blue,
            )
          ],
        ),
      ),
    );
  }
}
