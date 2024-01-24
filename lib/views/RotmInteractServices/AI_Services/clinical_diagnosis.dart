import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rotm/models/userdata.dart';
import 'package:http/http.dart' as http;

class UserClinicalDiagnosis extends StatefulWidget {
  const UserClinicalDiagnosis({super.key});

  @override
  State<UserClinicalDiagnosis> createState() => _UserClinicalDiagnosisState();
}

class _UserClinicalDiagnosisState extends State<UserClinicalDiagnosis> {
  // ignore: non_constant_identifier_names
  void ExtractUserRequest() async {
    var url = Uri.parse('${EndPoint}extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var repoData = responseData["report"];
    var temp = responseData["temp"];
    var resp = responseData["resp"];
    // Store the "temp" array in a variable
    UserRespData = resp;
    UserTempData = temp;
    UserRepoData = repoData;
    // ignore: avoid_print
    print(queryParams.toString());
  }

  @override
  void initState() {
    super.initState();
    ExtractUserRequest();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App Title'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // This will pop the current screen and go back.
          },
        ),
      ),
      body: const Center(
        child: Text('Your Scaffold Body user'),
      ),
    );
  }
}
