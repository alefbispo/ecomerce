import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/styles/login_screen_styles.dart';
import 'package:ecomerce/widgets/my_button_widget.dart';
import 'package:ecomerce/widgets/my_textfromfiel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          'images/Logo.png',
          height: 150,
        ),
        Column(
          children: [
            MyTextFromField(
              hintText: 'E-mail',
              obscureText: false,
            ),
            MyTextFromField(
              hintText: 'Password',
              obscureText: true,
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: MyButtonWidget(
                  onPress: () {},
                  color: AppColors.baseBlackColor,
                  text: 'Sing in',
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: MyButtonWidget(
                  onPress: () {},
                  color: AppColors.baseDarkPinkColor,
                  text: 'Sing up',
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Forgot password?',
          style: LoginScreenStyles.forgotPasswordStyles,
        )
      ],
    );
  }

  Widget buildbottomPart() {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'or sing in whith social networks',
            style: LoginScreenStyles.singinSocialStyles,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                MaterialButton(
                  shape:  OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0.5,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                  buildbottomPart(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
