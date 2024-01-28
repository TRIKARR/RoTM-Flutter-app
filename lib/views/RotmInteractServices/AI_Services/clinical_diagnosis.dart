import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/userdata.dart';
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
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        title: Text(
          'DIAGNOSIS',
          style: GoogleFonts.getFont(
            'Orbitron',
            fontSize: 25,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // This will pop the current screen and go back.
          },
        ),
      ),
      body: Center(
        child: TextField(
          style: GoogleFonts.getFont(
            'Orbitron',
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          decoration: const InputDecoration(
            fillColor: Color.fromARGB(255, 157, 240, 230),
            filled: true,
            hintText: "ENTER THE DETAILS",
            prefixIcon: Icon(Icons.health_and_safety),
            suffixIcon: Icon(Icons.health_and_safety),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
