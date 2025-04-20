import 'package:evently_c14_online_sun/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventAppointmentWidget extends StatelessWidget {
  const EventAppointmentWidget(
      {super.key,
      required this.icon,
      required this.appointmentTitle,
      required this.buttonTitle,
      required this.onPress});

  final IconData icon;
  final String appointmentTitle;
  final String buttonTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
            child: Text(
          appointmentTitle,
          style: Theme.of(context).textTheme.bodySmall,
        )),
        CustomTextButton(title: buttonTitle, onPress: onPress),
      ],
    );
  }
}
