import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_app/src/bloc/comment_box/comment_box_bloc.dart';
import 'package:post_app/src/view/widgets/modal.dart';
import 'package:remixicon/remixicon.dart';

class CommentIcon extends StatefulWidget {
  const CommentIcon({super.key});

  @override
  State<CommentIcon> createState() => _CommentIconState();
}

class _CommentIconState extends State<CommentIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => dynamicModal(context, title: "Comments",
          body: BlocBuilder<CommentBoxBloc, CommentBoxState>(
        builder: (context, state) {
          BlocProvider.of<CommentBoxBloc>(context).add(
            LoadCommentList(),
          );
          return SizedBox(
            height: 200,
            child: RawScrollbar(
              child: ListView.builder(
                  itemCount: state.CommentList.length,
                  itemBuilder: (context, i) => ListTile(
                        title: Text(state.CommentList[i].user_name),
                        subtitle: Text(state.CommentList[i].content),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(state.CommentList[i].user_avatar),
                        ),
                        trailing: Text("Likes ${state.CommentList[i].likes}"),
                      )),
            ),
          );
        },
      )),
      child: const Icon(
        Remix.chat_3_line,
        size: 40,
      ),
    );
  }
}
