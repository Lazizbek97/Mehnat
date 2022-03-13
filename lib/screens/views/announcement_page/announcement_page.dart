import 'package:flutter/material.dart';
import 'package:mehnatkash/core/constants/text_styles.dart';
import 'package:mehnatkash/core/models/userModel.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class AnnouncementPage extends StatelessWidget {
  var data;
  AnnouncementPage({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppBar(context),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              child: Text(
                                data["title"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                          ),
                          const Text(
                            "Haqida:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              child: Text(data["disc"]),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.2,
                            color: Colors.green,
                            child: Image.asset(
                              "assets/images/maps.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: const Text(
                                      "Ish joyi manzili:",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    top: getHeight(10),
                                  ),
                                  Positioned(
                                    child: ElevatedButton(
                                      child: const Icon(Icons.location_on),
                                      onPressed: () {},
                                    ),
                                    right: getWidth(10),
                                  ),
                                  Positioned(
                                    child: const Text(
                                      "Elon berilgan sana:",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    bottom: getHeight(10),
                                  ),
                                  Positioned(
                                    child: const Text(
                                      "12 mart (2022)",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    right: getWidth(10),
                                    bottom: getHeight(10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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

  SliverAppBar sliverAppBar(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: const Text(
        "Ish eloni",
        style: MyTextStyles.sliverAppBarTitleStyle,
      ),
      centerTitle: true,
      expandedHeight: MediaQuery.of(context).size.width,
      flexibleSpace: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.55,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("${data!['pictures']}"), fit: BoxFit.cover),
          color: Colors.green,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: getHeight(15),
              right: getWidth(10),
              child: IconButton(
                icon: const Icon(
                  Icons.bookmark,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
