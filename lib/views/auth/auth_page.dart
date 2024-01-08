import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class UserAuthPage extends StatefulWidget {
  const UserAuthPage({super.key});

  @override
  State<UserAuthPage> createState() => _UserAuthPageState();
}

class _UserAuthPageState extends State<UserAuthPage> {
  void getRequest() async {
    var url = Uri.parse('http://localhost:3000/something');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
  @override
  void initState() {
    super.initState();
    getRequest();
  }
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}