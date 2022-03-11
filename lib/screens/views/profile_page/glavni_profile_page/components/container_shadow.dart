import 'package:flutter/material.dart';

class AccoutPageMenus extends StatelessWidget {
  var title;
  var subtitle;
  var leading;
  var ontap;
  var trailing;
  AccoutPageMenus({
    Key? key,
    this.title,
    this.subtitle,
    this.leading,
    this.ontap,this.trailing
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: ontap,
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing:trailing,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
          )
        ],
      ),
    );
  }
}
