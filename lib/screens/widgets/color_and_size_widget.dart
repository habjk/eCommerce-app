import 'package:flutter/material.dart';

class ColorAndSizeWidget extends StatefulWidget {
  final int productSize;
  const ColorAndSizeWidget({super.key, required this.productSize});

  @override
  State<ColorAndSizeWidget> createState() => _ColorAndSizeWidgetState();
}

class _ColorAndSizeWidgetState extends State<ColorAndSizeWidget> {
  int colorType = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
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
        ),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(text: "Size\n"),
            WidgetSpan(child: SizedBox(height: 10)),
            TextSpan(
                text: "${widget.productSize} cm",
                style: TextStyle(fontWeight: FontWeight.bold))
          ])),
        )
      ],
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
