import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/containers/container1.dart';
import 'package:flutter_application_1/pages/containers/container2.dart';
import 'package:flutter_application_1/pages/containers/Myportfolio.dart';
import 'package:flutter_application_1/pages/containers/Myskills.dart';

import 'package:flutter_application_1/widgets/navbar.dart';

import '../utils/constants.dart';
import 'containers/contacts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return const Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              MySkills(),
              MyPortfolio(),
              Contacts(),
            ],
          ),
        ));
  }
}
