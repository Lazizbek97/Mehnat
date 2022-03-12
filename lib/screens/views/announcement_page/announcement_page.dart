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
                          const Expanded(
                            flex: 1,
                            child: SizedBox(
                              child: Text(
                                "Tajribali, mohir duradgor kerak",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                          ),
                          const Text(
                            "Haqida:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          const Expanded(
                            flex: 3,
                            child: SizedBox(
                              child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
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
        onPressed: () {},
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
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1503602642458-232111445657?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
              fit: BoxFit.cover),
          color: Colors.green,
          borderRadius: BorderRadius.only(
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