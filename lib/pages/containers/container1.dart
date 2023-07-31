import 'package:flutter/material.dart';

import 'package:flutter_application_1/utils/buttonstyles.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'package:url_launcher/url_launcher_string.dart';
import '../../utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  //-----------------------------------MOBILE-----------------------------------

  Widget MobileContainer1() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              // color: Colors.redAccent,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      launchUrlString('https://github.com/ShadxD');
                    },
                    child: const CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(github),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      launchUrlString(
                          'https://www.linkedin.com/in/md-shad-faisal/');
                    },
                    child: const CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(linkdedin),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(instagram),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: w! / 1,
              width: w! / 1.2,
              decoration: const BoxDecoration(
                // color: Colors.orangeAccent,
                image: DecorationImage(
                    image: AssetImage(home2), fit: BoxFit.contain),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Hello! I am Shad',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: w! / 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "I'm a Flutter Developer who also possess\nsome knowledge about backend",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: w! / 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            Column(
              children: [
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
                      'Say Hello👋',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
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
                      'Get My CV 📄',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        )
      ],
    );
  }
}

//-----------------------------------DESKTOP------------------------------------

Widget DesktopContainer1() {
  return Container(
    margin: EdgeInsets.only(left: w! / 8, top: 30, right: w! / 10),
    // color: Colors.greenAccent,
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 80),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  launchUrlString('https://github.com/ShadxD');
                },
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(github),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  launchUrlString(
                      'https://www.linkedin.com/in/md-shad-faisal/');
                },
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(linkdedin),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(instagram),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            // color: Colors.pinkAccent,
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello! \nI am Shad',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "I'm a Flutter Developer who also possess\nsome knowledge about backend",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        style: borderedButtonStyle,
                        onPressed: () {},
                        child: const Text(
                          'Say Hello 👋',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        style: borderedButtonStyle,
                        onPressed: () {},
                        child: const Text(
                          'Get My CV 📄',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 500,
            decoration: const BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage(home2), fit: BoxFit.contain),
            ),
          ),
        )
      ],
    ),
  );
}
