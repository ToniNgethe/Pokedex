// Mocks generated by Mockito 5.1.0 from annotations
// in pokedex/test/data/bloc/pokemon_cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:pokedex/data/models/pokemon.dart' as _i4;
import 'package:pokedex/data/repositories/local_repository.dart' as _i5;
import 'package:pokedex/data/repositories/remote_repository.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [RemoteRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteRepository extends _i1.Mock implements _i2.RemoteRepository {
  MockRemoteRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Pokemon>?> fetchPokemons(int? pageOffset) =>
      (super.noSuchMethod(Invocation.method(#fetchPokemons, [pageOffset]),
              returnValue: Future<List<_i4.Pokemon>?>.value())
          as _i3.Future<List<_i4.Pokemon>?>);
  @override
  _i3.Future<_i4.Pokemon?> fetchSinglePokemon(String? pokemon) =>
      (super.noSuchMethod(Invocation.method(#fetchSinglePokemon, [pokemon]),
              returnValue: Future<_i4.Pokemon?>.value())
          as _i3.Future<_i4.Pokemon?>);
}

/// A class which mocks [LocalRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalRepository extends _i1.Mock implements _i5.LocalRepository {
  MockLocalRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> isPokemonMarkedAsFav(int? pokemonId) =>
      (super.noSuchMethod(Invocation.method(#isPokemonMarkedAsFav, [pokemonId]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<String> markPokemonAsFavourite(_i4.Pokemon? pokemon) =>
      (super.noSuchMethod(Invocation.method(#markPokemonAsFavourite, [pokemon]),
          returnValue: Future<String>.value('')) as _i3.Future<String>);
  @override
  _i3.Future<String> removePokemonAsFavourite(int? pokemonId) => (super
      .noSuchMethod(Invocation.method(#removePokemonAsFavourite, [pokemonId]),
          returnValue: Future<String>.value('')) as _i3.Future<String>);
  @override
  _i3.Future<List<_i4.Pokemon>?> fetchAllFavourites() =>
      (super.noSuchMethod(Invocation.method(#fetchAllFavourites, []),
              returnValue: Future<List<_i4.Pokemon>?>.value())
          as _i3.Future<List<_i4.Pokemon>?>);
}
