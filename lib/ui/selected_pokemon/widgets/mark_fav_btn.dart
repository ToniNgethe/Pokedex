import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pokedex/data/bloc/pokemon_cubit.dart';
import 'package:pokedex/data/bloc/pokemon_state.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/di/injector.dart';
import 'package:pokedex/utils/app_colors.dart';
import 'package:pokedex/utils/app_styles.dart';

class MarkFavouriteBtn extends StatefulWidget {
  final Pokemon pokemon;

  const MarkFavouriteBtn({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<MarkFavouriteBtn> createState() => _MarkFavouriteBtnState();
}

class _MarkFavouriteBtnState extends State<MarkFavouriteBtn> {
  bool _markedAsFavourite = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PokemonCubit>()..isPokemonMarkedAsFavourite(widget.pokemon.id),
      child: BlocConsumer<PokemonCubit, PokemonState>(listener: (ctx, state) {
        state.maybeWhen(
            orElse: () {},
            isFavourite: (value) {
              setState(() {
                _markedAsFavourite = value;
              });
            });
      }, builder: (ctx, state) {
        return ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_markedAsFavourite
                  ? AppColors.btnColorA
                  : AppColors.primaryColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)))),
          onPressed: () {
            _markedAsFavourite
                ? ctx
                    .read<PokemonCubit>()
                    .removePokemonAsFavourite(widget.pokemon.id!)
                : ctx
                    .read<PokemonCubit>()
                    .markPokemonAsFavourite(widget.pokemon);

            // update favs counter
            context.read<PokemonCubit>().fetchFavourites();
          },
          child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    _markedAsFavourite
                        ? 'Remove from favourites'
                        : 'Mark as favourites',
                    style: AppStyles.textTitle.copyWith(
                        fontSize: 14.sp,
                        color: !_markedAsFavourite
                            ? Colors.white
                            : AppColors.primaryColor),
                  ),
                ),
        );
      }),
    );
  }
}
