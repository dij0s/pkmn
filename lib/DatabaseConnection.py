from psycopg2 import connect

class DatabaseConnection(object):
    """
    Singleton instance of a database connection.
    """

    __DB_NAME: str = "zasuetoj"
    __DB_HOST: str = "flora.db.elephantsql.com"
    __DB_USER: str = "zasuetoj"
    __DB_PASSWORD: str = "61nIycMhEtqJXWChLesoZLiUj5qWz8tq"
    __DB_PORT: int = 5432

    def __new__(self):
        if not hasattr(self, 'instance'):
            self.instance = super(DatabaseConnection, self).__new__(self)
        return self.instance
    
    def __init__(self) -> None:
        self.__instance = connect(database=self.__DB_NAME,
                                host=self.__DB_HOST,
                                user=self.__DB_USER,
                                password=self.__DB_PASSWORD,
                                port=self.__DB_PORT)
        
    def getCursor(self):
        self.__cursor = self.__instance.cursor()
        return self.__cursor
    
    def commit(self) -> None:
        self.__instance.commit()
    
    def close(self) -> None:
        self.__cursor.close()
        self.__instance.close()