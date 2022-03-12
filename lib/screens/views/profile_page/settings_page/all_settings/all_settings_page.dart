import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/screens/views/profile_page/glavni_profile_page/components/container_shadow.dart';

class All_settings_page extends StatelessWidget {
  const All_settings_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sozlamalar",
          style: GoogleFonts.merriweather(fontSize: Constants.appbarTitle),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: getHeight(450),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AccoutPageMenus(
                title: const Text("Eslatmalar"),
                subtitle: const Text("Eslatilsinmi?"),
                trailing: Switch(value: false, onChanged: (val) {}),
              ),
              AccoutPageMenus(
                title: const Text("Tilni o'zgartirish"),
                subtitle: const Text("Tilni tanlang"),
                trailing: Constants.arrowIcon,
                ontap: () {
                  Navigator.pushNamed(context, "/language");
                },
              ),
              AccoutPageMenus(
                title: const Text("Parolni o'zgartirish"),
                subtitle: const Text("Yangi parol o'rnatish"),
                trailing: Constants.arrowIcon,
                ontap: () {
                  Navigator.pushNamed(context, "/password");
                },
              ),
              AccoutPageMenus(
                title: const Text("FAQ"),
                subtitle: const Text("Xavfsizlik"),
                trailing: Constants.arrowIcon,
                ontap: () {
                  Navigator.pushNamed(context, "/faq");
                },
              ),
              AccoutPageMenus(
                title: const Text("Biz bilan aloqa"),
                subtitle: const Text("Contact"),
                trailing: Constants.arrowIcon,
              )
            ],
          ),
        ),
      ),
    );
  }
}
