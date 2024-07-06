import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  String languageCode;
  CustomDropdown({super.key, required this.languageCode});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: widget.languageCode,
        items: <String>['en', 'ar', 'fr']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(value: value, child: Text(value));
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            widget.languageCode = newValue!;
          });
        });
  }
}
