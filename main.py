from lib import *

dbConnection: DatabaseConnection = DatabaseConnection()
dbCursor = dbConnection.getCursor()

for pokemon in Pokemon.getAll(dbCursor):
    pokemon.printData(False)

dbConnection.close()