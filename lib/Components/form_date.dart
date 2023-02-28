import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class FormDate extends StatefulWidget {
  const FormDate({super.key});
  @override
  State<FormDate> createState() => _FormDateState();
}

class _FormDateState extends State<FormDate> {
  final formdate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: formdate,
      //editing controller of this TextField
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.calendar_today),
          // hintStyle: TextStyle(fontSize: 24),
          // labelStyle: TextStyle(fontSize: 12),
          // helperStyle: ,
          labelText: "Choose Date",
          border: OutlineInputBorder()),
      readOnly: true,
      //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2100));

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          print(
              formattedDate); //formatted date output using intl package =>  2021-03-16
          setState(() {
            formdate.text = formattedDate; //set output date to TextField value.
          });
        } else {}
      },
    );
  }
}
