import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_drop_down_menu.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_profile_header_widget.dart';
import 'package:evently_c14_online_sun/providers/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late ConfigProvider configProvider;

  @override
  Widget build(BuildContext context) {
    configProvider = Provider.of<ConfigProvider>(context);
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
                  label: AppLocalizations.of(context)!.language,
                  labelView: configProvider.isEnglish ? "English" : "عربي",
                  items: ["English", "عربي"],
                  onChange: _onLanguageChange,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomDropDownMenu(
                  label: AppLocalizations.of(context)!.theme,
                  labelView: configProvider.isDark
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light,
                  items: [
                    AppLocalizations.of(context)!.light,
                    AppLocalizations.of(context)!.dark,
                  ],
                  onChange: _onThemeChange,
                ),
                const Spacer(
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
                        Text(
                          AppLocalizations.of(context)!.logout,
                        )
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
    String lang = newLanguage == "English" ? "en" : "ar";
    configProvider.changAppLang(lang);
  }

  void _onThemeChange(String? newTheme) {
    ThemeMode theme = newTheme == AppLocalizations.of(context)!.light
        ? ThemeMode.light
        : ThemeMode.dark;
    configProvider.changeAppTheme(theme);
  }
}
