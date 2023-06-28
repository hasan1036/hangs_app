import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cupon/coupon_screen.dart';
import '../home.dart';
import '../more/more_screen.dart';
import '../stamp/stamp.dart';
import '../store/store_screen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '행스홈',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: '행스쿠폰',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: '행스찍기',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: '행스매장',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: '더보기',

          )

        ],), tabBuilder: ( context,  index) {
        switch (index){
          case 0 :
            return CupertinoTabView(
              builder: (index){
                return CupertinoPageScaffold(child: HomeScreen());
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (index){
                return CupertinoPageScaffold(child: CouponScreen());
              },
            );

          case 2:
            return CupertinoTabView(
              builder: (index){
                return CupertinoPageScaffold(child: LineScreen());
              },
            );

          case 3:
            return CupertinoTabView(
              builder: (index){
                return CupertinoPageScaffold(child: StoreDetail());
              },
            );

          case 4:
            return CupertinoTabView(
              builder: (index){
                return CupertinoPageScaffold(child: MoreScreen());
              },
            );
        }
        return Container(

        );

    },
    );
  }

}




