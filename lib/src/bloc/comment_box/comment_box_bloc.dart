import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:post_app/src/core/model/comment.dart';
import 'package:post_app/src/core/services/comment_services.dart';

part 'comment_box_event.dart';
part 'comment_box_state.dart';

class CommentBoxBloc extends Bloc<CommentBoxEvent, CommentBoxState> {
  CommentServices services = CommentServices();
  CommentBoxBloc() : super(const CommentBoxState()) {
    on<OnChangeComment>(
      (event, emit) {
        emit(
          CommentBoxState().copyWith(SelfComment: event.comment),
        );
      },
    );
    on<LoadCommentList>(
      (event, emit) {
        var list = services.getCommentList();
        emit(
          CommentBoxState().copyWith(CommentList: list),
        );
      },
    );
  }
}
