import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_instagram/app/data/colors.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: ColorsName.transparant,
        backgroundColor: ColorsName.transparant,
        title: Row(
          children: [
            Text(
              "nabil_alftr09",
              style: TextStyle(
                  color: ColorsName.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5,
            ),
            const Image(
              image: AssetImage("image/ig.png"),
              fit: BoxFit.cover,
              width: 15,
              height: 15,
            ),
            InkWell(
              splashColor: ColorsName.white,
              hoverColor: ColorsName.white,
              onTap: () {},
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: ColorsName.black,
                size: 25,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            splashColor: ColorsName.white,
            hoverColor: ColorsName.white,
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              size: 25,
              color: ColorsName.black,
            ),
          ),
          IconButton(
            splashColor: ColorsName.white,
            hoverColor: ColorsName.white,
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 25,
              color: ColorsName.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 60,
                      height: 60,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("image/pp.jpeg"),
                        minRadius: 15,
                        maxRadius: 15,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "20",
                          style: TextStyle(
                              color: ColorsName.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "Posts",
                          style:
                              TextStyle(color: ColorsName.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "99.M",
                          style: TextStyle(
                              color: ColorsName.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "Followers",
                          style:
                              TextStyle(color: ColorsName.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "1",
                          style: TextStyle(
                              color: ColorsName.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "followings",
                          style:
                              TextStyle(color: ColorsName.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Nabil Alfaatir",
                    style: TextStyle(
                        color: ColorsName.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean laoreet augue at tincidunt tempus. Curabitur hendrerit massa eu risus vestibulum vulputate.",
                    style: TextStyle(
                      color: ColorsName.grey700,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 1500,
                height: 32,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: ColorsName.white),
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: ColorsName.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          height: 85,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("image/pp.jpeg"),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Story 1",
                              style: TextStyle(
                                  fontSize: 12, color: ColorsName.black),
                            ),
                          ],
                        ),
                        const SizedBox(
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
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      splashColor: ColorsName.white,
                      highlightColor: ColorsName.white,
                      hoverColor: ColorsName.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.grid_on_outlined,
                        size: 30,
                        color: ColorsName.black,
                      ),
                      color: ColorsName.black,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      splashColor: ColorsName.white,
                      highlightColor: ColorsName.white,
                      hoverColor: ColorsName.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.video_collection_outlined,
                        size: 30,
                        color: ColorsName.black,
                      ),
                      color: ColorsName.black,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      style: IconButton.styleFrom(
                          side: BorderSide(color: ColorsName.black)),
                      splashColor: ColorsName.white,
                      hoverColor: ColorsName.white,
                      highlightColor: ColorsName.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_pin_outlined,
                        size: 30,
                        color: ColorsName.black,
                      ),
                      color: ColorsName.black,
                    ),
                  ),
                  const SizedBox(
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
      ),
    );
  }
}
