import 'package:flutter/material.dart';
import 'package:sevenlearn/navigation/bottom_tab_item.dart';

class BottomTabs extends StatelessWidget {
  const BottomTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 65,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Color(0x009B8487).withOpacity(0.3),
                ),
              ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomTabItem(iconFileName: 'Home.png', activeIconFileName: 'Home.png', title: 'Home'),
                  BottomTabItem(iconFileName: 'Articles.png', activeIconFileName: 'Articles.png', title: 'Articles'),
                  SizedBox(width: 8),
                  BottomTabItem(iconFileName: 'Search.png', activeIconFileName: 'Search.png', title: 'Search'),
                  BottomTabItem(iconFileName: 'Menu.png', activeIconFileName: 'Menu.png', title: 'Menu'),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 65,
              height: 85,
              alignment: Alignment.topCenter,
              child: Container(
                height: 65,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(32.5), color: Color(0xff376AEd), border: Border.all(color: Colors.white, width: 4)),
                child: Image.asset('assets/img/icons/plus.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
