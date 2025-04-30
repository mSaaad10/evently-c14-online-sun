import 'package:evently_c14_online_sun/config/theme/theme_manager.dart';
import 'package:evently_c14_online_sun/core/extensions/context_extension.dart';
import 'package:evently_c14_online_sun/core/routes_manager/routes_manager.dart';
import 'package:evently_c14_online_sun/providers/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var configProvider = Provider.of<ConfigProvider>(context);
    return ScreenUtilInit(
      designSize: Size(context.screenWidth, context.screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesManager.router,
          initialRoute: RoutesManager.mainLayout,
          theme: ThemeManager.light,
          darkTheme: ThemeManager.dark,
          themeMode: configProvider.currentTheme,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: const [
            Locale('en'), // English
            Locale('ar'), // Spanish
          ],
          locale: Locale(configProvider.currentLang)),
    );
  }
}
/// i18n
/// l10n
