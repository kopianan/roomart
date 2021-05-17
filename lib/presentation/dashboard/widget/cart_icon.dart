import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/presentation/cart/cart_page.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Get.toNamed(CartPage.TAG);
        },
        child: GetX<CartController>(
          builder: (_cart) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Icon(Icons.shopping_cart_rounded),
                (_cart.getCartItemData.length == 0)
                    ? SizedBox()
                    : CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 6,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
