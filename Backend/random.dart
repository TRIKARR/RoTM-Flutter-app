// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class DemoPage extends StatefulWidget {
//   const DemoPage({Key? key}) : super(key: key);

//   @override
//   _DemoPageState createState() => _DemoPageState();
// }

// class _DemoPageState extends State<DemoPage> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();

//   void postRequest() async {
//     var url = Uri.parse('http://localhost:3000/postsomething');
//     var data = {
//       "Email": emailController.text,
//       "Username": usernameController.text,
//       "Password": passwordController.text,
//       "ConfirmPassword": confirmPasswordController.text,
//     };
//     var response = await http.post(url, body: data);
//     print(response.body.toString());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Demo Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: usernameController,
//               decoration: InputDecoration(labelText: 'Username'),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             TextField(
//               controller: confirmPasswordController,
//               decoration: InputDecoration(labelText: 'Confirm Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 if (emailController.text.isNotEmpty &&
//                     usernameController.text.isNotEmpty &&
//                     passwordController.text.isNotEmpty &&
//                     confirmPasswordController.text.isNotEmpty) {
//                   postRequest();
//                 } else {
//                   // Handle case where not all fields are filled
//                   print('Please fill in all fields');
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

