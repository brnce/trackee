import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goal_buddy/models/expense.dart';
import 'package:goal_buddy/models/expense_category.dart';

class ExpenseController with ChangeNotifier {
  final List<Expense> _expenses = [
    Expense(
      title: "Grocery Shopping",
      amount: 35.20,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory(
        name: 'Groceries',
        color: 0xFFD8232F,
        icon: FontAwesomeIcons.cartShopping,
      ),
    ),
    Expense(
      title: "Train",
      amount: 1.20,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory(
        name: 'Transportation',
        color: 0xFF2383D8,
        icon: FontAwesomeIcons.bus,
      ),
    ),
    Expense(
      title: "Council Tax",
      amount: 145.00,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory(
        name: 'Utilities',
        color: 0xFF23D823,
        icon: FontAwesomeIcons.water,
      ),
    ),
  ];

  List<Expense> get expenses => _expenses;

  void addExpense(Expense expense) {
    _expenses.add(expense);
    notifyListeners();
  }

  void updateExpense(String title, Expense updatedExpense) {
    final expenseIndex = _expenses.indexWhere((exp) => exp.title == title);
    if (expenseIndex != -1) {
      _expenses[expenseIndex] = updatedExpense;
      notifyListeners();
    }
  }

  void removeExpense(String title) {
    _expenses.removeWhere((exp) => exp.title == title);
    notifyListeners();
  }
}
