import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_app/src/bloc/comment_box/comment_box_bloc.dart';
import 'package:post_app/src/core/routes/route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommentBoxBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Post",
        routes: nav(),
        initialRoute: "post",
      ),
    );
  }
}
