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
                // Container(
                //   margin: EdgeInsets.symmetric(
                //     vertical: 10,
                //     horizontal: 15,
                //   ),
                //   decoration: BoxDecoration(
                //     border: Border.all(
                //       color: Theme.of(context).primaryColor,
                //       width: 2,
                //     ),
                //   ),
                //   padding: EdgeInsets.all(10),
                //   child: Text(
                //     'Expires on the 21.01.21',
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 20,
                //       color: Theme.of(context).primaryColor,
                //     ),
                //   ),
                // ),
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
