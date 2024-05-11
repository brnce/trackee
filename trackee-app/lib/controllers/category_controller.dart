import 'package:flutter/foundation.dart';
import 'package:goal_buddy/models/expense_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryController with ChangeNotifier {
  final List<ExpenseCategory> _categories = [
    ExpenseCategory(
      name: 'Groceries',
      color: 0xFFD8232F,
      icon: FontAwesomeIcons.cartShopping,
    ),
    ExpenseCategory(
      name: 'Utilities',
      color: 0xFF23D823,
      icon: FontAwesomeIcons.water,
    ),
    ExpenseCategory(
      name: 'Transportation',
      color: 0xFF2383D8,
      icon: FontAwesomeIcons.bus,
    ),
  ];

  List<ExpenseCategory> get categories => _categories;

  void addCategory(ExpenseCategory expenseCategory) {
    _categories.add(expenseCategory);
    notifyListeners();
  }

  void updateCategory(String name, ExpenseCategory updatedCategory) {
    final index = _categories.indexWhere((cat) => cat.name == name);
    if (index != -1) {
      _categories[index] = updatedCategory;
      notifyListeners();
    }
  }

  void removeCategory(String name) {
    _categories.removeWhere((cat) => cat.name == name);
    notifyListeners();
  }
}

    