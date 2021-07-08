import 'package:flutter/foundation.dart';

class Transction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
