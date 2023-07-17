import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: color)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/add_to_cart.svg",
              color: color,
            ),
          ),
        ),
        SizedBox(width: 30),
        //elevated
        Expanded(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: color, foregroundColor: Colors.white),
              onPressed: () {},
              child: Text("BUY NOW")),
        ),
      ],
    );
  }
}
