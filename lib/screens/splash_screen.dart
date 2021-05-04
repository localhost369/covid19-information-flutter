import 'package:covid_info/constant/text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(COVID_LOGO,height: 100,width: 300,),
            SizedBox(
              height: 20,
            ),
            Text(
              APP_NAME,
              textScaleFactor: 1.8,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
