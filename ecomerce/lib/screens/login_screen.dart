import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/widgets/my_button_widget.dart';
import 'package:ecomerce/widgets/my_textfromfiel_widget.dart';
import 'package:flutter/material.dart';

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
          margin: EdgeInsets.symmetric(horizontal: 20),
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
        )
        Text('Forgot password?',style: ,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
