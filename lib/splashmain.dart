import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_project/myrouter/routes.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({super.key});

  @override
  State<SplashMain> createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 7), () {
      Navigator.of(context).pushNamed(RouteManager.b);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              transform: GradientRotation(10),
              colors: [Colors.blue, Color.fromARGB(255, 10, 60, 117)],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'Avotek-to-Learn',
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
                pause: Duration(seconds: 1),
                isRepeatingAnimation: true,
              ),
              Text(
                'Learning Your Way',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Gap(30),
              LinearProgressIndicator(
                color: Colors.white,
                stopIndicatorColor: Colors.white,
                backgroundColor: Colors.white,
                value: 20,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
