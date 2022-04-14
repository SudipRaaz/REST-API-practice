import 'package:api_pratice/model/post.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  Future<List<Post>> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    var json;
    if (response.statusCode == 200) {
      json = response.body;
    }
    return postFromJson(json);
  }
}
