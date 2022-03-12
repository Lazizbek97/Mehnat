import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/screens/views/home_page/components/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.location_on_outlined)),
            const Text("Toshkent, Chilonzor"),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: getWidth(15)),
            child: PopupMenuButton(
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset(Constants.recruiter)),
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
                return PostWidget(
                  index: index,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

