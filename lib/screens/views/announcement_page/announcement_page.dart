import 'package:flutter/material.dart';
import 'package:mehnatkash/core/constants/text_styles.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text(
              "Ish eloni",
              style: MyTextStyles.sliverAppBarTitleStyle,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ],
            expandedHeight: MediaQuery.of(context).size.width,
            flexibleSpace: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1503602642458-232111445657?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                    fit: BoxFit.cover),
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: getHeight(5),
                    right: getWidth(5),
                    child: IconButton(
                      icon: const Icon(Icons.bookmark),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: getHeight(80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getWidth(60),
              height: getHeight(60),
              child: ElevatedButton(
                child: const Icon(Icons.call),
                onPressed: () {
                  {}
                },
              ),
            ),
            SizedBox(
              width: getWidth(200),
              height: getHeight(60),
              child: ElevatedButton(
                child: const Text(
                  "So'rov",
                  style: MyTextStyles.announcementPageButtonTextStyle,
                ),
                onPressed: () {
                  {}
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
