import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({required this.url});

  Future getData() async {
    var link = Uri.parse(url);
    http.Response response = await http.get(link);
    return jsonDecode(response.body);
  }
}
