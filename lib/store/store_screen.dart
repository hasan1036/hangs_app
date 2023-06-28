import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';


class StoreDetail extends StatefulWidget {
  const StoreDetail({Key? key}) : super(key: key);

  @override
  State<StoreDetail> createState() => _StoreDetailState();
}

class _StoreDetailState extends State<StoreDetail> {
  final double coverHeight = 130;
  final double profileHeight = 100;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          buildTop(),
          buildContent(),
        ],
      ),

    );

  }
  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child:   buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );

  }
  Widget buildCoverImage() =>Container(
    color: Colors.grey,
    child: Image.asset('assets/images/storebg.png',
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundImage: const NetworkImage(
        'https://upload.wikimedia.org/wikipedia/sco/thumb/b/bf/KFC_logo.svg/2048px-KFC_logo.svg.png'
    ),
  );

  Widget buildContent()=>Column(
    children: [
      const SizedBox(height:  8 ),
      const Text(
        'KFC 강남구청역점',style: TextStyle(color: Color(0xff191919),
          fontWeight: FontWeight.w700,
          fontSize: 18
      ),
      ),
      const Text(
        '서울시 강남구 학동로 402',style: TextStyle(color: Color(0xff999999),
          fontWeight: FontWeight.w400,
          fontSize: 17
      ),
      ),
      const SizedBox(height: 8),
      const Text(
        'KFC 강남구청역점입니다!',style: TextStyle(color: Color(0xff666666),
          fontWeight: FontWeight.w400,
          fontSize: 13
      ),
      ),
      const Text(
        '친절하고 빠른 KFC 강남구청역점!',style: TextStyle(color: Color(0xff666666),
          fontWeight: FontWeight.w400,
          fontSize: 13
      ),
      ),
      const SizedBox(height: 12),


      Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xff555E75),
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

        child:   Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    style: storeBtnOne,
                    onPressed: (){
                      // Get.to(const StoremobileCall());
                    }, icon: const Icon(Icons.phone),
                    label: const Text('전화하기',style: TextStyle(color: Color(0xffffffff),fontSize: 14),)),
                //const Text('카카오 계정 연결 / 로그인',style: TextStyle(color: Color(0xff1A1A1C))
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    style: storeBtnTwo,
                    onPressed: (){
                      // Get.to(const StoreLocation());
                    }, icon: const Icon(FontAwesomeIcons.locationDot),
                    label: const Text('지도보기',style: TextStyle(color: Color(0xffffffff),fontSize: 14),)
                ),
              ),
            )

          ],
        ),
      ),

      const SizedBox(
        height: 20,
      ),

      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 270, 0),
        child: Text('스탬프 적립 내역',style: TextStyle(color: Color(0xff191919),
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),),
      ),
      // const SizedBox(
      //   width: 300,
      //     child: Text('스탬프 적립 내역',style: TextStyle(color: Color(0xff191919),
      //     fontSize: 13,
      //       fontWeight: FontWeight.w500,
      //     ),),
      //
      // ),

      Padding(
        padding: const EdgeInsets.all(0),
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                          onPressed: (){
                            // Get.to(const StoreStampCancel());
                          },
                          mini: true,

                          backgroundColor: const Color(0xffffffff),
                          child: Image.asset('assets/images/kfcc.png'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),



                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton
                          (
                            onPressed: (){},
                            mini: true,

                            backgroundColor: const Color(0xffffffff),
                            child: const Icon(FontAwesomeIcons.plus,color: Color(
                                0xffc2baba),)),
                      ),



                    ],
                  ),

                ],
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
        child: Text('스탬프 적립 조건',style: TextStyle(color: Color(0xff191919),
          fontSize: 19,
          fontWeight: FontWeight.w500,
        ),),
      ),

      const SizedBox(
        height: 15,
      ),

      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0,105, 0),
        child: Text('5만원 이상 식사 시 : 스탬프 1회 제공',style: TextStyle(color: Color(0xff191919),
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),),
      ),

      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0,70, 0),
        child: Text('스탬프 5회 적립 시 : 텐더 치킨 제공 (5ea)',style: TextStyle(color: Color(0xff999999),
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),),
      ),

      const Padding(
        padding: EdgeInsets.fromLTRB(0, 0,70, 0),
        child: Text('스탬프 10회 적립 시 : 버거 세트 사이즈업',style: TextStyle(color: Color(0xff999999),
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),),
      ),

      const SizedBox(
        height: 30,
      ),
      Container(
        width: 340,
        color: const Color(0xffEDEDED),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text('스탬프 유효기간은 첫 적립 일로부터 1년입니다 \n          스탬프는 양도할 수 없습니다',style: TextStyle(color: Color(0xff999999),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),),

          ),

        ),
      ),


    ],


  );


}
