import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/mesengger_controller.dart';

class MesenggerView extends GetView<MesenggerController> {
  const MesenggerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.back(),
          splashColor: Colors.white,
          focusColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.arrowLeftLong,
              color: ColorsName.black,
            ),
          ),
        ),
        shadowColor: ColorsName.transparant,
        backgroundColor: ColorsName.transparant,
        title: Row(
          children: [
            Text(
              'nabil_alftr09',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: ColorsName.black),
            ),
            const SizedBox(
              width: 2,
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: ColorsName.black,
              size: 21,
            ),
          ],
        ),
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: FaIcon(
                FontAwesomeIcons.ellipsis,
                color: ColorsName.black,
                size: 22,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 28),
              child: FaIcon(
                FontAwesomeIcons.arrowTrendUp,
                color: ColorsName.black,
                size: 22,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 28, right: 20),
              child: FaIcon(
                FontAwesomeIcons.penToSquare,
                color: ColorsName.black,
                size: 22,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 11, left: 15, right: 18),
                      height: 37,
                      width: 310,
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
                              style: TextStyle(
                                  fontSize: 17, color: ColorsName.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: const EdgeInsets.only(top: 17),
                      child: Text(
                        "Filter",
                        style: TextStyle(
                            color: ColorsName.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, top: 17, right: 8),
                      height: 33,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsName.bluemuda,
                      ),
                      child: Center(
                          child: Text(
                        "Semua",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: ColorsName.blue),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 17, right: 8),
                      height: 33,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsName.grey350,
                      ),
                      child: Center(
                          child: Text(
                        "Utama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: ColorsName.black),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 17, right: 8),
                      height: 33,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsName.grey350,
                      ),
                      child: Center(
                          child: Text(
                        "Umum",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: ColorsName.black),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 17, right: 8),
                      height: 33,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsName.grey350,
                      ),
                      child: Center(
                        child: Text(
                          "Permintaan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: ColorsName.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/pp.jpeg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "nabil_alftr09",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Sedang aktif",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/apo.jpg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Suparjo",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "test doang",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/apo1.jpg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Suparji",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Terkirim",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/apo2.jpg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Budi",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Dilihat",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/astro.jpg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Julius",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Aktif 14m yang lalu",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/lambo1.jpg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Caesar",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Test test · 20 mg",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/spi1.png"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Charles",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Aktif hari ini",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/spi2.jpg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Martel",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Test aja · 10 mg",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/spider.jpg"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Richard",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Test test test · 30 mg",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
            ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5),
                width: 48,
                height: 48,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("image/sword.png"),
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Agus",
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorsName.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Text(
                "Kosong · 100 mg",
                style: TextStyle(fontSize: 14, color: ColorsName.grey700),
              ),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: ColorsName.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
