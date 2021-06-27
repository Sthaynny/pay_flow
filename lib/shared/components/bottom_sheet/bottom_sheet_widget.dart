import 'package:flutter/material.dart';
import 'package:pay_flow/shared/components/set_buttons/set_label_buttons.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_text_style.dart';

class BottomSheetWidget extends StatelessWidget {
  final String labelPrimary;
  final VoidCallback onTapPrimary;
  final String labelSecondary;
  final VoidCallback onTapSecondary;
  final String title;
  final String subtitle;
  const BottomSheetWidget(
      {Key? key,
      required this.labelPrimary,
      required this.onTapPrimary,
      required this.labelSecondary,
      required this.onTapSecondary,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.5),
            )),
            Container(
              color: AppColors.background,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text.rich(
                    TextSpan(
                        text: title,
                        style: AppStyles.buttonBoldHeading,
                        children: [
                          TextSpan(
                            text: "\n$subtitle",
                            style: AppStyles.buttonHeading,
                          )
                        ]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        color: AppColors.stroke,
                      )),
                    ],
                  ),
                  SetLabelButtons(
                    enablePrimaryColor: true,
                    labelPrimary: labelPrimary,
                    onTapPrimary: onTapPrimary,
                    labelSecondary: labelSecondary,
                    onTapSecondary: onTapSecondary,
                  ),
                  SizedBox(height: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
