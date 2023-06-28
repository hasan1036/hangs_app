import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/app_color.dart';
import '../home_button_two.dart';
import '../store/store_screen.dart';
import 'stamp.dart';



class StampSelectModel extends StatefulWidget {
  const StampSelectModel({Key? key}) : super(key: key);

  @override
  State<StampSelectModel> createState() => _StampSelectModel();
}

class _StampSelectModel extends State<StampSelectModel> {
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
                    Center(child: Image.asset('assets/images/btnclick.png',width: 70,height: 70,)),

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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StoreDetail()));
                        // Get.to(const StoreDetail());
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: (){Get.off(LineScreen());}, icon:const Icon(Icons.arrow_back_ios, color: Color(0xff191919),)),
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
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(color: const Color(0xffa9a1a1),width: 5),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(100)
                      ),
                    ),
                    child: InkWell(
                      onTap: (){
                        imagePickerOption();
                      },
                      child: ClipOval(
                        child: pickedImage != null ? Image.file(pickedImage!,
                          width: 170,
                          height: 170,
                          fit: BoxFit.cover
                          ,) :

                        Image.asset('assets/images/logo.png',width: 170,height: 170,fit: BoxFit.cover,),

                      ),
                    ),
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
                              padding: const EdgeInsets.all(16.0),
                              child: ElevatedButton(
                                style: buttonfour,
                                onPressed: (){},child: const Text('카드 모아보기',style: TextStyle(color: Color(0xff191919),fontSize: 14,
                                  fontWeight: FontWeight.w500),),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                    style: buttonfive,
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeButtonTwo()));
                                     // Get.to(const HomeButtonTwo());
                                    }, child: const Text("스탬프 모아보기",style: TextStyle(color: Color(0xff99999A),
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
                                  Center(child: Text('5개',style: TextStyle(color: Color(0xffffffff),fontSize: 13,fontWeight: FontWeight.w500),))
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

                  style: buttonPrimarythreee,
                  onPressed: (){}, child: const Text('스탬프 발급 횟수 선택 ',style: TextStyle(color: Color(0xff191919)),)),

            )

          ],
        )


    );
  }
}
