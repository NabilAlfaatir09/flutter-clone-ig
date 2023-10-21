import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';
import 'column_bottom_sheet_logo.dart';
import 'container_garis_tipis.dart';
import 'container_icon_bottom_sheet.dart';
import 'container_text_bottom_sheet.dart';

class ContainerBottomSheet extends StatelessWidget {
  const ContainerBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          color: ColorsName.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15))),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 30),
              width: 43,
              height: 4,
              decoration: BoxDecoration(
                color: ColorsName.grey700,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColumnLogoBottomSheet(
                iconData: FontAwesomeIcons.bookmark,
                text: "Simpan",
              ),
              ColumnLogoBottomSheet(
                iconData: FontAwesomeIcons.qrcode,
                text: "Kode QR",
              ),
            ],
          ),
          const ContainerGarisTipis(
            top: 15,
            bottom: 18,
          ),
          Row(
            children: [
              ContainerIconBottomSheet(
                color: ColorsName.black,
                iconData: FontAwesomeIcons.star,
              ),
              ContainerTextBottomSheet(
                color: ColorsName.black,
                text: "Tambahkan ke favorit",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ContainerIconBottomSheet(
                color: ColorsName.black,
                iconData: FontAwesomeIcons.userMinus,
              ),
              ContainerTextBottomSheet(
                color: ColorsName.black,
                text: "Berhenti mengikuti",
              ),
            ],
          ),
          const ContainerGarisTipis(
            top: 15,
            bottom: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              ContainerIconBottomSheet(
                color: ColorsName.black,
                iconData: FontAwesomeIcons.circleInfo,
              ),
              ContainerTextBottomSheet(
                color: ColorsName.black,
                text: "  Mengapa Anda melihat postingan ini",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ContainerIconBottomSheet(
                color: ColorsName.black,
                iconData: FontAwesomeIcons.eyeSlash,
              ),
              ContainerTextBottomSheet(
                color: ColorsName.black,
                text: " Sembunyikan",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ContainerIconBottomSheet(
                color: ColorsName.black,
                iconData: FontAwesomeIcons.circleUser,
              ),
              ContainerTextBottomSheet(
                color: ColorsName.black,
                text: "  Tentang akun ini",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ContainerIconBottomSheet(
                color: ColorsName.red,
                iconData: FontAwesomeIcons.circleExclamation,
              ),
              ContainerTextBottomSheet(
                color: ColorsName.red,
                text: "  Laporkan",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
