import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    required TextEditingController phoneController,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _phoneController,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SizedBox(
            height: 40.h,
            child:const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.expand_more, color: Color(0xFF858D9A)),
                Text('KW'),
                VerticalDivider(color: Color(0xFFE4E4E4)),
              ],
            ),
          ),
        ),
        hintText: 'Mobile Number',
      ),
    );
  }
}
