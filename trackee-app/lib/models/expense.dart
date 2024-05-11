import 'package:goal_buddy/models/expense_category.dart';

class Expense {
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseCategory expenseCategory;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.expenseCategory,
  });
}


