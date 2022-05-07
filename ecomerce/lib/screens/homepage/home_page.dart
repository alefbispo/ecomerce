import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/data/home-page-data/home_page_data.dart';
import 'package:ecomerce/models/single_product_model.dart';
import 'package:ecomerce/styles/home_sreen_style.dart';
import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:ecomerce/widgets/show_all_widgest.dart';
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
          body: TabBarView(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const ShowAllWidget(
                    leftText: 'New Arrival',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      primary: true,
                      itemCount:  TextProduct.length,
                      physics:  const NeverScrollableScrollPhysics(),
                      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
              const Center(child: Text('conteundo')),
              const Center(child: Text('conteundo')),
              const Center(child: Text('conteundo')),
            ],
          ),
        ));
  }
}
