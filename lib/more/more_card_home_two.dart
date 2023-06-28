

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../utils/app_color.dart';
import '../cupon/coupon_screen.dart';
import '../home.dart';
import '../store/store_screen.dart';



class MoreCardHomeTwo extends StatefulWidget {
  const MoreCardHomeTwo({Key? key}) : super(key: key);

  @override
  State<MoreCardHomeTwo> createState() => _MoreCardHomeTwoState();
}

class _MoreCardHomeTwoState extends State<MoreCardHomeTwo> {

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
                     Center(child: Image.asset('assets/images/hands.png',width: 100,height: 100,)),
                    SizedBox(
                      height: 20,
                    ),
                    Center(child: Text('축하합니다!',style: TextStyle(color: Color(0xff191919),fontWeight: FontWeight.w700,fontSize: 17),)),
                    SizedBox(
                      height: 16,
                    ),
                    Center(child: Text('[아메리카노 샷 추가] 쿠폰을 받으셨습니다.',style: TextStyle(color: Color(0xff191919),fontWeight: FontWeight.w700,fontSize: 14),)),

                    SizedBox(
                      height: 12,
                    ),
                    Center(child: Text('쿠폰은 홈 하단 [행스쿠폰]에서 확인 하실 수 있습니다.',style: TextStyle(color: Color(0xff999999),fontWeight: FontWeight.w700,fontSize: 13),)),
                    SizedBox(
                      height: 45,
                    ),
                  ElevatedButton(
                      style: buttonPrimarythree,
                      onPressed: (){
                        Get.to(CouponScreen());

                      }, child: Text('쿠폰 확인하기 ',style: TextStyle(color: Color(0xffffffff),fontSize: 17),))
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
          HomeScreen();
        }, icon:const Icon(Icons.home, color: Color(0xff191919),)),
        title: const Text("행스 홈", style: TextStyle(color: Color(0xff191919),),),
        actions: [

          IconButton(onPressed: (){}, icon:const Icon(Icons.menu_outlined, color: Color(0xff191919),)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search, color: Color(0xff191919),)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.notifications, color: Color(0xff191919),)),

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
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Card(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(48, 0, 0, 0),
                                        child: Image.asset('assets/images/name.png'),
                                      ),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 5),
                                          const Padding(
                                            padding: EdgeInsets.all(0),
                                            child: Text(
                                              "스타벅스 해운대엑스더스카이점",
                                              style: TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 4,),
                                          const Text(
                                            "2023. 03. 20 ~ 2024. 03.19",
                                            style: TextStyle(
                                                color: Color(0xff999999),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),

                                          Row(
                                            children: [
                                              const Text(
                                                "스탬프 1개",
                                                style: TextStyle(
                                                    color: Color(0xff555E75),
                                                    fontSize: 11
                                                    ,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              const SizedBox(width: 50),
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
                                                }, child: const Text('매장 정보 ',style:
                                              TextStyle(
                                                  color: Color(0xff191919),
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400
                                              ),),
                                              ),
                                            ],
                                          ),

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
                                    children: [

                                      Column(

                                        children: [

                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){},
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: Image.asset('assets/images/name.png')),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){},
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: Image.asset('assets/images/name.png')),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){},
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: Image.asset('assets/images/name.png')),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){ },
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: Image.asset('assets/images/name.png')),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){
                                                      contentPickerOption();
                                                    },
                                                    mini: true,
///////////////////////////////////akhane add kprte hbe
                                                    backgroundColor: const Color(0xffffffff),
                                                    child: Image.asset('assets/images/name.png')),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){},
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: const Icon(FontAwesomeIcons.plus,color: Color(
                                                        0xffc2baba),)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){},
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: const Icon(FontAwesomeIcons.plus,color: Color(
                                                        0xffc2baba),)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){},
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: const Icon(FontAwesomeIcons.plus,color: Color(
                                                        0xffc2baba),)),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.all(0),
                                                child: FloatingActionButton
                                                  (
                                                    onPressed: (){},
                                                    mini: true,

                                                    backgroundColor: const Color(0xffffffff),
                                                    child: const Icon(FontAwesomeIcons.plus,color: Color(
                                                        0xffc2baba),)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(0),
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
