import 'package:flutter/material.dart';
import 'package:post_app/src/view/widgets/bookmark_icon.dart';
import 'package:post_app/src/view/widgets/comment_icon.dart';
import 'package:post_app/src/view/widgets/like_icon.dart';
import 'package:post_app/src/view/widgets/share_icon.dart';
import 'package:remixicon/remixicon.dart';

class PostView extends StatelessWidget {
  PostView({super.key});
  final GlobalKey<LikeIconState> globalKey = GlobalKey<LikeIconState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("assets/pfp.png"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "dummy_user",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Location here",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Remix.more_fill)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: GestureDetector(
                  onDoubleTap: () => {globalKey.currentState?.onLike()},
                  child: Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://pbs.twimg.com/profile_images/1743183985885503488/gewY1tJw_400x400.jpg"),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        LikeIcon(globalKey),
                        SizedBox(
                          width: 10,
                        ),
                        CommentIcon(),
                        SizedBox(
                          width: 8,
                        ),
                        ShareIcon(),
                      ],
                    ),
                    BookmarkIcon()
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "69 likes",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(),
                ],
              ),
              Row(
                children: [
                  Text(
                    "dummy_user ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Melvin ipsum",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
