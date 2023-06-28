import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../utils/app_color.dart';
import '../home.dart';
import '../more/more_card_home.dart';


class CouponStampTwo extends StatefulWidget {
  const CouponStampTwo({Key? key}) : super(key: key);

  @override
  State<CouponStampTwo> createState() => _CouponStampTwoState();
}

class _CouponStampTwoState extends State<CouponStampTwo> {
  File? pickedImage;
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
                    Center(child: Image.asset('assets/images/one.png',width: 70,height: 70,)),

                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: (result!= null) ? Text('${result!.code}')
                          : TextButton(onPressed: (){}, child: const Text(
                        "쿠폰 이용 완료",style: TextStyle(color: Color(0xff191919)),)),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    const Center(child: Text("저희 매장을 이용해 주셔서 감사합니다",style: TextStyle(color: Color(0xff666666),fontSize: 14,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height: 10,
                    ),


                    const SizedBox(
                      height:25,
                    ),

                    ElevatedButton(
                      style: buttonEight,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreCardHome()));
                       // Get.to(MoreCardHome());
                      },child: const Text('홈으로 ',style: TextStyle(color: Color(0xff99999A)),),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

  final GlobalKey _gLobalKey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller){
    this.controller =controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Color(0xffF2C6BD),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                       // Get.off(HomeScreen());
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

//add

            SizedBox(
              height: 15,
            ),
            Expanded(

              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Stack(
                            children:<Widget> [
                              const SizedBox(
                                height: 20,
                              ),

                              Center(
                                child: SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: QRView(key: _gLobalKey,
                                      onQRViewCreated: qr
                                  ),
                                ),
                              ),
                              Center(
                                child: TextButton(onPressed: imagePickerOptionOne,
                                    child:const Text('"QR 카메라 영역"')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffDDDDDD),
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

                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                                child: ElevatedButton(
                                  style: buttonfour,
                                  onPressed: (){},child: const Text('스탬프',style: TextStyle(color: Color(0xff191919),fontSize: 14,
                                    fontWeight: FontWeight.w500),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      style: buttonfive,
                                      onPressed: (){
                                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>imagePickerOptionOne()));
                                        Get.to(imagePickerOptionOne);

                                      }, child: const Text("QR 코드",style: TextStyle(color: Color(0xff99999A),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  ),))
                                ],
                              ),
                            )
                          ],
                        ),


                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(

                        padding: EdgeInsets.all(20),
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
                                    Text('쿠폰 상세정보', style: TextStyle(color: Color(0xff191919),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500
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
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,

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
                                    Text('업체명', style: TextStyle(color: Color(0xff999999),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400
                                    ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('쿠폰종류',
                                      style: TextStyle(color: Color(0xff999999),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400
                                      ),),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('유효기간',
                                      style: TextStyle(color: Color(0xff999999),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('탐앤탐스 강남대로점', style: TextStyle(color:
                                    Color(0xff191919),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400
                                    ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text('아메리카노 샷 추가 쿠폰',
                                      style: TextStyle(color: Color(0xff191919),
                                          fontSize: 19,
                                          fontWeight: FontWeight.w400
                                      ),),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text('2023. 02. 19 ~ 2024. 02.10',
                                      style: TextStyle(color: Color(0xff191919),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400
                                      ),),
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
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('사용방법', style: TextStyle(color: Color(0xff191919),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                    ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('매장 내 NFC에 태그되면 버튼이 활성화 됩니다',
                                      style: TextStyle(color: Color(0xff99999A),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
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
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('스탬프의 유효기간은 첫 적립 일로부터 1년입니다',
                                      style: TextStyle(color: Color(0xff666666),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('스탬프는 양도할 수 없습니다',
                                      style: TextStyle(color: Color(0xff666666),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700
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


          ],

        ),
      ),



    );
  }
}
