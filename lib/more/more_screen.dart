import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'faq.dart';
// import 'home_screen.dart';
// import 'more_stamp_twoo.dart';
// import 'notice.dart';
// import 'service.dart';
import '../fao/faq.dart';
import '../notice/notice.dart';
import '../service/service.dart';
import '../store/store_screen.dart';
import '../version/version.dart';
import 'more_stamp_twoo.dart';
// import 'version.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         elevation: 0,
         leading: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios, color: Color(0xff191919),)),
         title: const Text("행스 찍기", style: TextStyle(color: Color(0xff191919),),),
         actions: [
           IconButton(onPressed: (){}, icon:const Icon(Icons.notifications, color: Color(0xff191919),)),
         ],
       ),
    body: Column(
    children: [


    Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16)
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [
    Row(
    children: [
   Icon(Icons.account_circle),
    SizedBox(
    width: 8,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('마이페이지', style: TextStyle(color: Color(0xff191919),
    fontSize: 14,
    fontWeight: FontWeight.w700
    ),
    ),
    SizedBox(
    height: 5,
    ),

    ],
    ),
    ],
    ),
IconButton(onPressed: (){
   Get.to(MoreScreenTwo());

}, icon: Icon(Icons.arrow_forward_ios))

    ],
    ),

    ),
        Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                    Row(
                        children: [
                            Icon(Icons.note),
                            SizedBox(
                                width: 8,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('공지사항', style: TextStyle(color: Color(0xff191919),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                    SizedBox(
                                        height: 5,
                                    ),

                                ],
                            ),
                        ],
                    ),

                    IconButton(onPressed: (){
                       Get.to(Notice());
                    }, icon: Icon(Icons.arrow_forward_ios))
                
                ],
            ),
            // child: ListTile(
            //   leading: Image.asset('assets/images/g.png'),
            //   title: Text('아메리카노 샷 추가 쿠폰',style: TextStyle(
            //     color: Color(0xff191919),
            //   ),
            //   ),
            //   subtitle: Text('2023. 02. 19 ~ 2024. 02.10',
            //   style: TextStyle(
            //     color: Color(0xffCCCCCC),
            //     fontWeight: FontWeight.w400,
            //     fontSize: 12
            //   ),
            //   ),
            // ),
        ),
        Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                    Row(
                        children: [
                            Icon(Icons.message),
                            SizedBox(
                                width: 8,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('서비스 도입안내', style: TextStyle(color: Color(0xff191919),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                    SizedBox(
                                        height: 5,
                                    ),

                                ],
                            ),
                        ],
                    ),

                    IconButton(onPressed: (){

                      Get.to(Faq());
                      }, icon: Icon(Icons.arrow_forward_ios))

                ],
            ),
            // child: ListTile(
            //   leading: Image.asset('assets/images/g.png'),
            //   title: Text('아메리카노 샷 추가 쿠폰',style: TextStyle(
            //     color: Color(0xff191919),
            //   ),
            //   ),
            //   subtitle: Text('2023. 02. 19 ~ 2024. 02.10',
            //   style: TextStyle(
            //     color: Color(0xffCCCCCC),
            //     fontWeight: FontWeight.w400,
            //     fontSize: 12
            //   ),
            //   ),
            // ),
        ),
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                Icon(Icons.message),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('서비스 도입안내', style: TextStyle(color: Color(0xff191919),
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                  ],
                ),
              ],
            ),

            IconButton(onPressed: (){
               Get.to(Serviced());
              }, icon: Icon(Icons.arrow_forward_ios))

          ],
        ),
        // child: ListTile(
        //   leading: Image.asset('assets/images/g.png'),
        //   title: Text('아메리카노 샷 추가 쿠폰',style: TextStyle(
        //     color: Color(0xff191919),
        //   ),
        //   ),
        //   subtitle: Text('2023. 02. 19 ~ 2024. 02.10',
        //   style: TextStyle(
        //     color: Color(0xffCCCCCC),
        //     fontWeight: FontWeight.w400,
        //     fontSize: 12
        //   ),
        //   ),
        // ),
      ),
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                Icon(Icons.message),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('마이페이지', style: TextStyle(color: Color(0xff191919),
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                  ],
                ),
              ],
            ),

            IconButton(onPressed: (){
              Get.to(Versiion());
              }, icon: Icon(Icons.arrow_forward_ios))

          ],
        ),
        // child: ListTile(
        //   leading: Image.asset('assets/images/g.png'),
        //   title: Text('아메리카노 샷 추가 쿠폰',style: TextStyle(
        //     color: Color(0xff191919),
        //   ),
        //   ),
        //   subtitle: Text('2023. 02. 19 ~ 2024. 02.10',
        //   style: TextStyle(
        //     color: Color(0xffCCCCCC),
        //     fontWeight: FontWeight.w400,
        //     fontSize: 12
        //   ),
        //   ),
        // ),
      ),

        ],
    ),

    );
  }
}



