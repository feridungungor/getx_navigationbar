import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/posts/posts_provider.dart';

import '../../models/post.dart';

class PostController extends GetxController {
  bool isLoading = true;
  List<Post> postsList = [];

  @override
  void onInit() {
    PostsProvider().getPostsList(
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print('Error');
      }, beforeSend: () {  },
    );
    super.onInit();
  }
}
