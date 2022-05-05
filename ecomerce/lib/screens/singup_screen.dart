import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:ecomerce/widgets/my_textfromfiel_widget.dart';
import 'package:flutter/material.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({Key? key}) : super(key: key);

  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          SvgImages.logo,
          height: 150,
        ),
        MyTextFromField(
          hintText: 'Full name',
          obscureText: false,
        ),
        MyTextFromField(
          hintText: 'Email',
          obscureText: false,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildTopPart(),
        ],
      )),
    );
  }
}
