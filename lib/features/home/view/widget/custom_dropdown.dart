import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  String value;
  CustomDropdown({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: value,
        items: <String>['en', 'ar', 'fr']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(value: value, child: Text(value));
        }).toList(),
        onChanged: (newValue) {
          value = newValue!;
        });
  }
}
