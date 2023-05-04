import 'package:flutter/material.dart';

class Otpsend extends StatefulWidget {
  const Otpsend({super.key});

  @override
  State<Otpsend> createState() => _OtpsendState();
}

class _OtpsendState extends State<Otpsend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
        children: [
          Row(children: [
          
             Text("Sign In",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900
            ),)
          ],)
        ],
      )),
    );
  }
}