import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';

import '../home.dart';
import '../store/store_screen.dart';
import 'coupon_stamp.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {


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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    //  Get.off(HomeScreen());
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
        SizedBox(
        height: 5,
        ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),

                padding: EdgeInsets.all(12),
                child: Row(
                  children: [

                    Text('현재 사용 가능한 쿠폰',
                      style: TextStyle(
                          color: Color(0xff555E75)
                      ),
                    ),

                    SizedBox(width: 150,),

                    Text('총 1개',
                    style: TextStyle(
                      color: Color(0xff191919
                      )
                    ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('전체',style: TextStyle(
                                color: Color(0xff555E75),
                                fontSize: 17,
                                fontWeight: FontWeight.w700
                            ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0,0, 0),
                              child: Text('사용가능',style: TextStyle(
                                  color: Color(0xff99999A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text('사용완료',style: TextStyle(
                                  color: Color(0xff99999A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
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
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('탐앤탐스 강남대로점', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Text('사용가능', style: TextStyle(color: Color(0xff555E75),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700
                              ),
                              ),
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
                          height: 2,
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
                                  Image.asset('assets/images/g.png'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('아메리카노 샷 추가 쿠폰', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('2023. 02. 19 ~ 2024. 02.10',
                                        style: TextStyle(color: Color(0xffCCCCCC),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                           IconButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CouponStamp()));
                               //Get.to(CouponStamp());
                           },
                               icon:Icon(Icons.arrow_forward_ios)),

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
                          height: 5,
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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('KFC 충무로점', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Text('사용완료', style: TextStyle(color: Color(0xff99999A),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700
                              ),
                              ),
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(

                               crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(

                                children: [
                                  Column(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(30, 5, 5, 5),
                                        child: Text('징거세트 3종 다리살 무료 업그레이드! +\n 바삭한 닭껍질 너겟 증정 (2ea)', style: TextStyle(
                                            color: Color(0xff191919),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500
                                        ),
                                        ),
                                      ),
                          Text('2023. 02. 19 ~ 2024. 02.10', style: TextStyle(color: Color(0xff99999A),
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),
                          ),

                                    ],

                                  ),
                                ],
                              ),


                            ],
                          ),

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
