import 'package:flutter/material.dart';
import '../color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "ziadapp/asstes/img/download.jpg",
          Color: primaryColor,
          height: 32,
        ),
      ),
    );
  }
}
