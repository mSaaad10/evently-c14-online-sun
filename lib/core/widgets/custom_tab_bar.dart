import 'package:evently_c14_online_sun/core/widgets/custom_tab.dart';
import 'package:evently_c14_online_sun/data/data_model/categoryDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {super.key,
      required this.categories,
      required this.selectedTabBg,
      required this.unselectedTabBg,
      required this.selectedLabelColor,
      required this.unSelectedLabelColor,
        required this.oncategorytabclick});

  final List<CategoryDM> categories;
  final Color selectedTabBg;
  final Color unselectedTabBg;
  final Color selectedLabelColor;
  final Color unSelectedLabelColor;
  final void Function(CategoryDM) oncategorytabclick;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categories.length,
      child: TabBar(
          onTap: _onTabItemClicked,
          indicatorColor: Colors.transparent,
          labelPadding: REdgeInsets.symmetric(horizontal: 10, vertical: 16),
          isScrollable: true,
          tabs: widget.categories
              .map(
                (category) => CustomTab(
                  selectedTabBg: widget.selectedTabBg,
                  unselectedTabBg: widget.unselectedTabBg,
                  selectedLabelColor: widget.selectedLabelColor,
                  unSelectedLabelColor: widget.unSelectedLabelColor,
                  category: category,
                  isSelected:
                      widget.categories.indexOf(category) == selectedTabIndex,
                ),
              )
              .toList()),
    );
  }

  void _onTabItemClicked(int newTabIndex) {
    widget.oncategorytabclick(widget.categories[newTabIndex]);
    setState(() {
      selectedTabIndex = newTabIndex;
    });
  }

}
