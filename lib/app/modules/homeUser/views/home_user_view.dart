import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/home_user_controller.dart';

class HomeUserView extends GetView<HomeUserController> {
  const HomeUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsName.transparant,
        shadowColor: ColorsName.transparant,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: ColorsName.black,
            fontSize: 30,
            fontFamily: "Billabong",
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 25),
            splashColor: ColorsName.transparant,
            hoverColor: ColorsName.transparant,
            highlightColor: ColorsName.transparant,
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 22,
              color: ColorsName.black,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            splashColor: ColorsName.transparant,
            hoverColor: ColorsName.transparant,
            highlightColor: ColorsName.transparant,
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.facebookMessenger,
              size: 22,
              color: ColorsName.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ColorsName.gradient1, ColorsName.gradient2],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: ColorsName.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("image/pp.jpeg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
