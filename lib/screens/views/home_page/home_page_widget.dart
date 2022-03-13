import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/models/userModel.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/screens/providers/filter_provider.dart';
import 'package:mehnatkash/screens/providers/user_type_provider.dart';
import 'package:mehnatkash/screens/views/home_page/components/filter_card_widget.dart';
import 'package:mehnatkash/screens/views/home_page/components/post_widget.dart';
import 'package:mehnatkash/screens/views/home_page/components/work_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  HomePage({
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
                  onPressed: () {},
                  icon: const Icon(Icons.location_on_outlined)),
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
        body: StreamBuilder<QuerySnapshot>(
          stream: _firestore.collection("Elon").snapshots(),
          builder: (context, snapshot) {
            var data = snapshot.data!.docs;
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Internet failed"),
              );
            } else {
              return Column(
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
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                //background color for modal bottom screen
                                backgroundColor: Colors.white,
                                //elevates modal bottom screen
                                elevation: 10,
                                // gives rounded corner to modal bottom screen
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: SizedBox(
                                      height: getHeight(440),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: getWidth(20)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: getHeight(10)),
                                              child: Text(
                                                "Filter",
                                                style: GoogleFonts.merriweather(
                                                    fontSize:
                                                        Constants.appbarTitle),
                                              ),
                                            ),
                                            FilterCardMy(
                                              text: "Barchasi",
                                              trailing: Switch(
                                                  value: context
                                                      .watch<FilterProvider>()
                                                      .barchasi,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FilterProvider>()
                                                        .barchAsi();
                                                  }),
                                            ),
                                            FilterCardMy(
                                              text: "Ustachilik",
                                              trailing: Switch(
                                                  value: context
                                                      .watch<FilterProvider>()
                                                      .ustachilik,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FilterProvider>()
                                                        .uStachi();
                                                  }),
                                            ),
                                            FilterCardMy(
                                              text: "Dehqonchilik",
                                              trailing: Switch(
                                                  value: context
                                                      .watch<FilterProvider>()
                                                      .dehqonchilik,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FilterProvider>()
                                                        .dehqonChi();
                                                  }),
                                            ),
                                            FilterCardMy(
                                              text: "Yuk tashish",
                                              trailing: Switch(
                                                  value: context
                                                      .watch<FilterProvider>()
                                                      .yukT,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FilterProvider>()
                                                        .yuK();
                                                  }),
                                            ),
                                            FilterCardMy(
                                              text: "Suvoqchilik",
                                              trailing: Switch(
                                                  value: context
                                                      .watch<FilterProvider>()
                                                      .suvoq,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FilterProvider>()
                                                        .suvoQ();
                                                  }),
                                            ),
                                            FilterCardMy(
                                              text: "Beton quyish",
                                              trailing: Switch(
                                                  value: context
                                                      .watch<FilterProvider>()
                                                      .beton,
                                                  onChanged: (val) {
                                                    context
                                                        .read<FilterProvider>()
                                                        .betoNch();
                                                  }),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            icon: SvgPicture.asset(Constants.filter),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(50),
                    child: categoryTabbar(),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: data.length,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getHeight(10),
                        );
                      },
                      itemBuilder: ((context, index) {
                        return Provider.of<UserTypeProvider>(context)
                                    .userType ==
                                "worker"
                            ? InkWell(
                                child: PostWidget(
                                  image: NetworkImage(
                                      "${data[index]["pictures"]}"),
                                  title: "${data[index]["disc"]}",
                                  price: " ${data[index]["price"]}",
                                  sana: "19.03.2022~23.03.2022",
                                  index: index,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "/announcement",arguments: data[index]);
                                },
                              )
                            : WorkersWidget(
                                index: index,
                              );
                      }),
                    ),
                  ),
                ],
              );
            }
          },
        ));
  }

  DefaultTabController categoryTabbar() {
    return DefaultTabController(
      length: 10,
      child: TabBar(
        labelColor: Constants.color30,
        isScrollable: true,
        indicatorColor: Constants.color30,
        unselectedLabelColor: Constants.color80,
        onTap: (val) {},
        tabs: const [
          Tab(
            child: Text("Usta"),
          ),
          Tab(
            child: Text("Dehqon"),
          ),
          Tab(
            child: Text("Svarshik"),
          ),
          Tab(
            child: Text("Kafelchi"),
          ),
          Tab(
            child: Text("Yuk tashuvchi"),
          ),
          Tab(
            child: Text("Elektrik"),
          ),
          Tab(
            child: Text("Malyar"),
          ),
          Tab(
            child: Text("Suvoqchi"),
          ),
          Tab(
            child: Text("Kafelchi"),
          ),
          Tab(
            child: Text("Beton quyuvchi"),
          )
        ],
      ),
    );
  }
}
