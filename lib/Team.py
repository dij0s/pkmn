from .Request import Request

from .Trainer import Trainer
from .Pokemon import Pokemon

class Team:
    def __init__(self, trainerId: int, pokemonId: int):
        self.__trainerId: int = trainerId
        self.__pokemonId: int = pokemonId

    def getAll(databaseCursor):
        request: Request = Request(databaseCursor, "SELECT * FROM pokemons")
        yield from map(lambda teamData: Team(*teamData), request.fetchAll())

    def addPokemonToTeam(databaseCursor, trainer: Trainer, pokemon: Pokemon):
        try:
            Request(databaseCursor, "INSERT INTO trainers_pokemons VALUES (%s, %s)", (trainer.getId(), pokemon.getId()))
        except Exception as e: 
            print(e)