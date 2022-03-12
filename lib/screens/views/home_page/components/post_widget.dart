import 'package:flutter/material.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class PostWidget extends StatelessWidget {
  PostWidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
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
                image:
                    NetworkImage("https://source.unsplash.com/random/$index"),
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
                    const Text(
                      "Narxi:",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
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
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 9501b891594bb47a8578863c44e54b4f8ab4c555
