import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/data/remote/api_provider.dart';
import 'package:pokedex/data/repositories/remote_repository.dart';

import 'remote_repository_test.mocks.dart';

@GenerateMocks([ApiProvider])
void main() {
  late MockApiProvider _mockApiProvider;
  late RemoteRepository _remoteRepository;

  setUp(() {
    _mockApiProvider = MockApiProvider();
    _remoteRepository = RemoteRepositoryImpl(_mockApiProvider);
  });

  final samplePokemonListResponse = {
    "count": 1126,
    "next": "https://pokeapi.co/api/v2/pokemon?offset=2&limit=2",
    "previous": null,
    "results": [
      {"name": "bulbasaur", "url": "https://pokeapi.co/api/v2/pokemon/1/"},
      {"name": "ivysaur", "url": "https://pokeapi.co/api/v2/pokemon/2/"}
    ]
  };

  final samplePokemonResponse = {
    "abilities": null,
    "base_experience": 101,
    "forms": null,
    "game_indices": null,
    "height": 3,
    "held_items": null,
    "id": 132,
    "is_default": true,
    "moves": null,
    "name": "ditto",
    "order": 214,
    "past_types": [],
    "sprites": {
      "other": {
        "official-artwork": {
          "front_default":
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png"
        }
      }
    },
    "stats": [
      {
        "base_stat": 48,
        "effort": 1,
        "stat": {"name": "hp", "url": "https://pokeapi.co/api/v2/stat/1/"}
      },
      {
        "base_stat": 48,
        "effort": 0,
        "stat": {"name": "attack", "url": "https://pokeapi.co/api/v2/stat/2/"}
      },
      {
        "base_stat": 48,
        "effort": 0,
        "stat": {"name": "defense", "url": "https://pokeapi.co/api/v2/stat/3/"}
      },
      {
        "base_stat": 48,
        "effort": 0,
        "stat": {
          "name": "special-attack",
          "url": "https://pokeapi.co/api/v2/stat/4/"
        }
      },
      {
        "base_stat": 48,
        "effort": 0,
        "stat": {
          "name": "special-defense",
          "url": "https://pokeapi.co/api/v2/stat/5/"
        }
      },
      {
        "base_stat": 48,
        "effort": 0,
        "stat": {"name": "speed", "url": "https://pokeapi.co/api/v2/stat/6/"}
      }
    ],
    "types": [
      {
        "slot": 1,
        "type": {"name": "normal", "url": "https://pokeapi.co/api/v2/type/1/"}
      }
    ],
    "weight": 40
  };

  group('#fetchPokemons tests', () {
    test('#fetchPokemons return a list of pokemon when request is a success',
        () async {
      when(_mockApiProvider.get(any))
          .thenAnswer((_) async => samplePokemonListResponse);
      final response = await _remoteRepository.fetchPokemons(1);
      expect(response, isNotNull);
      expect(response?.length, 2);
      expect(response?.where((element) => element.name == "bulbasaur").first,
          isNotNull);

      verify(_mockApiProvider.get(any)).called(1);
    });

    test('#fetchPokemons throws an error when requests fails', () async {
      when(_mockApiProvider.get(any))
          .thenThrow(Exception('Something went wrong'));
      expect(() => _remoteRepository.fetchPokemons(1), throwsException);
      verify(_mockApiProvider.get(any)).called(1);
    });
  });

  group('#fetchSinglePokemon tests', () {
    test('#fetchSinglePokemon returns pokemon found by name', () async {
      when(_mockApiProvider.get(any))
          .thenAnswer((_) async => samplePokemonResponse);
      final response = await _remoteRepository.fetchSinglePokemon('ditto');
      expect(response, isNotNull);
      expect(response!.name, 'ditto');
    });

    test('#fetchSinglePokemon throws an error when request fails', () async {
      when(_mockApiProvider.get(any))
          .thenThrow(Exception('Something went wrong'));
      expect(
          () => _remoteRepository.fetchSinglePokemon('ditto'), throwsException);
    });
  });
}
