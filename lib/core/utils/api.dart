import 'package:http/http.dart' as http;
import 'dart:convert';

Future getQuote() async {
  var url = Uri.parse('https://api.quotable.io/random?tags=motivational');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var body = jsonDecode(response.body);
    String content = body["content"];
    return body;
  } else {
    return response.statusCode;
  }
}
