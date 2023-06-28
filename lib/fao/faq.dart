import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_color.dart';
import '../notice/notice.dart';
import 'fao.dart';


class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2C6BD),
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
                        Get.off(Notice());
                      }, icon: Icon(Icons.arrow_back_ios,color:Color(0xff191919),)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
                        child: Text('자주묻는질문',
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
            SizedBox(
              height: 5,
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),

                padding: EdgeInsets.all(3),
                child: Row(
                  children: [

                    Text('찾으시는 내용을 입력하세요',
                      style: TextStyle(
                          color: Color(0xffCCCCCC)
                      ),
                    ),

                    SizedBox(width: 125,),
                    IconButton(onPressed: (){
                      Get.to(Fao());
                    }, icon: Icon(Icons.search)),


                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(10),
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
                              child: Text('회원관련',style: TextStyle(
                                  color: Color(0xff99999A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text('스탬프',style: TextStyle(
                                  color: Color(0xff99999A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text('스탬프',style: TextStyle(
                                  color: Color(0xff99999A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text('쿠폰',style: TextStyle(
                                  color: Color(0xff99999A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                          TextButton(onPressed: (){

                            Get.to(Fao());
                          }, child: Text('QR코드',style: TextStyle(
                            color: Color(0xff99999A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400

                          ),))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                                      Text('카카오 계정 변경으로 인한 기존 데이터 백업이 가\n능한가요?', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),

                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('2023. 07. 30', style: TextStyle(color: Color(0xff999999),
                                          fontSize: 13,
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
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(50, 13, 0, 10),
                                        child: Icon(Icons.arrow_drop_down
                                        ),
                                      ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0,20),
                      child: ElevatedButton(
                      style: buttongive,
                          onPressed: (){}, child: Text('회원관련',style: TextStyle(

                          fontSize: 10,
                          fontWeight: FontWeight.w500
                      ),)),
                    )

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
                        SizedBox(
                          height: 2,
                        ),
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
                                      Text('실수로 스탬프를 두 번 찍었는데 삭제 가능한가요?', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),

                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('2023. 06. 11', style: TextStyle(color: Color(0xff999999),
                                          fontSize: 13,
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
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                                        child: Icon(Icons.arrow_drop_down
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 0,20),
                                        child: ElevatedButton(
                                            style: buttongive,
                                            onPressed: (){}, child: Text('스탬프',style: TextStyle(

                                            fontSize: 10,
                                            fontWeight: FontWeight.w500
                                        ),)),
                                      )

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
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
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
                                      Text('안녕하세요 행복스탬프입니다!', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('해당 쿠폰에 찍힌 제일 첫 번째 스탬프 클릭시 스탬프를 취소\n할 수 있는 화면으로 이동됩니다\n\n매장 NFC 태깅 하시면 스탬프 회수 버튼이 활성화됩니다\n감사합니다', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
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
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
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
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                        child: Text('QR 코드 활성화가 안돼요', style: TextStyle(color: Color(0xff191919),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500
                                        ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),

                                      SizedBox(
                                        height: 4,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                        child: Text('2023. 03. 10', style: TextStyle(color: Color(0xff999999),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400
                                        ),
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
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                                        child: Icon(Icons.arrow_drop_down
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 0,20),
                                        child: ElevatedButton(
                                            style: buttongive,
                                            onPressed: (){}, child: Text('스탬프',style: TextStyle(

                                            fontSize: 10,
                                            fontWeight: FontWeight.w500
                                        ),)),
                                      )

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
