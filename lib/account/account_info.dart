import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../utils/app_color.dart';
import '../home.dart';
import '../splash/signup_screen.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  File? pickedImage;
  void imagePickerOption(){
    Get.bottomSheet(
        SingleChildScrollView(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Container(
              color: Colors.white,
              height: 379,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(child: Image.asset('assets/images/six.png')),

                    const SizedBox(
                      height: 15,
                    ),


                    // const Text("스탬프 카드 등록 완료",
                    // style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    //   textAlign: TextAlign.center,
                    // ),

                    const SizedBox(
                      height: 10,
                    ),
                    const Center(child: Text("로그아웃",style: TextStyle(color: Color(0xff191919),
                        fontSize: 17,fontWeight: FontWeight.w700),)),
                    const SizedBox(
                      height: 10,
                    ),

                    const Center(child: Text("정말 로그아웃 하시겠습니까?",style: TextStyle(color: Color(
                        0xff191919),fontSize: 14,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height:25,
                    ),

                    ElevatedButton(
                      style: buttonPrimarythree,
                      onPressed: imagePickerOptionOne,
                      child: const Text('네, 로그아웃 할래요',style: TextStyle(color: Color(
                        0xffffffff)),),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
  void imagePickerOptionOne(){
    Get.bottomSheet(
        SingleChildScrollView(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Container(
              color: Colors.white,
              height: 379,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(child: Image.asset('assets/images/six.png')),

                    const SizedBox(
                      height: 15,
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    const Center(child: Text("로그아웃",style: TextStyle(color: Color(0xff191919),
                        fontSize: 17,fontWeight: FontWeight.w700),)),
                    const SizedBox(
                      height: 10,
                    ),

                    const Center(child: Text("정말 로그아웃 하시겠습니까?",style: TextStyle(color: Color(
                        0xff191919),fontSize: 14,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height:25,
                    ),

                    ElevatedButton(
                      style: buttonPrimarythree,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        //Get.to(const SignUpScreen());
                      },child: const Text('확인',style: TextStyle(color: Color(
                        0xffffffff)),),
                    )
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          //Get.off(HomeScreen());
        }, icon:const Icon(Icons.home, color: Color(0xff191919),)),
        title: const Text("계정정보", style: TextStyle(color: Color(0xff191919),),),
      ),
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Color(0xffF6F6F6),
                  child: Center(
                    child: Column(
                      children: [

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
                                      Text('고유번호', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
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
                              TextButton(onPressed: (){}, child: Text('00499281774',
                                style: TextStyle(color: Color(0xff999999),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500

                              ),))

                            ],
                          ),
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
                                      Text('이메일', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                              TextButton(onPressed: (){}, child: Text('gildong7742@naver.com',
                                style: TextStyle(color: Color(0xff999999),
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


                            children: [
                              Row(
                                children: [
                                  Column(

                                    children: [

                                      TextButton(onPressed: imagePickerOption,
                                          child: Text('로그아웃',style: TextStyle(
                                        color: Color(0xff666666),fontWeight: FontWeight.w500,
                                        fontSize: 13
                                      ),))

                                    ],
                                  ),
                                ],
                              ),

                            ],
                          ),

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
                                      TextButton(onPressed: imagePickerOption, child: Text('회원탈퇴', style:
                                        TextStyle(color: Color(0xff666666),
                                        fontSize: 13,
                                          fontWeight: FontWeight.w400
                                        )
                                        ,))

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
