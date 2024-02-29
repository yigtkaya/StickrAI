import 'package:flutter/material.dart';

class ExceptionOnAppLaunch extends StatelessWidget {
  const ExceptionOnAppLaunch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.warning_amber,
                  color: Colors.amber,
                  size: 50,
                ),
                Center(
                  child: Text(
                    "AppLocalizations.of(context).checkYourConnection",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
