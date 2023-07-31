import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/buttonstyles.dart';

import '../../utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );
  }

  Widget DesktopContainer2() {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 450,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(aboutus), fit: BoxFit.contain),
          ),
        )),
        Expanded(
          child: Container(
            // color: Colors.purple,
            margin: EdgeInsets.symmetric(horizontal: w! / 20, vertical: h! / 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's Introduce about Myself",
                  style: TextStyle(
                    fontSize: w! / 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  "Hello! Geeks, Shad here, a Front-end developer in Flutter, better at making hand-alone applications and softwares majorly on frontend. Good at solving Data structures and algorithms using Python. Always ready to face challenges, exploring new stuff and eager to learn new Technologies.  Looking forward to work in a competitive environment that can boost my overall learning. Currently pursuing my bachelor degree in Computer Engineering with artificial intelligence specialization. Mainly working in the mobile application development domain using flutter framework and looking forward to backend development and building different types of apps",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 35),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    style: borderedButtonStyle,
                    onPressed: () {},
                    child: const Text(
                      'Download CV 📄',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//-----------------------------------MOBILE-------------------------------------

Widget MobileContainer2() {
  return Container(
    //margin: EdgeInsets.symmetric(vertical: h! / 10),
    child: Column(children: [
      Container(
        height: w! / 1,
        width: w! / 1.2,
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(aboutus), fit: BoxFit.contain),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Let's Introduce about Myself",
            style: TextStyle(
              fontSize: w! / 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Hello! Geeks, Shad here, a Front-end developer in Flutter, better at making hand-alone applications and softwares majorly on frontend. Good at solving Data structures and algorithms using Python. Always ready to face challenges, exploring new stuff and eager to learn new Technologies.  Looking forward to work in a competitive environment that can boost my overall learning. Currently pursuing my bachelor degree in Computer Engineering with artificial intelligence specialization. Mainly working in the mobile application development domain using flutter framework and looking forward to backend development and building different types of apps",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 35),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                'Download CV 📄',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    ]),
  );
}
