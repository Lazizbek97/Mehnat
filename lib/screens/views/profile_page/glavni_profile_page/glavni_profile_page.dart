import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/screens/views/profile_page/glavni_profile_page/components/container_shadow.dart';

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
            fontSize: Constants.appbarTitle,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              size: 22,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: getHeight(500),
          padding: EdgeInsets.symmetric(horizontal: getHeight(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: getHeight(40),
                        backgroundColor: Colors.white,
                        child: Container(
                          height: getHeight(90),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.clipartlogo.com/files/istock/previews/9499/94991383-flat-cartoon-asian-man-vector-icon-asian-man-icon-illustration.jpg"),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        right: -8,
                        child: IconButton(
                            onPressed: () async {},
                            padding: const EdgeInsets.all(0),
                            icon: const Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: getWidth(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tolkinjon",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "+998900119597",
                        style: TextStyle(
                          color: Constants.color80,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              AccoutPageMenus(
                  title: Text(
                    "Shaxsiy ma'lumotlar",
                    style: GoogleFonts.merriweather(color: Constants.color60),
                  ),
                  trailing: Constants.arrowIcon,
                  subtitle: const Text("Ma'lumotlarni yangilash"),
                  ontap: () {}),
              AccoutPageMenus(
                  title: Text("Dastur sozlamalari",
                      style:
                          GoogleFonts.merriweather(color: Constants.color60)),
                  subtitle: const Text("Eslatmalar/Password/FAQ/Contact"),
                  trailing: Constants.arrowIcon,
                  ontap: () {
                    Navigator.pushNamed(context, "/setting");
                  }),
              AccoutPageMenus(
                  title: Text("Tarix",
                      style:
                          GoogleFonts.merriweather(color: Constants.color60)),
                  subtitle: const Text("Buyurtmalar tarixi"),
                  trailing: Constants.arrowIcon,
                  ontap: () {
                    Navigator.pushNamed(context, "/history");
                  }),
              AccoutPageMenus(
                title: Text("About us",
                    style: GoogleFonts.merriweather(color: Constants.color60)),
                subtitle: const Text("Dastur haqida"),
                trailing: Constants.arrowIcon,
              )
            ],
          ),
        ),
      ),
    );
  }

  aa() {}
}
