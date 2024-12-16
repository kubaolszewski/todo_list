import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTodoView extends StatelessWidget {
  const AddTodoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Form(
        child: Column(
          spacing: 16.h,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Title'),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Type'),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Description'),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width.w,
              child: Row(
                spacing: 16.w,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Modular.to.pop(),
                      child: Text('Cancel'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Save'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
