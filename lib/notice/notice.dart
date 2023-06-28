import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class Notice extends StatefulWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
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
                  color: Color(0xffF6F6F6),
                  child: Center(
                    child: Column(
                      children: [



                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Row(
                                  children: [

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('STAMP가 출시되었습니다!', style: TextStyle(
                                            color: Color(0xff191919),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700
                                        ),
                                        ),
                                        SizedBox(height: 5),
                                        Text('2023. 08. 01', style: TextStyle(
                                            color: Color(0xff999999A),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700
                                        ),
                                        ),
                                      ],
                                    ),

                                  ]
                                ),

                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up))
                              ],
                            ),
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
                                      Text('안녕하세요 행복스탬프 입니다!', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text('STAMP가 출시되었습니다', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      Text('최고의 서비스로 노력하도록 하겠습니다', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text('많은 관심 부탁드립니다', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),


                            ],
                          ),

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
                                      Text('출시 기념 착순 이벤트가 시작됩니다', style: TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('2023. 07. 30', style: TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))



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
                                      Text('입점 매장 안내', style: TextStyle(
                                          color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('2023. 07. 280', style: TextStyle(
                                          color: Color(0xff99999A),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))



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
