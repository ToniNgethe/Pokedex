import 'package:injectable/injectable.dart';
import 'package:pokedex/data/local/database/database.dart';

@module
abstract class DatabaseModule {
  @preResolve
  Future<PokemonDatabase> get database =>
      $FloorPokemonDatabase.databaseBuilder('pokemon_database.db').build();
}
