import 'package:flutter/material.dart';
import 'package:pokedex/ui/home/home_page.dart';
import 'package:pokedex/ui/selected_pokemon/selected_pokemon_page.dart';
import 'package:pokedex/ui/splash/splash_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  HomePage.routeName: (context) => const HomePage(),
  SelectedPokemon.routeName: (context) => const SelectedPokemon()
};
