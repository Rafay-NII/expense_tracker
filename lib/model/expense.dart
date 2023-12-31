import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { leisure, food, travel, work }

class Expense {
  Expense({required this.amount, required this.title, 
           required this.date, required this.category,
          }) : id = uuid.v4();

  final String id;
  final String title;
  final int amount;
  final DateTime date;
  final Category category;
}
