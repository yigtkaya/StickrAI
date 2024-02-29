import 'package:flutter/material.dart';
import 'package:stickerai/src/shared/constants/asset_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF6D5589),
            image: DecorationImage(
              image: AssetImage(AssetConstants.images.logo),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
