import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              'Sign Up',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Gap(10),
            Text(
              'Kindly enter your information to have an Account',
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
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'Enter your email',
                    hintFadeDuration: Duration(milliseconds: 700),
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
          Gap(10),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24.0, top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  'Password',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
                TextField(
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_rounded),
                        );
                      },
                      icon: Icon(Icons.visibility_off_rounded),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'Enter your password',
                    hintFadeDuration: Duration(milliseconds: 700),
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
            padding: const EdgeInsets.only(right: 24.0, left: 24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: Size(double.infinity, 60),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  'Create an account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? newValue) {
                    setState(() {});
                  },
                ),
                Gap(10),
                Text(
                  'By creating an account, you have agreed with\nour terms and conditions',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Gap(14),
          Text.rich(
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            TextSpan(
              text: "Already have an account?",
              children: [
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
