// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';

// @RoutePage()
// class OtpPage extends StatefulWidget {
//   const OtpPage({super.key});

//   @override
//   State<OtpPage> createState() => _OtpPageState();
// }

// class _OtpPageState extends State<OtpPage> {
//   final pinputController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     // final textTheme = Theme.of(context).textTheme;
//     double mediaQueryHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: ListView(
//         children: [
//           SizedBox(height: mediaQueryHeight * 0.100),
//           //! PinPut
//           Pinput(
//             autofocus: true,
//             validator: (value) {
//               if (value!.length < 4) {
//                 return 'this field cannot be empty';
//               } else {
//                 return null;
//               }
//             },
//             controller: pinputController,
//           ),
//         ],
//       ),
//     );
//   }
// }
