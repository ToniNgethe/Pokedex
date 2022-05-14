import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/bloc/pokemon_cubit.dart';
import 'package:pokedex/data/bloc/pokemon_state.dart';
import 'package:pokedex/ui/home/widgets/pokemon_item_widget.dart';

class AllPokemonsWidgetTab extends StatefulWidget {
  const AllPokemonsWidgetTab({Key? key}) : super(key: key);

  @override
  State<AllPokemonsWidgetTab> createState() => _AllPokemonsWidgetTabState();
}

class _AllPokemonsWidgetTabState extends State<AllPokemonsWidgetTab> {
  final _scrollController = ScrollController();
  bool _continuePaginating = true;
  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    context.read<PokemonCubit>().fetchAllPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return BlocConsumer<PokemonCubit, PokemonState>(
      listener: (ctx, state){
        state.maybeWhen(orElse: (){}, loading: () {
          setState(() {
            _continuePaginating = false;
          });
        }, allPokemons: (value) {
          setState(() {
            _continuePaginating = true;
          });
        });
      },
      builder: (ctx, state) {
        return SafeArea(
          child: Column(
            children: [
              if (ctx.read<PokemonCubit>().allPokemonCurrentList.isNotEmpty)
                Expanded(
                  child: GridView.builder(
                      controller: _scrollController,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              orientation == Orientation.portrait ? 3 : 4,
                          mainAxisExtent: 196),
                      itemCount:
                          ctx.read<PokemonCubit>().allPokemonCurrentList.length,
                      itemBuilder: (ctx, index) {
                        return PokemonItemWidget(
                          pokemon: ctx
                              .read<PokemonCubit>()
                              .allPokemonCurrentList[index],
                          index: index,
                        );
                      }),
                ),
              if (state is PokemonLoadingState)
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                  ),
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

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      if( _continuePaginating ){
        context.read<PokemonCubit>().currentPage += 1;
        context.read<PokemonCubit>().fetchAllPokemons();
      }
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
