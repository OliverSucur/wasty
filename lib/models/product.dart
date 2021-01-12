import 'package:flutter/foundation.dart';

class Product{
  final String id;
  final String name;
  final String expiryDate;

  Product({
    @required this.id,
    @required this.name,
    @required this.expiryDate,
  });
}