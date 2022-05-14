import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/bloc/pokemon_cubit.dart';
import 'package:pokedex/data/bloc/pokemon_state.dart';
import 'package:pokedex/ui/home/widgets/all_pokemons_tab_widget.dart';
import 'package:pokedex/ui/home/widgets/favourite_tab_widgets.dart';
import 'package:pokedex/ui/home/widgets/home_page_app_bar.dart';
import 'package:pokedex/ui/home/widgets/tab_title.dart';
import 'package:pokedex/utils/app_colors.dart';
import 'package:pokedex/utils/app_theme.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentTab = 0;
  int _totalNumberOfFavs = 0;

  @override
  void initState() {
    context.read<PokemonCubit>().fetchFavourites();
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        if (!_tabController!.indexIsChanging) {
          setState(() {
            _currentTab = _tabController!.index;
          });
        }
      });

    super.initState();
  }

  void _resetStatusAndNavbarColor() {
    AppTheme.setAndroidStatusAndNavigationColors(
        statusAndNavigationBarColor: Colors.white, iconsColor: Brightness.dark);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _resetStatusAndNavbarColor();
    return BlocConsumer<PokemonCubit, PokemonState>(
      listener: (ctx, state) {
        state.maybeWhen(
            orElse: () {},
            allFavPokemons: (pokemons) {
              _totalNumberOfFavs = pokemons.length;
              setState(() {});
            });
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backGroundColor,
          appBar: homePageAppBar,
          body: Column(
            children: [
              const Divider(
                color: Colors.grey,
                height: 2,
              ),
              DefaultTabController(
                  length: 2,
                  child: Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 6.h),
                          color: Colors.white,
                          child: TabBar(
                              controller: _tabController,
                              labelColor: Colors.black,
                              unselectedLabelColor: AppColors.primaryTextColor,
                              indicatorColor: AppColors.primaryColor,
                              indicatorWeight: 5,
                              labelStyle: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w600),
                              tabs: [
                                TabTitle(
                                  title: 'All Pokemons',
                                  selected: _currentTab == 0,
                                  value: 0,
                                ),
                                TabTitle(
                                  title: 'Favourites',
                                  selected: _currentTab == 1,
                                  value: _totalNumberOfFavs,
                                )
                              ]),
                        ),
                        Flexible(
                          flex: 1,
                          child: TabBarView(
                              controller: _tabController!,
                              children: const [
                                AllPokemonsWidgetTab(),
                                FavouritesWidgetTab()
                              ]),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
