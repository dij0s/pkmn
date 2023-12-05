class Request:
    def __init__(self, databaseCursor, request: str):
        self.__databaseCursor = databaseCursor
        self.__databaseCursor.execute(request)

    def fetchOne(self) -> list:
        return self.__databaseCursor.fetchone()
    
    def fetchAll(self) -> list:
        return self.__databaseCursor.fetchall()