import 'package:capital/screen_page.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreen(
          seconds: 3,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255,1,172,217),
              Color.fromARGB(255,1,172,217),
            ]
          ),
          navigateAfterSeconds: ScreenPage(),
          image: Image.asset('image/tv_capital.png'),
          photoSize: 150,
          useLoader: false,
        ),
        /*Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/marca_promessas.png'),
              fit: BoxFit.contain,
            )
          ),
        ),*/
      ],
    );
  }
}
