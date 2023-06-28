import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../utils/app_color.dart';

import '../Upload/home_two_upload_button.dart';
import '../home_button_two.dart';
import '../mobileGPS/qr_mobile_phone_gps.dart';
import '../stamp/stamp.dart';
import '../stamp/stamp_select_model.dart';

class StampQR extends StatefulWidget {
  const StampQR({Key? key}) : super(key: key);

  @override
  State<StampQR> createState() => _StampQRState();
}

class _StampQRState extends State<StampQR> {
  int _currentIndex =0;
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
                    Center(child: Image.asset('assets/images/loggot.png',width: 70,height: 70,)),

                    const SizedBox(
                      height: 15,
                    ),

                    TextButton(onPressed: (){pickImage(ImageSource.gallery);},
                        child: const Text('스탬프 카드 등록 완료',
                          style: TextStyle(color: Color(0xff191919),fontSize: 20,fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,)),

                    // const Text("스탬프 카드 등록 완료",
                    // style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    //   textAlign: TextAlign.center,
                    // ),

                    const SizedBox(
                      height: 10,
                    ),
                    const Center(child: Text("카드를 클릭하시면",style: TextStyle(color: Color(0xff666666),fontSize: 14,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height: 10,
                    ),

                    const Center(child: Text("매장의 상세정보를 보실 수 있습니다",style: TextStyle(color: Color(
                        0xff6d6d75),fontSize: 14,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height:25,
                    ),

                    ElevatedButton(
                      style: buttonPrimarythree,
                      onPressed: (){
                        Get.to(const HomeTwoUploadButton());
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
  pickImage(ImageSource imageType) async{
    try{
      final photo = await ImagePicker().pickImage(source: imageType);
      if(photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
      Get.back();
    }
    catch(error){
      debugPrint(error.toString());
    }
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
                    Center(child: Image.asset('assets/images/logothree.png',width: 70,height: 70,)),

                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: (result != null) ? Text('${result!.code}')
                          : TextButton(onPressed: (){}, child: const Text("카메라 기능 허용",style: TextStyle(color: Color(0xff191919)),)),
                    ),


                    // const Text("스탬프 카드 등록 완료",
                    // style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    //   textAlign: TextAlign.center,
                    // ),

                    const SizedBox(
                      height: 10,
                    ),
                    const Center(child: Text("QR 스캔을 위해서는 카메라 기능이 허용되어야 합니다",style: TextStyle(color: Color(0xff666666),fontSize: 14,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height: 10,
                    ),

                    const Center(child: Text("설정 > [카메라]를 허용해주세요",style: TextStyle(color: Color(
                        0xff6d6d75),fontSize: 14,fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height:25,
                    ),

                    ElevatedButton(
                      style: buttonEight,
                      onPressed: (){
                        Get.to(const MobileGps());
                      },child: const Text('설정',style: TextStyle(color: Color(0xff99999A)),),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }


  ////////////////////////////
  void contentPickerOption(){
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

                    // TextButton(onPressed: (){pickImage(ImageSource.gallery);},
                    //     child: const Text('스탬프 카드 등록 완료',
                    //       style: TextStyle(color: Color(0xff191919),fontSize: 20,fontWeight: FontWeight.w400),
                    //       textAlign: TextAlign.center,)),

                    const Text("스탬프 발급 횟수",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(
                      height: 5,
                    ),
                    const Center(child: Text("다중 선택 시 신중하게 선택해 주세요",
                      style:
                      TextStyle(color:
                      Color(0xff666666),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),)),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){

                                },
                                mini: true,
                                backgroundColor: const Color(0xffffffff),
                                child: const Text('2개',style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){},
                                mini: true,

                                backgroundColor: const Color(0xffffffff),
                                child:const Text('3개',style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){},
                                mini: true,

                                backgroundColor: const Color(0xffffffff),
                                child: const Text("4개",style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){},
                                mini: true,

                                backgroundColor: const Color(0xff555E75),
                                child: const Text("5개",style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),




                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){},
                                mini: true,

                                backgroundColor: const Color(0xffffffff),
                                child: const Text("6개",style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){},
                                mini: true,

                                backgroundColor: const Color(0xffffffff),
                                child: const Text("7개",style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){},
                                mini: true,

                                backgroundColor: const Color(0xffffffff),
                                child: const Text("8개",style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton
                              (
                                onPressed: (){},
                                mini: true,

                                backgroundColor: const Color(0xffffffff),
                                child: const Text("9개",style: TextStyle(fontSize: 14,color: Color(0xff999999)),)),
                          ),



                        ],
                      ),
                    ),
                    const SizedBox(
                      height:25,
                    ),

                    ElevatedButton(
                      style: buttonEight ,
                      onPressed: (){
                        Get.to(const StampSelectModel());
////add korte hbe
                      },child: const Text('확인',style: TextStyle(color: Color(0xff99999A)),),
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

  // final List<Widget> _screens =const [
  //   HomeScreen(),
  //   CouponScreen(),
  //   LineScreen(),
  //    MoreScreen(),
  //
  //
  // ];
  //
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LineScreen()));
            //Get.off(LineScreen());

          }, icon:const Icon(Icons.arrow_back_ios, color: Color(0xff191919),)),
          title: const Text("행스 찍기", style: TextStyle(color: Color(0xff191919),),),
          actions: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.notifications, color: Color(0xff191919),)),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            Align(
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
                    child: TextButton(onPressed: imagePickerOptionOne, child:const Text('"QR 카메라 영역"')),
                  ),
                ],
              ),
            ),


            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),

                    child: Container(
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeButtonTwo()));
                                      // Get.to(const HomeButtonTwo());
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Padding(padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: 350,
                      height: 40,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:[ BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: const Offset(0,3),
                          )]
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('스탬프 발급',style: TextStyle(color: Color(0xff191919)),),
                            ),
                          ),
                          Padding(padding: const EdgeInsets.fromLTRB(220, 0, 0, 0),
                            child: Container(
                              padding: const EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                  color: const Color(0xff555E75),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Column(
                                children: [
                                  Center(child: Text('1개',style: TextStyle(color: Color(0xffffffff),fontSize: 13,fontWeight: FontWeight.w500),))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )




                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(

                  style: buttonSix,
                  //akhane add dite hbe
                  onPressed:contentPickerOption , child: const Text('스탬프 발급 횟수 선택 ',style: TextStyle(color: Color(0xff191919)),)),

            )

          ],
        ),


    );

  }
}
