from .Request import Request

class Trainer:
    def __init__(self, id:int,name:str,jobId:int):
        self.__id:int=id
        self.__name:str=name
        self.__jobId:int=jobId
    
    
    def addPokemon():
        pass
    
    def removePokemon():
        pass
    
    def insertInto(self, databaseCursor) -> None:
        try:
            Request(databaseCursor, "INSERT INTO trainers VALUES (%s, %s, %s)", (self.__id, self.__name,self.__jobId))
            print(f"Inserted {self.__name} into the database.")
        except Exception as e: 
            print(e)
            
    def getId(self) -> int:
        return self.__id
        