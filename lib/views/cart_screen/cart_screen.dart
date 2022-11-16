import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopguru/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: whiteColor,
        child: "Cart is empty!"
            .text
            .fontFamily(semibold)
            .color(darkFontGrey)
            .makeCentered(),
      ),
    );
  }
}
