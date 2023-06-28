import 'package:flutter/material.dart';

class SortSelected extends StatefulWidget {
  const SortSelected({Key? key}) : super(key: key);

  @override
  State<SortSelected> createState() => _SortSelectedState();
}

class _SortSelectedState extends State<SortSelected> {
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
