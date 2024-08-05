import 'dart:convert';
import 'package:google_clone/services/api_key.dart';
import 'package:google_clone/services/dummy_api.dart';
import 'package:http/http.dart' as http;

class SearchApi {
  static bool isDummy = false;

  static Future<Map<String, dynamic>> fetchData(
      {required String query, String start = "0"}) async {
    try {
      String q = query.contains(' ') ? query.split(' ').join('%20') : query;
      if (!isDummy) {
        final response = await http.get(Uri.parse(
            'https://www.googleapis.com/customsearch/v1?key=${apiKey}&cx=${contextKey}&q=${q}&start=$start'));
        
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final resData = json.decode(jsonData);
          return resData;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return apiDummyResponse;
  }
}
