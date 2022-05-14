import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/data/local/dao/pokemon_dao.dart';
import 'package:pokedex/data/local/database/database.dart';
import 'package:pokedex/data/models/pokemon.dart';

void main() {
  late PokemonDatabase _pokemonDatabase;
  late PokemonDao _pokemonDao;

  setUp(() async {
    _pokemonDatabase =
        await $FloorPokemonDatabase.inMemoryDatabaseBuilder().build();
    _pokemonDao = _pokemonDatabase.pokemonDao;
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

  test('inserting saves given pokemon object', () async {
    await _pokemonDao.insertPokemon(samplePokemon);
    final response = await _pokemonDao.getPokemonById(samplePokemon.id!);
    expect(response == samplePokemon, isTrue);
  });

  test('fetchAll returns list of saved pokemon', () async {
    await _pokemonDao.insertPokemon(samplePokemon);
    await _pokemonDao
        .insertPokemon(samplePokemon.copyWith(id: 2, name: 'test 2 name'));

    final response = await _pokemonDao.fetchAll();
    expect(response!.length == 2, isTrue);
  });

  test('deletePokemon removes marked as fav pokemon from db', () async {
    await _pokemonDao.insertPokemon(samplePokemon);
    await _pokemonDao.deletePokemon(samplePokemon.id!);

    final response = await _pokemonDao.getPokemonById(samplePokemon.id!);
    expect(response, isNull);
  });

  test('getPokemonById returns inserted pokemon by its id', () async {
    await _pokemonDao.insertPokemon(samplePokemon);
    final response = await _pokemonDao.getPokemonById(samplePokemon.id!);
    expect(response?.id, samplePokemon.id);
  });
}
