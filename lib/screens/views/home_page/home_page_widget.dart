import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/screens/providers/user_type_provider.dart';
import 'package:mehnatkash/screens/views/home_page/components/post_widget.dart';
import 'package:mehnatkash/screens/views/home_page/components/work_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                initialValue: context.watch<UserTypeProvider>().userType,
                onSelected: (v) {
                  context.read<UserTypeProvider>().chnageUserType();
                },
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Text("Ishchi"),
                      value: "worker",
                    ),
                    const PopupMenuItem(
                      child: Text("Ish beruvchi"),
                      value: "employee",
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
              width: getWidth(340),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Ish izlash...",
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: getWidth(15)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.black)),
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
                return Provider.of<UserTypeProvider>(context).userType ==
                        "worker"
                    ? PostWidget(
                        index: index,
                      )
                    : WorkersWidget(
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
