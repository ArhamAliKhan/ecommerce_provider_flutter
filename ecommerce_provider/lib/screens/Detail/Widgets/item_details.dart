import 'package:ecommerce_provider/constraints.dart';
import 'package:flutter/material.dart';

import '../../../Model/product_model.dart';

class ItemDetails extends StatelessWidget {
  final Product product;

  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimaryColor,
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Icon(Icons.star, size: 15, color: Colors.white),
                          SizedBox(),
                          Text(
                            product.rate.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      product.review,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Seller", style: TextStyle(fontSize: 16)),
                  TextSpan(
                    text: product.seller,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
