import 'package:flutter/material.dart';

import '../../../data/colors.dart';
import 'align_text.dart';
import 'button_edit.dart';
import 'column_image.dart';
import 'expanded_icon.dart';
import 'expanded_text.dart';

class BodyListView extends StatelessWidget {
  const BodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 80,
                    height: 80,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("image/pp.jpeg"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                  ),
                ),
                const ExpandedText(
                  textAngka: "20",
                  textHuruf: "Posts",
                  fontSizeAngka: 18,
                  fontSizeHuruf: 12,
                ),
                const ExpandedText(
                  textAngka: "99.M",
                  textHuruf: "Followers",
                  fontSizeAngka: 18,
                  fontSizeHuruf: 12,
                ),
                const ExpandedText(
                  textAngka: "1",
                  textHuruf: "Followings",
                  fontSizeAngka: 18,
                  fontSizeHuruf: 12,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            AlignText(
              text: "Nabil Alfaatir",
              fontSize: 13,
              color: ColorsName.black,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 5,
            ),
            AlignText(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean laoreet augue at tincidunt tempus. Curabitur hendrerit massa eu risus vestibulum vulputate.",
              fontSize: 14,
              color: ColorsName.grey700,
            ),
            const SizedBox(
              height: 25,
            ),
            const ButtonEdit(),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 85,
                      ),
                      ColumnImage(
                        text: "Story 1",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 2",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 3",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 4",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 5",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 6",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 7",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 8",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnImage(
                        text: "Story 9",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: <Widget>[
                ExpandedIcon(iconData: Icons.grid_on_outlined),
                ExpandedIcon(iconData: Icons.video_collection_outlined),
                ExpandedIcon(iconData: Icons.person_pin_outlined),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            GridView.builder(
              itemCount: 20,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemBuilder: (context, index) => Image.network(
                  "https://picsum.photos/id/${64 + index}/500/500"),
            )
          ],
        ),
      ],
    );
  }
}
