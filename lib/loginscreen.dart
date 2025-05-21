import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color a = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey,
        toolbarHeight: 100,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log In',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Gap(10),
            Text(
              'Kindly enter your information to login your Account',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24.0, top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Email',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
                TextField(
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'Enter your email',
                    hintFadeDuration: Duration(milliseconds: 500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(14),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24.0, top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  'Password',
                  style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w400),
                ),
                TextField(
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'Enter your password',
                    hintFadeDuration: Duration(milliseconds: 500),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget password?',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ],
            ),
          ),
          Gap(14),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: Size(double.infinity, 60),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          // Row(
          //   children: [
          //     Checkbox(
          //       value: true,
          //       onChanged: (bool? newValue) {
          //         setState(() {
          //           a;
          //         });
          //       },
          //     ),
          //     Gap(10),
          //     Text(
          //       'By Creating an account, you have aggred with\nour terms and conditions',
          //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          //     ),
          //   ],
          // ),
          Gap(14),
          Text.rich(
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            TextSpan(
              text: "Don't have an account?",
              children: [
                TextSpan(text: 'Signup', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Gap(14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.black,
                height: 10,
                thickness: 10,
                indent: 14,
                endIndent: 10,
              ),
              Gap(5),
              Text(
                'Or login with',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Gap(5),
              Divider(
                color: Colors.black,
                height: 10,
                thickness: 10,
                indent: 14,
                endIndent: 10,
              ),
            ],
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'asset/img/Platform=Google, Shape=Original, Colored=True.svg',
              ),
              Gap(20),
              SvgPicture.asset(
                'asset/img/Platform=Facebook, Shape=Original, Colored=True.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
