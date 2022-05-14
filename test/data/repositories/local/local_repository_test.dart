import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:pokedex/data/local/database/database.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/data/repositories/local_repository.dart';

@GenerateMocks([PokemonDatabase])
void main() {
  late PokemonDatabase _pokemonDatabase;
  late LocalRepository _localRepository;

  setUp(() async {
    _pokemonDatabase =
        await $FloorPokemonDatabase.inMemoryDatabaseBuilder().build();
    _localRepository = LocalRepositoryImpl(_pokemonDatabase);
  });

  tearDown(() {
    _pokemonDatabase.close();
  });

  final samplePokemon = Pokemon(
      id: 1,
      name: 'test name',
      art: 'test.png',
      height: 10,
      stats: '',
      types: '',
      weight: 20);

  group('#isPokemonMarkedAsFav tests', () {
    test('#isPokemonMarkedAsFav returns true when pokemon is found given an id',
        () async {
      await _pokemonDatabase.pokemonDao.insertPokemon(samplePokemon);
      final response = await _localRepository.isPokemonMarkedAsFav(1);
      expect(response, isTrue);
    });

    test(
        '#isPokemonMarkedAsFav returns false when pokemon is not found given an id',
        () async {
      await _pokemonDatabase.pokemonDao.insertPokemon(samplePokemon);
      final response = await _localRepository.isPokemonMarkedAsFav(2);
      expect(response, isFalse);
    });
  });

  test(
      '#markPokemonAsFavourite returns a String when a pokemon is successfully marked fav',
      () async {
    final response =
        await _localRepository.markPokemonAsFavourite(samplePokemon);
    expect(response, 'Pokemon marked as favourite successfully');
  });

  test(
      '#removePokemonAsFavourite returns a String when a pokemon is successfully removed from fav',
      () async {
    await _pokemonDatabase.pokemonDao.insertPokemon(samplePokemon);
    final response =
        await _localRepository.removePokemonAsFavourite(samplePokemon.id!);
    expect(response, 'Pokemon removed from favourites');
  });

  test('#fetchAllFavourites returns favourites list', () async {
    await _pokemonDatabase.pokemonDao.insertPokemon(samplePokemon);
    final response = await _localRepository.fetchAllFavourites();
    expect(response, isNotEmpty);
    expect(response!.length, 1);
    expect(response, contains(samplePokemon));
  });

  test('#fetchAllFavourites returns empty list if no favourites found',
      () async {
    final response = await _localRepository.fetchAllFavourites();
    expect(response, isEmpty);
  });
}
