import 'package:getx_navigationbar/library/api_request.dart';
import 'package:getx_navigationbar/models/post.dart';

class PostsProvider {
  void getPostsList({
    required Function() beforeSend,
    required Function(List<Post> posts) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts',data: <dynamic,String>{}).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(
            (data as List).map((postJson) => Post.fromJson(postJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
