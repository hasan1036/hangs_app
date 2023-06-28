
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../utils/app_color.dart';
import '../../utils/image_string.dart';
import '../BottomNavbar/bttom_nav_bar.dart';
import '../more/more_card_home.dart';
import 'splash_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  void imagePickerOption(){
    Get.bottomSheet(
        SingleChildScrollView(
          child: ClipRRect(
            child: SizedBox(
              height: 379,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Center(child: Text("Log in",style: TextStyle(color: Color(0xff000000),fontSize: 16,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height: 20,
                    ),

                    ElevatedButton.icon(
                      style: signupBtnOne,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));
                        // Get.to(const BottomBar());

                        },
                      icon:const Icon(FontAwesomeIcons.facebookMessenger,color: Colors.black,size: 15,),
                      label: const Text('카카오 계정 연결 / 로그인',style: TextStyle(color: Color(0xff1A1A1C)),),
                    ),

                   const SizedBox(
                      height: 7,
                    ),
                    ElevatedButton.icon(
                      style: signupBtnOne,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreCardHome()));
                        //Get.to( MoreCardHome());
                        },
                      icon:const Icon(FontAwesomeIcons.share,color: Colors.black,size: 15,),
                      label: const Text('카카오 계정 연결 / 로그인',style: TextStyle(color: Color(0xff1A1A1C)),),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    const Icon(FontAwesomeIcons.close,color: Colors.black,size: 25,)
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
          //Get.off(SplashScreen());
          }, icon:const Icon(Icons.arrow_back_ios, color: Color(0xff191919),)),
        title: const Text("로그인", style: TextStyle(color: Color(0xff191919),
        fontSize: 17,
          fontWeight: FontWeight.w500
        ),),
      ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding:  EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Image(image:  AssetImage(tSplashImage),),
          ),
          const Padding(
            padding:  EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text('행복스탬프', style: TextStyle(color: Color(0xff555E75),fontWeight: FontWeight.w700,fontSize: 20),),
          ),

          const Padding(
            padding:  EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Text('행복스탬프를 이용하기 위해', style: TextStyle(color: Color(0xff191919),fontWeight: FontWeight.w500,fontSize: 15),),
          ),
          const  Padding(
            padding:  EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text('최초 1회 로그인이 필요합니다', style: TextStyle(color: Color(0xff191919),fontWeight: FontWeight.w500,fontSize: 15),),
          ),

          Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(5, 30, 5, 0),
                child: ElevatedButton.icon(
                  style: signupBtnOne,
                    onPressed: (){
                      imagePickerOption();
                    },
                    icon:const Icon(FontAwesomeIcons.facebookMessenger,color: Colors.black,size: 15,),
                      label: const Text('카카오 계정 연결 / 로그인',style: TextStyle(color: Color(0xff1A1A1C)),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  style: signupBtntwo,
                  onPressed: (){},
                  icon:const Icon(FontAwesomeIcons.apple,color: Colors.black,size: 15,),
                  label: const Text('카카오 계정 연결 / 로그인',style: TextStyle(color: Color(0xff1A1A1C)),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  style: signupBtntwo,
                  onPressed: (){},
                  icon:const Icon(FontAwesomeIcons.google,color: Colors.black,size: 15,),
                  label: const Text('카카오 계정 연결 / 로그인',style: TextStyle(color: Color(0xff1A1A1C)),),
                ),
              ),

            ],
          )
        ],
      ),

    );
  }
}
