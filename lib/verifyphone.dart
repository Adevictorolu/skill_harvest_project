import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_project/myrouter/routes.dart';

class VerifyphoneScreen extends StatefulWidget {
  const VerifyphoneScreen({super.key});

  @override
  State<VerifyphoneScreen> createState() => _VerifyphoneScreenState();
}

class _VerifyphoneScreenState extends State<VerifyphoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            children: [
              Text(
                'Verify Phone',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Gap(60),
              Text(
                'Code is Sent to +234 816 002 789',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              Gap(14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextfieldArea(),
                  Gap(5),
                  TextfieldArea(),
                  Gap(5),
                  TextfieldArea(),
                  Gap(5),
                  TextfieldArea(),
                ],
              ),
              Gap(45),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    // barrierColor: Colors.grey,
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 400,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'asset/img/Icon start learning screen.svg',
                                ),
                                Gap(5),
                                Text(
                                  textAlign: TextAlign.center,
                                  'Congratulations you have \ncompleted your registration!',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                Gap(5),
                                Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(350, 40),
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(
                                        context,
                                      ).pushReplacementNamed(RouteManager.i);
                                    },
                                    child: Text(
                                      'Done',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Verify and Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextfieldArea extends StatelessWidget {
  const TextfieldArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: 38,
      child: TextField(
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
