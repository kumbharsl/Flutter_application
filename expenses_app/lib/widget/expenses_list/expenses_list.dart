import 'package:expenses_app/widget/expenses_list/expenses_item.dart';
import 'package:expenses_app/model/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemovedExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemovedExpense;

  @override 
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]), 
        onDismissed: (direction){
          onRemovedExpense(expenses[index]);
        },
        child:ExpensesItem(
          expenses[index],
        ),
      ),
    );
  }
}
