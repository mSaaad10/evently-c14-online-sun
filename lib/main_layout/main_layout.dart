import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/routes_manager/routes_manager.dart';
import 'package:evently_c14_online_sun/main_layout/tabs/favourite/favourite.dart';
import 'package:evently_c14_online_sun/main_layout/tabs/home/home.dart';
import 'package:evently_c14_online_sun/main_layout/tabs/map/maps.dart';
import 'package:evently_c14_online_sun/main_layout/tabs/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedTabIndex = 0;
  List<Widget> tabs = const [Home(), Maps(), Favourite(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedTabIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  void _goToCreateEvent() {
    Navigator.pushNamed(context, RoutesManager.createEvent);
  }

  Widget buildFab() {
    return FloatingActionButton(
      onPressed: _goToCreateEvent,
      child: const Icon(Icons.add),
    );
  }

  Widget buildBottomNavBar() {
    return BottomAppBar(
      notchMargin: 6,
      child: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(SvgAssets.selectedHomeIcon),
              icon: SvgPicture.asset(SvgAssets.unselectedHomeIcon),
              label: AppLocalizations.of(context)!.home,
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(SvgAssets.selectedMapIcon),
              icon: SvgPicture.asset(SvgAssets.unselectedMapIcon),
              label: AppLocalizations.of(context)!.map,
            ),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedFavouriteIcon),
                icon: SvgPicture.asset(SvgAssets.unselectedFavouriteIcon),
                label: AppLocalizations.of(context)!.favourite),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(SvgAssets.selectedProfileIcon),
              icon: SvgPicture.asset(SvgAssets.unselectedProfileIcon),
              label: AppLocalizations.of(context)!.profile,
            ),
          ]),
    );
  }

  void _onTap(int newTabIndex) {
    setState(() {
      selectedTabIndex = newTabIndex;
    });
  }
}
