import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/utils/app_colors.dart';

class TabTitle extends StatelessWidget {
  final bool selected;
  final String title;
  final int value;

  const TabTitle(
      {Key? key,
      required this.selected,
      required this.title,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Tab(
          text: title,
        ),
        if (value != 0)
          const SizedBox(
            width: 4,
          ),
        if (value != 0)
          Badge(
            borderSide: const BorderSide(color: AppColors.primaryColor),
            elevation: 0,
            badgeColor: AppColors.primaryColor,
            shape: BadgeShape.circle,
            padding: const EdgeInsets.all(4),
            badgeContent: Text(
              '$value',
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
      ],
    );
  }
}
