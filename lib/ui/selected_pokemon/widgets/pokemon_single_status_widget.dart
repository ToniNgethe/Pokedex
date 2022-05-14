import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonSingleStatusWidget extends StatelessWidget {
  final String title;
  final String value;

  const PokemonSingleStatusWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 12.sp),
        ),
        Text(value, style: TextStyle(fontSize: 16.sp, color: Colors.black)),
      ],
    );
  }
}