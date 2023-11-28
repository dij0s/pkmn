CREATE TABLE "pokemons" (
  "pokemonId" INTEGER PRIMARY KEY NOT NULL,
  "name" VARCHAR(80) NOT NULL,
  "height" NUMERIC NOT NULL,
  "weight" NUMERIC NOT NULL,
  "baseHealth" INTEGER NOT NULL,
  "baseAttack" INTEGER NOT NULL,
  "baseDefense" INTEGER NOT NULL,
  "baseSpecialAttack" INTEGER NOT NULL,
  "baseSpecialDefense" INTEGER NOT NULL,
  "baseSpeed" INTEGER NOT NULL,
  "generationId" INTEGER NOT NULL
);

CREATE TABLE "species" (
  "specieId" INTEGER PRIMARY KEY NOT NULL,
  "specie" VARCHAR(120)
);

CREATE TABLE "pokemons_species" (
  "pokemonId" INTEGER NOT NULL,
  "specieId" INTEGER NOT NULL,
  PRIMARY KEY ("pokemonId", "specieId")
);

CREATE TABLE "pokemons_evolutions" (
  "evolutionId" INTEGER NOT NULL,
  "basePokemonId" INTEGER NOT NULL,
  "nextPokemonId" INTEGER NOT NULL,
  PRIMARY KEY ("evolutionId", "basePokemonId", "nextPokemonId")
);

CREATE TABLE "evolutions" (
  "evolutionId" INTEGER PRIMARY KEY NOT NULL,
  "isLevel" BOOLEAN NOT NULL,
  "level" INTEGER,
  "item" VARCHAR(120)
);

CREATE TABLE "generations" (
  "generationId" INTEGER PRIMARY KEY NOT NULL,
  "generation" INTEGER NOT NULL
);

CREATE TABLE "types" (
  "typeId" INTEGER PRIMARY KEY NOT NULL,
  "type" VARCHAR(60) NOT NULL
);

CREATE TABLE "types_weaknesses" (
  "subjectTypeId" INTEGER NOT NULL,
  "actorTypeId" INTEGER NOT NULL,
  "factor" NUMERIC NOT NULL,
  PRIMARY KEY ("subjectTypeId", "actorTypeId")
);

CREATE TABLE "pokemons_types" (
  "pokemonId" INTEGER NOT NULL,
  "typeId" INTEGER NOT NULL,
  PRIMARY KEY ("pokemonId", "typeId")
);

CREATE TABLE "talents" (
  "talentId" INTEGER PRIMARY KEY NOT NULL,
  "talent" VARCHAR(80) NOT NULL
);

CREATE TABLE "pokemons_talents" (
  "pokemonId" INTEGER NOT NULL,
  "talentId" INTEGER NOT NULL,
  PRIMARY KEY ("pokemonId", "talentId")
);

CREATE TABLE "trainers" (
  "trainerId" INTEGER PRIMARY KEY NOT NULL,
  "name" VARCHAR(80) NOT NULL,
  "professionId" INTEGER NOT NULL
);

CREATE TABLE "profession" (
  "professionId" INTEGER PRIMARY KEY NOT NULL,
  "name" VARCHAR(120) NOT NULL
);

CREATE TABLE "trainers_pokemons" (
  "trainerId" INTEGER NOT NULL,
  "pokemonId" INTEGER NOT NULL,
  PRIMARY KEY ("trainerId", "pokemonId")
);

CREATE TABLE "capacities" (
  "capacityId" INTEGER PRIMARY KEY NOT NULL,
  "name" VARCHAR(120) NOT NULL,
  "precision" INTEGER NOT NULL,
  "doesDamage" BOOLEAN NOT NULL,
  "damage" INTEGER,
  "heal" INTEGER,
  "typeId" INTEGER NOT NULL
);

CREATE TABLE "pokemons_capacities" (
  "pokemonId" INTEGER NOT NULL,
  "capacityId" INTEGER NOT NULL,
  PRIMARY KEY ("pokemonId", "capacityId")
);

COMMENT ON TABLE "pokemons_evolutions" IS 'Handle EVOLI and such pokemons having multiple possible evoltions';

COMMENT ON TABLE "pokemons_talents" IS 'The same pokemon can have many talents';

ALTER TABLE "pokemons_capacities" ADD FOREIGN KEY ("pokemonId") REFERENCES "pokemons" ("pokemonId");

ALTER TABLE "pokemons_capacities" ADD FOREIGN KEY ("capacityId") REFERENCES "capacities" ("capacityId");

ALTER TABLE "capacities" ADD FOREIGN KEY ("typeId") REFERENCES "types" ("typeId");

ALTER TABLE "trainers_pokemons" ADD FOREIGN KEY ("pokemonId") REFERENCES "pokemons" ("pokemonId");

ALTER TABLE "trainers_pokemons" ADD FOREIGN KEY ("trainerId") REFERENCES "trainers" ("trainerId");

ALTER TABLE "trainers" ADD FOREIGN KEY ("professionId") REFERENCES "profession" ("professionId");

ALTER TABLE "pokemons_evolutions" ADD FOREIGN KEY ("basePokemonId") REFERENCES "pokemons" ("pokemonId");

ALTER TABLE "pokemons_evolutions" ADD FOREIGN KEY ("nextPokemonId") REFERENCES "pokemons" ("pokemonId");

ALTER TABLE "pokemons_evolutions" ADD FOREIGN KEY ("evolutionId") REFERENCES "evolutions" ("evolutionId");

ALTER TABLE "generations" ADD FOREIGN KEY ("generationId") REFERENCES "pokemons" ("generationId");

ALTER TABLE "pokemons_types" ADD FOREIGN KEY ("pokemonId") REFERENCES "pokemons" ("pokemonId");

ALTER TABLE "pokemons_species" ADD FOREIGN KEY ("specieId") REFERENCES "species" ("specieId");

ALTER TABLE "pokemons_species" ADD FOREIGN KEY ("pokemonId") REFERENCES "pokemons" ("pokemonId");

ALTER TABLE "pokemons_talents" ADD FOREIGN KEY ("talentId") REFERENCES "talents" ("talentId");

ALTER TABLE "pokemons_talents" ADD FOREIGN KEY ("pokemonId") REFERENCES "pokemons" ("pokemonId");

ALTER TABLE "pokemons_types" ADD FOREIGN KEY ("typeId") REFERENCES "types" ("typeId");

ALTER TABLE "types_weaknesses" ADD FOREIGN KEY ("subjectTypeId") REFERENCES "types" ("typeId");

ALTER TABLE "types_weaknesses" ADD FOREIGN KEY ("actorTypeId") REFERENCES "types" ("typeId");
