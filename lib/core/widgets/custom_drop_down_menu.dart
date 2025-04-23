import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu(
      {super.key,
      required this.label,
      required this.labelView,
      required this.items,
      required this.onChange});

  final String label;
  final String labelView;
  final List<String> items;
  final void Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          height: 48.h,
          child: Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: ColorsManager.blue, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  labelView,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                DropdownButton(
                    underline: Container(),
                    style: Theme.of(context).textTheme.displaySmall,
                    items: items.map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: onChange)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
