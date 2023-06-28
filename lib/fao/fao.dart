import 'package:flutter/material.dart';

class Fao extends StatefulWidget {
  const Fao({Key? key}) : super(key: key);

  @override
  State<Fao> createState() => _FaoState();
}

class _FaoState extends State<Fao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Sort as selected',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xffFF0000)
          ),
          ),
        ),
      ),
    );
  }
}
