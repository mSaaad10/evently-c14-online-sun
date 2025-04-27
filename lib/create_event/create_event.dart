import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sun/core/resources/constant_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_text_form_field.dart';
import 'package:evently_c14_online_sun/core/widgets/cutom_tab_bar.dart';
import 'package:evently_c14_online_sun/core/widgets/event_appointment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.create_event,
        ),
      ),
      body: Padding(
        padding: REdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(18.r),
                  child: Image.asset(ImageAssets.meeting)),
              CustomTabBar(
                categories: ConstantManager.categoriesWithoutAll,
                selectedTabBg: ColorsManager.blue,
                unselectedTabBg: Colors.transparent,
                selectedLabelColor: ColorsManager.light,
                unSelectedLabelColor: ColorsManager.blue,
              ),
              Text(
                AppLocalizations.of(context)!.title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                hint: AppLocalizations.of(context)!.event_title,
                prefixIcon: Icons.edit_note_outlined,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                AppLocalizations.of(context)!.description,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                hint: AppLocalizations.of(context)!.event_description,
                keyboardType: TextInputType.text,
                maxLines: 3,
              ),
              EventAppointmentWidget(
                  onPress: () {},
                  icon: Icons.date_range,
                  appointmentTitle: AppLocalizations.of(context)!.event_date,
                  buttonTitle: AppLocalizations.of(context)!.choose_date),
              SizedBox(
                height: 8.h,
              ),
              EventAppointmentWidget(
                  onPress: () {},
                  icon: Icons.access_time_rounded,
                  appointmentTitle: AppLocalizations.of(context)!.event_time,
                  buttonTitle: AppLocalizations.of(context)!.choose_time),
              CustomElevatedButton(
                  title: AppLocalizations.of(context)!.add_event,
                  onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
