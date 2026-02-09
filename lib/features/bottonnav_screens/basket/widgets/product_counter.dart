import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productcounter extends StatefulWidget {
  const Productcounter({super.key});
  @override
  State<Productcounter> createState() => _ProductcounterState();
}

class _ProductcounterState extends State<Productcounter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      //padding: EdgeInsets.all(4),
      //width: 88,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow()],
        border: Border.all(color: Color(0xFFD1D1D1)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(constraints: BoxConstraints(),
            onPressed: () {
              setState(() {
                if (counter >= 1) {
                  counter--;
                }
              });
            },
            icon: Container(
              //width: 12,
             // height: 12,
              alignment: Alignment.center,
              child: const Icon(Icons.remove, ),
            ),
          ),
          SizedBox(width: 2),
          Text('$counter'),
          SizedBox(width: 2),
          IconButton(
            constraints: BoxConstraints(),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: Container(
             // width: 12,
             // height: 12,
              alignment: Alignment.center,
              child: const Icon(Icons.add, ),
            ),
          ),
        ],
      ),
    );
  }
}
