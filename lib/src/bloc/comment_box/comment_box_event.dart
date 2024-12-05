part of 'comment_box_bloc.dart';

class CommentBoxEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class OnChangeComment extends CommentBoxEvent {
  OnChangeComment(this.comment);

  @override
  // TODO: implement props
  List<Object?> get props => [comment];

  final String comment;
}

class LoadCommentList extends CommentBoxEvent {
  LoadCommentList();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
