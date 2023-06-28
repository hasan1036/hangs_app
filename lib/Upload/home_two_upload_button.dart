import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_color.dart';
import '../store/store_screen.dart';
import 'home_two_upload_button_two.dart';


class HomeTwoUploadButton extends StatelessWidget {
  const HomeTwoUploadButton({Key? key}) : super(key: key);

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
                                        Get.to(const HomeTwoUploadButtontwo());
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
                    Padding(padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                      child: SizedBox(
                        width: 343,
                        height: 245,
                        child: Stack(
                          children: [
                            Container(
                              width: 343,
                              height: 245,
                              decoration: BoxDecoration(
                                  color: const Color(0xffefeded),
                                  borderRadius: BorderRadius.circular(18)
                              ),
                            ),
                            Positioned(
                              top:20,
                              left: 135,
                              child: Center(
                                child: Container(
                                    height: 80,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset('assets/images/name.png')
                                ),
                              ),
                            ),

                            const Positioned(
                              top: 100,
                              left: 70,
                              child: Center(
                                child: Text("스타벅스 해운대엑스더스카이점",style: TextStyle(color: Color(
                                    0xff000000),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 130,
                              left:85,
                              child: Center(
                                child: Text("2023. 03. 20 ~ 2024. 03.19",style: TextStyle(color: Color(
                                    0xff000004),
                                  fontSize: 13,
                                ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 180,
                                left:25,
                                child: ElevatedButton(
                                  style: buttonPrimarytwo,
                                  onPressed: (
                                      ) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoreDetail()));
                                   // Get.to(const StoreDetail());
                                    },
                                  child: const Text('매장 정보',style: TextStyle(color: Color(
                                      0xffffffff)),),))
                          ],
                        ),
                      ),
                    ),




                  ],
                ),

              ),

            )
          ],
        )



    );

  }
}
