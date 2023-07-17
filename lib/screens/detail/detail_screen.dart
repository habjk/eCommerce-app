import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/screens/widgets/color_and_size_widget.dart';
import 'package:shopping_app/screens/widgets/counter_widget.dart';
import 'package:shopping_app/screens/widgets/description_widget.dart';
import 'package:shopping_app/screens/widgets/like_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        foregroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
            icon: SvgPicture.asset(
              backIcon,
              width: 20,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: SvgPicture.asset(
                searchIcon,
                width: 20,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: SvgPicture.asset(
                cartIcon,
                width: 20,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 5),
          height: size.height,
          child: Stack(
            children: [
              //Stack
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Stack/product color
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.title,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11)),
                          Text(product.title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          Spacer(),
                          Text("Price",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11)),
                          Padding(
                            padding: EdgeInsets.only(bottom: 25),
                            child: Text("\$${product.price}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                          )
                        ],
                      ),
                    ),
                  ),
                  //Stack/white field,
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(23),
                            topRight: Radius.circular(23),
                          )),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 60),
                                child: ColorAndSizeWidget(
                                    productSize: product.size)),
                            SizedBox(height: 20),
                            Descrption(description: product.description),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Counter(), Like()],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: product.color)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/icons/add_to_cart.svg",
                                    ),
                                  ),
                                ),
                                //elevated
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Stack/Image
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(bottom: size.height * .4, right: 20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 175, maxWidth: 200),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill,
                      //height: 200,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
