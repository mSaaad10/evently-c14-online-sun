import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sun/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool securePassword = true;
  bool secureRePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Column(
        children: [
          Expanded(child: Image.asset(ImageAssets.logo)),
          Expanded(
            flex: 4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextFormField(
                      keyboardType: TextInputType.name,
                      label: "Name",
                      prefixIcon: Icons.person),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      label: "Email",
                      prefixIcon: Icons.email),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    label: "Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: securePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    isSecure: securePassword,
                    onPress: _onPasswordIconClicked,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    label: "Re-Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: secureRePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    isSecure: secureRePassword,
                    onPress: _onRePasswordIconClicked,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomElevatedButton(title: "Sign-Up", onPress: () {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextButton(onPressed: () {}, child: Text("Sign-In"))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onPasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onRePasswordIconClicked() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }
}
