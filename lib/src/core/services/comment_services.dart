import 'package:post_app/src/core/model/comment.dart';

class CommentServices {
  List<Comment> getCommentList() {
    return [
      Comment(
        user_name: "squirtward",
        content: "Boooooob, y esa cangreburger que tienes ahí?",
        user_avatar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToxZJUXDfgCfulkvthveua1tYMxYvSq1EHZA&s",
        likes: 69,
      ),
      Comment(
        user_name: "bob_leponge",
        content: "Qué cangreburger Calamardo?",
        user_avatar:
            "https://preview.redd.it/axbthqx51x0c1.jpg?width=1080&crop=smart&auto=webp&s=3d5285a87eff4cd425a1bc22934e17b62ceddf41",
        likes: 69,
      ),
      Comment(
        user_name: "squirtward",
        content: "Estaaaaaaaaa",
        user_avatar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToxZJUXDfgCfulkvthveua1tYMxYvSq1EHZA&s",
        likes: 69,
      ),
      Comment(
        user_name: "squirtward",
        content: "Tiene toda la salsa, y la mayonesa, y aquí están los panes!",
        user_avatar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToxZJUXDfgCfulkvthveua1tYMxYvSq1EHZA&s",
        likes: 69,
      ),
    ];
  }
}
