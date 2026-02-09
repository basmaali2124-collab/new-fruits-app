import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/status_dot.dart';

class CustomEasyStepper extends StatefulWidget {
  const CustomEasyStepper({super.key, required this.activeStep});
  final int activeStep;
  @override
  State<CustomEasyStepper> createState() => _CustomEasyStepperState();
}
class _CustomEasyStepperState extends State<CustomEasyStepper> {
  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      enableStepTapping: false,
      activeStep: widget.activeStep,
      finishedStepBorderColor: const Color(0xFF9F9F9F),
      finishedStepBackgroundColor: Colors.white,

      lineStyle: LineStyle(
        lineLength: 0.25.sw,
        lineSpace: 0,
        lineType: LineType.dashed,
        defaultLineColor: const Color(0xFF9F9F9F),
        finishedLineColor: const Color(0xFF9F9F9F),
      ),
      activeStepTextColor: const Color(0xFF204F38),
      finishedStepTextColor: const Color(0xFF9F9F9F),
      internalPadding: 0,
      showLoadingAnimation: false,
      stepRadius: 20,
      showStepBorder: false,

      steps: List.generate(3, (index) {
        final bool isActive = index == widget.activeStep;
        return EasyStep(
          customStep: Container(
            width: 32,
            height: 32,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: isActive
                    ? const Color(0xFF204F38)
                    : const Color(0xFF9F9F9F),
              ),
            ),
            child: StatueDot(
              dotColor: isActive
                  ? const Color(0xFF204F38)
                  : const Color(0xFF9F9F9F),
            ),
          ),
          title: _titles[index],
        );
      }),
    );
  }

  final List<String> _titles = ['Delivery Time', 'Delivery Address', 'Payment'];
}
