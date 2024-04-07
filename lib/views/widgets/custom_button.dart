import 'package:flutter/material.dart';

class CustomBotton extends StatefulWidget {
  const CustomBotton({super.key});

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
      onPressed: () async {
        setState(() {
          //isLoading = true;
        });

        setState(() {
          //isLoading = false;
        });
      },
      child: const Text(
        'Save',
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
