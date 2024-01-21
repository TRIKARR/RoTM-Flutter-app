import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rotm/models/userdata.dart';
import 'package:http/http.dart' as http;

class ServiceCalltoBackend extends StatefulWidget {
  const ServiceCalltoBackend({super.key});

  @override
  State<ServiceCalltoBackend> createState() => _ServiceCalltoBackendState();
}

class _ServiceCalltoBackendState extends State<ServiceCalltoBackend> {
  void ExtractRequest() async {
    var url = Uri.parse('http://192.168.0.241:3000/extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var tempData = responseData["temp"];
    var respData = responseData["resp"]; // Store the "temp" array in a variable
    UserTempData = tempData;
    UserRespData = respData;
    print(queryParams.toString());
  }

  @override
  void initState() {
    super.initState();
    ExtractRequest();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
