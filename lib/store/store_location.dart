import 'package:flutter/material.dart';

class StoreLocation extends StatefulWidget {
  const StoreLocation({Key? key}) : super(key: key);

  @override
  State<StoreLocation> createState() => _StoreLocation();
}

class _StoreLocation extends State<StoreLocation> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Map module', style: TextStyle(color: Color(0xffFF0000),
            fontSize: 20),),
      ),
    );
  }
}
