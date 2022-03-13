import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/screens/views/home_page/components/post_widget.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Saqlanganlar",
          style: GoogleFonts.merriweather(
            color: Constants.color30,
            fontSize: Constants.appbarTitle,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (_, __) {
              return Padding(
                padding: EdgeInsets.only(top: getHeight(15)),
                child: InkWell(
                  child: PostWidget(
                    image:
                        NetworkImage("https://source.unsplash.com/random/$__"),
                    title: "Title comes here Title comes here Title comes here",
                    price: " 12,300",
                    sana: "19.03.2022~23.03.2022",
                    index: __,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/announcement");
                  },
                ),
              );
            },itemCount: 1,
          ),
        ),
      ),
    );
  }
}
