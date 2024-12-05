import 'package:flutter/material.dart';
import 'package:post_app/src/view/post_view/post_view.dart';

Map<String, WidgetBuilder> nav() => {
      "post": (context) => PostView(),
    };
