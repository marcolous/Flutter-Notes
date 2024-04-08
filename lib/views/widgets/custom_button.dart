import 'package:flutter/material.dart';

class CustomBotton extends StatefulWidget {
  const CustomBotton(
      {super.key, required this.onPressed, this.isLoading = false});
  final void Function()? onPressed;
  final bool isLoading;
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
      child: widget.isLoading
          ? const CircularProgressIndicator(
              color: Colors.black,
            )
          : const Text(
              'Save',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
    );
  }
}
