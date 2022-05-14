import 'package:flutter/material.dart';
import 'package:pokedex/utils/app_colors.dart';

class BaseStatIndicatorWidget extends StatelessWidget {
  final String title;
  final String statValue;
  final double value;

  const BaseStatIndicatorWidget({
    Key? key,
    required this.title,
    required this.statValue,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(color: AppColors.primaryTextColor),
                ),
              ),
              Text(
                statValue,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600),
              )
            ],
          ),
          LinearProgressIndicator(
            color: value < 0.4
                ? Colors.red
                : value >= 0.4 && value < 0.7
                ? Colors.orange
                : value >= 0.7
                ? Colors.green
                : AppColors.grey,
            value: value,
            backgroundColor: AppColors.grey,
          )
        ],
      ),
    );
  }
}
