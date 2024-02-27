import 'package:flutter/material.dart';
import 'package:stickerai/features/landing/presentation/landing_page.dart';
import 'package:stickerai/features/my_stickers/presentation/my_stickers_page.dart';
import 'package:stickerai/features/navigation_bar/presentation/nav_bar_dot.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CustomBottomNavBar(
        onChange: (index) {
          _pageController.jumpToPage(index);
        },
        defaultSelectedIndex: _pageController.initialPage,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {},
        children: const [
          LandingPage(),
          MyStickersPage(),
        ],
      ),
    );
  }
}
