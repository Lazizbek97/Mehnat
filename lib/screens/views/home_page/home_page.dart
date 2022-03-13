import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/screens/views/habarlar_page/habarlar_page.dart';
import 'package:mehnatkash/screens/views/home_page/home_page_widget.dart';
import 'package:mehnatkash/screens/views/post_add_page/post_add_page.dart';
import 'package:mehnatkash/screens/views/profile_page/glavni_profile_page/glavni_profile_page.dart';
import 'package:mehnatkash/screens/views/saved_page/saved_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  final List _pages = [
     HomePage(),
    const XabarlarPage(),
     PostAddingPage(),
    const SavedPage(),
    const Profile_page(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _pages[_pageIndex],
      floatingActionButton: Padding(
        padding:
            EdgeInsets.fromLTRB(getWidth(15), 0, getWidth(15), getHeight(15)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            currentIndex: _pageIndex,
            onTap: (v) {
              setState(() {
                _pageIndex = v;
              });
              setState(() {
                print("object");
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  _pageIndex != 0 ? Constants.home : Constants.home_filled,
                  color: Colors.white,
                ),
                label: "",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _pageIndex != 1 ? Constants.bell : Constants.bell_filled,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.black),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _pageIndex != 3
                        ? Constants.bookmark
                        : Constants.bookmark_filled,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _pageIndex != 4
                        ? Constants.person
                        : Constants.person_filled,
                    color: Colors.white,
                  ),
                  label: "",
                  backgroundColor: Colors.black),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
