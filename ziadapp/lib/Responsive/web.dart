import 'package:flutter/material.dart';
import '../color.dart';
import 'package:ziadapp/screens/home.dart';
import '../screens/search.dart';
import '../screens/addpost.dart';
import '../screens/profile.dart';


class WebScerren extends StatefulWidget {
  const WebScerren({Key? key}) : super(key: key);

  @override
  State<WebScerren> createState() => _WebScerrenState();
}

class _WebScerrenState extends State<WebScerren> {
    final PageController _pageController = PageController();


 navigate2Screen(int indexx) {
    _pageController.jumpToPage(indexx);
    setState(() {
      page = indexx;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: secondaryColor,
            ),
            onPressed: () {},
            _pageController.jumpToPage(1);
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
           backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "ziadapp\asstes\img\download.jpg",
          color: primaryColor,
          height: 32,
        ),
      ),
        body: PageView(
           controller: _pageController,
        onPageChanged: (index) {
         
        },
        physics: NeverScrollableScrollPhysics(),
        children: [
          Home(),
          Search(),
                    AddPost(),

                     Profile(),



         
        ],
      ),
    );
  }
}
