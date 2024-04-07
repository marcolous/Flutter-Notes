import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
            subtitle: Text(
              'build ur carrer with thatrwat samy',
              style:
                  TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_rounded,
                size: 28,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 5, top: 15),
            child: Text(
              'May 21, 2024',
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
