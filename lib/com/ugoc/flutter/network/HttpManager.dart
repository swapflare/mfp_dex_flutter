import 'package:http/http.dart' as http;

class HttpManager {
  Future<String> get(String url) async {
    http.Client client = http.Client();
    final response = await client.get(Uri.parse(url));

    // Use the compute function to run parsePhotos in a separate isolate.
    //return compute(parsePhotos, response.body);
    return response.body;
  }
}
