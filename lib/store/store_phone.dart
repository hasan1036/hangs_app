import 'package:flutter/material.dart';

class StoremobileCall extends StatefulWidget {
  const StoremobileCall({Key? key}) : super(key: key);

  @override
  State<StoremobileCall> createState() => _StoremobileCall();
}

class _StoremobileCall extends State<StoremobileCall> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Making a phone call', style: TextStyle(color: Color(0xffFF0000),
        fontSize: 20),),
      ),
    );
  }
}
