import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/models/pokemon.dart';

part 'pokemon_state.freezed.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.init() = PokemonInitState;

  const factory PokemonState.loading() = PokemonLoadingState;

  const factory PokemonState.error(String message) = PokemonErrorState;

  const factory PokemonState.allPokemons(List<Pokemon> pokemons) =PokemonAllState;
  const factory PokemonState.allFavPokemons(List<Pokemon> pokemons) =PokemonAllFavState;

  const factory PokemonState.singlePokemon(Pokemon pokemon) =
      PokemonSingleState;

  const factory PokemonState.isFavourite(bool fav) = PokemonIsFavState;

  const factory PokemonState.markedAsFav(int pokemonId) =
      PokemonMarkedAsFavState;

  const factory PokemonState.success(String message) = PokemonSuccessState;
}
