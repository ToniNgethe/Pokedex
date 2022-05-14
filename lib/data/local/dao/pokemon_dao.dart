import 'package:floor/floor.dart';
import 'package:pokedex/data/models/pokemon.dart';

@dao
abstract class PokemonDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertPokemon(Pokemon pokemon);

  @Query("SELECT * FROM Pokemon")
  Future<List<Pokemon>?> fetchAll();

  @Query("DELETE FROM Pokemon WHERE id = :pokemonId")
  Future<void> deletePokemon(int pokemonId);

  @Query("SELECT * from Pokemon WHERE id = :pokemonId")
  Future<Pokemon?> getPokemonById(int pokemonId);
}
