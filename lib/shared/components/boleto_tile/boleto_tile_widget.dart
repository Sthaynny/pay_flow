import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/shared/models/boleto_model.dart';
import 'package:pay_flow/shared/themes/app_text_style.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          data.name!,
          style: AppStyles.titleListTile,
        ),
        subtitle: Text(
          "Vence em ${data.dueDate}",
          style: AppStyles.captionBody,
        ),
        trailing: Text.rich(TextSpan(
          text: "R\$ ",
          style: AppStyles.trailingRegular,
          children: [
            TextSpan(
              text: "${data.value!.toStringAsFixed(2)}",
              style: AppStyles.trailingBold,
            ),
          ],
        )),
      ),
    );
  }
}
