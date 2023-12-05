from psycopg2 import connect

class DatabaseConnection():
    __DB_NAME: str = "zasuetoj"
    __DB_HOST: str = "flora.db.elephantsql.com"
    __DB_USER: str = "zasuetoj"
    __DB_PASSWORD: str = "61nIycMhEtqJXWChLesoZLiUj5qWz8tq"
    __DB_PORT: int = 5432

    def __init__(self):
        self._instance = connect(database=self.__DB_NAME,
                                host=self.__DB_HOST,
                                user=self.__DB_USER,
                                password=self.__DB_PASSWORD,
                                port=self.__DB_PORT)
        
    def getCursor(self):
        return self._instance.cursor()