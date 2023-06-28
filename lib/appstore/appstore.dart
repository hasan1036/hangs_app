import 'package:flutter/material.dart';


class AppStore extends StatefulWidget {
  const AppStore({Key? key}) : super(key: key);

  @override
  State<AppStore> createState() => _AppStoreState();
}

class _AppStoreState extends State<AppStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'App Store or Google Store',
            style: TextStyle(
              color: Color(0xffFF0000),
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
