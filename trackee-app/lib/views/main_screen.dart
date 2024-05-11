import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:goal_buddy/controllers/expense_controller.dart';
import 'package:goal_buddy/utils/constants.dart';  
import 'package:goal_buddy/widgets/category_icon_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final expenses = Provider.of<ExpenseController>(context).expenses;

    return SafeArea(
      child: Padding(
        padding: AppPadding.pagePadding,  // Use constants for padding
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.primaryColor),  // Use constants for colors
                        ),
                        const Icon(
                          CupertinoIcons.person_fill,
                          color: Color(0xFFBBDEFB),
                          size: IconSizes.largeIcon,  // Use constants for icon sizes
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyles.body(context),  // Use constants for text styles
                        ),
                        Text(
                          "Bernice E",
                          style: TextStyles.heading(context),  // Use constants for text styles
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {}, 
                    icon: const Icon(CupertinoIcons.settings, size: IconSizes.largeIcon)
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.primaryColor,
                      AppColors.secondaryColor,
                      AppColors.tertiaryColor
                    ],
                    transform: GradientRotation(pi / 4),
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey.shade300,
                        offset: const Offset(5, 5))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Balance",
                    style: TextStyles.subheading(context),  // Use constants for text styles
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '£2799.00',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Income: £2700', style: TextStyle(color: Colors.white)),
                        Text('Savings: £200', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: TextStyles.subheading(context),  // Use constants for text styles
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: TextStyles.body(context),  // Use constants for text styles
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: expenses.length,
                itemBuilder: (context, int i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CategoryIconWidget(expenseCategory: expenses[i].expenseCategory),
                                  const SizedBox(width: 8),
                                  Text(expenses[i].title),
                                ],
                              ),
                              Text('£${expenses[i].amount.toString()}'),
                            ],
                          )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}