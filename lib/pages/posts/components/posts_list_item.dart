import 'package:flutter/material.dart';
import 'package:getx_navigationbar/models/post.dart';

class PostListItem extends StatelessWidget {
  final Post post;
  const PostListItem({Key? key,required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(post.title.toString()),
    );
  }
}
