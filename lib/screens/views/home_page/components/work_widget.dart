import 'package:flutter/material.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class WorkersWidget extends StatelessWidget {
  WorkersWidget({required this.index, Key? key}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(15),
      ),
      child: Card(

        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: getWidth(4.0)),
          leading: CircleAvatar(
            radius: getHeight(30),
            backgroundImage:
                const NetworkImage("https://source.unsplash.com/random"),
          ),
          title: const Text("Workers name here"),
          subtitle: SizedBox(
            height: getHeight(30),
            width: double.infinity,
            child: ListView.separated(
              itemCount: 3,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: getWidth(5),
                );
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Chip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  label: const Text(
                    "Santexnik",
                    style: TextStyle(fontSize: 10.0),
                  ),
                );
              },
            ),
          ),
          trailing: SizedBox(
            width: getWidth(50),
            height: getHeight(20),
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("3.9"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
