import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../appstore/appstore.dart';

class Versiion extends StatefulWidget {
  const Versiion({Key? key}) : super(key: key);

  @override
  State<Versiion> createState() => _VersiionState();
}

class _VersiionState extends State<Versiion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                      }, icon: Icon(Icons.arrow_back_ios,color:Color(0xff191919),)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
                        child: Text('버전정보',
                          style: TextStyle(
                            color: Color(0xff191919),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: Container(
                          child: Icon(Icons.notifications,
                            color: Color(0xff191919),
                          ),
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [

                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('앱 현재 버전 V1.0.0', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),

                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('최신버전이 아닙니다', style: TextStyle(color: Color(0xff999999),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AppStore()));
                                        // Get.to(AppStore());
                                      }, child: Text(
                                        '업데이트',style: TextStyle(
                                        color: Color(0xff555E75),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500
                                      ),

                                      ))

                                    ],
                                  ),
                                ],
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
