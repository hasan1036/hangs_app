import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../utils/app_color.dart';
import '../store/store_screen.dart';
import '../store/store_stamp_cancel.dart';



class HomeTwoUploadButtontwo extends StatelessWidget {
  const HomeTwoUploadButtontwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          elevation: 0,
          leading: IconButton(onPressed: (){}, icon:const Icon(Icons.home, color: Color(0xff191919),)),
          title: const Text("행스 홈", style: TextStyle(color: Color(0xff191919),),),
          actions: [

            IconButton(onPressed: (){}, icon:const Icon(Icons.menu_outlined, color: Color(0xff191919),)),
            IconButton(onPressed: (){}, icon:const Icon(Icons.search, color: Color(0xff191919),)),
            IconButton(onPressed: (){}, icon:const Icon(Icons.notifications, color: Color(0xff191919),)),

          ],


        ),
        body:ListView(
          children: [
            SingleChildScrollView(
              child: Padding(
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
                                  style: buttonthird,
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
                                      style: buttonfour,
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeTwoUploadButtontwo()));
                                       // Get.to(const HomeTwoUploadButtontwo());
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

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                        child: Card(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                                child: Image.asset('assets/images/name.png'),
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "스타벅스 해운대엑스더스카이점",
                                      style: TextStyle(
                                        color: Color(0xff191919),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "2023. 03. 20 ~ 2024. 03.19",
                                    style: TextStyle(
                                        color: Color(0xff999999),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Text(
                                        "스탬프 1개",
                                        style: TextStyle(
                                            color: Color(0xff555E75),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      const SizedBox(width: 100,),
                                      // TextButton(
                                      //   "매장 정보 ",
                                      //   child: ,
                                      //   style: TextStyle(
                                      //       color: Color(0xff191919),
                                      //       fontSize: 14,
                                      //       fontWeight: FontWeight.w400
                                      //   ),
                                      // ),
                                      TextButton(

                                        onPressed: (){
                                        Get.to(const StoreDetail());
                                      }, child: const Text('매장 정보 ',style: TextStyle(
                                        color: Color(0xff191919),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                      ),),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(onPressed: (){

                                Get.to(const StoreStampCancel());
                              },
                                  backgroundColor: const Color(0xffeeebeb),
                                  child: Image.asset('assets/images/name.png')
                              ),
                              // child: Image.asset('assets/images/name.png'),


                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: FloatingActionButton
                                       (
                                         onPressed: (){},
                                      mini: true,

                                         backgroundColor: const Color(0xffffffff),
                                         child: const Icon(FontAwesomeIcons.plus,color: Color(
                                             0xffc2baba),)),
                                   ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton
                                        (
                                          onPressed: (){},
                                          mini: true,

                                          backgroundColor: const Color(0xffffffff),
                                          child: const Icon(FontAwesomeIcons.plus,color: Color(
                                              0xffc2baba),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton
                                        (
                                          onPressed: (){},
                                          mini: true,

                                          backgroundColor: const Color(0xffffffff),
                                          child: const Icon(FontAwesomeIcons.plus,color: Color(
                                              0xffc2baba),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
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
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton
                                        (
                                          onPressed: (){},
                                          mini: true,

                                          backgroundColor: const Color(0xffffffff),
                                          child: const Icon(FontAwesomeIcons.plus,color: Color(
                                              0xffc2baba),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton
                                        (
                                          onPressed: (){},
                                          mini: true,

                                          backgroundColor: const Color(0xffffffff),
                                          child: const Icon(FontAwesomeIcons.plus,color: Color(
                                              0xffc2baba),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton
                                        (
                                          onPressed: (){},
                                          mini: true,

                                          backgroundColor: const Color(0xffffffff),
                                          child: const Icon(FontAwesomeIcons.plus,color: Color(
                                              0xffc2baba),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
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
                    )






                  ],
                ),

              ),

            )
          ],
        )



    );

  }
}
