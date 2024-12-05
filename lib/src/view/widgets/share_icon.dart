import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class ShareIcon extends StatefulWidget {
  const ShareIcon({super.key});

  @override
  State<ShareIcon> createState() => _ShareIconState();
}

class _ShareIconState extends State<ShareIcon> {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Remix.send_plane_line,
      size: 40,
    );
  }
}
