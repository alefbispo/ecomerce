import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/styles/home_sreen_style.dart';
import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  AppBar buildAppBar() {
    return AppBar(
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text('All'),
          Text('Clothing'),
          Text('Shoes'),
          Text('Accesories'),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: const [
          Text(
            'Welcome',
            style: HomeScreenStyle.appBarUpperTitleStyle,
          ),
          Text(
            'Shopping',
            style: HomeScreenStyle.appBarButtomTitleStyle,
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(SvgImages.setting),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(SvgImages.search),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: buildAppBar(),
          body: const TabBarView(
            children: [
              Center(
                child: Text('conteundo'),
                
              ),
              Center(
                child: Text('conteundo'),
                
              ),
              Center(
                child: Text('conteundo'),
                
              ),
              Center(
                child: Text('conteundo'),
                
              ),
            ],
          ),
        ));
  }
}
