// import 'package:flutter/material.dart';

// import '../../../shared/color_utils.dart';

// class CustomTextFormField extends StatelessWidget {
//   TextEditingController controller;
//   VoidCallback validator;VoidCallback onSaved;
//   String hinttext;
//   IconData prefixicon;
//   IconData? passwordicon;
//   CustomTextFormField(
//       {Key? key,required this.validator,required this.onSaved,
//       required this.controller,
//       required this.prefixicon,
//       required this.hinttext,
//       this.passwordicon})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(validator:validator,
//       keyboardType: TextInputType.number,
//       controller: controller,
//       decoration: InputDecoration(
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorUtil.black),
//         ),
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorUtil.maincolor),
//         ),
//         contentPadding: EdgeInsets.only(top: 18),
//         hintText: hinttext,
//         prefixIcon: Icon(
//           prefixicon,
//           size: 25,
//           color: ColorUtil.maincolor,
//         ),
//         suffixIcon: Icon(
//           passwordicon,
//           size: 25,
//           color: ColorUtil.maincolor,
//         ),
//         border: UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorUtil.black, width: 4),
//         ),
//       ),
//     );
//   }
// }
