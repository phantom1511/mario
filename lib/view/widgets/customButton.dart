import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final Icon? icon;

  const CustomButton({Key? key, this.onPressed, this.icon}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: widget.icon,
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.grey.shade500),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(24)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          )),
    );
  }
}
