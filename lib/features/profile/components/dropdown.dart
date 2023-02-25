import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = 'All';
  String? _selectedItem;
  final List<String> _dropdownItems = [
    'Item 1',
    'Item 2',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedItem,
      items: _dropdownItems.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text('All'),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedItem = newValue;
        });
      },
    );
  }
}
