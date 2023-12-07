from lib import *

dbConnection: DatabaseConnection = DatabaseConnection()
dbCursor = dbConnection.getCursor()

for pokemon in Pokemon.getAll(dbCursor):
    pokemon.printData(False)

newPokemon: Pokemon = Pokemon(15, "Minidraco", 100, 90, 60, 60, 120, 40, 55, 75, 4)
newPokemon.insertInto(dbCursor)

dbConnection.commit()
dbConnection.close()