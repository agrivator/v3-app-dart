
import 'package:http/http.dart' as http;

class APIController {
  String url = 'http://10.0.2.2:8000';

  Future<bool> getToken(String username, String password) async {
    try {
      var res = await http.post(
          Uri.parse(
            '$url/token',
          ),
          body: {'username': username, 'password': password});
      if (res.statusCode == 200) {
       return true;
      } 
      return false;
    } on Exception catch (e) {
      return false;
    }
  }
}
