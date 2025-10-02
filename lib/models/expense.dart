import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

enum Category { food, leisure, travel, college }
const categoryIcons = {
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight,
  Category.college: Icons.computer,
  Category.food: Icons.dinner_dining
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return DateFormat.yMd().format(date);
  }
}
