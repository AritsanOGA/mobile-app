import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Multi-Select Dropdown')),
        body: Center(
            child: MultiSelectCheckBox(
          title: 'kk',
        )),
      ),
    );
  }
}

class MultiSelectDropdown extends StatefulWidget {
  @override
  _MultiSelectDropdownState createState() => _MultiSelectDropdownState();
}

class _MultiSelectDropdownState extends State<MultiSelectDropdown> {
  // List of items to display
  final List<String> _items = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Apple',
    'Banana',
    'Orange',
    'Grapes'
  ];

  // Set to store selected items
  final List<String> _selectedItems = [];

  // Control dropdown visibility
  bool _dropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Custom Dropdown
        GestureDetector(
          onTap: () {
            setState(() {
              _dropdownOpen = !_dropdownOpen; // Toggle dropdown
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _selectedItems.isEmpty
                      ? 'Select Items'
                      : _selectedItems.join(', '),
                  style: TextStyle(fontSize: 16),
                ),
                Icon(
                  _dropdownOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                ),
              ],
            ),
          ),
        ),
        // Dropdown Options
        if (_dropdownOpen)
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: _items.map((item) {
                  return CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item),
                    onChanged: (selected) {
                      setState(() {
                        if (selected == true) {
                          _selectedItems.add(item);
                        } else {
                          _selectedItems.remove(item);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ),
      ],
    );
  }
}

class MultiSelectCheckBox extends StatefulWidget {
  const MultiSelectCheckBox({super.key, required this.title});
  final String title;
  @override
  State<MultiSelectCheckBox> createState() => _MultiSelectCheckBoxState();
}

class _MultiSelectCheckBoxState extends State<MultiSelectCheckBox> {
  List<String> variantsList = [
    'Noida',
    "Delhi",
    "Goa",
    "Mumbai",
    "Bihar",
    "Bangalore",
    "UP",
    "Pune",
    "Surat",
    "Nashik"
  ];
  List<String> selectedCheckBoxValue = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Multiselect Checkbox in Dropdown',
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: 100,
              padding: const EdgeInsets.all(20),
              child: DropDownMultiSelect(
                decoration: InputDecoration(
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  focusColor: Theme.of(context).colorScheme.onPrimary,
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                      )),
                ),
                options: variantsList,
                selectedValues: selectedCheckBoxValue,
                onChanged: (List<String> value) {
                  //   value = selectedCheckBoxValue;
                  print("${selectedCheckBoxValue}");
                },
                whenEmpty: 'Select Location',
              ),
            )
          ],
        ),
      ),
    );
  }
}
