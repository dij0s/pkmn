from lib.DatabaseConnection import DatabaseConnection

dbConnection: DatabaseConnection = DatabaseConnection()
dbCursor = dbConnection.getCursor()

dbCursor.execute("SELECT * FROM pokemons")
print(dbCursor.fetchall())