import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 
class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      _controller.text = formattedDate; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: true, 
      onTap: _selectDate, 
      decoration: const InputDecoration(
        labelText: 'Select Date',
      
        suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
      enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey), 
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.green), 
    ),
      ),
    );
  }
}
