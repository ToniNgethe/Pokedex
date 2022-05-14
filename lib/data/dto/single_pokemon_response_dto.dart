import 'dart:convert';
import 'dart:developer';

import 'package:pokedex/data/models/pokemon.dart';

class SinglePokemonResponseDto {
  SinglePokemonResponseDto({
    List<Abilities>? abilities,
    int? baseExperience,
    List<Forms>? forms,
    List<GameIndices>? gameIndices,
    int? height,
    List<HeldItems>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Moves>? moves,
    String? name,
    int? order,
    List<dynamic>? pastTypes,
    Species? species,
    Sprites? sprites,
    List<Stats>? stats,
    List<Types>? types,
    int? weight,
  }) {
    _abilities = abilities;
    _baseExperience = baseExperience;
    _forms = forms;
    _gameIndices = gameIndices;
    _height = height;
    _heldItems = heldItems;
    _id = id;
    _isDefault = isDefault;
    _locationAreaEncounters = locationAreaEncounters;
    _moves = moves;
    _name = name;
    _order = order;
    _pastTypes = pastTypes;
    _species = species;
    _sprites = sprites;
    _stats = stats;
    _types = types;
    _weight = weight;
  }

  SinglePokemonResponseDto.fromJson(dynamic json) {
    if (json['abilities'] != null) {
      _abilities = [];
      json['abilities'].forEach((v) {
        _abilities?.add(Abilities.fromJson(v));
      });
    }
    _baseExperience = json['base_experience'];
    if (json['forms'] != null) {
      _forms = [];
      json['forms'].forEach((v) {
        _forms?.add(Forms.fromJson(v));
      });
    }
    if (json['game_indices'] != null) {
      _gameIndices = [];
      json['game_indices'].forEach((v) {
        _gameIndices?.add(GameIndices.fromJson(v));
      });
    }
    _height = json['height'];
    if (json['held_items'] != null) {
      _heldItems = [];
      json['held_items'].forEach((v) {
        _heldItems?.add(HeldItems.fromJson(v));
      });
    }
    _id = json['id'];
    _isDefault = json['is_default'];
    _locationAreaEncounters = json['location_area_encounters'];
    if (json['moves'] != null) {
      _moves = [];
      json['moves'].forEach((v) {
        _moves?.add(Moves.fromJson(v));
      });
    }
    _name = json['name'];
    _order = json['order'];
    if (json['past_types'] != null) {
      _pastTypes = [];
      json['past_types'].forEach((v) {
        _pastTypes?.add(v);
      });
    }
    _species =
        json['species'] != null ? Species.fromJson(json['species']) : null;
    _sprites =
        json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      _stats = [];
      json['stats'].forEach((v) {
        _stats?.add(Stats.fromJson(v));
      });
    }
    if (json['types'] != null) {
      _types = [];
      json['types'].forEach((v) {
        _types?.add(Types.fromJson(v));
      });
    }
    _weight = json['weight'];
  }

  List<Abilities>? _abilities;
  int? _baseExperience;
  List<Forms>? _forms;
  List<GameIndices>? _gameIndices;
  int? _height;
  List<HeldItems>? _heldItems;
  int? _id;
  bool? _isDefault;
  String? _locationAreaEncounters;
  List<Moves>? _moves;
  String? _name;
  int? _order;
  List<dynamic>? _pastTypes;
  Species? _species;
  Sprites? _sprites;
  List<Stats>? _stats;
  List<Types>? _types;
  int? _weight;

  SinglePokemonResponseDto copyWith({
    List<Abilities>? abilities,
    int? baseExperience,
    List<Forms>? forms,
    List<GameIndices>? gameIndices,
    int? height,
    List<HeldItems>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Moves>? moves,
    String? name,
    int? order,
    List<dynamic>? pastTypes,
    Species? species,
    Sprites? sprites,
    List<Stats>? stats,
    List<Types>? types,
    int? weight,
  }) =>
      SinglePokemonResponseDto(
        abilities: abilities ?? _abilities,
        baseExperience: baseExperience ?? _baseExperience,
        forms: forms ?? _forms,
        gameIndices: gameIndices ?? _gameIndices,
        height: height ?? _height,
        heldItems: heldItems ?? _heldItems,
        id: id ?? _id,
        isDefault: isDefault ?? _isDefault,
        locationAreaEncounters:
            locationAreaEncounters ?? _locationAreaEncounters,
        moves: moves ?? _moves,
        name: name ?? _name,
        order: order ?? _order,
        pastTypes: pastTypes ?? _pastTypes,
        species: species ?? _species,
        sprites: sprites ?? _sprites,
        stats: stats ?? _stats,
        types: types ?? _types,
        weight: weight ?? _weight,
      );

  List<Abilities>? get abilities => _abilities;

  int? get baseExperience => _baseExperience;

  List<Forms>? get forms => _forms;

  List<GameIndices>? get gameIndices => _gameIndices;

  int? get height => _height;

  List<HeldItems>? get heldItems => _heldItems;

  int? get id => _id;

  bool? get isDefault => _isDefault;

  String? get locationAreaEncounters => _locationAreaEncounters;

  List<Moves>? get moves => _moves;

  String? get name => _name;

  int? get order => _order;

  List<dynamic>? get pastTypes => _pastTypes;

  Species? get species => _species;

  Sprites? get sprites => _sprites;

  List<Stats>? get stats => _stats;

  List<Types>? get types => _types;

  int? get weight => _weight;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_abilities != null) {
      map['abilities'] = _abilities?.map((v) => v.toJson()).toList();
    }
    map['base_experience'] = _baseExperience;
    if (_forms != null) {
      map['forms'] = _forms?.map((v) => v.toJson()).toList();
    }
    if (_gameIndices != null) {
      map['game_indices'] = _gameIndices?.map((v) => v.toJson()).toList();
    }
    map['height'] = _height;
    if (_heldItems != null) {
      map['held_items'] = _heldItems?.map((v) => v.toJson()).toList();
    }
    map['id'] = _id;
    map['is_default'] = _isDefault;
    map['location_area_encounters'] = _locationAreaEncounters;
    if (_moves != null) {
      map['moves'] = _moves?.map((v) => v.toJson()).toList();
    }
    map['name'] = _name;
    map['order'] = _order;
    if (_pastTypes != null) {
      map['past_types'] = _pastTypes?.map((v) => v.toJson()).toList();
    }
    if (_species != null) {
      map['species'] = _species?.toJson();
    }
    if (_sprites != null) {
      map['sprites'] = _sprites?.toJson();
    }
    if (_stats != null) {
      map['stats'] = _stats?.map((v) => v.toJson()).toList();
    }
    if (_types != null) {
      map['types'] = _types?.map((v) => v.toJson()).toList();
    }
    map['weight'] = _weight;
    return map;
  }
}

extension SinglePokemonResponseDtoMapper on SinglePokemonResponseDto {
  Pokemon toPokemon() {
    return Pokemon(
        id: id,
        name: name,
        art: sprites?.other?.officialartwork?.frontDefault,
        types: jsonEncode(types!.map((e) => e.type!.name!).toList()),
        height: height,
        stats: jsonEncode(stats),
        weight: weight);
  }
}

class Types {
  Types({
    int? slot,
    Type? type,
  }) {
    _slot = slot;
    _type = type;
  }

  Types.fromJson(dynamic json) {
    _slot = json['slot'];
    _type = json['type'] != null ? Type.fromJson(json['type']) : null;
  }

  int? _slot;
  Type? _type;

  Types copyWith({
    int? slot,
    Type? type,
  }) =>
      Types(
        slot: slot ?? _slot,
        type: type ?? _type,
      );

  int? get slot => _slot;

  Type? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slot'] = _slot;
    if (_type != null) {
      map['type'] = _type?.toJson();
    }
    return map;
  }
}

class Type {
  Type({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Type.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Type copyWith({
    String? name,
    String? url,
  }) =>
      Type(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class Stats {
  Stats({
    int? baseStat,
    int? effort,
    Stat? stat,
  }) {
    _baseStat = baseStat;
    _effort = effort;
    _stat = stat;
  }

  Stats.fromJson(dynamic json) {
    _baseStat = json['base_stat'];
    _effort = json['effort'];
    _stat = json['stat'] != null ? Stat.fromJson(json['stat']) : null;
  }

  int? _baseStat;
  int? _effort;
  Stat? _stat;

  Stats copyWith({
    int? baseStat,
    int? effort,
    Stat? stat,
  }) =>
      Stats(
        baseStat: baseStat ?? _baseStat,
        effort: effort ?? _effort,
        stat: stat ?? _stat,
      );

  int? get baseStat => _baseStat;

  int? get effort => _effort;

  Stat? get stat => _stat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['base_stat'] = _baseStat;
    map['effort'] = _effort;
    if (_stat != null) {
      map['stat'] = _stat?.toJson();
    }
    return map;
  }
}

class Stat {
  Stat({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Stat.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Stat copyWith({
    String? name,
    String? url,
  }) =>
      Stat(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class Sprites {
  Sprites({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
    Other? other,
    Versions? versions,
  }) {
    _backDefault = backDefault;
    _backFemale = backFemale;
    _backShiny = backShiny;
    _backShinyFemale = backShinyFemale;
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
    _other = other;
    _versions = versions;
  }

  Sprites.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
    _other = json['other'] != null ? Other.fromJson(json['other']) : null;
    _versions =
        json['versions'] != null ? Versions.fromJson(json['versions']) : null;
  }

  String? _backDefault;
  dynamic _backFemale;
  String? _backShiny;
  dynamic _backShinyFemale;
  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;
  Other? _other;
  Versions? _versions;

  Sprites copyWith({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
    Other? other,
    Versions? versions,
  }) =>
      Sprites(
        backDefault: backDefault ?? _backDefault,
        backFemale: backFemale ?? _backFemale,
        backShiny: backShiny ?? _backShiny,
        backShinyFemale: backShinyFemale ?? _backShinyFemale,
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
        other: other ?? _other,
        versions: versions ?? _versions,
      );

  String? get backDefault => _backDefault;

  dynamic get backFemale => _backFemale;

  String? get backShiny => _backShiny;

  dynamic get backShinyFemale => _backShinyFemale;

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Other? get other => _other;

  Versions? get versions => _versions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_female'] = _backFemale;
    map['back_shiny'] = _backShiny;
    map['back_shiny_female'] = _backShinyFemale;
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    if (_other != null) {
      map['other'] = _other?.toJson();
    }
    if (_versions != null) {
      map['versions'] = _versions?.toJson();
    }
    return map;
  }
}

class Versions {
  Versions({
    GenerationI? generationi,
    GenerationIi? generationii,
    GenerationIii? generationiii,
    GenerationIv? generationiv,
    GenerationV? generationv,
    GenerationVii? generationvii,
    GenerationViii? generationviii,
  }) {
    _generationi = generationi;
    _generationii = generationii;
    _generationiii = generationiii;
    _generationiv = generationiv;
    _generationv = generationv;
    _generationvii = generationvii;
    _generationviii = generationviii;
  }

  Versions.fromJson(dynamic json) {
    _generationi = json['generation-i'] != null
        ? GenerationI.fromJson(json['generation-i'])
        : null;
    _generationii = json['generation-ii'] != null
        ? GenerationIi.fromJson(json['generation-ii'])
        : null;
    _generationiii = json['generation-iii'] != null
        ? GenerationIii.fromJson(json['generation-iii'])
        : null;
    _generationiv = json['generation-iv'] != null
        ? GenerationIv.fromJson(json['generation-iv'])
        : null;
    _generationv = json['generation-v'] != null
        ? GenerationV.fromJson(json['generation-v'])
        : null;
    _generationvii = json['generation-vii'] != null
        ? GenerationVii.fromJson(json['generation-vii'])
        : null;
    _generationviii = json['generation-viii'] != null
        ? GenerationViii.fromJson(json['generation-viii'])
        : null;
  }

  GenerationI? _generationi;
  GenerationIi? _generationii;
  GenerationIii? _generationiii;
  GenerationIv? _generationiv;
  GenerationV? _generationv;

  GenerationVii? _generationvii;
  GenerationViii? _generationviii;

  Versions copyWith({
    GenerationI? generationi,
    GenerationIi? generationii,
    GenerationIii? generationiii,
    GenerationIv? generationiv,
    GenerationV? generationv,
    GenerationVii? generationvii,
    GenerationViii? generationviii,
  }) =>
      Versions(
        generationi: generationi ?? _generationi,
        generationii: generationii ?? _generationii,
        generationiii: generationiii ?? _generationiii,
        generationiv: generationiv ?? _generationiv,
        generationv: generationv ?? _generationv,
        generationvii: generationvii ?? _generationvii,
        generationviii: generationviii ?? _generationviii,
      );

  GenerationI? get generationi => _generationi;

  GenerationIi? get generationii => _generationii;

  GenerationIii? get generationiii => _generationiii;

  GenerationIv? get generationiv => _generationiv;

  GenerationV? get generationv => _generationv;

  GenerationVii? get generationvii => _generationvii;

  GenerationViii? get generationviii => _generationviii;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_generationi != null) {
      map['generation-i'] = _generationi?.toJson();
    }
    if (_generationii != null) {
      map['generation-ii'] = _generationii?.toJson();
    }
    if (_generationiii != null) {
      map['generation-iii'] = _generationiii?.toJson();
    }
    if (_generationiv != null) {
      map['generation-iv'] = _generationiv?.toJson();
    }
    if (_generationv != null) {
      map['generation-v'] = _generationv?.toJson();
    }
    if (_generationvii != null) {
      map['generation-vii'] = _generationvii?.toJson();
    }
    if (_generationviii != null) {
      map['generation-viii'] = _generationviii?.toJson();
    }
    return map;
  }
}

class GenerationViii {
  GenerationViii({
    Icons? icons,
  }) {
    _icons = icons;
  }

  GenerationViii.fromJson(dynamic json) {
    _icons = json['icons'] != null ? Icons.fromJson(json['icons']) : null;
  }

  Icons? _icons;

  GenerationViii copyWith({
    Icons? icons,
  }) =>
      GenerationViii(
        icons: icons ?? _icons,
      );

  Icons? get icons => _icons;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_icons != null) {
      map['icons'] = _icons?.toJson();
    }
    return map;
  }
}

class Icons {
  Icons({
    String? frontDefault,
    dynamic frontFemale,
  }) {
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
  }

  Icons.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
  }

  String? _frontDefault;
  dynamic _frontFemale;

  Icons copyWith({
    String? frontDefault,
    dynamic frontFemale,
  }) =>
      Icons(
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
      );

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    return map;
  }
}

class GenerationVii {
  GenerationVii({
    Icons? icons,
    UltraSunUltraMoon? ultrasunultramoon,
  }) {
    _icons = icons;
    _ultrasunultramoon = ultrasunultramoon;
  }

  GenerationVii.fromJson(dynamic json) {
    _icons = json['icons'] != null ? Icons.fromJson(json['icons']) : null;
    _ultrasunultramoon = json['ultra-sun-ultra-moon'] != null
        ? UltraSunUltraMoon.fromJson(json['ultra-sun-ultra-moon'])
        : null;
  }

  Icons? _icons;
  UltraSunUltraMoon? _ultrasunultramoon;

  GenerationVii copyWith({
    Icons? icons,
    UltraSunUltraMoon? ultrasunultramoon,
  }) =>
      GenerationVii(
        icons: icons ?? _icons,
        ultrasunultramoon: ultrasunultramoon ?? _ultrasunultramoon,
      );

  Icons? get icons => _icons;

  UltraSunUltraMoon? get ultrasunultramoon => _ultrasunultramoon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_icons != null) {
      map['icons'] = _icons?.toJson();
    }
    if (_ultrasunultramoon != null) {
      map['ultra-sun-ultra-moon'] = _ultrasunultramoon?.toJson();
    }
    return map;
  }
}

class UltraSunUltraMoon {
  UltraSunUltraMoon({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  UltraSunUltraMoon.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  UltraSunUltraMoon copyWith({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      UltraSunUltraMoon(
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class Xy {
  Xy({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  Xy.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  Xy copyWith({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      Xy(
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class OmegarubyAlphasapphire {
  OmegarubyAlphasapphire({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  OmegarubyAlphasapphire.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  OmegarubyAlphasapphire copyWith({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      OmegarubyAlphasapphire(
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class GenerationV {
  GenerationV({
    BlackWhite? blackwhite,
  }) {
    _blackwhite = blackwhite;
  }

  GenerationV.fromJson(dynamic json) {
    _blackwhite = json['black-white'] != null
        ? BlackWhite.fromJson(json['black-white'])
        : null;
  }

  BlackWhite? _blackwhite;

  GenerationV copyWith({
    BlackWhite? blackwhite,
  }) =>
      GenerationV(
        blackwhite: blackwhite ?? _blackwhite,
      );

  BlackWhite? get blackwhite => _blackwhite;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_blackwhite != null) {
      map['black-white'] = _blackwhite?.toJson();
    }
    return map;
  }
}

class BlackWhite {
  BlackWhite({
    Animated? animated,
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _animated = animated;
    _backDefault = backDefault;
    _backFemale = backFemale;
    _backShiny = backShiny;
    _backShinyFemale = backShinyFemale;
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  BlackWhite.fromJson(dynamic json) {
    _animated =
        json['animated'] != null ? Animated.fromJson(json['animated']) : null;
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  Animated? _animated;
  String? _backDefault;
  dynamic _backFemale;
  String? _backShiny;
  dynamic _backShinyFemale;
  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  BlackWhite copyWith({
    Animated? animated,
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      BlackWhite(
        animated: animated ?? _animated,
        backDefault: backDefault ?? _backDefault,
        backFemale: backFemale ?? _backFemale,
        backShiny: backShiny ?? _backShiny,
        backShinyFemale: backShinyFemale ?? _backShinyFemale,
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  Animated? get animated => _animated;

  String? get backDefault => _backDefault;

  dynamic get backFemale => _backFemale;

  String? get backShiny => _backShiny;

  dynamic get backShinyFemale => _backShinyFemale;

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_animated != null) {
      map['animated'] = _animated?.toJson();
    }
    map['back_default'] = _backDefault;
    map['back_female'] = _backFemale;
    map['back_shiny'] = _backShiny;
    map['back_shiny_female'] = _backShinyFemale;
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class Animated {
  Animated({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _backDefault = backDefault;
    _backFemale = backFemale;
    _backShiny = backShiny;
    _backShinyFemale = backShinyFemale;
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  Animated.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _backDefault;
  dynamic _backFemale;
  String? _backShiny;
  dynamic _backShinyFemale;
  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  Animated copyWith({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      Animated(
        backDefault: backDefault ?? _backDefault,
        backFemale: backFemale ?? _backFemale,
        backShiny: backShiny ?? _backShiny,
        backShinyFemale: backShinyFemale ?? _backShinyFemale,
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get backDefault => _backDefault;

  dynamic get backFemale => _backFemale;

  String? get backShiny => _backShiny;

  dynamic get backShinyFemale => _backShinyFemale;

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_female'] = _backFemale;
    map['back_shiny'] = _backShiny;
    map['back_shiny_female'] = _backShinyFemale;
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class GenerationIv {
  GenerationIv({
    DiamondPearl? diamondpearl,
    HeartgoldSoulsilver? heartgoldsoulsilver,
    Platinum? platinum,
  }) {
    _diamondpearl = diamondpearl;
    _heartgoldsoulsilver = heartgoldsoulsilver;
    _platinum = platinum;
  }

  GenerationIv.fromJson(dynamic json) {
    _diamondpearl = json['diamond-pearl'] != null
        ? DiamondPearl.fromJson(json['diamond-pearl'])
        : null;
    _heartgoldsoulsilver = json['heartgold-soulsilver'] != null
        ? HeartgoldSoulsilver.fromJson(json['heartgold-soulsilver'])
        : null;
    _platinum =
        json['platinum'] != null ? Platinum.fromJson(json['platinum']) : null;
  }

  DiamondPearl? _diamondpearl;
  HeartgoldSoulsilver? _heartgoldsoulsilver;
  Platinum? _platinum;

  GenerationIv copyWith({
    DiamondPearl? diamondpearl,
    HeartgoldSoulsilver? heartgoldsoulsilver,
    Platinum? platinum,
  }) =>
      GenerationIv(
        diamondpearl: diamondpearl ?? _diamondpearl,
        heartgoldsoulsilver: heartgoldsoulsilver ?? _heartgoldsoulsilver,
        platinum: platinum ?? _platinum,
      );

  DiamondPearl? get diamondpearl => _diamondpearl;

  HeartgoldSoulsilver? get heartgoldsoulsilver => _heartgoldsoulsilver;

  Platinum? get platinum => _platinum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_diamondpearl != null) {
      map['diamond-pearl'] = _diamondpearl?.toJson();
    }
    if (_heartgoldsoulsilver != null) {
      map['heartgold-soulsilver'] = _heartgoldsoulsilver?.toJson();
    }
    if (_platinum != null) {
      map['platinum'] = _platinum?.toJson();
    }
    return map;
  }
}

class Platinum {
  Platinum({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _backDefault = backDefault;
    _backFemale = backFemale;
    _backShiny = backShiny;
    _backShinyFemale = backShinyFemale;
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  Platinum.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _backDefault;
  dynamic _backFemale;
  String? _backShiny;
  dynamic _backShinyFemale;
  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  Platinum copyWith({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      Platinum(
        backDefault: backDefault ?? _backDefault,
        backFemale: backFemale ?? _backFemale,
        backShiny: backShiny ?? _backShiny,
        backShinyFemale: backShinyFemale ?? _backShinyFemale,
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get backDefault => _backDefault;

  dynamic get backFemale => _backFemale;

  String? get backShiny => _backShiny;

  dynamic get backShinyFemale => _backShinyFemale;

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_female'] = _backFemale;
    map['back_shiny'] = _backShiny;
    map['back_shiny_female'] = _backShinyFemale;
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class HeartgoldSoulsilver {
  HeartgoldSoulsilver({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _backDefault = backDefault;
    _backFemale = backFemale;
    _backShiny = backShiny;
    _backShinyFemale = backShinyFemale;
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  HeartgoldSoulsilver.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _backDefault;
  dynamic _backFemale;
  String? _backShiny;
  dynamic _backShinyFemale;
  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  HeartgoldSoulsilver copyWith({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      HeartgoldSoulsilver(
        backDefault: backDefault ?? _backDefault,
        backFemale: backFemale ?? _backFemale,
        backShiny: backShiny ?? _backShiny,
        backShinyFemale: backShinyFemale ?? _backShinyFemale,
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get backDefault => _backDefault;

  dynamic get backFemale => _backFemale;

  String? get backShiny => _backShiny;

  dynamic get backShinyFemale => _backShinyFemale;

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_female'] = _backFemale;
    map['back_shiny'] = _backShiny;
    map['back_shiny_female'] = _backShinyFemale;
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class DiamondPearl {
  DiamondPearl({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _backDefault = backDefault;
    _backFemale = backFemale;
    _backShiny = backShiny;
    _backShinyFemale = backShinyFemale;
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  DiamondPearl.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backFemale = json['back_female'];
    _backShiny = json['back_shiny'];
    _backShinyFemale = json['back_shiny_female'];
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _backDefault;
  dynamic _backFemale;
  String? _backShiny;
  dynamic _backShinyFemale;
  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  DiamondPearl copyWith({
    String? backDefault,
    dynamic backFemale,
    String? backShiny,
    dynamic backShinyFemale,
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      DiamondPearl(
        backDefault: backDefault ?? _backDefault,
        backFemale: backFemale ?? _backFemale,
        backShiny: backShiny ?? _backShiny,
        backShinyFemale: backShinyFemale ?? _backShinyFemale,
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get backDefault => _backDefault;

  dynamic get backFemale => _backFemale;

  String? get backShiny => _backShiny;

  dynamic get backShinyFemale => _backShinyFemale;

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_female'] = _backFemale;
    map['back_shiny'] = _backShiny;
    map['back_shiny_female'] = _backShinyFemale;
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class GenerationIii {
  GenerationIii({
    Emerald? emerald,
    FireredLeafgreen? fireredleafgreen,
    RubySapphire? rubysapphire,
  }) {
    _emerald = emerald;
    _fireredleafgreen = fireredleafgreen;
    _rubysapphire = rubysapphire;
  }

  GenerationIii.fromJson(dynamic json) {
    _emerald =
        json['emerald'] != null ? Emerald.fromJson(json['emerald']) : null;
    _fireredleafgreen = json['firered-leafgreen'] != null
        ? FireredLeafgreen.fromJson(json['firered-leafgreen'])
        : null;
    _rubysapphire = json['ruby-sapphire'] != null
        ? RubySapphire.fromJson(json['ruby-sapphire'])
        : null;
  }

  Emerald? _emerald;
  FireredLeafgreen? _fireredleafgreen;
  RubySapphire? _rubysapphire;

  GenerationIii copyWith({
    Emerald? emerald,
    FireredLeafgreen? fireredleafgreen,
    RubySapphire? rubysapphire,
  }) =>
      GenerationIii(
        emerald: emerald ?? _emerald,
        fireredleafgreen: fireredleafgreen ?? _fireredleafgreen,
        rubysapphire: rubysapphire ?? _rubysapphire,
      );

  Emerald? get emerald => _emerald;

  FireredLeafgreen? get fireredleafgreen => _fireredleafgreen;

  RubySapphire? get rubysapphire => _rubysapphire;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_emerald != null) {
      map['emerald'] = _emerald?.toJson();
    }
    if (_fireredleafgreen != null) {
      map['firered-leafgreen'] = _fireredleafgreen?.toJson();
    }
    if (_rubysapphire != null) {
      map['ruby-sapphire'] = _rubysapphire?.toJson();
    }
    return map;
  }
}

class RubySapphire {
  RubySapphire({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    _backDefault = backDefault;
    _backShiny = backShiny;
    _frontDefault = frontDefault;
    _frontShiny = frontShiny;
  }

  RubySapphire.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
  }

  String? _backDefault;
  String? _backShiny;
  String? _frontDefault;
  String? _frontShiny;

  RubySapphire copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) =>
      RubySapphire(
        backDefault: backDefault ?? _backDefault,
        backShiny: backShiny ?? _backShiny,
        frontDefault: frontDefault ?? _frontDefault,
        frontShiny: frontShiny ?? _frontShiny,
      );

  String? get backDefault => _backDefault;

  String? get backShiny => _backShiny;

  String? get frontDefault => _frontDefault;

  String? get frontShiny => _frontShiny;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_shiny'] = _backShiny;
    map['front_default'] = _frontDefault;
    map['front_shiny'] = _frontShiny;
    return map;
  }
}

class FireredLeafgreen {
  FireredLeafgreen({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) {
    _backDefault = backDefault;
    _backShiny = backShiny;
    _frontDefault = frontDefault;
    _frontShiny = frontShiny;
  }

  FireredLeafgreen.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
  }

  String? _backDefault;
  String? _backShiny;
  String? _frontDefault;
  String? _frontShiny;

  FireredLeafgreen copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
  }) =>
      FireredLeafgreen(
        backDefault: backDefault ?? _backDefault,
        backShiny: backShiny ?? _backShiny,
        frontDefault: frontDefault ?? _frontDefault,
        frontShiny: frontShiny ?? _frontShiny,
      );

  String? get backDefault => _backDefault;

  String? get backShiny => _backShiny;

  String? get frontDefault => _frontDefault;

  String? get frontShiny => _frontShiny;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_shiny'] = _backShiny;
    map['front_default'] = _frontDefault;
    map['front_shiny'] = _frontShiny;
    return map;
  }
}

class Emerald {
  Emerald({
    String? frontDefault,
    String? frontShiny,
  }) {
    _frontDefault = frontDefault;
    _frontShiny = frontShiny;
  }

  Emerald.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
  }

  String? _frontDefault;
  String? _frontShiny;

  Emerald copyWith({
    String? frontDefault,
    String? frontShiny,
  }) =>
      Emerald(
        frontDefault: frontDefault ?? _frontDefault,
        frontShiny: frontShiny ?? _frontShiny,
      );

  String? get frontDefault => _frontDefault;

  String? get frontShiny => _frontShiny;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    map['front_shiny'] = _frontShiny;
    return map;
  }
}

class GenerationIi {
  GenerationIi({
    Crystal? crystal,
    Gold? gold,
    Silver? silver,
  }) {
    _crystal = crystal;
    _gold = gold;
    _silver = silver;
  }

  GenerationIi.fromJson(dynamic json) {
    _crystal =
        json['crystal'] != null ? Crystal.fromJson(json['crystal']) : null;
    _gold = json['gold'] != null ? Gold.fromJson(json['gold']) : null;
    _silver = json['silver'] != null ? Silver.fromJson(json['silver']) : null;
  }

  Crystal? _crystal;
  Gold? _gold;
  Silver? _silver;

  GenerationIi copyWith({
    Crystal? crystal,
    Gold? gold,
    Silver? silver,
  }) =>
      GenerationIi(
        crystal: crystal ?? _crystal,
        gold: gold ?? _gold,
        silver: silver ?? _silver,
      );

  Crystal? get crystal => _crystal;

  Gold? get gold => _gold;

  Silver? get silver => _silver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_crystal != null) {
      map['crystal'] = _crystal?.toJson();
    }
    if (_gold != null) {
      map['gold'] = _gold?.toJson();
    }
    if (_silver != null) {
      map['silver'] = _silver?.toJson();
    }
    return map;
  }
}

class Silver {
  Silver({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) {
    _backDefault = backDefault;
    _backShiny = backShiny;
    _frontDefault = frontDefault;
    _frontShiny = frontShiny;
    _frontTransparent = frontTransparent;
  }

  Silver.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
    _frontTransparent = json['front_transparent'];
  }

  String? _backDefault;
  String? _backShiny;
  String? _frontDefault;
  String? _frontShiny;
  String? _frontTransparent;

  Silver copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) =>
      Silver(
        backDefault: backDefault ?? _backDefault,
        backShiny: backShiny ?? _backShiny,
        frontDefault: frontDefault ?? _frontDefault,
        frontShiny: frontShiny ?? _frontShiny,
        frontTransparent: frontTransparent ?? _frontTransparent,
      );

  String? get backDefault => _backDefault;

  String? get backShiny => _backShiny;

  String? get frontDefault => _frontDefault;

  String? get frontShiny => _frontShiny;

  String? get frontTransparent => _frontTransparent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_shiny'] = _backShiny;
    map['front_default'] = _frontDefault;
    map['front_shiny'] = _frontShiny;
    map['front_transparent'] = _frontTransparent;
    return map;
  }
}

class Gold {
  Gold({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) {
    _backDefault = backDefault;
    _backShiny = backShiny;
    _frontDefault = frontDefault;
    _frontShiny = frontShiny;
    _frontTransparent = frontTransparent;
  }

  Gold.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
    _frontTransparent = json['front_transparent'];
  }

  String? _backDefault;
  String? _backShiny;
  String? _frontDefault;
  String? _frontShiny;
  String? _frontTransparent;

  Gold copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) =>
      Gold(
        backDefault: backDefault ?? _backDefault,
        backShiny: backShiny ?? _backShiny,
        frontDefault: frontDefault ?? _frontDefault,
        frontShiny: frontShiny ?? _frontShiny,
        frontTransparent: frontTransparent ?? _frontTransparent,
      );

  String? get backDefault => _backDefault;

  String? get backShiny => _backShiny;

  String? get frontDefault => _frontDefault;

  String? get frontShiny => _frontShiny;

  String? get frontTransparent => _frontTransparent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_shiny'] = _backShiny;
    map['front_default'] = _frontDefault;
    map['front_shiny'] = _frontShiny;
    map['front_transparent'] = _frontTransparent;
    return map;
  }
}

class Crystal {
  Crystal({
    String? backDefault,
    String? backShiny,
    String? backShinyTransparent,
    String? backTransparent,
    String? frontDefault,
    String? frontShiny,
    String? frontShinyTransparent,
    String? frontTransparent,
  }) {
    _backDefault = backDefault;
    _backShiny = backShiny;
    _backShinyTransparent = backShinyTransparent;
    _backTransparent = backTransparent;
    _frontDefault = frontDefault;
    _frontShiny = frontShiny;
    _frontShinyTransparent = frontShinyTransparent;
    _frontTransparent = frontTransparent;
  }

  Crystal.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _backShinyTransparent = json['back_shiny_transparent'];
    _backTransparent = json['back_transparent'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
    _frontShinyTransparent = json['front_shiny_transparent'];
    _frontTransparent = json['front_transparent'];
  }

  String? _backDefault;
  String? _backShiny;
  String? _backShinyTransparent;
  String? _backTransparent;
  String? _frontDefault;
  String? _frontShiny;
  String? _frontShinyTransparent;
  String? _frontTransparent;

  Crystal copyWith({
    String? backDefault,
    String? backShiny,
    String? backShinyTransparent,
    String? backTransparent,
    String? frontDefault,
    String? frontShiny,
    String? frontShinyTransparent,
    String? frontTransparent,
  }) =>
      Crystal(
        backDefault: backDefault ?? _backDefault,
        backShiny: backShiny ?? _backShiny,
        backShinyTransparent: backShinyTransparent ?? _backShinyTransparent,
        backTransparent: backTransparent ?? _backTransparent,
        frontDefault: frontDefault ?? _frontDefault,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyTransparent: frontShinyTransparent ?? _frontShinyTransparent,
        frontTransparent: frontTransparent ?? _frontTransparent,
      );

  String? get backDefault => _backDefault;

  String? get backShiny => _backShiny;

  String? get backShinyTransparent => _backShinyTransparent;

  String? get backTransparent => _backTransparent;

  String? get frontDefault => _frontDefault;

  String? get frontShiny => _frontShiny;

  String? get frontShinyTransparent => _frontShinyTransparent;

  String? get frontTransparent => _frontTransparent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_shiny'] = _backShiny;
    map['back_shiny_transparent'] = _backShinyTransparent;
    map['back_transparent'] = _backTransparent;
    map['front_default'] = _frontDefault;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_transparent'] = _frontShinyTransparent;
    map['front_transparent'] = _frontTransparent;
    return map;
  }
}

class GenerationI {
  GenerationI({
    RedBlue? redblue,
    Yellow? yellow,
  }) {
    _redblue = redblue;
    _yellow = yellow;
  }

  GenerationI.fromJson(dynamic json) {
    _redblue =
        json['red-blue'] != null ? RedBlue.fromJson(json['red-blue']) : null;
    _yellow = json['yellow'] != null ? Yellow.fromJson(json['yellow']) : null;
  }

  RedBlue? _redblue;
  Yellow? _yellow;

  GenerationI copyWith({
    RedBlue? redblue,
    Yellow? yellow,
  }) =>
      GenerationI(
        redblue: redblue ?? _redblue,
        yellow: yellow ?? _yellow,
      );

  RedBlue? get redblue => _redblue;

  Yellow? get yellow => _yellow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_redblue != null) {
      map['red-blue'] = _redblue?.toJson();
    }
    if (_yellow != null) {
      map['yellow'] = _yellow?.toJson();
    }
    return map;
  }
}

class Yellow {
  Yellow({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) {
    _backDefault = backDefault;
    _backGray = backGray;
    _backTransparent = backTransparent;
    _frontDefault = frontDefault;
    _frontGray = frontGray;
    _frontTransparent = frontTransparent;
  }

  Yellow.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backGray = json['back_gray'];
    _backTransparent = json['back_transparent'];
    _frontDefault = json['front_default'];
    _frontGray = json['front_gray'];
    _frontTransparent = json['front_transparent'];
  }

  String? _backDefault;
  String? _backGray;
  String? _backTransparent;
  String? _frontDefault;
  String? _frontGray;
  String? _frontTransparent;

  Yellow copyWith({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) =>
      Yellow(
        backDefault: backDefault ?? _backDefault,
        backGray: backGray ?? _backGray,
        backTransparent: backTransparent ?? _backTransparent,
        frontDefault: frontDefault ?? _frontDefault,
        frontGray: frontGray ?? _frontGray,
        frontTransparent: frontTransparent ?? _frontTransparent,
      );

  String? get backDefault => _backDefault;

  String? get backGray => _backGray;

  String? get backTransparent => _backTransparent;

  String? get frontDefault => _frontDefault;

  String? get frontGray => _frontGray;

  String? get frontTransparent => _frontTransparent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_gray'] = _backGray;
    map['back_transparent'] = _backTransparent;
    map['front_default'] = _frontDefault;
    map['front_gray'] = _frontGray;
    map['front_transparent'] = _frontTransparent;
    return map;
  }
}

class RedBlue {
  RedBlue({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) {
    _backDefault = backDefault;
    _backGray = backGray;
    _backTransparent = backTransparent;
    _frontDefault = frontDefault;
    _frontGray = frontGray;
    _frontTransparent = frontTransparent;
  }

  RedBlue.fromJson(dynamic json) {
    _backDefault = json['back_default'];
    _backGray = json['back_gray'];
    _backTransparent = json['back_transparent'];
    _frontDefault = json['front_default'];
    _frontGray = json['front_gray'];
    _frontTransparent = json['front_transparent'];
  }

  String? _backDefault;
  String? _backGray;
  String? _backTransparent;
  String? _frontDefault;
  String? _frontGray;
  String? _frontTransparent;

  RedBlue copyWith({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) =>
      RedBlue(
        backDefault: backDefault ?? _backDefault,
        backGray: backGray ?? _backGray,
        backTransparent: backTransparent ?? _backTransparent,
        frontDefault: frontDefault ?? _frontDefault,
        frontGray: frontGray ?? _frontGray,
        frontTransparent: frontTransparent ?? _frontTransparent,
      );

  String? get backDefault => _backDefault;

  String? get backGray => _backGray;

  String? get backTransparent => _backTransparent;

  String? get frontDefault => _frontDefault;

  String? get frontGray => _frontGray;

  String? get frontTransparent => _frontTransparent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['back_default'] = _backDefault;
    map['back_gray'] = _backGray;
    map['back_transparent'] = _backTransparent;
    map['front_default'] = _frontDefault;
    map['front_gray'] = _frontGray;
    map['front_transparent'] = _frontTransparent;
    return map;
  }
}

class Other {
  Other({
    DreamWorld? dreamWorld,
    Home? home,
    OfficialArtwork? officialartwork,
  }) {
    _dreamWorld = dreamWorld;
    _home = home;
    _officialartwork = officialartwork;
  }

  Other.fromJson(dynamic json) {
    _dreamWorld = json['dream_world'] != null
        ? DreamWorld.fromJson(json['dream_world'])
        : null;
    _home = json['home'] != null ? Home.fromJson(json['home']) : null;
    _officialartwork = json['official-artwork'] != null
        ? OfficialArtwork.fromJson(json['official-artwork'])
        : null;
  }

  DreamWorld? _dreamWorld;
  Home? _home;
  OfficialArtwork? _officialartwork;

  Other copyWith({
    DreamWorld? dreamWorld,
    Home? home,
    OfficialArtwork? officialartwork,
  }) =>
      Other(
        dreamWorld: dreamWorld ?? _dreamWorld,
        home: home ?? _home,
        officialartwork: officialartwork ?? _officialartwork,
      );

  DreamWorld? get dreamWorld => _dreamWorld;

  Home? get home => _home;

  OfficialArtwork? get officialartwork => _officialartwork;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dreamWorld != null) {
      map['dream_world'] = _dreamWorld?.toJson();
    }
    if (_home != null) {
      map['home'] = _home?.toJson();
    }
    if (_officialartwork != null) {
      map['official-artwork'] = _officialartwork?.toJson();
    }
    return map;
  }
}

class OfficialArtwork {
  OfficialArtwork({
    String? frontDefault,
  }) {
    _frontDefault = frontDefault;
  }

  OfficialArtwork.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
  }

  String? _frontDefault;

  OfficialArtwork copyWith({
    String? frontDefault,
  }) =>
      OfficialArtwork(
        frontDefault: frontDefault ?? _frontDefault,
      );

  String? get frontDefault => _frontDefault;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    return map;
  }
}

class Home {
  Home({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) {
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
    _frontShiny = frontShiny;
    _frontShinyFemale = frontShinyFemale;
  }

  Home.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
    _frontShiny = json['front_shiny'];
    _frontShinyFemale = json['front_shiny_female'];
  }

  String? _frontDefault;
  dynamic _frontFemale;
  String? _frontShiny;
  dynamic _frontShinyFemale;

  Home copyWith({
    String? frontDefault,
    dynamic frontFemale,
    String? frontShiny,
    dynamic frontShinyFemale,
  }) =>
      Home(
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
        frontShiny: frontShiny ?? _frontShiny,
        frontShinyFemale: frontShinyFemale ?? _frontShinyFemale,
      );

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  String? get frontShiny => _frontShiny;

  dynamic get frontShinyFemale => _frontShinyFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    map['front_shiny'] = _frontShiny;
    map['front_shiny_female'] = _frontShinyFemale;
    return map;
  }
}

class DreamWorld {
  DreamWorld({
    String? frontDefault,
    dynamic frontFemale,
  }) {
    _frontDefault = frontDefault;
    _frontFemale = frontFemale;
  }

  DreamWorld.fromJson(dynamic json) {
    _frontDefault = json['front_default'];
    _frontFemale = json['front_female'];
  }

  String? _frontDefault;
  dynamic _frontFemale;

  DreamWorld copyWith({
    String? frontDefault,
    dynamic frontFemale,
  }) =>
      DreamWorld(
        frontDefault: frontDefault ?? _frontDefault,
        frontFemale: frontFemale ?? _frontFemale,
      );

  String? get frontDefault => _frontDefault;

  dynamic get frontFemale => _frontFemale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['front_default'] = _frontDefault;
    map['front_female'] = _frontFemale;
    return map;
  }
}

class Species {
  Species({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Species.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Species copyWith({
    String? name,
    String? url,
  }) =>
      Species(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class Moves {
  Moves({
    Move? move,
    List<VersionGroupDetails>? versionGroupDetails,
  }) {
    _move = move;
    _versionGroupDetails = versionGroupDetails;
  }

  Moves.fromJson(dynamic json) {
    _move = json['move'] != null ? Move.fromJson(json['move']) : null;
    if (json['version_group_details'] != null) {
      _versionGroupDetails = [];
      json['version_group_details'].forEach((v) {
        _versionGroupDetails?.add(VersionGroupDetails.fromJson(v));
      });
    }
  }

  Move? _move;
  List<VersionGroupDetails>? _versionGroupDetails;

  Moves copyWith({
    Move? move,
    List<VersionGroupDetails>? versionGroupDetails,
  }) =>
      Moves(
        move: move ?? _move,
        versionGroupDetails: versionGroupDetails ?? _versionGroupDetails,
      );

  Move? get move => _move;

  List<VersionGroupDetails>? get versionGroupDetails => _versionGroupDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_move != null) {
      map['move'] = _move?.toJson();
    }
    if (_versionGroupDetails != null) {
      map['version_group_details'] =
          _versionGroupDetails?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class VersionGroupDetails {
  VersionGroupDetails({
    int? levelLearnedAt,
    MoveLearnMethod? moveLearnMethod,
    VersionGroup? versionGroup,
  }) {
    _levelLearnedAt = levelLearnedAt;
    _moveLearnMethod = moveLearnMethod;
    _versionGroup = versionGroup;
  }

  VersionGroupDetails.fromJson(dynamic json) {
    _levelLearnedAt = json['level_learned_at'];
    _moveLearnMethod = json['move_learn_method'] != null
        ? MoveLearnMethod.fromJson(json['move_learn_method'])
        : null;
    _versionGroup = json['version_group'] != null
        ? VersionGroup.fromJson(json['version_group'])
        : null;
  }

  int? _levelLearnedAt;
  MoveLearnMethod? _moveLearnMethod;
  VersionGroup? _versionGroup;

  VersionGroupDetails copyWith({
    int? levelLearnedAt,
    MoveLearnMethod? moveLearnMethod,
    VersionGroup? versionGroup,
  }) =>
      VersionGroupDetails(
        levelLearnedAt: levelLearnedAt ?? _levelLearnedAt,
        moveLearnMethod: moveLearnMethod ?? _moveLearnMethod,
        versionGroup: versionGroup ?? _versionGroup,
      );

  int? get levelLearnedAt => _levelLearnedAt;

  MoveLearnMethod? get moveLearnMethod => _moveLearnMethod;

  VersionGroup? get versionGroup => _versionGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['level_learned_at'] = _levelLearnedAt;
    if (_moveLearnMethod != null) {
      map['move_learn_method'] = _moveLearnMethod?.toJson();
    }
    if (_versionGroup != null) {
      map['version_group'] = _versionGroup?.toJson();
    }
    return map;
  }
}

class VersionGroup {
  VersionGroup({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  VersionGroup.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  VersionGroup copyWith({
    String? name,
    String? url,
  }) =>
      VersionGroup(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class MoveLearnMethod {
  MoveLearnMethod({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  MoveLearnMethod.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  MoveLearnMethod copyWith({
    String? name,
    String? url,
  }) =>
      MoveLearnMethod(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class Move {
  Move({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Move.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Move copyWith({
    String? name,
    String? url,
  }) =>
      Move(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class HeldItems {
  HeldItems({
    Item? item,
    List<VersionDetails>? versionDetails,
  }) {
    _item = item;
    _versionDetails = versionDetails;
  }

  HeldItems.fromJson(dynamic json) {
    _item = json['item'] != null ? Item.fromJson(json['item']) : null;
    if (json['version_details'] != null) {
      _versionDetails = [];
      json['version_details'].forEach((v) {
        _versionDetails?.add(VersionDetails.fromJson(v));
      });
    }
  }

  Item? _item;
  List<VersionDetails>? _versionDetails;

  HeldItems copyWith({
    Item? item,
    List<VersionDetails>? versionDetails,
  }) =>
      HeldItems(
        item: item ?? _item,
        versionDetails: versionDetails ?? _versionDetails,
      );

  Item? get item => _item;

  List<VersionDetails>? get versionDetails => _versionDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_item != null) {
      map['item'] = _item?.toJson();
    }
    if (_versionDetails != null) {
      map['version_details'] = _versionDetails?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class VersionDetails {
  VersionDetails({
    int? rarity,
    Version? version,
  }) {
    _rarity = rarity;
    _version = version;
  }

  VersionDetails.fromJson(dynamic json) {
    _rarity = json['rarity'];
    _version =
        json['version'] != null ? Version.fromJson(json['version']) : null;
  }

  int? _rarity;
  Version? _version;

  VersionDetails copyWith({
    int? rarity,
    Version? version,
  }) =>
      VersionDetails(
        rarity: rarity ?? _rarity,
        version: version ?? _version,
      );

  int? get rarity => _rarity;

  Version? get version => _version;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rarity'] = _rarity;
    if (_version != null) {
      map['version'] = _version?.toJson();
    }
    return map;
  }
}

class Version {
  Version({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Version.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Version copyWith({
    String? name,
    String? url,
  }) =>
      Version(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class Item {
  Item({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Item.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Item copyWith({
    String? name,
    String? url,
  }) =>
      Item(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class GameIndices {
  GameIndices({
    int? gameIndex,
    Version? version,
  }) {
    _gameIndex = gameIndex;
    _version = version;
  }

  GameIndices.fromJson(dynamic json) {
    _gameIndex = json['game_index'];
    _version =
        json['version'] != null ? Version.fromJson(json['version']) : null;
  }

  int? _gameIndex;
  Version? _version;

  GameIndices copyWith({
    int? gameIndex,
    Version? version,
  }) =>
      GameIndices(
        gameIndex: gameIndex ?? _gameIndex,
        version: version ?? _version,
      );

  int? get gameIndex => _gameIndex;

  Version? get version => _version;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['game_index'] = _gameIndex;
    if (_version != null) {
      map['version'] = _version?.toJson();
    }
    return map;
  }
}

class Forms {
  Forms({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Forms.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Forms copyWith({
    String? name,
    String? url,
  }) =>
      Forms(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}

class Abilities {
  Abilities({
    Ability? ability,
    bool? isHidden,
    int? slot,
  }) {
    _ability = ability;
    _isHidden = isHidden;
    _slot = slot;
  }

  Abilities.fromJson(dynamic json) {
    _ability =
        json['ability'] != null ? Ability.fromJson(json['ability']) : null;
    _isHidden = json['is_hidden'];
    _slot = json['slot'];
  }

  Ability? _ability;
  bool? _isHidden;
  int? _slot;

  Abilities copyWith({
    Ability? ability,
    bool? isHidden,
    int? slot,
  }) =>
      Abilities(
        ability: ability ?? _ability,
        isHidden: isHidden ?? _isHidden,
        slot: slot ?? _slot,
      );

  Ability? get ability => _ability;

  bool? get isHidden => _isHidden;

  int? get slot => _slot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ability != null) {
      map['ability'] = _ability?.toJson();
    }
    map['is_hidden'] = _isHidden;
    map['slot'] = _slot;
    return map;
  }
}

class Ability {
  Ability({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  Ability.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  Ability copyWith({
    String? name,
    String? url,
  }) =>
      Ability(
        name: name ?? _name,
        url: url ?? _url,
      );

  String? get name => _name;

  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }
}
