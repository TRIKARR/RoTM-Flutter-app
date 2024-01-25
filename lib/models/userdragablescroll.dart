// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
    return DraggableScrollableSheet(
      builder: (context, scrollController) {
        return SingleChildScrollView(
          child: Text(BRoTM_UserID),
        );
      },
    );
  }
}
