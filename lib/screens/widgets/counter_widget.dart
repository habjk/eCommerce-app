import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: 35,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: .3),
              borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: () {
                if (counter <= 1) return;
                counter--;
                setState(() {});
              },
              padding: EdgeInsets.zero,
              alignment: Alignment.topCenter,
              icon: Icon(Icons.remove)),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text(counter.toString())),
        Container(
          height: 25,
          width: 35,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: .3),
              borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                counter++;
                setState(() {});
              },
              alignment: Alignment.center,
              icon: Icon(Icons.add)),
        )
      ],
    );
  }
}
