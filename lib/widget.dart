import 'package:flutter/material.dart';
import 'package:sign_up_sign_in_practice/color.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    Key? key,
    required this.controller,
    this.obscureText = true,
    this.keyboardType,
    this.labelText,
    this.hintText,
    this.haveSuffixIcon,
  }) : super(key: key);

  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? hintText;
  final bool? haveSuffixIcon;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool changeObscureText;

  @override
  void initState() {
    changeObscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150), color: textFieldColor),
      height: 40,
      width: 300,
      child: TextField(
          controller: widget.controller,
          obscureText: changeObscureText,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 1, top: 1, left: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            labelText: widget.labelText,
            suffixIcon: widget.haveSuffixIcon == true
                ? GestureDetector(
                    child: changeObscureText
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onTap: () {
                      onTap();
                    },
                  )
                : null,
          )),
    );
  }

  void onTap() {
    setState(() {
      changeObscureText = !changeObscureText;
    });
  }
}

// Widget textField({String? labelTxt, bool? haveSuffixIcon}) {
//   late bool obSecurity = true;
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(100.0),
//       color: Colors.white,
//     ),
//     margin: const EdgeInsets.only(bottom: 3, left: 10, right: 10),
//     child: TextField(
//       obscureText: obSecurity,
//       keyboardType: TextInputType.emailAddress,
//       decoration: InputDecoration(
//         labelText: labelTxt,
//         contentPadding:
//             const EdgeInsets.only(bottom: 1, top: 1, right: 1, left: 20),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(100.0),
//           borderSide: BorderSide(color: borderColor, width: 2.0),
//         ),
//         suffixIcon: labelTxt == "Email"
//             ? null
//             : GestureDetector(
//                 onTap: () {
//                   set
//                   obSecurity = !obSecurity;
//                 },
//               ),
//         enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: borderColor),
//             borderRadius: BorderRadius.circular(100.0)),
//       ),
//     ),
//   );
// }