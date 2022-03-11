import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: GoogleFonts.merriweather(
              color: Constants.color30,
              fontSize: Constants.boardingTitle1,
              fontWeight: Constants.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              size: Constants.boardingTitle1,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardMy(
              leading: CircleAvatar(
                radius: getHeight(30),
              ),
              title: Text(
                "Tolkinjon",
                style: GoogleFonts.merriweather(
                  color: Constants.color30,
                ),
              ),
              subtitle: const Text("+998900119597"),
              trailing: Text(
                "5 ball",
                style: GoogleFonts.merriweather(
                    color: Constants.color30, fontWeight: Constants.bold),
              ),
            ),
            CardMy(
              title: const Text("Shaxsiy ma'lumotlar"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            CardMy(
              title: const Text("App settings"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            CardMy(
              title: const Text("History"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            CardMy(
              title: const Text("About us"),
              trailing: const Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}

class CardMy extends StatelessWidget {
  var leading;
  var title;
  var subtitle;
  var trailing;
  CardMy({Key? key, this.leading, this.title, this.subtitle, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
