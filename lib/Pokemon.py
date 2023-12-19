from .Request import Request

class Pokemon:
    def __init__(self, id: int, name: str, height: int, weight: int,
                 baseHealth: int, baseAttack: int, baseDefense: int, baseSpecialAttack,
                 baseSpecialDefense: int, baseSpeed: int, generationId: int, databaseCursor = None):
        self.__id: int = id
        self.__name: str = name
        self.__height: int = height
        self.__weight: int = weight
        self.__baseHealth: int = baseHealth
        self.__baseAttack: int = baseAttack
        self.__baseDefense: int = baseDefense
        self.__baseSpecialAttack: int = baseSpecialAttack
        self.__baseSpecialDefense: int = baseSpecialDefense
        self.__baseSpeed: int = baseSpeed
        self.__generationId: int = generationId

        self.randomizeTalent(databaseCursor) if databaseCursor != None else None

    def randomizeTalent(self, databaseCursor) -> None:
        try:
            talentFetchRequest: Request = Request(databaseCursor, "SELECT t.\"talentId\" FROM talents AS t ORDER BY random() LIMIT 1")
            talentId: int = list(talentFetchRequest.fetchOne())[0]

            Request(databaseCursor, "INSERT INTO pokemons_talents VALUES (%s, %s)", (self.__id, talentId))
            print(f"{self.__name} has got a random talent.")
        except Exception as e:
            print(e)

    def getId(self) -> int:
        return self.__id
    
    def getName(self) -> str:
        return self.__name

    def __printStats(self) -> str:
        return f"height {self.__height}, weight {self.__weight}, baseHealth {self.__baseHealth}, baseAttack {self.__baseAttack}, baseDefense {self.__baseDefense}, baseSpecialAttack {self.__baseSpecialAttack}, baseSpecialDefense {self.__baseSpecialDefense}, baseSpeed {self.__baseSpeed}, generationId {self.__generationId}"
    
    def printData(self, showStats: bool = False) -> None:
        print(f"Pokedex -> #{self.__id} is {self.__name} {f': {self.____printStats()}' if showStats else ''}")

    def insertInto(self, databaseCursor) -> None:
        try:
            Request(databaseCursor, "INSERT INTO pokemons VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (self.__id, self.__name, self.__height, self.__weight, self.__baseHealth, self.__baseAttack, self.__baseDefense, self.__baseSpecialAttack, self.__baseSpecialDefense, self.__baseSpeed, self.__generationId))
            print(f"Inserted {self.__name} into the database.")
        except Exception as e: 
            print(e)

    def deleteFrom(self, databaseCursor) -> None:
        try:
            Request(databaseCursor, "DELETE FROM pokemons WHERE 'pokemons.pokemonId' = %s", (f"'{self.__id}'", ))
            print(f"Deleted {self.__name} from the database.")
            del(self)
        except Exception as e:
            print(e)

    @staticmethod
    def getAll(databaseCursor):
        request: Request = Request(databaseCursor, "SELECT * FROM pokemons")
        yield from map(lambda pokemonData: Pokemon(*pokemonData), request.fetchAll())