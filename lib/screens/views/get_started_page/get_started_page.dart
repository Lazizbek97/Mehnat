import 'package:flutter/material.dart';
import 'package:mehnatkash/core/utils/size_config.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                    top: getHeight(280),
                    right: getWidth(3),
                    child: Container(
                      height: getHeight(300),
                      width: getWidth(380),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/job2.png"))),
                    )),
                Positioned(
                  child: Container(
                    width: getWidth(130),
                    height: getHeight(60),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, "/sign_in");
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  bottom: getHeight(30),
                  right: getWidth(30),
                ),
                Positioned(
                  top: getHeight(70),
                  left: getWidth(25),
                  child: Container(
                    width: getWidth(100),
                    height: getHeight(30),
                    child: Center(
                      child: Text(
                        "iMehnat",
                        style: TextStyle(
                          fontSize: getHeight(20),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  top: getHeight(170),
                  left: getWidth(25),
                  child: Text(
                    "Tez va oson ish toping",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: getHeight(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
