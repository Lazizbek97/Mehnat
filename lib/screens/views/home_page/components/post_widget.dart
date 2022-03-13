import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class PostWidget extends StatelessWidget {
  var image;
  var title;
  var price;
  var sana;

  PostWidget(
      {Key? key, required this.index, this.image, this.price, this.title,this.sana})
      : super(key: key);
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
                image: image,
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
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: getHeight(18),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${sana.toString()}",
                ),
                Row(
                  children: [
                    const Text(
                      "Narxi:",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      " ${price.toString()}",
                      style: TextStyle(
                        fontSize: getHeight(17),
                        fontWeight: FontWeight.w700,
                        color: Colors.green,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Constants.bookmark),
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
}
