import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mehnatkashlar ishni boshlang")),
      body: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on_outlined)),
              const Text("Toshkent, Chilonzor"),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: getWidth(15)),
              child: PopupMenuButton(
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(Constants.worker)),
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        child: Text("Ishchi"),
                      ),
                      const PopupMenuItem(
                        child: Text("Ish beruvchi"),
                      ),
                    ];
                  }),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: getHeight(50),
                width: getWidth(320),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Constants.filter),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(50),
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: getWidth(10)),
                    child: Chip(
                        label: const Text("Usta"),
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: getHeight(15))),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: getHeight(10),
                  );
                },
                itemBuilder: ((context, index) {
                  return Container(
                    height: getHeight(200),
                    width: getWidth(350),
                    margin: EdgeInsets.symmetric(horizontal: getWidth(15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade100,
                            spreadRadius: 5,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: getHeight(160),
                          width: getHeight(160),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/$index"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getHeight(160),
                          width: getHeight(175),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Title comes here Title comes here Title comes here",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: getHeight(18),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                "19.03.2022~23.03.2022",
                              ),
                              Row(
                                children: [
                                  const Text("Narxi:", style: TextStyle(fontWeight: FontWeight.w800),),
                                  Text(
                                    " 12,300",
                                    style: TextStyle(
                                      fontSize: getHeight(17),
                                      fontWeight: FontWeight.w700,
                                      color: Colors.green,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding:
            EdgeInsets.fromLTRB(getWidth(15), 0, getWidth(15), getHeight(15)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Constants.home),
                  label: "",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Constants.bell), label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.add), label: "Add"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Constants.bookmark), label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Constants.person), label: ""),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}