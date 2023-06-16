import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;

  final TextInputType? keyboardType;

  const CustomTextFormAuth(
      {Key? key,
        this.obscure=false,
        this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
        required this.valid,
       // required this.isNumber
      required this.keyboardType,
      })
      : super(key: key);
    final bool obscure;
  final void Function()? onTapIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText:obscure == null || obscure == false  ? false : true,
        keyboardType:keyboardType ,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            suffixIcon: InkWell(
                onTap: onTapIcon,
                child: Icon(iconData)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
