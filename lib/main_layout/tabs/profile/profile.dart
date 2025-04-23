import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_drop_down_menu.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_profile_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedLang = "English";

  String selectedTheme = "Light";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomProfileHeaderWidget(
            userName: "Muhammed Saad",
            userAccount: " mSaad@gmail.com",
            userImage: ImageAssets.profileImage),
        Expanded(
          child: Padding(
            padding: REdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomDropDownMenu(
                  label: "Language",
                  labelView: selectedLang,
                  items: ["English", "عربي"],
                  onChange: _onLanguageChange,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomDropDownMenu(
                  label: "Theme",
                  labelView: selectedTheme,
                  items: ["Light", "Dark"],
                  onChange: _onThemeChange,
                ),
                Spacer(
                  flex: 4,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsManager.red,
                        foregroundColor: ColorsManager.white),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text("Logout")
                      ],
                    )),
                Spacer(),
              ],
            ),
          ),
        )
      ],
    );
  }

  void _onLanguageChange(String? newLanguage) {
    setState(() {
      selectedLang = newLanguage ?? selectedLang;
    });
  }

  void _onThemeChange(String? newTheme) {
    setState(() {
      selectedTheme = newTheme ?? selectedTheme;
    });
  }
}
