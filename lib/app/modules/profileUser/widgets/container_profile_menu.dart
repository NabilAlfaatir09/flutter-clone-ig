import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';
import 'container_container_rounded.dart';
import 'row_menu_item.dart';

class ContainerProfileMenu extends StatelessWidget {
  const ContainerProfileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 668,
      decoration: BoxDecoration(
        color: ColorsName.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      child: const Column(
        children: [
          CenterContainerRounded(),
          RowMenuItem(
            right: 14,
            left: 16,
            iconData: FontAwesomeIcons.gear,
            sizeIcon: 25,
            text: "Pengaturan",
          ),
          RowMenuItem(
            right: 16,
            left: 16,
            iconData: FontAwesomeIcons.threads,
            sizeIcon: 25,
            text: "Threads",
          ),
          RowMenuItem(
            right: 18,
            left: 16,
            iconData: FontAwesomeIcons.chartSimple,
            sizeIcon: 25,
            text: "Insight",
          ),
          RowMenuItem(
            right: 15,
            left: 16,
            iconData: Icons.monitor_heart_outlined,
            sizeIcon: 25,
            text: "Aktivitas Anda",
          ),
          RowMenuItem(
            right: 16,
            left: 16,
            iconData: Icons.timelapse_outlined,
            sizeIcon: 25,
            text: "Arsip",
          ),
          RowMenuItem(
            right: 16,
            left: 16,
            iconData: Icons.qr_code_scanner_rounded,
            sizeIcon: 25,
            text: "Kode QR",
          ),
          RowMenuItem(
            right: 19,
            left: 19,
            iconData: FontAwesomeIcons.bookmark,
            sizeIcon: 25,
            text: "Disimpan",
          ),
          RowMenuItem(
            right: 16,
            left: 16,
            iconData: Icons.people_alt_outlined,
            sizeIcon: 25,
            text: "Pengawasan",
          ),
          RowMenuItem(
            right: 16,
            left: 16,
            iconData: Icons.verified_outlined,
            sizeIcon: 25,
            text: "Verifikasi Meta",
          ),
          RowMenuItem(
            right: 16,
            left: 19,
            iconData: FontAwesomeIcons.list,
            sizeIcon: 23,
            text: "Teman Dekat",
          ),
          RowMenuItem(
            right: 12,
            left: 16,
            iconData: FontAwesomeIcons.users,
            sizeIcon: 25,
            text: "Daftar Berbagi",
          ),
          RowMenuItem(
            right: 16,
            left: 16,
            iconData: FontAwesomeIcons.star,
            sizeIcon: 25,
            text: "Favorit",
          ),
          RowMenuItem(
            right: 16,
            left: 19,
            iconData: Icons.person_add_outlined,
            sizeIcon: 25,
            text: "Temukan Orang",
          ),
        ],
      ),
    );
  }
}
