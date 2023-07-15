import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget {
  const ColorWidget({super.key});

  @override
  State<ColorWidget> createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  int colorType = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 20, left: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color"),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              ColorDot(
                  selectedColor: colorType,
                  index: 1,
                  color: Colors.blue,
                  onTap: () {
                    colorType = 1;
                    setState(() {});
                  }),
              ColorDot(
                  selectedColor: colorType,
                  index: 2,
                  color: Colors.amber,
                  onTap: () {
                    colorType = 2;
                    setState(() {});
                  }),
              ColorDot(
                  selectedColor: colorType,
                  index: 3,
                  color: Colors.grey,
                  onTap: () {
                    colorType = 3;
                    setState(() {});
                  })
            ],
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final int selectedColor;
  final int index;
  final Color color;
  final void Function() onTap;
  const ColorDot(
      {super.key,
      required this.selectedColor,
      required this.index,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 15,
        width: 15,
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.only(right: 2),
        decoration: BoxDecoration(
            border: selectedColor == index ? Border.all(color: color) : null,
            shape: BoxShape.circle),
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
      ),
    );
  }
}
