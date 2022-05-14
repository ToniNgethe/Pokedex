import 'package:injectable/injectable.dart';
import 'package:pokedex/data/local/database/database.dart';
import 'package:pokedex/data/models/pokemon.dart';

abstract class LocalRepository {
  Future<bool> isPokemonMarkedAsFav(int pokemonId);

  Future<String> markPokemonAsFavourite(Pokemon pokemon);

  Future<String> removePokemonAsFavourite(int pokemonId);

  Future<List<Pokemon>?> fetchAllFavourites();
}

@Injectable(as: LocalRepository)
class LocalRepositoryImpl implements LocalRepository {
  final PokemonDatabase _pokemonDatabase;

  LocalRepositoryImpl(this._pokemonDatabase);

  @override
  Future<bool> isPokemonMarkedAsFav(int pokemonId) async {
    try {
      final pokemon =
          await _pokemonDatabase.pokemonDao.getPokemonById(pokemonId);
      return pokemon != null;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String> markPokemonAsFavourite(Pokemon pokemon) async {
    try {
      await _pokemonDatabase.pokemonDao.insertPokemon(pokemon);
      return 'Pokemon marked as favourite successfully';
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> removePokemonAsFavourite(int pokemonId) async {
    try {
      await _pokemonDatabase.pokemonDao.deletePokemon(pokemonId);
      return 'Pokemon removed from favourites';
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Pokemon>?> fetchAllFavourites() async {
    try {
      final data = await _pokemonDatabase.pokemonDao.fetchAll();
      return data;
    } catch (e) {
      return [];
    }
  }
}
