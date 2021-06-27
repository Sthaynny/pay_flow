import 'package:flutter/material.dart';
import 'package:pay_flow/shared/core.dart';

class BoletoInfoWidget extends StatelessWidget {
  final int size;
  const BoletoInfoWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.logomini,
              color: AppColors.background,
              width: 56,
              height: 34,
            ),
            Container(
              width: 1,
              height: 32,
              color: AppColors.background,
            ),
            Text.rich(TextSpan(
              text: "Você tem ",
              style: AppStyles.captionBackground,
              children: [
                TextSpan(
                  text: "$size boletos\n",
                  style: AppStyles.captionBoldBackground,
                ),
                TextSpan(
                  text: "cadastrados para pagar",
                  style: AppStyles.captionBackground,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
