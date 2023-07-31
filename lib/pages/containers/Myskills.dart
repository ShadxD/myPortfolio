import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileCotainer4(),
      desktop: DesktopCotainer4(),
    );
  }

  Widget DesktopCotainer4() {
    return Container(
      color: Colors.blueAccent,
      margin: EdgeInsets.symmetric(horizontal: w! / 8, vertical: 20),
      child: Column(
        children: [
          const Text(
            'Skills',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'My technical level',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                height: 350,
                width: 350,
                margin: const EdgeInsets.all(20),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                height: 350,
                width: 350,
                margin: const EdgeInsets.all(20),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
// ----------------------------------MOBILE-------------------------------------

  Widget MobileCotainer4() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.orangeAccent,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Text(
            'Skills',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'My technical level',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                height: 350,
                width: 500,
                margin: const EdgeInsets.all(20),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                height: 350,
                width: 500,
                margin: const EdgeInsets.all(20),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
