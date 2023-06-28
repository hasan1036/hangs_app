import 'package:flutter/material.dart';

class Serviced extends StatefulWidget {
  const Serviced({Key? key}) : super(key: key);

  @override
  State<Serviced> createState() => _ServicedState();
}

class _ServicedState extends State<Serviced> {
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
                      }, icon: Icon(Icons.arrow_back_ios,color:Color(0xff191919),)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                        child: Text('서비스 도입안내',
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
              height: 15,
            ),

           Padding(
             padding: const EdgeInsets.fromLTRB(0, 0, 180, 0),
             child: Container(
               child: Text('서비스 이용 방법을',
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w700
               ),
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
              child: Container(
                child: Text('소개해드릴게요!',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(

                                          onPressed: (){}, child: Text(
                                        'STEP 01'
                                      )),


                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('구글스토어 OR 앱스토어 실행', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),


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
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(

                                          onPressed: (){}, child: Text(
                                          'STEP 02'
                                      )),


                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('“행스 사장님 앱” 다운로드', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),


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
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(

                                          onPressed: (){}, child: Text(
                                          'STEP 03'
                                      )),


                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('회원가입 후 “더보기” 메뉴 선택', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),


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
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(

                                          onPressed: (){}, child: Text(
                                          'STEP 04'
                                      )),


                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('“서비스 신청” 게시판 이용', style: TextStyle(color: Color(0xff191919),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),


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
