import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../account/account_info.dart';
import '../home.dart';
import '../terms/terms.dart';


class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
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
                                color: Color(0xff99999A),
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
                                  color: Color(0xff555E75),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),)),

                            ),

                          ],
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

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('이용약관', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                           IconButton(onPressed: (){
                             Get.to(Terms());
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
                                      Text('개인정보 처리방침', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 15,
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
                              IconButton(onPressed: (){  Get.to(Terms());}, icon: Icon(Icons.arrow_forward_ios))

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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('위치기반서비스 이용약관', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(onPressed: (){  Get.to(Terms());}, icon: Icon(Icons.arrow_forward_ios))


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
