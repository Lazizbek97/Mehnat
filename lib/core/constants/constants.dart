import 'package:flutter/material.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class Constants {
  // Font Family
  // Colors
  static Color color80 = const Color(0xff808080);
  static Color color60 = const Color(0xff606060);
  static Color color30 = const Color(0xff303030);
  static Color color90 = const Color(0xff909090);
  static Color dividerColor = const Color(0xff0fff0f0f0);
  static Color inputBorderColor = const Color(0xffE0E0E0);

  // Sizes
  static double boardingTitle1 = getHeight(30);
  static double boardingTitle2 = getHeight(24);
  static double disTextSize = getHeight(14);
  static double appbarTitle = getHeight(16);
   static double iconSize = getHeight(22);

  // FontWeight
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight regular = FontWeight.w400;

  // Images
  static String boardingImage = 'assets/images/boarding.png';
  static String sofaImage = 'assets/images/sofa.svg';
  static String searchImage = 'assets/images/search.svg';
  static String cartImage = 'assets/images/cart.svg';
  static String starImage = 'assets/images/star.svg';
  static String chairImage = 'assets/images/chair.svg';
  static String tableImage = 'assets/images/table.svg';
  static String armchairImage = 'assets/images/armchair.svg';
  static String bedImage = 'assets/images/bed.svg';
  static String lampImage = 'assets/images/lamp.svg';

  // BorderRadius

  // Icons

  static Icon arrowIcon = const Icon(Icons.keyboard_arrow_right_outlined);
  static String recruiter = 'assets/images/recruitment.png';
  static String worker = 'assets/images/builder.png';
  static String filter = 'assets/images/filter.svg';

  // Bottombar Icons
  static String home = 'assets/images/home.svg';
  static String home_filled = 'assets/images/home_filled.svg';
  static String bell = 'assets/images/bell.svg';
  static String bell_filled = 'assets/images/bell_filled.svg';
  static String person = 'assets/images/person.svg';
  static String person_filled = 'assets/images/person_filled.svg';
  static String bookmark = 'assets/images/bookmark.svg';
  static String bookmark_filled = 'assets/images/bookmark_filled.svg';
}
