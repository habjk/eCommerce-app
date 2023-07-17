import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      child: SvgPicture.asset(
        "assets/icons/heart.svg",
      ),
    );
  }
}
