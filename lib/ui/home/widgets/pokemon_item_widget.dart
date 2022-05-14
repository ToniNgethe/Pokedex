import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/bloc/pokemon_cubit.dart';
import 'package:pokedex/data/bloc/pokemon_state.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/di/injector.dart';
import 'package:pokedex/ui/selected_pokemon/selected_pokemon_page.dart';
import 'package:pokedex/utils/app_colors.dart';

class PokemonItemWidget extends StatelessWidget {
  final Pokemon pokemon;
  final int index;

  const PokemonItemWidget({
    Key? key,
    required this.pokemon,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PokemonCubit>()..fetchSinglePokemon(pokemon.name!),
      child: BlocBuilder<PokemonCubit, PokemonState>(
        builder: (ctx, state) {
          return InkWell(
            onTap: () {
              if (state is PokemonSingleState) {
                Navigator.pushNamed(context, SelectedPokemon.routeName,
                    arguments: state.pokemon);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "Please wait as we fetch more data for ${pokemon.name}")));
              }
            },
            child: AnimatedContainer(
              margin: const EdgeInsets.all(6),
              color: Colors.white,
              duration: const Duration(milliseconds: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: state is PokemonSingleState
                        ? CachedNetworkImage(
                            height: 104,
                            width: double.infinity,
                            imageUrl: '${state.pokemon.art}')
                        : Container(
                            height: 104,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                  ),
                  if (state is PokemonSingleState)
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Text(
                        '#${state.pokemon.id}',
                        style:
                            const TextStyle(color: AppColors.primaryTextColor),
                      ),
                    ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: Text(
                      '${pokemon.name}',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: Text(
                      '${state is PokemonSingleState ? state.pokemon.typesList?.join(", ") : ''}',
                      maxLines: 1,
                      style: const TextStyle(color: AppColors.primaryTextColor),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
