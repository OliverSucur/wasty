import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/product.dart';

class ProductsList extends StatefulWidget {
  final List<Product> products;
  final Function resetHomeScreen;
  ProductsList(this.products, this.resetHomeScreen);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
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
                      widget.products[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'This product expires on the ${widget.products[index].expiryDate}',
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
                  onPressed: () {
                    setState(() {
                      widget.products.removeAt(index);
                      widget.resetHomeScreen();
                    });
                  },
                )),
              ],
            ),
          );
        },
        itemCount: widget.products.length,
      ),
    );
  }
}
