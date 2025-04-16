import 'package:evently_c14_online_sun/core/resources/constant_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/cutom_tab_bar.dart';
import 'package:flutter/material.dart';
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
              color: Theme.of(context).colorScheme.primary,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(16.r))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back ✨",
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
                  categories: ConstantManager.categoriesWithAll,
                  selectedTabBg: Theme.of(context).colorScheme.secondary,
                  selectedLabelColor: Theme.of(context).colorScheme.onSecondary,
                  unSelectedLabelColor:
                      Theme.of(context).colorScheme.secondaryContainer)
            ],
          ),
        ),
      ],
    );
  }
}
