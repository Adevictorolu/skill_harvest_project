import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                height: 300,
                width: double.infinity,
                'asset/img/check-in-svgrepo-com.svg',
              ),
              // SvgPicture.asset(
              //   height: 150,
              //   width: double.infinity,
              //   'asset/img/inancial-security-svgrepo-com.svg',
              // ),
              Text(
                'Create you own\nstudy plan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Gap(2),
              Text(
                'Study according to the\nstudy plan, make study\nmore motivated',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                textAlign: TextAlign.center,
              ),
              Gap(100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      backgroundColor: Colors.blue,
                      fixedSize: Size(170, 40),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Gap(20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      backgroundColor: Colors.white,
                      fixedSize: Size(170, 40),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
