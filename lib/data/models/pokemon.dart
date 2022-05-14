import 'dart:convert';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:pokedex/data/dto/single_pokemon_response_dto.dart';

@entity
class Pokemon extends Equatable {
  Pokemon(
      {this.id,
      this.name,
      this.art,
      this.types,
      this.height,
      this.weight,
      this.stats});

  @PrimaryKey()
  final int? id;
  String? name;
  String? art;
  String? types;
  int? height;
  int? weight;
  String? stats;

  Pokemon copyWith(
          {int? id,
          String? name,
          String? art,
          String? types,
          int? height,
          int? weight,
          String? stats}) =>
      Pokemon(
          id: id ?? this.id,
          name: name ?? this.name,
          art: art ?? this.art,
          types: types ?? this.types,
          height: height ?? this.height,
          weight: weight ?? this.weight,
          stats: stats ?? this.stats);

  @override
  List<Object?> get props => [id, name, art, types, height, weight, stats];
}

extension PokemonExt on Pokemon {
  List<String>? get typesList {
    final List<dynamic> json = jsonDecode(types!);
    return List<String>.from(json.map((e) => e.toString()));
  }

  List<Stats>? get baseStats {
    final List<dynamic> json = jsonDecode(stats!);
    final baseStats = List<Stats>.from(json.map((e) => Stats.fromJson(e)));

    // add custom base stat for average power
    final averagePowerValue = baseStats.fold(
            0,
            (int previousValue, Stats element) =>
                previousValue + element.baseStat!) /
        6;
    final averagePowerBaseStat = Stats(
        baseStat: averagePowerValue.toInt(),
        effort: averagePowerValue.toInt(),
        stat: Stat(name: "Avg. Power"));
    baseStats.add(averagePowerBaseStat);

    return baseStats;
  }

  int get bmi {
    try {
      return (weight! / (height!*height!)).toInt();
    } catch (e) {
      return 0;
    }
  }
}
