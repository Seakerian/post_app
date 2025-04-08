import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class BookmarkIcon extends StatefulWidget {
  const BookmarkIcon({super.key});

  @override
  State<BookmarkIcon> createState() => _BookmarkIconState();
}

class _BookmarkIconState extends State<BookmarkIcon> {
  bool like = false;

  void onLike() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onLike,
      child: Icon(
        like ? Remix.bookmark_fill : Remix.bookmark_line,
        size: 40,
      ),
    );
  }
}
