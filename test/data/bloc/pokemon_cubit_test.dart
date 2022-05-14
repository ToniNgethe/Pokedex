import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/data/bloc/pokemon_cubit.dart';
import 'package:pokedex/data/bloc/pokemon_state.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/data/repositories/local_repository.dart';
import 'package:pokedex/data/repositories/remote_repository.dart';

import 'pokemon_cubit_test.mocks.dart';

@GenerateMocks([RemoteRepository, LocalRepository])
void main() {
  late MockLocalRepository mockLocalRepository;
  late MockRemoteRepository mockRemoteRepository;

  late PokemonCubit pokemonCubit;

  setUp(() {
    mockLocalRepository = MockLocalRepository();
    mockRemoteRepository = MockRemoteRepository();

    pokemonCubit = PokemonCubit(mockRemoteRepository, mockLocalRepository);
  });

  group('#fetchAllPokemons tests', () {
    blocTest(
        '#fetchAllPokemons emits [PokemonLoadingState] and [PokemonAllState] when request is a success',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockRemoteRepository.fetchPokemons(1))
              .thenAnswer((_) async => [Pokemon(id: 1, name: 'test_pokemon')]);
          return pokemonCubit.fetchAllPokemons();
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonAllState>()],
        verify: (_) {
          verify(mockRemoteRepository.fetchPokemons(1)).called(1);
        });

    blocTest(
        '#fetchAllPokemons emits [PokemonLoadingState] and [PokemonErrorState] when request fails',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockRemoteRepository.fetchPokemons(1))
              .thenThrow(Exception('Unable to process request'));
          return pokemonCubit.fetchAllPokemons();
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockRemoteRepository.fetchPokemons(1)).called(1);
        });

    blocTest(
        '#fetchAllPokemons emits [PokemonLoadingState] and [PokemonErrorState] when list of pokemons is empty',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockRemoteRepository.fetchPokemons(1))
              .thenAnswer((_) async => []);
          return pokemonCubit.fetchAllPokemons();
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockRemoteRepository.fetchPokemons(1)).called(1);
        });

    test(
        "#allPokemonCurrentList is not empty when #fetchAllPokemons call is a success",
        () async {
      when(mockRemoteRepository.fetchPokemons(1))
          .thenAnswer((_) async => [Pokemon(id: 1, name: 'test_pokemon')]);
      pokemonCubit.fetchAllPokemons();
      await Future.delayed(const Duration(microseconds: 300));
      expect(pokemonCubit.allPokemonCurrentList.isNotEmpty, isTrue);
    });
  });

  group("#fetchSinglePokemon tests", () {
    blocTest(
        '#fetchSinglePokemon emits [PokemonLoadingState] and [PokemonSingleState] when request is a success',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockRemoteRepository.fetchSinglePokemon("test"))
              .thenAnswer((_) async => Pokemon(id: 1, name: 'test_pokemon'));
          return pokemonCubit.fetchSinglePokemon("test");
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonSingleState>()],
        verify: (_) {
          verify(mockRemoteRepository.fetchSinglePokemon("test")).called(1);
        });

    blocTest(
        '#fetchSinglePokemon emits [PokemonLoadingState] and [PokemonErrorState] when request fails',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockRemoteRepository.fetchSinglePokemon("test"))
              .thenThrow(Exception('Unable to process your request'));
          return pokemonCubit.fetchSinglePokemon("test");
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockRemoteRepository.fetchSinglePokemon("test")).called(1);
        });

    blocTest(
        '#fetchSinglePokemon emits [PokemonLoadingState] and [PokemonErrorState] when pokemon by that name is not found',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockRemoteRepository.fetchSinglePokemon("test"))
              .thenAnswer((_) async => null);
          return pokemonCubit.fetchSinglePokemon("test");
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockRemoteRepository.fetchSinglePokemon("test")).called(1);
        });
  });

  group("#fetchFavourites tests", () {
    blocTest(
        '#fetchFavourites emits [PokemonLoadingState] and [PokemonAllFavState] when user has favourites pokemons',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.fetchAllFavourites())
              .thenAnswer((_) async => [Pokemon(id: 1, name: 'test_pokemon')]);
          return pokemonCubit.fetchFavourites();
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonAllFavState>()],
        verify: (_) {
          verify(mockLocalRepository.fetchAllFavourites()).called(1);
        });

    blocTest(
        '#fetchFavourites emits [PokemonLoadingState] and [PokemonErrorState] when fetch fav pokemon request fails',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.fetchAllFavourites())
              .thenThrow(Exception('Something went wrong'));
          return pokemonCubit.fetchFavourites();
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockLocalRepository.fetchAllFavourites()).called(1);
        });
  });

  group("#markPokemonAsFavourite tests", () {
    blocTest(
        '#v emits [PokemonLoadingState] and [PokemonIsFavState] when user marks a pokemon as fav successfully',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.markPokemonAsFavourite(any))
              .thenAnswer((_) async => 'Success');
          return pokemonCubit
              .markPokemonAsFavourite(Pokemon(name: 'test_pokemon'));
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonIsFavState>()],
        verify: (_) {
          verify(mockLocalRepository.markPokemonAsFavourite(any)).called(1);
        });

    blocTest(
        '#fetchFavourites emits [PokemonLoadingState] and [PokemonErrorState] when user marks a pokemon as fav fails',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.markPokemonAsFavourite(any))
              .thenThrow(Exception('Something went wrong'));
          return pokemonCubit
              .markPokemonAsFavourite(Pokemon(name: 'test_pokemon'));
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockLocalRepository.markPokemonAsFavourite(any)).called(1);
        });
  });

  group("#removePokemonAsFavourite tests", () {
    blocTest(
        '#removePokemonAsFavourite emits [PokemonLoadingState] and [PokemonIsFavState] when user removes a pokemon from fav successfully',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.removePokemonAsFavourite(any))
              .thenAnswer((_) async => 'Success');
          return pokemonCubit.removePokemonAsFavourite(1);
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonIsFavState>()],
        verify: (_) {
          verify(mockLocalRepository.removePokemonAsFavourite(any)).called(1);
        });

    blocTest(
        '#removePokemonAsFavourite emits [PokemonLoadingState] and [PokemonErrorState] when user attempts to remove from fav list and fails',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.removePokemonAsFavourite(any))
              .thenThrow(Exception('Something went wrong'));
          return pokemonCubit.removePokemonAsFavourite(1);
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockLocalRepository.removePokemonAsFavourite(any)).called(1);
        });
  });

  group("#isPokemonMarkedAsFavourite tests", () {
    blocTest(
        '#isPokemonMarkedAsFavourite emits [PokemonLoadingState] and [PokemonIsFavState] when pokemon has been marked as fav',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.isPokemonMarkedAsFav(any))
              .thenAnswer((_) async => true);
          return pokemonCubit.isPokemonMarkedAsFavourite(1);
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonIsFavState>()],
        verify: (_) {
          verify(mockLocalRepository.isPokemonMarkedAsFav(any)).called(1);
        });

    blocTest(
        '#removePokemonAsFavourite emits [PokemonLoadingState] and [PokemonErrorState] when checking if pokemon is marked as fav fails',
        build: () => pokemonCubit,
        act: (PokemonCubit pokemonCubit) {
          when(mockLocalRepository.isPokemonMarkedAsFav(any))
              .thenThrow(Exception('Something went wrong'));
          return pokemonCubit.isPokemonMarkedAsFavourite(1);
        },
        expect: () => [isA<PokemonLoadingState>(), isA<PokemonErrorState>()],
        verify: (_) {
          verify(mockLocalRepository.isPokemonMarkedAsFav(any)).called(1);
        });
  });
}
