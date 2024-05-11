import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:goal_buddy/controllers/expense_controller.dart';
import 'package:goal_buddy/utils/constants.dart';
import 'package:goal_buddy/views/home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ExpenseController()),
      // Add more providers here as needed
    ],
    child: const GoalBuddyApp(),
  ));
}

class GoalBuddyApp extends StatelessWidget {
  const GoalBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Goal Buddy',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: AppColors.backgroundColor,
          onBackground: AppColors.outlineColor,
          primary: AppColors.primaryColor,
          secondary: AppColors.secondaryColor,
          tertiary: AppColors.tertiaryColor,
        ),
      ),
      home: const HomeScreen(),  
    );
  }
}
