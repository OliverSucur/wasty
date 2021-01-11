import 'package:flutter/material.dart';

class NewProduct extends StatefulWidget {
  final Function addProduct;

  NewProduct(this.addProduct);

  @override
  _NewProductState createState() => _NewProductState();
}

class _NewProductState extends State<NewProduct> {
  final nameController = TextEditingController();
  final expiryDateController = TextEditingController();

  void submitData() {
    final enteredName = nameController.text;
    //Aufpassen wegen String to Date Konvertierung
    final enteredExpiryDate = expiryDateController.text;

    if (enteredName.isEmpty || enteredExpiryDate.isEmpty) {
      return;
    }

    widget.addProduct(
      enteredName,
      enteredExpiryDate,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                controller: nameController,
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Expiry Date'),
                controller: expiryDateController,
                keyboardType: TextInputType.datetime,
                onSubmitted: (_) => submitData(),
              ),
              FlatButton(
                onPressed: submitData,
                child: Text('Add Product'),
                textColor: Colors.green,
              )
            ],
          ),
        ));
  }
}
