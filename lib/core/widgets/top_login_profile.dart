import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mehnatkash/core/constants/constants.dart';

import '../utils/size_config.dart';

class LoginTopPart extends StatelessWidget {
  const LoginTopPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Constants.dividerColor,
          ),
        ),
        Container(
          height: getHeight(60),
          width: getHeight(60),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xff303030),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SvgPicture.asset(Constants.sofaImage),
        ),
        Expanded(
            child: Divider(
          thickness: 1,
          color: Constants.dividerColor,
        )),
      ],
    );
  }
}
