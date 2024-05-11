import 'package:flutter/material.dart';
import 'package:goal_buddy/models/expense_category.dart';

class CategoryIconWidget extends StatelessWidget {
  final ExpenseCategory expenseCategory;

  const CategoryIconWidget({Key? key, required this.expenseCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(expenseCategory.color),
      child: Icon(expenseCategory.icon, color: Colors.white),
    );
  }
}