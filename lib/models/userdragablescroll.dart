// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rotm/userdata.dart';

class UserDragScrollBottomSheet extends StatefulWidget {
  const UserDragScrollBottomSheet({Key? key}) : super(key: key);

  @override
  State<UserDragScrollBottomSheet> createState() =>
      _UserDragScrollBottomSheetState();
}

class _UserDragScrollBottomSheetState extends State<UserDragScrollBottomSheet> {
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
    UserRespData = resp.toDouble();
    UserTempData = temp.toDouble();
    UserRepoData = repoData.toDouble();
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
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple.shade900,
                      ),
                      height: 170,
                      width: MediaQuery.of(context).size.width - 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 18),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(60),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "lib/assets/images/baymax.jpeg",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple.shade900,
                      ),
                      height: 250,
                      width: MediaQuery.of(context).size.width - 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 115),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 0, 255, 247),
                      ),
                      height: 210,
                      width: 210,
                      child: QrImageView(
                        data: BRoTM_UserID,
                        version: QrVersions.auto,
                        size: 350,
                        gapless: false,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
