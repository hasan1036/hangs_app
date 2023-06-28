import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangs_app_user/stamp/stamp.dart';

import 'home_button_two.dart';
import 'utils/app_color.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.off(HomeScreen());
        }, icon:const Icon(Icons.home, color: Color(0xff191919),)),
        title: const Text("행스 홈", style: TextStyle(color: Color(0xff191919),),),
        actions: [

          IconButton(onPressed: (){}, icon:const Icon(Icons.menu_outlined, color: Color(0xff191919),)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search, color: Color(0xff191919),)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.notifications, color: Color(0xff191919),)),

        ],


      ),



      body:ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),

                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffDDDDDD),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(0,3),
                            )
                          ]
                      ),

                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ElevatedButton(
                                style: buttonthird,
                                onPressed: (){},child: const Text('카드 모아보기',style: TextStyle(color: Color(0xff191919),fontSize: 14,
                                  fontWeight: FontWeight.w500),),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                    style: buttonfour,
                                    onPressed: (){
                                     //Z21q Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeButtonTwo()));
//     Navigator.push(context, MaterialPageRoute(builder: (context){
// //               return NextScreen();
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeButtonTwo()));

                                    //    Get.to(const HomeButtonTwo());
                                    }, child: const Text("스탬프 모아보기",style: TextStyle(color: Color(0xff99999A),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14
                                ),))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: SizedBox(
                      width: 343,
                      height: 245,
                      child: Stack(
                        children: [
                          Container(
                            width: 343,
                            height: 245,
                            decoration: BoxDecoration(
                                color: const Color(0xff555E75),
                                borderRadius: BorderRadius.circular(18)
                            ),
                          ),
                          Positioned(
                            top:21,
                            left: 140,
                            child: Center(
                              child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset('assets/images/logo.png')
                              ),
                            ),
                          ),

                          const Positioned(
                            top: 100,
                            left: 100,
                            child: Center(
                              child: Text("스탬프 카드가 없습니다",style: TextStyle(color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 130,
                            left:70,
                            child: Center(
                              child: Text("스탬프를 추가하여 쿠폰을 받아보세요!",style: TextStyle(color: Color(
                                  0xffffffff),
                                fontSize: 13,
                              ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 180,
                              left:22,
                              child: ElevatedButton(
                                style: buttonPrimary,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LineScreen()));
                                  // Get.to(LineScreen());
                                },
                                child: const Text('스탬프 카드 추가 ',style: TextStyle(color: Color(0xff000000)),),))
                        ],
                      ),
                    ),
                  ),




                ],
              ),

            ),

          )
        ],
      ),


    );

  }
}
