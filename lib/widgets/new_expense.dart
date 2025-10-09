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
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    _amountController.dispose();
    super.dispose();
  }

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
          TextField(
            controller: _amountController,
            maxLength: 4,
            decoration: InputDecoration(
              label: Text("Amount"),
              prefixText: '\$ ',
            ),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    print(_textController.text);
                    print(_amountController.text);
                  },
                  child: Text("Save Expense"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(onPressed: () {}, child: Text("Cancel")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
