import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_color.dart';
import '../Push/push.dart';
import '../home.dart';
import '../home_button_two.dart';
import '../sort/sort_selecrted.dart';
import '../store/store_details_two.dart';
import 'more_card_home_two.dart';

class MoreCardHome extends StatelessWidget {

  File? pickedImage;
  void imagePickerOption(){
    Get.bottomSheet(
        SingleChildScrollView(
          child: ClipRRect(
            borderRadius: const
            BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Container(
              color: Colors.white,
              height: 5000,
              child: Padding(
                padding:
                const EdgeInsets.all(20.0),
                child: Row(
                  children: [

                    Text('현재 사용 가능한 쿠폰',
                      style: TextStyle(
                          color: Color(0xff555E75)
                      ),
                    ),

                    SizedBox(width: 150,),

                    Text('총 1개',
                      style: TextStyle(
                          color: Color(0xff191919
                          )
                      ),
                    ),
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
            borderRadius: const
            BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Container(
              color: Colors.white,
              height: 379,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // TextButton(onPressed: (){pickImage(ImageSource.gallery);},
                    //     child: const Text('스탬프 카드 등록 완료',
                    //       style: TextStyle(color: Color(0xff191919),fontSize: 20,fontWeight: FontWeight.w400),
                    //       textAlign: TextAlign.center,)),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("정렬정렬",
                        style: TextStyle(
                            color: Color(0xff191919),
                            fontSize: 17,fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),


                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("가나다순",
                        style: TextStyle(
                            color: Color(0xff191919),
                            fontSize: 14,fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: TextButton(onPressed: (){
                        Get.to(SortSelected());
                      }, child: Text(
                        '최근 받은순',style: TextStyle(color: Color(0xff191919),
                      fontWeight: FontWeight.w400,
                        fontSize: 14
                      ),),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("유효기간순",
                        style: TextStyle(
                            color: Color(0xff191919),
                            fontSize: 14,fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("거리순",
                        style: TextStyle(
                            color: Color(0xff191919),
                            fontSize: 14,fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),

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
          Get.off(HomeScreen());

        }, icon:const Icon(Icons.home, color: Color(0xff191919),)),
        title: const Text("행스 홈", style: TextStyle(color: Color(0xff191919),),),
        actions: [

          IconButton(onPressed: imagePickerOptionOne,
              icon:const Icon(Icons.menu_outlined, color: Color(0xff191919),)),
          IconButton(onPressed: imagePickerOption,
              icon:const Icon(Icons.search,
                color: Color(0xff191919),)),
          IconButton(onPressed: (){
            Get.off(Push());
          }, icon:const Icon(Icons.notifications, color: Color(0xff191919),)),

        ],


      ),
body:
Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Column(

    children: [

       Expanded(

         flex: 8,

         child: Container(

          width: 300,

          height: 30,

          decoration: BoxDecoration(

              color: const Color(0xffDDDDDD),

              borderRadius: BorderRadius.circular(25),

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

                          Get.to(const MoreCardHomeTwo());

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



          Expanded(

            flex: 92,

            child: ListWheelScrollView(















            itemExtent:250,



            physics: const FixedExtentScrollPhysics(),



            diameterRatio: 4,



            squeeze: 2.0,



            useMagnifier: true,



            magnification: 1.5,



            perspective: 0.01,



            children: [







              Container(



                decoration: const BoxDecoration(



                  color: Color(0xff82917c),



                  borderRadius: BorderRadius.all(Radius.circular(20)),



                ),



                child: Center(



                  child: Column(



                    children: [



                      const SizedBox(height: 20,),



                      Image.asset('assets/images/name2.png'),



                      const SizedBox(height: 20,),



                    const Text('스타벅스 해운대엑스더스카이점',style: TextStyle(color: Color(0xff191919),



                    fontSize: 16,fontWeight: FontWeight.w700),),



                      const SizedBox(height: 5,),



                      const Text('2023. 03. 20 ~ 2024. 03.19',style: TextStyle(color: Color(0xff666666),



                          fontSize: 13,fontWeight: FontWeight.w400),),



                      const SizedBox(height: 20,),



                      ElevatedButton(



                          style: buttonCardtwo,



                          onPressed: (){







                          },



                          child:



                          const Text(



                            '매장 정보',style: TextStyle(color: Color(0xffffffff),



                      fontWeight: FontWeight.w500,



                              fontSize: 14



                      ),))











                    ],







                  ),



                )







            ),



              Container(



                  decoration: const BoxDecoration(



                    color: Color(0xff878e98),



                    borderRadius: BorderRadius.all(Radius.circular(20)),



                  ),



                  child: Center(



                    child: Column(



                      children: [



                        const SizedBox(height: 20,),



                        Image.asset('assets/images/name2.png'),



                        const SizedBox(height: 20,),



                        const Text('스타벅스 해운대엑스더스카이점',style: TextStyle(color: Color(0xff191919),



                            fontSize: 16,fontWeight: FontWeight.w700),),



                        const SizedBox(height: 5,),



                        const Text('2023. 03. 20 ~ 2024. 03.19',style: TextStyle(color: Color(0xff666666),



                            fontSize: 13,fontWeight: FontWeight.w400),),



                        const SizedBox(height: 20,),



                        ElevatedButton(



                            style: buttonCardtwo,



                            onPressed: (){







                            }, child: const Text('매장 정보',style: TextStyle(color: Color(0xffffffff),



                            fontWeight: FontWeight.w500,fontSize: 14



                        ),))











                      ],







                    ),



                  )







              ),



              Container(



                  decoration: const BoxDecoration(



                    color: Color(0xffdac9c9),



                    borderRadius: BorderRadius.all(Radius.circular(20)),



                  ),



                  child: Center(



                    child: Column(



                      children: [



                        const SizedBox(height: 20,),



                        Image.asset('assets/images/name2.png'),



                        const SizedBox(height: 20,),



                        const Text('스타벅스 해운대엑스더스카이점',style: TextStyle(color: Color(0xff191919),



                            fontSize: 16,fontWeight: FontWeight.w700),),



                        const SizedBox(height: 5,),



                        const Text('2023. 03. 20 ~ 2024. 03.19',style: TextStyle(color: Color(0xff666666),



                            fontSize: 13,fontWeight: FontWeight.w400),),



                        const SizedBox(height: 20,),



                        ElevatedButton(



                            style: buttonCardtwo,



                            onPressed: (){}, child: const Text('매장 정보',style: TextStyle(color: Color(0xffffffff),



                            fontWeight: FontWeight.w500,fontSize: 14



                        ),))











                      ],







                    ),



                  )







              ),



              Container(



                  decoration: const BoxDecoration(



                    color: Color(0xffffffff),



                    borderRadius: BorderRadius.all(Radius.circular(20)),



                  ),



                  child: Center(



                    child: Column(



                      children: [



                        const SizedBox(height: 20,),



                        Image.asset('assets/images/name2.png'),



                        const SizedBox(height: 20,),



                        const Text('스타벅스 해운대엑스더스카이점',style: TextStyle(color: Color(0xff191919),



                            fontSize: 16,fontWeight: FontWeight.w700),),



                        const SizedBox(height: 5,),



                        const Text('2023. 03. 20 ~ 2024. 03.19',style: TextStyle(color: Color(0xff666666),



                            fontSize: 13,fontWeight: FontWeight.w400),),



                        const SizedBox(height: 20,),



                        ElevatedButton(



                            style: buttonCardtwo,



                            onPressed: (){



                              Get.to(const StoreDetailTwo());



                            }



                            ,



                            child: const Text(



                              '매장 정보',style: TextStyle(color: Color(0xffffffff),



                            fontWeight: FontWeight.w500,fontSize: 14



                        ),))











                      ],







                    ),



                  )







              ),



























      ]),

          ),



    ],

  ),
),
    );
  }
}
