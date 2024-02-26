import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stickerai/features/landing/presentation/landing_page.dart';
import 'package:stickerai/features/navigation_bar/presentation/nav_bar_dot.dart';
import 'package:stickerai/src/shared/extensions/string_extension.dart';
import 'package:stickerai/src/shared/handlers/deep_link_handler.dart';

class BottomNavBar extends StatefulWidget {
  final PageController pageController;
  const BottomNavBar({super.key, required this.pageController});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  String initialLink = "";
  late final PackageInfo packageInfo;

  @override
  void initState() {
    super.initState();
    deepLinkHandler();
  }

  Future<void> start() async {
    packageInfo = await PackageInfo.fromPlatform();
  }

  void deepLinkHandler() async {
    final appLinks = AppLinks();
    appLinks.allUriLinkStream.listen((uri) {
      initialLink = uri.toString();
      if (initialLink.isNotNullOrEmpty) {
        handleDeepLink(initialLink);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        onChange: (index) {
          widget.pageController.jumpToPage(index);
        },
        defaultSelectedIndex: widget.pageController.initialPage,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: widget.pageController,
        onPageChanged: (index) {},
        children: const [
          LandingPage(),
          LandingPage(),
        ],
      ),
    );
  }
}
