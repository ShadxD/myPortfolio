import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/utils/on_hover.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../utils/buttonstyles.dart';
import '../../utils/colors.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContacts(),
      desktop: DesktopContacts(),
    );
  }

  Widget DesktopContacts() {
    return SizedBox(
      width: double.infinity,
      // color: Colors.yellow,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Get in Touch',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Contact Me',
              style: TextStyle(fontSize: w! / 33, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.primary,
                ),
                height: 400,
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: w! / 25),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'PHONE:',
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          phone,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text('ADDRESS:',
                            style: TextStyle(color: Colors.white)),
                        const Text(
                          address,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text('E-MAIL:',
                            style: TextStyle(color: Colors.white)),
                        InkWell(
                          onTap: () {},
                          child: const onHover(
                            child: Text(
                              email,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                // color: Colors.pink,
                margin: EdgeInsets.symmetric(vertical: h! / 10),
                width: 350,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2)),
                          border: const OutlineInputBorder(),
                          hintText: 'Name',
                          hintStyle: TextStyle(color: AppColors.primary)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2)),
                          border: const OutlineInputBorder(),
                          hintText: 'E-mail',
                          hintStyle: TextStyle(color: AppColors.primary)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2)),
                          border: const OutlineInputBorder(),
                          hintText: 'Subject',
                          hintStyle: TextStyle(color: AppColors.primary)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    color: AppColors.primary, width: 2)),
                            border: const OutlineInputBorder(),
                            hintText: 'Message',
                            hintStyle: TextStyle(color: AppColors.primary)),
                        maxLines: 5,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        style: borderedButtonStyle,
                        onPressed: () {},
                        child: const Text(
                          'Send Message',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 400,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  const Text(
                    'Shad',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      navButton('Home'),
                      navButton('About'),
                      navButton('Skills'),
                      navButton('Portfolio'),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: 200,
                    // color: Colors.redAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            launchUrlString('https://github.com/ShadxD');
                          },
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(github),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launchUrlString(
                                'https://www.linkedin.com/in/md-shad-faisal/');
                          },
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(linkdedin),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(instagram),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
                  const Text('© Shad. All rigths reserved')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget navButton(String text) {
  return TextButton(
    onPressed: () {},
    child: Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 18),
    ),
  );
}

//------------------------------Mobile------------------------------------------

Widget MobileContacts() {
  return SizedBox(
    width: double.infinity,
    // color: Colors.yellow,
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            'Get in Touch',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        Text(
          'Contact Me',
          style: TextStyle(fontSize: w! / 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primary,
          ),
          height: 400,
          width: 400,
          margin: EdgeInsets.symmetric(horizontal: w! / 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'PHONE:',
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              phone,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('ADDRESS:', style: TextStyle(color: Colors.white)),
            const Text(
              address,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('E-MAIL:', style: TextStyle(color: Colors.white)),
            InkWell(
              onTap: () {},
              child: const Text(
                email,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ]),
        ),
        const SizedBox(height: 25),
        Container(
          margin: EdgeInsets.symmetric(horizontal: w! / 25),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: AppColors.primary, width: 2)),
                    border: const OutlineInputBorder(),
                    hintText: 'Name',
                    hintStyle: TextStyle(color: AppColors.primary)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: AppColors.primary, width: 2)),
                    border: const OutlineInputBorder(),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: AppColors.primary)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: AppColors.primary, width: 2)),
                    border: const OutlineInputBorder(),
                    hintText: 'Subject',
                    hintStyle: TextStyle(color: AppColors.primary)),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: AppColors.primary, width: 2)),
                      border: const OutlineInputBorder(),
                      hintText: 'Message',
                      hintStyle: TextStyle(color: AppColors.primary)),
                  maxLines: 5,
                ),
              ),
              const SizedBox(
                height: 20,
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
                    'Send Message',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 400,
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                const Text(
                  'Shad',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    navButton('Home'),
                    navButton('About'),
                    navButton('Skills'),
                    navButton('Portfolio'),
                  ],
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: 200,
                  // color: Colors.redAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          launchUrlString('https://github.com/ShadxD');
                        },
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(github),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrlString(
                              'https://www.linkedin.com/in/md-shad-faisal/');
                        },
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(linkdedin),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(instagram),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                const Text(
                  '© Shad. All rigths reserved',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
