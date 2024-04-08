import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 20,
            backgroundColor: color,
          )
        : CircleAvatar(
            radius: 16,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  final List<Color> colors = const [
    Color(0xfff72585),
    Color(0xffb5179e),
    Color(0xff7209b7),
    Color(0xff560bad),
    Color(0xff480ca8),
    Color(0xff3a0ca3),
    Color(0xff3f37c9),
    Color(0xff4361ee),
    Color(0xff4895ef),
    Color(0xff4cc9f0),
    Color(0xff068D9D),
    Color(0xff53599A),
    Color(0xff6D9DC5),
    Color(0xff80DED9),
    Color(0xffAEECEF),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey, // Set the border color here
          width: 2.0, // Set the border width if needed
        ),
      ),
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
