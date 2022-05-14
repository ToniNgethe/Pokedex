// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonStateTearOff {
  const _$PokemonStateTearOff();

  PokemonInitState init() {
    return const PokemonInitState();
  }

  PokemonLoadingState loading() {
    return const PokemonLoadingState();
  }

  PokemonErrorState error(String message) {
    return PokemonErrorState(
      message,
    );
  }

  PokemonAllState allPokemons(List<Pokemon> pokemons) {
    return PokemonAllState(
      pokemons,
    );
  }

  PokemonAllFavState allFavPokemons(List<Pokemon> pokemons) {
    return PokemonAllFavState(
      pokemons,
    );
  }

  PokemonSingleState singlePokemon(Pokemon pokemon) {
    return PokemonSingleState(
      pokemon,
    );
  }

  PokemonIsFavState isFavourite(bool fav) {
    return PokemonIsFavState(
      fav,
    );
  }

  PokemonMarkedAsFavState markedAsFav(int pokemonId) {
    return PokemonMarkedAsFavState(
      pokemonId,
    );
  }

  PokemonSuccessState success(String message) {
    return PokemonSuccessState(
      message,
    );
  }
}

/// @nodoc
const $PokemonState = _$PokemonStateTearOff();

/// @nodoc
mixin _$PokemonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res> implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  final PokemonState _value;
  // ignore: unused_field
  final $Res Function(PokemonState) _then;
}

/// @nodoc
abstract class $PokemonInitStateCopyWith<$Res> {
  factory $PokemonInitStateCopyWith(
          PokemonInitState value, $Res Function(PokemonInitState) then) =
      _$PokemonInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonInitStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonInitStateCopyWith<$Res> {
  _$PokemonInitStateCopyWithImpl(
      PokemonInitState _value, $Res Function(PokemonInitState) _then)
      : super(_value, (v) => _then(v as PokemonInitState));

  @override
  PokemonInitState get _value => super._value as PokemonInitState;
}

/// @nodoc

class _$PokemonInitState implements PokemonInitState {
  const _$PokemonInitState();

  @override
  String toString() {
    return 'PokemonState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PokemonInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PokemonInitState implements PokemonState {
  const factory PokemonInitState() = _$PokemonInitState;
}

/// @nodoc
abstract class $PokemonLoadingStateCopyWith<$Res> {
  factory $PokemonLoadingStateCopyWith(
          PokemonLoadingState value, $Res Function(PokemonLoadingState) then) =
      _$PokemonLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonLoadingStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonLoadingStateCopyWith<$Res> {
  _$PokemonLoadingStateCopyWithImpl(
      PokemonLoadingState _value, $Res Function(PokemonLoadingState) _then)
      : super(_value, (v) => _then(v as PokemonLoadingState));

  @override
  PokemonLoadingState get _value => super._value as PokemonLoadingState;
}

/// @nodoc

class _$PokemonLoadingState implements PokemonLoadingState {
  const _$PokemonLoadingState();

  @override
  String toString() {
    return 'PokemonState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PokemonLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PokemonLoadingState implements PokemonState {
  const factory PokemonLoadingState() = _$PokemonLoadingState;
}

/// @nodoc
abstract class $PokemonErrorStateCopyWith<$Res> {
  factory $PokemonErrorStateCopyWith(
          PokemonErrorState value, $Res Function(PokemonErrorState) then) =
      _$PokemonErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PokemonErrorStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonErrorStateCopyWith<$Res> {
  _$PokemonErrorStateCopyWithImpl(
      PokemonErrorState _value, $Res Function(PokemonErrorState) _then)
      : super(_value, (v) => _then(v as PokemonErrorState));

  @override
  PokemonErrorState get _value => super._value as PokemonErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PokemonErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonErrorState implements PokemonErrorState {
  const _$PokemonErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PokemonState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PokemonErrorStateCopyWith<PokemonErrorState> get copyWith =>
      _$PokemonErrorStateCopyWithImpl<PokemonErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PokemonErrorState implements PokemonState {
  const factory PokemonErrorState(String message) = _$PokemonErrorState;

  String get message;
  @JsonKey(ignore: true)
  $PokemonErrorStateCopyWith<PokemonErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAllStateCopyWith<$Res> {
  factory $PokemonAllStateCopyWith(
          PokemonAllState value, $Res Function(PokemonAllState) then) =
      _$PokemonAllStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemons});
}

/// @nodoc
class _$PokemonAllStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonAllStateCopyWith<$Res> {
  _$PokemonAllStateCopyWithImpl(
      PokemonAllState _value, $Res Function(PokemonAllState) _then)
      : super(_value, (v) => _then(v as PokemonAllState));

  @override
  PokemonAllState get _value => super._value as PokemonAllState;

  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(PokemonAllState(
      pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonAllState implements PokemonAllState {
  const _$PokemonAllState(this.pokemons);

  @override
  final List<Pokemon> pokemons;

  @override
  String toString() {
    return 'PokemonState.allPokemons(pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonAllState &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons));

  @JsonKey(ignore: true)
  @override
  $PokemonAllStateCopyWith<PokemonAllState> get copyWith =>
      _$PokemonAllStateCopyWithImpl<PokemonAllState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return allPokemons(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return allPokemons?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (allPokemons != null) {
      return allPokemons(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return allPokemons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return allPokemons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (allPokemons != null) {
      return allPokemons(this);
    }
    return orElse();
  }
}

abstract class PokemonAllState implements PokemonState {
  const factory PokemonAllState(List<Pokemon> pokemons) = _$PokemonAllState;

  List<Pokemon> get pokemons;
  @JsonKey(ignore: true)
  $PokemonAllStateCopyWith<PokemonAllState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAllFavStateCopyWith<$Res> {
  factory $PokemonAllFavStateCopyWith(
          PokemonAllFavState value, $Res Function(PokemonAllFavState) then) =
      _$PokemonAllFavStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemons});
}

/// @nodoc
class _$PokemonAllFavStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonAllFavStateCopyWith<$Res> {
  _$PokemonAllFavStateCopyWithImpl(
      PokemonAllFavState _value, $Res Function(PokemonAllFavState) _then)
      : super(_value, (v) => _then(v as PokemonAllFavState));

  @override
  PokemonAllFavState get _value => super._value as PokemonAllFavState;

  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(PokemonAllFavState(
      pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonAllFavState implements PokemonAllFavState {
  const _$PokemonAllFavState(this.pokemons);

  @override
  final List<Pokemon> pokemons;

  @override
  String toString() {
    return 'PokemonState.allFavPokemons(pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonAllFavState &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons));

  @JsonKey(ignore: true)
  @override
  $PokemonAllFavStateCopyWith<PokemonAllFavState> get copyWith =>
      _$PokemonAllFavStateCopyWithImpl<PokemonAllFavState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return allFavPokemons(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return allFavPokemons?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (allFavPokemons != null) {
      return allFavPokemons(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return allFavPokemons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return allFavPokemons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (allFavPokemons != null) {
      return allFavPokemons(this);
    }
    return orElse();
  }
}

abstract class PokemonAllFavState implements PokemonState {
  const factory PokemonAllFavState(List<Pokemon> pokemons) =
      _$PokemonAllFavState;

  List<Pokemon> get pokemons;
  @JsonKey(ignore: true)
  $PokemonAllFavStateCopyWith<PokemonAllFavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSingleStateCopyWith<$Res> {
  factory $PokemonSingleStateCopyWith(
          PokemonSingleState value, $Res Function(PokemonSingleState) then) =
      _$PokemonSingleStateCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon});
}

/// @nodoc
class _$PokemonSingleStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonSingleStateCopyWith<$Res> {
  _$PokemonSingleStateCopyWithImpl(
      PokemonSingleState _value, $Res Function(PokemonSingleState) _then)
      : super(_value, (v) => _then(v as PokemonSingleState));

  @override
  PokemonSingleState get _value => super._value as PokemonSingleState;

  @override
  $Res call({
    Object? pokemon = freezed,
  }) {
    return _then(PokemonSingleState(
      pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
    ));
  }
}

/// @nodoc

class _$PokemonSingleState implements PokemonSingleState {
  const _$PokemonSingleState(this.pokemon);

  @override
  final Pokemon pokemon;

  @override
  String toString() {
    return 'PokemonState.singlePokemon(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonSingleState &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemon));

  @JsonKey(ignore: true)
  @override
  $PokemonSingleStateCopyWith<PokemonSingleState> get copyWith =>
      _$PokemonSingleStateCopyWithImpl<PokemonSingleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return singlePokemon(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return singlePokemon?.call(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (singlePokemon != null) {
      return singlePokemon(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return singlePokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return singlePokemon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (singlePokemon != null) {
      return singlePokemon(this);
    }
    return orElse();
  }
}

abstract class PokemonSingleState implements PokemonState {
  const factory PokemonSingleState(Pokemon pokemon) = _$PokemonSingleState;

  Pokemon get pokemon;
  @JsonKey(ignore: true)
  $PokemonSingleStateCopyWith<PokemonSingleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonIsFavStateCopyWith<$Res> {
  factory $PokemonIsFavStateCopyWith(
          PokemonIsFavState value, $Res Function(PokemonIsFavState) then) =
      _$PokemonIsFavStateCopyWithImpl<$Res>;
  $Res call({bool fav});
}

/// @nodoc
class _$PokemonIsFavStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonIsFavStateCopyWith<$Res> {
  _$PokemonIsFavStateCopyWithImpl(
      PokemonIsFavState _value, $Res Function(PokemonIsFavState) _then)
      : super(_value, (v) => _then(v as PokemonIsFavState));

  @override
  PokemonIsFavState get _value => super._value as PokemonIsFavState;

  @override
  $Res call({
    Object? fav = freezed,
  }) {
    return _then(PokemonIsFavState(
      fav == freezed
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PokemonIsFavState implements PokemonIsFavState {
  const _$PokemonIsFavState(this.fav);

  @override
  final bool fav;

  @override
  String toString() {
    return 'PokemonState.isFavourite(fav: $fav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonIsFavState &&
            const DeepCollectionEquality().equals(other.fav, fav));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fav));

  @JsonKey(ignore: true)
  @override
  $PokemonIsFavStateCopyWith<PokemonIsFavState> get copyWith =>
      _$PokemonIsFavStateCopyWithImpl<PokemonIsFavState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return isFavourite(fav);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return isFavourite?.call(fav);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (isFavourite != null) {
      return isFavourite(fav);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return isFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return isFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (isFavourite != null) {
      return isFavourite(this);
    }
    return orElse();
  }
}

abstract class PokemonIsFavState implements PokemonState {
  const factory PokemonIsFavState(bool fav) = _$PokemonIsFavState;

  bool get fav;
  @JsonKey(ignore: true)
  $PokemonIsFavStateCopyWith<PokemonIsFavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMarkedAsFavStateCopyWith<$Res> {
  factory $PokemonMarkedAsFavStateCopyWith(PokemonMarkedAsFavState value,
          $Res Function(PokemonMarkedAsFavState) then) =
      _$PokemonMarkedAsFavStateCopyWithImpl<$Res>;
  $Res call({int pokemonId});
}

/// @nodoc
class _$PokemonMarkedAsFavStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonMarkedAsFavStateCopyWith<$Res> {
  _$PokemonMarkedAsFavStateCopyWithImpl(PokemonMarkedAsFavState _value,
      $Res Function(PokemonMarkedAsFavState) _then)
      : super(_value, (v) => _then(v as PokemonMarkedAsFavState));

  @override
  PokemonMarkedAsFavState get _value => super._value as PokemonMarkedAsFavState;

  @override
  $Res call({
    Object? pokemonId = freezed,
  }) {
    return _then(PokemonMarkedAsFavState(
      pokemonId == freezed
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PokemonMarkedAsFavState implements PokemonMarkedAsFavState {
  const _$PokemonMarkedAsFavState(this.pokemonId);

  @override
  final int pokemonId;

  @override
  String toString() {
    return 'PokemonState.markedAsFav(pokemonId: $pokemonId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonMarkedAsFavState &&
            const DeepCollectionEquality().equals(other.pokemonId, pokemonId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemonId));

  @JsonKey(ignore: true)
  @override
  $PokemonMarkedAsFavStateCopyWith<PokemonMarkedAsFavState> get copyWith =>
      _$PokemonMarkedAsFavStateCopyWithImpl<PokemonMarkedAsFavState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return markedAsFav(pokemonId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return markedAsFav?.call(pokemonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (markedAsFav != null) {
      return markedAsFav(pokemonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return markedAsFav(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return markedAsFav?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (markedAsFav != null) {
      return markedAsFav(this);
    }
    return orElse();
  }
}

abstract class PokemonMarkedAsFavState implements PokemonState {
  const factory PokemonMarkedAsFavState(int pokemonId) =
      _$PokemonMarkedAsFavState;

  int get pokemonId;
  @JsonKey(ignore: true)
  $PokemonMarkedAsFavStateCopyWith<PokemonMarkedAsFavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSuccessStateCopyWith<$Res> {
  factory $PokemonSuccessStateCopyWith(
          PokemonSuccessState value, $Res Function(PokemonSuccessState) then) =
      _$PokemonSuccessStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PokemonSuccessStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements $PokemonSuccessStateCopyWith<$Res> {
  _$PokemonSuccessStateCopyWithImpl(
      PokemonSuccessState _value, $Res Function(PokemonSuccessState) _then)
      : super(_value, (v) => _then(v as PokemonSuccessState));

  @override
  PokemonSuccessState get _value => super._value as PokemonSuccessState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PokemonSuccessState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonSuccessState implements PokemonSuccessState {
  const _$PokemonSuccessState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PokemonState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonSuccessState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PokemonSuccessStateCopyWith<PokemonSuccessState> get copyWith =>
      _$PokemonSuccessStateCopyWithImpl<PokemonSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Pokemon> pokemons) allPokemons,
    required TResult Function(List<Pokemon> pokemons) allFavPokemons,
    required TResult Function(Pokemon pokemon) singlePokemon,
    required TResult Function(bool fav) isFavourite,
    required TResult Function(int pokemonId) markedAsFav,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Pokemon> pokemons)? allPokemons,
    TResult Function(List<Pokemon> pokemons)? allFavPokemons,
    TResult Function(Pokemon pokemon)? singlePokemon,
    TResult Function(bool fav)? isFavourite,
    TResult Function(int pokemonId)? markedAsFav,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonAllState value) allPokemons,
    required TResult Function(PokemonAllFavState value) allFavPokemons,
    required TResult Function(PokemonSingleState value) singlePokemon,
    required TResult Function(PokemonIsFavState value) isFavourite,
    required TResult Function(PokemonMarkedAsFavState value) markedAsFav,
    required TResult Function(PokemonSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonAllState value)? allPokemons,
    TResult Function(PokemonAllFavState value)? allFavPokemons,
    TResult Function(PokemonSingleState value)? singlePokemon,
    TResult Function(PokemonIsFavState value)? isFavourite,
    TResult Function(PokemonMarkedAsFavState value)? markedAsFav,
    TResult Function(PokemonSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PokemonSuccessState implements PokemonState {
  const factory PokemonSuccessState(String message) = _$PokemonSuccessState;

  String get message;
  @JsonKey(ignore: true)
  $PokemonSuccessStateCopyWith<PokemonSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
