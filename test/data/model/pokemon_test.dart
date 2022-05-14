import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/data/models/pokemon.dart';

void main() {
  final samplePokemon = Pokemon(
      id: 1,
      name: 'test name',
      art: 'test.png',
      height: 16,
      stats:
          '[{"base_stat":75,"effort":0,"stat":{"name":"hp","url":"https://pokeapi.co/api/v2/stat/1/"}}]',
      types: '["fire", "aggressive", "strong"]',
      weight: 855);

  test("given a pokemon object return typeList inform of a list", () {
    final response = samplePokemon.typesList;
    assert(response!.isNotEmpty);
    assert(response!.length == 3);
    assert(response!.contains('fire'));
  });

  test(
      "given a pokemon object return BaseStats inform of a list with average power added as last",
      () {
    final response = samplePokemon.baseStats;
    assert(response!.isNotEmpty);
    assert(response!.length == 2);
    assert(response?.last.stat?.name == 'Avg. Power');
  });

  test("given a pokemon object return BaseStats inform of a list", () {
    final response = samplePokemon.baseStats;
    assert(response!.isNotEmpty);
    assert(response!.length == 2);
    assert(response?.first.baseStat == 75);
  });

  test("given a pokemon object check if bmi is calculated correctly", () {
    final response = samplePokemon.bmi;
    assert(response == 3);
  });
}
