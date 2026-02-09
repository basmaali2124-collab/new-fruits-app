import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/filter_widgets/checkbox_function.dart';

class SetLanguage extends StatefulWidget {
  const SetLanguage({super.key});

  @override
  State<SetLanguage> createState() => _SetLanguageState();
}

class _SetLanguageState extends State<SetLanguage> {
  String selectedLanguage = 'ar'; // ar أو en

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(16),
      backgroundColor: Colors.white,
      children: [
        SizedBox(
          height: 28,
          child: filterCheckBox(
            value: selectedLanguage == 'ar',
            withIcon: 'assets/icons/arabic.png',
            name: 'العربيه',
            onChanged: (value) {
              setState(() {
                selectedLanguage = 'ar';
              });
            },
          ),
        ),
        filterCheckBox(
          value: selectedLanguage == 'en',
          withIcon: 'assets/icons/english.png',
          name: 'English',
          onChanged: (value) {
            setState(() {
              selectedLanguage = 'en';
            });
          },
        ),
        SizedBox( width:224.w,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(selectedLanguage);
            },
            child: const Text('Apply'),
          ),
        ),
        SizedBox(
          width: 80,
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ),
        ),
      ],
    );
  }
}
