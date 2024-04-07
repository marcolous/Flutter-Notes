import 'package:flutter/material.dart';

class CustomBotton extends StatefulWidget {
  const CustomBotton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  State<CustomBotton> createState() => _CustomBottonState();
}

class _CustomBottonState extends State<CustomBotton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: const Color(0xffCCB9FB),
      ),
      onPressed: widget.onPressed,
      child: const Text(
        'Save',
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
