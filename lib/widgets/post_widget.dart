import 'package:flutter/material.dart';
import 'file:///C:/Users/ola77/AndroidStudioProjects/Posttask/lib/model/post.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        '${post.id}',
      ),
      title: Text(post.title,

      ),
      isThreeLine: true,
      subtitle: Text(post.body,

      ),
      dense: true,
    );
  }
}