import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../account/account_info.dart';
import '../home.dart';
import '../page/my_page.dart';



class MoreScreenTwo extends StatefulWidget {
  const MoreScreenTwo({Key? key}) : super(key: key);

  @override
  State<MoreScreenTwo> createState() => _MoreScreenTwo();
}

class _MoreScreenTwo extends State<MoreScreenTwo> {

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
                        child: Text('마이페이지',
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

                    Text('이메일',
                      style: TextStyle(
                          color: Color(0xff191919),
                          fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('gildong7742@naver.com',
                      style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w500,
                          fontSize: 15

                      ),
                    ),

                    SizedBox(width: 50,),

                    IconButton(onPressed: (){
                      Get.to(AccountInfo());
                    }, icon: Icon(Icons.settings))
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
                  color: Color(0xffF6F6F6),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('적립내역',style: TextStyle(
                                color: Color(0xff555E75),
                                fontSize: 17,
                                fontWeight: FontWeight.w700
                            ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0,0, 0),
                              child:
                              TextButton(onPressed: (){
                                Get.to(MyPage());

                              }, child: Text('이용약관', style: TextStyle(
                                  color: Color(0xff99999A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),)),

                            ),

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 250, 10),
                          child: const Text('2023. 01. 02',style: TextStyle(
                              color: Color(0xff99999A),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
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
                                  Image.asset('assets/images/g.png',width: 60,height: 50,),
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
                                      Text('서울시 강남구 역삼동 테헤란로 111',
                                        style: TextStyle(color: Color(0xffCCCCCC),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                              TextButton(onPressed: (){}, child: Text('2회 적립',style: TextStyle(color: Color(0xff555E75),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500

                              ),))

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
                                  Image.asset('assets/images/two.png'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('미스터피자 청담점', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('서울시 강남구 학동로 342',
                                        style: TextStyle(color: Color(0xffCCCCCC),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                              TextButton(onPressed: (){}, child: Text('1회 적립',style: TextStyle(color: Color(0xff555E75),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500

                              ),))

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
                        SizedBox(height: 5,),
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
                                  Image.asset('assets/images/g.png',width: 60,height: 50,),
                                  SizedBox(
                                    width:3,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('서브웨이 역삼점', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('서울시 강남구 역삼동 테헤란로25길 20',
                                        style: TextStyle(color: Color(0xffCCCCCC),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                              TextButton(onPressed: (){}, child: Text('서비스 이용',style: TextStyle(color: Color(0xff555E75),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500

                              ),))

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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 250, 10),
                          child: const Text('2023. 01. 02',style: TextStyle(
                              color: Color(0xff99999A),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
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
                                  Image.asset('assets/images/three.png'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('도미노피자 대치점', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('서울시 강남구 역삼로 444',
                                        style: TextStyle(color: Color(0xff999999),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                              TextButton(onPressed: (){}, child: Text('1회 취소',style: TextStyle(color: Color(0xff555E75),
                              fontSize: 13,
                                fontWeight: FontWeight.w500

                              ),))

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