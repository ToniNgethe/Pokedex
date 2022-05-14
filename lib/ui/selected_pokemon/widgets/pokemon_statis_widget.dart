import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/ui/selected_pokemon/widgets/pokemon_single_status_widget.dart';

class PokemonStatusWidget extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonStatusWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      color: Colors.white,
      child: Row(
        children: [
          PokemonSingleStatusWidget(
            title: 'Height',
            value: '${pokemon.height}',
          ),
          SizedBox(
            width: 40.w,
          ),
          PokemonSingleStatusWidget(
            title: 'Weight',
            value: '${pokemon.weight}',
          ),
          SizedBox(
            width: 40.w,
          ),
          PokemonSingleStatusWidget(
            title: 'BMI',
            value: '${pokemon.bmi}',
          ),
        ],
      ),
    );
  }
}
