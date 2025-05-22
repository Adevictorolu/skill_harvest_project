import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerifyphoneScreen extends StatefulWidget {
  const VerifyphoneScreen({super.key});

  @override
  State<VerifyphoneScreen> createState() => _VerifyphoneScreenState();
}

class _VerifyphoneScreenState extends State<VerifyphoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Verify Phone',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Gap(30),
            Text(
              'Code is Sent to +234 816 002 789',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
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
