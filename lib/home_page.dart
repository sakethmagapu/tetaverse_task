import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

import 'profile_page.dart';
import 'utils/size_config.dart';
import 'widgets/popular_products_widget.dart';
import 'widgets/primary_banner_widget.dart';
import 'widgets/top_brands_widget.dart';
import 'widgets/top_categories_widget.dart';
import 'widgets/welcome_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _buildCircleBottomNavBar(context),
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(getScreenHeight(context) * 0.1),
          child: AppBar(
            title: const Center(
                child: Text(
              "Company\n   LOGO",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )),
            backgroundColor: Colors.white,
            elevation: 0.0,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/app_bar_bg.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                WelcomeWidget(),
                PrimaryBannerWidget(),
                TopCategoriesWidget(),
                PrimaryBannerWidget(),
                TopBrandsWidget(),
                PopularProductsWidget(),
              ]),
        ));
  }

  Widget _buildCircleBottomNavBar(
    BuildContext context,
  ) =>
      CircleNavBar(
        tabDurationMillSec: 300,
        tabCurve: Curves.easeIn,
        iconDurationMillSec: 300,
        iconCurve: Curves.easeIn,
        activeIcons: [
          _buildTab(
            isActive: true,
            icon: Icons.home_filled,
          ),
          _buildTab(
            isActive: true,
            icon: Icons.shopping_cart,
          ),
          _buildTab(
            isActive: true,
            icon: Icons.person,
          ),
        ],
        inactiveIcons: [
          _buildTab(
            icon: Icons.home_filled,
          ),
          _buildTab(
            icon: Icons.shop,
          ),
          _buildTab(
            icon: Icons.person,
          ),
        ],
        color: Colors.white,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 10, 63, 137),
            Color.fromARGB(255, 29, 115, 172),
          ],
        ),
        height: getScreenHeight(context) * .08,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom,
        ),
        circleWidth: getScreenHeight(context) * .07,
        onTap: (index) async {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          }
        },
        activeIndex: 1,
        elevation: 10,
      );

  Widget _buildTab({
    required IconData icon,
    bool isActive = false,
  }) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(height: 2),
        ],
      );
}
