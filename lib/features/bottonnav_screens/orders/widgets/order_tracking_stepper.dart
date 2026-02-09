import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTrackingStepper extends StatelessWidget {
 const OrderTrackingStepper({super.key});

  final int activeStep = 2; 
  final int totalSteps = 5;
  final Color greenColor = const Color(0xFF00BB1A);

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      enableStepTapping: false,
      direction: Axis.vertical,
      activeStep: activeStep,
      lineStyle: LineStyle(
        lineLength: 50.h,
        lineSpace: 1,
        lineType: LineType.normal,
        defaultLineColor: greenColor,
        finishedLineColor: greenColor,
      ),
      internalPadding: 0,
      showLoadingAnimation: false,
      showStepBorder: false,
      stepRadius: 16.h,
      steps: List.generate(
        totalSteps,
        (index) => _buildStep(index),
      ).reversed.toList(),
    );
  }

  EasyStep _buildStep(int index) {
    final bool isCompleted = index <= activeStep;

    return EasyStep(
      customStep: Container(
        width: 32.w,
        height: 32.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: greenColor,
            width: 2,
          ),
          color: isCompleted ? greenColor : Colors.white,
        ),
      ),
    );
  }
}
