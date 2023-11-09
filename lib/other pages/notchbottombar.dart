import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../page/product list.dart';
import '../page/profilescreen.dart';
import '../page/homepage.dart';
import '../page/scrchscreen.dart';

class notchbottom extends StatefulWidget {
  const notchbottom({Key? key});
  @override
  State<notchbottom> createState() => _notchbottomState();
}
class _notchbottomState extends State<notchbottom> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);
  int maxCount = 4;
  /// widget list
  final List<Widget> bottomBarPages = [
     FirstScreen(),
    searchscreen(),
    profile_screen(),
    productlist()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        // physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar:(
          bottomBarPages.length <= maxCount)?
      AnimatedNotchBottomBar(
        blurFilterY: .1,
        blurFilterX: .1,
        showBlurBottomBar: true,
        color: Colors.red,
        pageController: _pageController,
        showLabel: false,
        notchColor: Colors.teal,
        bottomBarItems: const [
           BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.star,
              color: Colors.white,
            ),
          ),
          ///svg example
          BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.details,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.details_outlined,
              color: Colors.white,
            ),
          ),
        ],
        onTap: (tartib) {
          /// control your animation using page controller
          _pageController.animateToPage(
            tartib,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInExpo,
          );
        },
      )
          : null,
    );
  }
}

