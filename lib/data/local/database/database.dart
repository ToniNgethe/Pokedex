import 'dart:async';

import 'package:floor/floor.dart';
import 'package:pokedex/data/local/dao/pokemon_dao.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [Pokemon])
abstract class PokemonDatabase extends FloorDatabase {
  PokemonDao get pokemonDao;
}
