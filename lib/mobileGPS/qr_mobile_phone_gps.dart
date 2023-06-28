import 'package:flutter/material.dart';


class MobileGps extends StatefulWidget {
  const MobileGps({Key? key}) : super(key: key);

  @override
  State<MobileGps> createState() => _MobileGpsState();
}

class _MobileGpsState extends State<MobileGps> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    body: Center(child: Text('Mobile phone GPS function settings window',style: TextStyle(color: Colors.deepOrange,fontSize: 15),)),
    );
  }
}
