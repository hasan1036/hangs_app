import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';
import '../store/store_screen.dart';
import '../utils/app_color.dart';

class Push extends StatefulWidget {
  const Push({Key? key}) : super(key: key);

  @override
  State<Push> createState() => _PushState();
}

class _PushState extends State<Push> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2C6BD),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        Get.off(HomeScreen());
                      }, icon: Icon(Icons.arrow_back_ios,color:Color(0xff191919),)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
                        child: Text('행스 쿠폰',
                          style: TextStyle(
                            color: Color(0xff191919),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Container(
                        child: Icon(Icons.notifications,
                          color: Color(0xff191919),
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('2023. 01. 02',style: TextStyle(
                                color: Color(0xff555E75),
                                fontSize: 17,
                                fontWeight: FontWeight.w700
                            ),
                            ),

                          ],
                        ),
                       SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/g.png',width: 60,height: 40,),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('탐앤탐스 강남대로점', style:
                                      TextStyle(color: Color(0xff999999),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('스탬프 유효기간이 30일 남았습니다.', style:
                                      TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('혜택을 놓치지 마세요!',
                                        style: TextStyle(color: Color(0xff191919),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(onPressed: (){
                                Get.to(StoreDetail());}, icon:Icon(Icons.arrow_forward_ios)),

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
                        SizedBox(
                          height:7,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/g.png',width: 60,height: 40,),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('스타벅스 해운대엑스더스카이점', style:
                                      TextStyle(color: Color(0xff999999),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('쿠폰까지 남은 스탬프 1개!', style:
                                      TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('혜택을 놓치지 마세요!',
                                        style: TextStyle(color: Color(0xff191919),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(onPressed: (){
                                Get.to(StoreDetail());}, icon:Icon(Icons.arrow_forward_ios)),

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
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('2022. 12. 29',style: TextStyle(
                                color: Color(0xff191919),
                                fontSize: 13,
                                fontWeight: FontWeight.w700
                            ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/g.png',width: 60,height: 40,),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('파스꾸찌 송산포도휴게소점', style:
                                      TextStyle(color: Color(0xff999999),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('스탬프 유효기간이 30일 남았습니다.', style:
                                      TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('혜택을 놓치지 마세요!',
                                        style: TextStyle(color: Color(0xff191919),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(onPressed: (){
                                Get.to(StoreDetail());}, icon:Icon(Icons.arrow_forward_ios)),

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
                  ),
                ),
              ),
            ),

          ],

        ),
      ),



    );
  }
}
