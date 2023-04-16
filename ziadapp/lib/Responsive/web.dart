import 'package:flutter/material.dart';
import '../color.dart';
import 'package:ziadapp/screens/home.dart';
import '../screens/search.dart';
import '../screens/addpost.dart';
import '../screens/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebScerren extends StatefulWidget {
  const WebScerren({Key? key}) : super(key: key);

  @override
  State<WebScerren> createState() => _WebScerrenState();
}

class _WebScerrenState extends State<WebScerren> {
  final PageController _pageController = PageController();

  navigateScreen(int indexx) {
    _pageController.jumpToPage(indexx);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: secondaryColor,
              ),
              onPressed: () {
                navigateScreen(0);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: secondaryColor,
              ),
              onPressed: () {
                navigateScreen(1);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.add_a_photo,
                color: secondaryColor,
              ),
              onPressed: () {
                navigateScreen(2);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: secondaryColor,
              ),
              onPressed: () {
                navigateScreen(3);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: secondaryColor,
              ),
              onPressed: () {
                navigateScreen(4);
              },
            ),
          ],
          backgroundColor: mobileBackgroundColor,
          title: SvgPicture.asset(
            "ziadapp/asstes/img/ownload.jpg",
            color: primaryColor,
            height: 32,
          )),
    );
    body:
    PageView(
      controller: _pageController,
      onPageChanged: (index) {},
      physics: NeverScrollableScrollPhysics(),
      children: [
        Home(),
        Search(),
        AddPost(),
        Profile(),
      ],
    );
  }
}
