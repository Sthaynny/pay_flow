import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/shared/components/boleto_info/boleto_info_widget.dart';
import 'package:pay_flow/shared/components/boleto_list/boleto_list_controller.dart';
import 'package:pay_flow/shared/components/boleto_list/boleto_list_widget.dart';
import 'package:pay_flow/shared/core.dart';
import 'package:pay_flow/shared/models/boleto_model.dart';

class MeusBoletosScreen extends StatefulWidget {
  const MeusBoletosScreen({Key? key}) : super(key: key);

  @override
  _MeusBoletosScreenState createState() => _MeusBoletosScreenState();
}

class _MeusBoletosScreenState extends State<MeusBoletosScreen> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: AppColors.primary,
                height: 40,
                width: double.maxFinite,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ValueListenableBuilder<List<BoletoModel>>(
                  valueListenable: controller.boletosNotifier,
                  builder: (_, boletos, __) => AnimatedCard(
                    direction: AnimatedCardDirection.top,
                    child: BoletoInfoWidget(
                      size: boletos.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Meus boletos",
                  style: AppStyles.titleBoldHeading,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BoletoListWidget(
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
