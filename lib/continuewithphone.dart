import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_project/myrouter/routes.dart';

class Continuewithphone extends StatefulWidget {
  const Continuewithphone({super.key});

  @override
  State<Continuewithphone> createState() => _ContinuewithphoneState();
}

class _ContinuewithphoneState extends State<Continuewithphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.45,
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue with Phone',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Gap(15),
              SvgPicture.asset(
                'asset/img/illustration continue with phone.svg',
                height: 150,
              ),
            ],
          ),
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Enter Your Phone Number',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  suffixIcon: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(RouteManager.h);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(200, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      'continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: 'Enter your phone number',
                  hintFadeDuration: Duration(milliseconds: 700),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
