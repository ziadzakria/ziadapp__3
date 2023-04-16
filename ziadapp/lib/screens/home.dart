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
    final double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          widthScreen > 600 ? webBackgroundColor : mobileBackgroundColor,
      appBar: widthScreen > 600
          ? null
          : AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.messenger_outline,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                    )),
              ],
              backgroundColor: mobileBackgroundColor,
              title: SvgPicture.asset(
                "ziadapp/asstes/img/download.jpg",
                color: primaryColor,
                height: 32,
              ),
            ),
      body: Container(
        decoration: BoxDecoration(
            color: mobileBackgroundColor,
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(125, 78, 91, 110),
                          ),
                          child: CircleAvatar(
                            radius: 26,
                            backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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"),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Text(
                          "ziad elbana",
                          style: TextStyle(fontSize: 15),
                        ),
                      ]),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
            Image.network(
              "https://www.bing.com/th?id=OIP.wsea46ztGMyu2Ki7sKAkIgHaLH&w=137&h=206&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
            ),
            Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.comment_outlined,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_outline),
                          ),
                        ],
                      ),
                    ])),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                width: double.infinity,
                child: Text(
                  "10 Likes",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                )),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Text(
                  "username ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                ),
                Text(
                  " cairo ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 189, 196, 199)),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 9, 10),
                  width: double.infinity,
                  child: Text(
                    "view all 100 comments",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(214, 157, 157, 165)),
                    textAlign: TextAlign.start,
                  )),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 9, 10),
                width: double.infinity,
                child: Text(
                  "10June 2022",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                  textAlign: TextAlign.start,
                )),
          ],
        ),
      ),
    );
  }
}
