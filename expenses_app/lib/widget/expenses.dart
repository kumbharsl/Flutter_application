import 'package:expenses_app/new_expense.dart';
import 'package:expenses_app/widget/expenses_list/expenses_list.dart';
import 'package:expenses_app/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _resisteredExpenses = [
    Expense(
      title: 'Flutter',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Food',
      amount: 5.99,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder: (ctx) =>NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense){
    setState(() {
       _resisteredExpenses.add(expense);
    });
  }
  
  void _removeExpense(Expense expense){
    final expenseIndex = _resisteredExpenses.indexOf(expense);
    setState(() {
      _resisteredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense  deleted.'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: (){
            setState(() {
              _resisteredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text(
        'No expense found. Start adding some!'),
    );

    if (_resisteredExpenses.isNotEmpty){
      mainContent = ExpensesList(
        expenses: _resisteredExpenses, 
        onRemovedExpense: _removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Expense Trakcer'),
        actions: [
          IconButton(
            onPressed:_openAddExpenseOverlay,
            icon:const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children:[
          const Text('The chart'),
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}
