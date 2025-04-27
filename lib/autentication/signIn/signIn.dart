import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_divider.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_text_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(child: Image.asset(ImageAssets.logo)),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        label: AppLocalizations.of(context)!.email,
                        prefixIcon: Icons.email_rounded),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      isSecure: secure,
                      label: AppLocalizations.of(context)!.password,
                      prefixIcon: Icons.lock,
                      suffixIcon:
                          secure ? Icons.visibility_off : Icons.visibility,
                      onPress: _onClick,
                    ),
                    CustomTextButton(
                        title: AppLocalizations.of(context)!.forget_password,
                        onPress: () {}),
                    CustomElevatedButton(
                        title: AppLocalizations.of(context)!.sign_in,
                        onPress: () {}),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.dont_have_account,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        CustomTextButton(
                            title: AppLocalizations.of(context)!.create_account,
                            onPress: () {})
                      ],
                    ),
                    CustomDivider(
                      title: AppLocalizations.of(context)!.or,
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    CustomButton(
                        title: AppLocalizations.of(context)!.login_with_google,
                        onTap: () {})
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onClick() {
    setState(() {
      secure = !secure;
    });
  }
}
