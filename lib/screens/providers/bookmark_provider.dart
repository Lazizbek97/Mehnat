import 'package:flutter/material.dart';

class AnnouncementProvider extends ChangeNotifier {
  final List<IconData> bookMarkOffOnIcons = [
    Icons.bookmark_outline,
    Icons.bookmark,
  ];
  int bookMarkDataIndex = 0;

  void changeIndexIcon() {
    bookMarkDataIndex == 0 ? bookMarkDataIndex = 1 : bookMarkDataIndex = 0;
    notifyListeners();
  }
}
