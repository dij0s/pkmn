from .Request import Request

from .Trainer import Trainer
from .Pokemon import Pokemon

class Team:
    def __init__(self, trainer: Trainer):
        self.__trainer: Trainer = trainer

    def getAll(databaseCursor):
        request: Request = Request(databaseCursor, "SELECT * FROM pokemons")
        yield from map(lambda teamData: Team(*teamData), request.fetchAll())

    def addPokemonToTeam(self, databaseCursor, pokemon: Pokemon) -> None:
        try:
            Request(databaseCursor, "INSERT INTO trainers_pokemons VALUES (%s, %s)", (self.__trainer.getId(), pokemon.getId()))
            print(f"Added {pokemon.getName()} to {self.__trainer.getName()}'s team.")
        except Exception as e: 
            print(e)

    def getPokemons(self, databaseCursor):
        request: Request = Request(databaseCursor, "SELECT p.* FROM trainers_pokemons AS tp INNER JOIN pokemons AS p ON tp.\"pokemonId\" = p.\"pokemonId\" WHERE tp.\"trainerId\" = %s", (self.__trainer.getId(), ))
        yield from map(lambda pokemonData: Pokemon(*pokemonData), request.fetchAll())