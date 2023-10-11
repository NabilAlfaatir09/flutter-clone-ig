import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/explore_user_controller.dart';

class ExploreUserView extends GetView<ExploreUserController> {
  const ExploreUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(top: 12, bottom: 5, right: 5, left: 5),
            width: double.infinity,
            height: 37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: ColorsName.grey350,
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12, right: 14),
                  alignment: Alignment.centerLeft,
                  child: FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: ColorsName.black,
                    size: 16,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Cari",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      )),
    );
  }
}
