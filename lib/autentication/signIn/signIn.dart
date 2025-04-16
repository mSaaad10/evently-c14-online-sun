import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_divider.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_text_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
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
                    const CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        label: "Email",
                        prefixIcon: Icons.email_rounded),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      isSecure: secure,
                      label: "Password",
                      prefixIcon: Icons.lock,
                      suffixIcon:
                          secure ? Icons.visibility_off : Icons.visibility,
                      onPress: _onClick,
                    ),
                    CustomTextButton(title: "Forget Password?", onPress: () {}),
                    CustomElevatedButton(title: "Sign-In", onPress: () {}),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t Have Account ? ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        CustomTextButton(
                            title: "Create Account", onPress: () {})
                      ],
                    ),
                    const CustomDivider(title: "Or"),
                    SizedBox(
                      height: 32.h,
                    ),
                    CustomButton(title: "Login With Google", onTap: () {})
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
