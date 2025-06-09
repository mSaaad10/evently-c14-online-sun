import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/resources/constant_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_event_widget.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_tab_bar.dart';
import 'package:evently_c14_online_sun/data/data_model/categoryDM.dart';
import 'package:evently_c14_online_sun/data/data_model/event_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          padding: REdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(17.r))),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.welcome_back,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "Muhammed Saad",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined),
                    Text(
                      "Cairo, Egypt",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                CustomTabBar(
                    oncategorytabclick: (CategoryDM category)
                    {
                      setState(() {

                      });
                    },
                    categories: ConstantManager.categories,
                    selectedTabBg: Theme.of(context).colorScheme.secondary,
                    unselectedTabBg: Colors.transparent,
                    selectedLabelColor: Theme.of(context).colorScheme.onSecondary,
                    unSelectedLabelColor:
                        Theme.of(context).colorScheme.secondaryContainer)
              ],
            ),
          ),
        ),
        // Expanded(
        //     child: ListView.builder(
        //   itemBuilder: (context, index) => CustomEventWidget(
        //     event: EventDM(
        //         title: "Meeting for Updating The Development Method ",
        //         description: "Meeting for Updating The Development Method ",
        //        // category: selectedCategory,
        //         imagePath: ImageAssets.meeting,
        //         dateTime: DateTime.now(),
        //         ),
        //   ),
        //   itemCount: 20,
        // ))
      ],
    );
  }
}

/// i18n
