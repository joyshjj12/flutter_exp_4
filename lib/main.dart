import 'package:flutter/material.dart';
import 'budget_details_screen.dart';
import 'budget_result_screen.dart';
void main() {
 
  runApp(MaterialApp(
  
    title: "Budget Calculator",
    initialRoute: '/',
    routes: {
      '/': (context) => BudgetDetailsScreen(),
      '/result': (context) => BudgetResultScreen()
    }
    ),
  );
}



