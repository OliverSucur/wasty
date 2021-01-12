import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/product.dart';

class ProductsList extends StatelessWidget {
  final List<Product> products;

  ProductsList(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      products[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(products[index].expiryDate),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                    child: IconButton(
                  icon: Icon(Icons.delete),
                  tooltip: "Delete",
                  onPressed: () {},
                )),
              ],
            ),
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
