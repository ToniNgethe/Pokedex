class PokeMonesDto {
  PokeMonesDto({
    int? count,
    String? next,
    String? previous,
    List<PokeMoneData>? results,
  }) {
    _count = count;
    _next = next;
    _previous = previous;
    _results = results;
  }

  PokeMonesDto.fromJson(dynamic json) {
    _count = json['count'];
    _next = json['next'];
    _previous = json['previous'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(PokeMoneData.fromJson(v));
      });
    }
  }

  int? _count;
  String? _next;
  String? _previous;
  List<PokeMoneData>? _results;

  PokeMonesDto copyWith({
    int? count,
    String? next,
    String? previous,
    List<PokeMoneData>? results,
  }) =>
      PokeMonesDto(
        count: count ?? _count,
        next: next ?? _next,
        previous: previous ?? _previous,
        results: results ?? _results,
      );

  int? get count => _count;

  String? get next => _next;

  String? get previous => _previous;

  List<PokeMoneData>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['next'] = _next;
    map['previous'] = _previous;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class PokeMoneData {
  PokeMoneData({
    String? name,
    String? url,
  }) {
    _name = name;
    _url = url;
  }

  PokeMoneData.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  String? _name;
  String? _url;

  PokeMoneData copyWith({
    String? name,
    String? url,
  }) =>
      PokeMoneData(
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
