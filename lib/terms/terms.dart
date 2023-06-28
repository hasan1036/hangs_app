import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';


class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          //Get.off(HomeScreen());
        }, icon:const Icon(Icons.arrow_back_ios, color: Color(0xff191919),)),
        title: const Text("계정정보", style: TextStyle(color: Color(0xff191919),),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('행스 이용약관',
                style: TextStyle(
                  color: Color(0xff191919),
                  fontWeight: FontWeight.w700,
                  fontSize: 17
                ),

                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('제1조 [목적]',
                  style: TextStyle(
                      color: Color(0xff191919),
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                  ),

                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('해당 약관은 행복한스탬프 (이하“회사”)가 제공하는 행스 서비스 \n및 관련제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의 \n무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.',
                  style: TextStyle(
                      color: Color(0xff191919),
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),

                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('제2조 [정의]',
                  style: TextStyle(
                      color: Color(0xff191919),
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                  ),

                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text( '이 약관에서 사용하는 용어의 정의는 다음과 같습니다.\n'
                    '1. “서비스”라 함은 구현되는 단말기 (pc, 휴대형 단말기 등의 각\n'
                    '종 유무선 장치를 포함)와 상관없이 “회원”이 이용할 수 있는 행스 \n'
                    '및 회사가 제공하는 모든 서비스를 의미합니다.\n2. “회원”은 소셜인증을 한 이용자와 하지 않은 이용자 모두를 지\n칭합니다.'
                    '3. “회원”이라 함은 “회사”의 “서비스”에 접속하여 “회사”가 제공\n'
                    '하는 “서비스”를 이용하는 고객을 말합니다.\n'
                    '4. “쿠폰”이라 함은 “행복스탬프” 서비스에서 제공하는 혜택으로 \n'
                    '“회사”가 제휴한 업체에서 받을 수 있는 금액할인 또는 무료제공 \n'
                    '등의 혜택의 내용이 기재되어 있는 증표를 의미합니다.\n'
                    '5. “게시물”이라 함은 “회원”이 “서비스”를 이용함에 있어 “서비\n'
                    '스”상에 게시한 부호, 문자, 사진등의 정보 형태의 글, 사진 및 각\n'
                    '종 파일과 링크 등을 의미합니다.\n'
                    '6. “포인트”라 함은 “서비스”내에서 별도로 정한 기준 및 조건에 \n'
                    '따라 적립되고, 유료 서비스의 구매 시 사용할 수 있는 서비스 상\n'
                    '의 가상 데이터를 의미합니다. 이는 “게시물” 작성 또는 서비스 사\n'
                    '용에 따른 보상으로 차등 지급될 수 있습니다.',
                  style: TextStyle(
                      color: Color(0xff191919),
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),

                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('제3조 [약관의 게시와 개정]',
                  style: TextStyle(
                      color: Color(0xff191919),
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                  ),

                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('1. “회사”는 이 약관의 내용을 “회원”이 쉽게 접근할 수 있도록 메',
                  style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),

                ),
              ),
            ),
          ],

        ),




    );

    //           padding: const EdgeInsets.all(15),
    //           child: Column(
    //               children: [
    //               Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //               IconButton(onPressed: (){
    //
    //       }, icon: Icon(Icons.arrow_back_ios,color:Color(0xff191919),)),
    //       Padding(
    //         padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
    //         child: Text('마이페이지',
    //           style: TextStyle(
    //             color: Color(0xff191919),
    //             fontSize: 20,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //
    //       Container(
    //         child: Icon(Icons.notifications,
    //           color: Color(0xff191919),
    //         ),
    //       )
    //
    //   );
    // }
  }
}
