import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Netflix",
      amount: 15,
      category: Category.leisure,
      date: DateTime.now(),
    ),
    Expense(
      title: "KFC",
      amount: 10,
      category: Category.food,
      date: DateTime.now(),
    ),
    Expense(
      title: "Express VPN",
      amount: 5,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: "Petrol",
      amount: 20,
      category: Category.travel,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
