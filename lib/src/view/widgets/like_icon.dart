import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class LikeIcon extends StatefulWidget {
  final GlobalKey<LikeIconState> globalKey;
  const LikeIcon(this.globalKey) : super(key: globalKey);

  @override
  State<LikeIcon> createState() => LikeIconState();
}

class LikeIconState extends State<LikeIcon> {
  bool like = false;

  void onLike() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        like ? Remix.heart_fill : Remix.heart_line,
        color: like ? Colors.red : Colors.black,
        size: 40,
      ),
      onTap: onLike,
    );
  }
}
