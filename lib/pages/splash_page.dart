import 'package:booking_app_ui/main.dart';
import 'package:flutter/material.dart';

import 'list_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ListPage()));
    });

    return Stack(
      children: [
        Container(
          color: mainThemeColor,
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.pool,
            color: Colors.white,
            size: 80,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white.withOpacity(0.4),
            ),
          ),
        ),
      ],
    );
  }
}
