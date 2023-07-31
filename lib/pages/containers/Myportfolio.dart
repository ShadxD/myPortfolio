// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:flutter_application_1/utils/textbuttonstyles.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileCotainer4(),
      desktop: DesktopCotainer4(),
    );
  }

  Widget DesktopCotainer4() {
    return Container(
        color: Colors.grey.shade400,
        margin: EdgeInsets.symmetric(horizontal: w! / 8, vertical: 20),
        child: Column(children: [
          const Text(
            'Portfolio',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'My Projects',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: textButtonStyle,
                onPressed: () {},
                child: const Text(
                  'All',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              TextButton(
                style: textButtonStyle,
                onPressed: () {},
                child: const Text(
                  'Frontend',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              TextButton(
                style: textButtonStyle,
                onPressed: () {},
                child: const Text(
                  'Backend',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ]));
  }

// -----------------------------------MOBILE------------------------------------
  Widget MobileCotainer4() {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      // color: Colors.limeAccent,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Text(
            'Portfolio',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'My Projects',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: textButtonStyle,
                onPressed: () {},
                child: const Text(
                  'All',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              TextButton(
                style: textButtonStyle,
                onPressed: () {},
                child: const Text(
                  'Frontend',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              TextButton(
                style: textButtonStyle,
                onPressed: () {},
                child: const Text(
                  'Backend',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
