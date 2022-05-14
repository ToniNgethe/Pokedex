import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/data/bloc/pokemon_state.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/data/repositories/local_repository.dart';
import 'package:pokedex/data/repositories/remote_repository.dart';

@injectable
class PokemonCubit extends Cubit<PokemonState> {
  final RemoteRepository _remoteRepository;
  final LocalRepository _localRepository;

  int currentPage = 0;
  List<Pokemon> allPokemonCurrentList = [];

  PokemonCubit(this._remoteRepository, this._localRepository)
      : super(const PokemonState.init());



  void fetchAllPokemons() async {
    try {
      emit(const PokemonState.loading());
      if (allPokemonCurrentList.isNotEmpty) {
        await Future.delayed(const Duration(milliseconds: 900));
      }
      final response = await _remoteRepository.fetchPokemons(currentPage);
      if (response?.isNotEmpty == true) {
        allPokemonCurrentList.addAll(response!);
        emit(PokemonState.allPokemons(allPokemonCurrentList));
      } else {
        throw 'No pokemon found!';
      }
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }

  void fetchSinglePokemon(String pokemonName) async {
    try {
      emit(const PokemonState.loading());
      final response = await _remoteRepository.fetchSinglePokemon(pokemonName);
      if (response == null) {
        throw 'Pokemon details by that name not found';
      } else {
        emit(PokemonState.singlePokemon(response));
      }
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }

  void fetchFavourites() async {
    try {
      emit(const PokemonState.loading());
      final response = await _localRepository.fetchAllFavourites();
      if (response?.isNotEmpty == true) {
        emit(PokemonState.allFavPokemons(response!));
      } else {
        throw 'No pokemon(s) found!';
      }
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }

  void markPokemonAsFavourite(Pokemon pokemon) async {
    try {
      emit(const PokemonState.loading());
      await _localRepository.markPokemonAsFavourite(pokemon);
      emit(const PokemonState.isFavourite(true));
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }

  void removePokemonAsFavourite(int pokemonId) async {
    try {
      emit(const PokemonState.loading());

      await _localRepository.removePokemonAsFavourite(pokemonId);
      emit(const PokemonState.isFavourite(false));
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }

  void isPokemonMarkedAsFavourite(int? pokemonId) async {
    try {
      emit(const PokemonState.loading());
      final response = await _localRepository.isPokemonMarkedAsFav(pokemonId!);
      emit(PokemonState.isFavourite(response));
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }
}
