import 'package:injectable/injectable.dart';
import 'package:pokedex/data/dto/poke_mones_dto.dart';
import 'package:pokedex/data/dto/single_pokemon_response_dto.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/data/remote/api_provider.dart';
import 'package:pokedex/data/remote/end_points.dart';

abstract class RemoteRepository {
  Future<List<Pokemon>?> fetchPokemons(int pageOffset);

  Future<Pokemon?> fetchSinglePokemon(String pokemon);
}

@Injectable(as: RemoteRepository)
class RemoteRepositoryImpl implements RemoteRepository {
  final ApiProvider _apiProvider;

  RemoteRepositoryImpl(this._apiProvider);

  @override
  Future<List<Pokemon>?> fetchPokemons(int pageOffset) async {
    try {
      // fetch list of pokemons
      final allPokemon = await _apiProvider
          .get(EndPoints.baseUrl + "pokemon?offset=$pageOffset&limit=12");
      final allPokemonResponse = PokeMonesDto.fromJson(allPokemon);
      return allPokemonResponse.results
          ?.map((e) => Pokemon(name: e.name))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Pokemon?> fetchSinglePokemon(String pokemonName) async {
    try {
      final pokemon =
          await _apiProvider.get(EndPoints.baseUrl + "pokemon/$pokemonName");
      final pokeMonDto = SinglePokemonResponseDto.fromJson(pokemon);
      return pokeMonDto.toPokemon();
    } catch (e) {
      rethrow;
    }
  }
}
