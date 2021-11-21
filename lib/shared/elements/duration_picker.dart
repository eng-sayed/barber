import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';

Picker durationPicker(String duration) {
  return Picker(
    adapter: NumberPickerAdapter(data: <NumberPickerColumn>[
      const NumberPickerColumn(begin: 0, end: 999, suffix: Text(' hours')),
      const NumberPickerColumn(begin: 0, end: 60, suffix: Text(' minutes')),
    ]),
    delimiter: <PickerDelimiter>[
      PickerDelimiter(
        child: Container(
          width: 30.0,
          alignment: Alignment.center,
          child: Icon(Icons.more_vert),
        ),
      )
    ],
    hideHeader: true,
    confirmText: 'OK',
    confirmTextStyle:
        TextStyle(inherit: false, color: Colors.red, fontSize: 22),
    title: const Text('Select duration'),
    selectedTextStyle: TextStyle(color: Colors.blue),
    onConfirm: (Picker picker, List<int> value) {
      // You get your duration here
      Duration _duration = Duration(
          hours: picker.getSelectedValues()[0],
          minutes: picker.getSelectedValues()[1]);

      duration = _duration.toString();
    },
  );
}
