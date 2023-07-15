import 'package:chat_ui/custom_drop_down.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({super.key});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  String selectedValue = 'more';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: GestureDetector(
        onTap: () =>
            //  showDialog(
            //     context: context,
            //     builder: (context) =>
            DropdownButton(
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
          value: selectedValue,
          items: [
            'more',
            'Option 1',
            'Option 2',
            'Option 3',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          //  )
        ),
        child: const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ),
    );
  }
}
