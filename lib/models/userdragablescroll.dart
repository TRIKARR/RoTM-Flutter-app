import 'package:flutter/material.dart';

class UserDragScrollBottomSheet extends StatelessWidget {
  const UserDragScrollBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, scrollController) {
        return const SingleChildScrollView();
      },
    );
  }
}
