import 'package:http/http.dart' as http;
import 'dart:convert';

Future getQuote() async {
  var url = Uri.parse('https://api.adviceslip.com/advice');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var body = jsonDecode(response.body);
    // String content = body["a"];
    return body;
  } else {
    return response.statusCode;
  }
}
