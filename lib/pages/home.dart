import 'package:flutter/material.dart';
import 'package:wasty/models/product.dart';
import 'package:wasty/widgets/products.dart';
import './../widgets/newProduct.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> _products = [
    Product(
      id: 'p1',
      name: 'Cucumber',
      expiryDate: DateTime.now().toString(),
    ),
    Product(
      id: 'p1',
      name: 'Apple',
      expiryDate: DateTime.now().toString(),
    ),
    Product(
      id: 'p1',
      name: 'Banana',
      expiryDate: DateTime.now().toString(),
    ),
    Product(
      id: 'p1',
      name: 'Banana',
      expiryDate: DateTime.now().toString(),
    ),
    Product(
      id: 'p1',
      name: 'Banana',
      expiryDate: DateTime.now().toString(),
    ),
    Product(
      id: 'p1',
      name: 'Banana',
      expiryDate: DateTime.now().toString(),
    ),
    Product(
      id: 'p1',
      name: 'Banana',
      expiryDate: DateTime.now().toString(),
    ),
  ];

  void _addNewProduct(String pName, String pDate) {
    final newProduct = Product(
      id: DateTime.now().toString(),
      name: pName,
      expiryDate: pDate,
    );
    setState(() {
      _products.add(newProduct);
    });
  }

  void _startAddNewProduct(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewProduct(_addNewProduct),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      '${_products.length}',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(360),
                    ),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ProductsList(_products),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => _startAddNewProduct(context),
          )
    );
  }
}
