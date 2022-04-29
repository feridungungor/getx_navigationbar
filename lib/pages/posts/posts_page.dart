import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/posts/components/posts_list_item.dart';
import 'package:getx_navigationbar/pages/posts/posts_controller.dart';

import '../components/loading_overlay.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: Container(
        child: GetBuilder<PostController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postsList.length,
                  itemBuilder: (context, index) => PostListItem(
                        post: controller.postsList[index],
                      )),
            );
          },
        ),
      ),
    );
  }
}
