from lib import *

dbConnection: DatabaseConnection = DatabaseConnection()
dbCursor = dbConnection.getCursor()

newPokemon: Pokemon = Pokemon(24, "Miaous", 100, 90, 60, 60, 120, 40, 55, 75, 4, dbCursor)
newPokemon.insertInto(dbCursor)

newTrainer: Trainer = Trainer(12, "Ash Ketchum", 1)
# newTrainer.insertInto(dbCursor)

# Team.addPokemonToTeam(dbCursor, newTrainer, newPokemon)

team: Team = Team(newTrainer)

dbConnection.commit()
dbConnection.close()