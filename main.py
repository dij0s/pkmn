from lib import *

dbConnection: DatabaseConnection = DatabaseConnection()
dbCursor = dbConnection.getCursor()

for pokemon in Pokemon.getAll(dbCursor):
    pokemon.printData(False)

newPokemon: Pokemon = Pokemon(20, "Raichu", 100, 90, 60, 60, 120, 40, 55, 75, 4)
newPokemon.insertInto(dbCursor)

pokemons: list[Pokemon] = list(Pokemon.getAll(dbCursor))

newTrainer: Trainer = Trainer(12, "Ash Ketchum", 1)
# newTrainer.insertInto(dbCursor)

Team.addPokemonToTeam(dbCursor, newTrainer, newPokemon)

#pokemons[-1].deleteFrom(dbCursor)
dbConnection.commit()
dbConnection.close()