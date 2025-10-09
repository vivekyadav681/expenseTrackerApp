import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {

  final _textController = TextEditingController();

  // String _enteredTitle = "";
  // void _saveTitle(String value) {
  //   _enteredTitle = value;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _textController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Title: ")),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {
              }, child: Text("Something"))
            ],
          ),
          TextField(
            maxLength: 4,
            decoration: InputDecoration(label: Text("Amount")),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
