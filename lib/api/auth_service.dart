import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl;

  AuthService(this.baseUrl);

  Future<Map?> login(String email, String password) async {
    final url = Uri.parse('$baseUrl'); // Replace with your login endpoint

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data; // Assuming the token is returned in `data['token']`
      } else {
        print('Login failed: ${response.body}');
        return null;
      }
    } catch (error) {
      print('Error logging in: $error');
      return null;
    }
  }
}
