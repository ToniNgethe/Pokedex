import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/bloc/pokemon_cubit.dart';
import 'package:pokedex/data/bloc/pokemon_state.dart';
import 'package:pokedex/ui/home/widgets/pokemon_item_widget.dart';

class FavouritesWidgetTab extends StatefulWidget {
  const FavouritesWidgetTab({Key? key}) : super(key: key);

  @override
  State<FavouritesWidgetTab> createState() => _FavouritesWidgetTabState();
}

class _FavouritesWidgetTabState extends State<FavouritesWidgetTab> {
  @override
  void initState() {
    super.initState();
    context.read<PokemonCubit>().fetchFavourites();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (ctx, state) {
        return SafeArea(
          child: Column(
            children: [
              if (state is PokemonAllFavState)
                Expanded(
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              orientation == Orientation.portrait ? 3 : 4,
                          mainAxisExtent: 196),
                      itemCount: state.pokemons.length,
                      itemBuilder: (ctx, index) {
                        return PokemonItemWidget(
                          pokemon: state.pokemons[index],
                          index: index,
                        );
                      }),
                ),
              if (state is PokemonErrorState)
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    state.message,
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
