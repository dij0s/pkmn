from .Request import Request

class Pokemon:
    def __init__(self, id: int, name: str, height: int, weight: int,
                 baseHealth: int, baseAttack: int, baseDefense: int, baseSpecialAttack,
                 baseSpecialDefense: int, baseSpeed: int, generationId: int):
        self.id = id
        self.name = name
        self.height = height
        self.weight = weight
        self.baseHealth = baseHealth
        self.baseAttack = baseAttack
        self.baseDefense = baseDefense
        self.baseSpecialAttack = baseSpecialAttack
        self.baseSpecialDefense = baseSpecialDefense
        self.baseSpeed = baseSpeed
        self.generationId = generationId

    def __printStats(self) -> str:
        return f"height {self.height}, weight {self.weight}, baseHealth {self.baseHealth},\
                baseAttack {self.baseAttack}, baseDefense {self.baseDefense}, baseSpecialAttack {self.baseSpecialAttack},\
                 baseSpecialDefense {self.baseSpecialDefense}, baseSpeed {self.baseSpeed}, generationId {self.generationId}"
    
    def printData(self, showStats: bool) -> None:
        print(f"Pokedex -> #{self.id} is {self.name} : {self.__printStats() if showStats else ''}")
        

    def getAll(databaseCursor):
        request: Request = Request(databaseCursor, "SELECT * FROM pokemons")
        for pokemonData in request.fetchAll():
            yield Pokemon(*pokemonData)