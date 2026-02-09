import 'package:flutter/material.dart';

Row filterCheckBox({
  required bool value,
  required String name,
  required Function(bool?) onChanged,
  String? withIcon
}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Transform.scale(
        scale: 1.2,
        child: Checkbox(
          value: value,
          onChanged: onChanged,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
          checkColor: Color(0xFF204F38),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.white;
            }
            return Colors.transparent;
          }),
          splashRadius: 12,
          shape: const CircleBorder(),
          side: WidgetStateBorderSide.resolveWith((states) {
            return const BorderSide(width: 0.8, color: Color(0xFF204F38));
          }),
        ),
      ),
      const SizedBox(width: 6),
      if(withIcon!=null) Image.asset(withIcon),
      Text(
        name,
        style: const TextStyle(color: Color(0xFF656565), fontSize: 12),
      ),
    ],
  );
}
