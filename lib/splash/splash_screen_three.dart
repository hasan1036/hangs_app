import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/image_string.dart';
import 'signup_screen.dart';
import 'splash_controller.dart';

class SplashScreenThree extends StatefulWidget {
  SplashScreenThree({Key? key}) : super(key: key);


  final splashScreenController =Get.put(SplashScreenController());

  @override
  State<SplashScreenThree> createState() => _SplashScreenThree();
}

class _SplashScreenThree extends State<SplashScreenThree> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
      // Get.to(const SignUpScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [

          Center(
            child: Positioned(

                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text('매일 찍어서',style: TextStyle(color: Color(0xff555E7566),fontWeight: FontWeight.w700,
                          fontSize: 38
                      ),),
                      Text('혜택이 쿵!',style: TextStyle(color: Color(0xff555E7526),fontWeight: FontWeight.w700,
                          fontSize: 38
                      ),),
                      Text('심장이 쿵!',style: TextStyle(color: Color(0xff555E75),fontWeight: FontWeight.w700,
                          fontSize: 38
                      ),),
                    ],

                  ),
                )),
          ),
          Center(
              child: Positioned(

                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0, 420, 0, 0),
                  child: Image(image: AssetImage(tSplashImage)),
                ),
              )

          ),
          Center(

            child: Positioned(

                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0, 520, 0, 0),
                  child:    Text('행복스탬프',style: TextStyle(color: Color(0xff555E75),
                      fontWeight: FontWeight.w700,
                      fontSize: 23
                  ),)
                  ,
                )

            ),
          ),
        ],

      ),


    );


  }
}
