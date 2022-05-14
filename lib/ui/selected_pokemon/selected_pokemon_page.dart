import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/ui/selected_pokemon/widgets/base_status_indicator_widget.dart';
import 'package:pokedex/ui/selected_pokemon/widgets/mark_fav_btn.dart';
import 'package:pokedex/ui/selected_pokemon/widgets/pokemon_statis_widget.dart';
import 'package:pokedex/ui/selected_pokemon/widgets/selected_pokemon_app_bar.dart';
import 'package:pokedex/utils/app_colors.dart';
import 'package:pokedex/utils/app_styles.dart';

class SelectedPokemon extends StatefulWidget {
  static const routeName = "/selected_pokemon";

  const SelectedPokemon({Key? key}) : super(key: key);

  @override
  State<SelectedPokemon> createState() => _SelectedPokemonState();
}

class _SelectedPokemonState extends State<SelectedPokemon> {
  @override
  Widget build(BuildContext context) {
    final pokemon = ModalRoute.of(context)?.settings.arguments as Pokemon;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: MarkFavouriteBtn(
        pokemon: pokemon,
      ),
      body: CustomScrollView(
        slivers: [
          SelectedPokemonAppBar(pokemon: pokemon),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const Divider(),
                PokemonStatusWidget(pokemon: pokemon),
                Container(
                  color: AppColors.backGroundColor,
                  height: 10.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Base Stats',
                        style: AppStyles.textTitle,
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (ctx, index) {
              return BaseStatIndicatorWidget(
                title: '${pokemon.baseStats?[index].stat?.name}',
                value: pokemon.baseStats![index].baseStat! / 100,
                statValue: '${pokemon.baseStats?[index].baseStat}',
              );
            },
            childCount: pokemon.baseStats!.length,
          )),
        ],
      ),
    );
  }
}
