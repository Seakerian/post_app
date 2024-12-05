part of 'comment_box_bloc.dart';

class CommentBoxState extends Equatable {
  const CommentBoxState({
    this.CommentList = const [],
    this.SelfComment = "",
  });

  final List<Comment> CommentList;
  final String SelfComment;

  CommentBoxState copyWith({
    List<Comment>? CommentList,
    String? SelfComment,
  }) =>
      CommentBoxState(
        CommentList: CommentList ?? this.CommentList,
        SelfComment: SelfComment ?? this.SelfComment,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        CommentList,
        SelfComment,
      ];
}
