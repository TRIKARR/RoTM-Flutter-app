// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rotm/models/userdata.dart';

class UserDragScrollBottomSheet extends StatelessWidget {
  const UserDragScrollBottomSheet({Key? key}) : super(key: key);

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
