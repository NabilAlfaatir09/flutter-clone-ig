import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/mesengger_controller.dart';
import '../widgets/action_container.dart';
import '../widgets/container_action_color.dart';
import '../widgets/container_filter.dart';
import '../widgets/container_search.dart';
import '../widgets/list_tile_chat.dart';

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
        actions: const [
          ActionContainer(
            right: 0,
            left: 20,
            iconData: FontAwesomeIcons.ellipsis,
          ),
          ActionContainer(
            right: 0,
            left: 28,
            iconData: FontAwesomeIcons.arrowTrendUp,
          ),
          ActionContainer(
            right: 20,
            left: 28,
            iconData: FontAwesomeIcons.penToSquare,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const Row(
                  children: [
                    ContainerSearch(),
                    ContainerFilter(),
                  ],
                ),
                Row(
                  children: [
                    ContainerActionColor(
                      text: "Semua",
                      width: 75,
                      top: 17,
                      left: 15,
                      right: 8,
                      colorContainer: ColorsName.bluemuda,
                      colorText: ColorsName.blue,
                    ),
                    ContainerActionColor(
                      text: "Utama",
                      width: 75,
                      top: 17,
                      left: 0,
                      right: 8,
                      colorContainer: ColorsName.grey350!,
                      colorText: ColorsName.black,
                    ),
                    ContainerActionColor(
                      text: "Umum",
                      width: 75,
                      top: 17,
                      left: 0,
                      right: 8,
                      colorContainer: ColorsName.grey350!,
                      colorText: ColorsName.black,
                    ),
                    ContainerActionColor(
                      text: "Permintaan",
                      width: 110,
                      top: 17,
                      left: 0,
                      right: 8,
                      colorContainer: ColorsName.grey350!,
                      colorText: ColorsName.black,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTileChat(
              assetImage: AssetImage("image/pp.jpeg"),
              title: "nabil_alftr09",
              subtitle: "Sedang aktif",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/apo.jpg"),
              title: "Suparjo",
              subtitle: "Test doang",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/apo1.jpg"),
              title: "Suparji",
              subtitle: "Terkirim",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/apo2.jpg"),
              title: "Budi",
              subtitle: "Dilihat",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/astro.jpg"),
              title: "Julius",
              subtitle: "Aktif 14m yang lalu",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/lambo1.jpg"),
              title: "Caesar",
              subtitle: "Test test · 20 mg",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/spi1.png"),
              title: "Charles",
              subtitle: "Aktif hari ini",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/spi2.jpg"),
              title: "Martel",
              subtitle: "Test aja · 10 mg",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/spider.jpg"),
              title: "Richard",
              subtitle: "Test test test · 30 mg",
            ),
            const ListTileChat(
              assetImage: AssetImage("image/sword.png"),
              title: "Agus",
              subtitle: "Kosong · 100 mg",
            ),
          ],
        ),
      ),
    );
  }
}
