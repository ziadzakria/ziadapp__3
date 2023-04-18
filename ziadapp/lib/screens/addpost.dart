import 'package:flutter/material.dart';
import '../color.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.upload,
              size: 55,
            )),
      ),
    );
  }
}
