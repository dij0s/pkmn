--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Ubuntu 15.4-2.pgdg22.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-2.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: capacities; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.capacities (
    "capacityId" integer NOT NULL,
    name character varying(120) NOT NULL,
    "precision" integer NOT NULL,
    "doesDamage" boolean NOT NULL,
    damage integer,
    heal integer,
    "typeId" integer NOT NULL
);


ALTER TABLE public.capacities OWNER TO zasuetoj;

--
-- Name: evolutions; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.evolutions (
    "evolutionId" integer NOT NULL,
    "isLevel" boolean NOT NULL,
    level integer,
    item character varying(120),
    CONSTRAINT evolution_valid CHECK (((level IS NOT NULL) OR (item IS NOT NULL)))
);


ALTER TABLE public.evolutions OWNER TO zasuetoj;

--
-- Name: generations; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.generations (
    "generationId" integer NOT NULL,
    generation integer NOT NULL
);


ALTER TABLE public.generations OWNER TO zasuetoj;

--
-- Name: pokemons; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.pokemons (
    "pokemonId" integer NOT NULL,
    name character varying(80) NOT NULL,
    height numeric NOT NULL,
    weight numeric NOT NULL,
    "baseHealth" integer NOT NULL,
    "baseAttack" integer NOT NULL,
    "baseDefense" integer NOT NULL,
    "baseSpecialAttack" integer NOT NULL,
    "baseSpecialDefense" integer NOT NULL,
    "baseSpeed" integer NOT NULL,
    "generationId" integer NOT NULL
);


ALTER TABLE public.pokemons OWNER TO zasuetoj;

--
-- Name: pokemons_capacities; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.pokemons_capacities (
    "pokemonId" integer NOT NULL,
    "capacityId" integer NOT NULL
);


ALTER TABLE public.pokemons_capacities OWNER TO zasuetoj;

--
-- Name: pokemons_evolutions; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.pokemons_evolutions (
    "evolutionId" integer NOT NULL,
    "basePokemonId" integer NOT NULL,
    "nextPokemonId" integer NOT NULL
);


ALTER TABLE public.pokemons_evolutions OWNER TO zasuetoj;

--
-- Name: TABLE pokemons_evolutions; Type: COMMENT; Schema: public; Owner: zasuetoj
--

COMMENT ON TABLE public.pokemons_evolutions IS 'Handle EVOLI and such pokemons having multiple possible evoltions';


--
-- Name: pokemons_species; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.pokemons_species (
    "pokemonId" integer NOT NULL,
    "specieId" integer NOT NULL
);


ALTER TABLE public.pokemons_species OWNER TO zasuetoj;

--
-- Name: pokemons_talents; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.pokemons_talents (
    "pokemonId" integer NOT NULL,
    "talentId" integer NOT NULL
);


ALTER TABLE public.pokemons_talents OWNER TO zasuetoj;

--
-- Name: TABLE pokemons_talents; Type: COMMENT; Schema: public; Owner: zasuetoj
--

COMMENT ON TABLE public.pokemons_talents IS 'The same pokemon can have many talents';


--
-- Name: pokemons_types; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.pokemons_types (
    "pokemonId" integer NOT NULL,
    "typeId" integer NOT NULL
);


ALTER TABLE public.pokemons_types OWNER TO zasuetoj;

--
-- Name: profession; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.profession (
    "professionId" integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.profession OWNER TO zasuetoj;

--
-- Name: species; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.species (
    "specieId" integer NOT NULL,
    specie character varying(120)
);


ALTER TABLE public.species OWNER TO zasuetoj;

--
-- Name: talents; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.talents (
    "talentId" integer NOT NULL,
    talent character varying(80) NOT NULL
);


ALTER TABLE public.talents OWNER TO zasuetoj;

--
-- Name: trainers; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.trainers (
    "trainerId" integer NOT NULL,
    name character varying(80) NOT NULL,
    "professionId" integer NOT NULL
);


ALTER TABLE public.trainers OWNER TO zasuetoj;

--
-- Name: trainers_pokemons; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.trainers_pokemons (
    "trainerId" integer NOT NULL,
    "pokemonId" integer NOT NULL
);


ALTER TABLE public.trainers_pokemons OWNER TO zasuetoj;

--
-- Name: types; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.types (
    "typeId" integer NOT NULL,
    type character varying(60) NOT NULL
);


ALTER TABLE public.types OWNER TO zasuetoj;

--
-- Name: types_weaknesses; Type: TABLE; Schema: public; Owner: zasuetoj
--

CREATE TABLE public.types_weaknesses (
    "subjectTypeId" integer NOT NULL,
    "actorTypeId" integer NOT NULL,
    factor numeric NOT NULL
);


ALTER TABLE public.types_weaknesses OWNER TO zasuetoj;

--
-- Data for Name: capacities; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.capacities ("capacityId", name, "precision", "doesDamage", damage, heal, "typeId") FROM stdin;
1	Thunder	100	t	90	0	4
2	Flamethrower	100	t	95	0	1
3	Hydropump	70	t	120	0	2
4	Power Gem	100	t	50	0	5
5	Vine Whip	90	t	60	0	3
6	Protect	100	f	0	0	10
7	Recover	100	f	0	25	10
8	Fury Swipe	80	t	40	0	10
9	Dragon Rage	100	t	20	0	9
\.


--
-- Data for Name: evolutions; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.evolutions ("evolutionId", "isLevel", level, item) FROM stdin;
1	t	25	\N
3	t	20	\N
6	t	30	\N
8	t	65	\N
2	f	\N	moonstone
4	f	\N	megastone
5	f	\N	firestone
7	t	60	\N
9	f	\N	lightingstone
100	f	\N	megastone
\.


--
-- Data for Name: generations; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.generations ("generationId", generation) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
\.


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.pokemons ("pokemonId", name, height, weight, "baseHealth", "baseAttack", "baseDefense", "baseSpecialAttack", "baseSpecialDefense", "baseSpeed", "generationId") FROM stdin;
1	Pikachu	80	24	35	55	40	50	50	90	1
2	Charmindard	90	30	39	52	43	60	50	65	2
10	Squirtle	50	9	50	45	45	40	55	80	1
3	Bulbusaur	65	36	45	49	49	65	65	45	6
9	Diglett	20	80	10	55	25	35	45	95	1
4	Lanturn	48	36	125	58	58	76	76	67	4
8	Poliwag	60	124	40	50	40	40	40	90	1
5	Amonita	40	40	35	40	100	90	55	35	7
7	Ponyta	100	300	50	85	55	65	65	90	1
6	Sudowoodo	120	80	70	100	115	30	65	30	3
11	Dratini	50	20	50	30	20	40	20	30	1
15	Minidraco	100	90	60	60	120	40	55	75	4
17	Giratina	100	90	60	60	120	40	55	75	4
18	Dialga	100	90	60	60	120	40	55	75	4
19	Leviator	100	90	60	60	120	40	55	75	4
20	Raichu	100	90	60	60	120	40	55	75	4
\.


--
-- Data for Name: pokemons_capacities; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.pokemons_capacities ("pokemonId", "capacityId") FROM stdin;
1	1
1	8
2	8
2	2
3	4
3	7
3	8
4	1
4	3
5	3
5	4
6	4
\.


--
-- Data for Name: pokemons_evolutions; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.pokemons_evolutions ("evolutionId", "basePokemonId", "nextPokemonId") FROM stdin;
1	2	3
2	1	5
3	6	7
\.


--
-- Data for Name: pokemons_species; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.pokemons_species ("pokemonId", "specieId") FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	2
10	3
\.


--
-- Data for Name: pokemons_talents; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.pokemons_talents ("pokemonId", "talentId") FROM stdin;
1	7
2	5
10	4
3	8
9	4
4	7
8	3
5	1
7	7
6	8
11	4
15	9
17	4
18	3
19	1
20	9
\.


--
-- Data for Name: pokemons_types; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.pokemons_types ("pokemonId", "typeId") FROM stdin;
1	4
2	1
3	3
4	2
4	4
10	2
9	7
8	2
5	2
5	5
6	5
7	1
11	9
\.


--
-- Data for Name: profession; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.profession ("professionId", name) FROM stdin;
1	Swimmer
2	Scout
3	Runner
4	Biker
5	Scientist
8	Oldman
7	Gangster
6	Clown
\.


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.species ("specieId", specie) FROM stdin;
1	Reptile
2	Bird
3	Fish
4	Human-Like
5	Dragon
6	Grass
7	Amorphous
8	Mineral
\.


--
-- Data for Name: talents; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.talents ("talentId", talent) FROM stdin;
1	Overgrow
2	Thick Fat
3	Blaze
4	Tough Claws
5	Drought
6	Torrent
7	Mega Launcher
8	Shield Dust
9	Shed Skin
10	Compound Eyes
\.


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.trainers ("trainerId", name, "professionId") FROM stdin;
1	Marc	5
2	José	2
3	Micheline	4
4	Marie	8
5	Murielle	3
6	Marcel	7
7	Rafael	5
8	Jean	1
9	Paul	6
10	Pierce	4
11	Jean-Eude	2
12	Ash Ketchum	1
\.


--
-- Data for Name: trainers_pokemons; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.trainers_pokemons ("trainerId", "pokemonId") FROM stdin;
12	17
12	18
12	19
12	20
\.


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.types ("typeId", type) FROM stdin;
1	Fire
2	Water
3	Grass
4	Electric
5	Rock
6	Fighting
7	Ground
8	Ice
9	Dragon
10	Normal
\.


--
-- Data for Name: types_weaknesses; Type: TABLE DATA; Schema: public; Owner: zasuetoj
--

COPY public.types_weaknesses ("subjectTypeId", "actorTypeId", factor) FROM stdin;
1	1	0.5
1	2	0.5
1	3	2.0
1	4	0.5
1	5	0.5
2	1	2.0
2	2	0.5
2	3	0.5
2	4	1.0
2	5	2.0
3	1	0.5
3	2	2.0
3	3	0.5
3	4	1.0
3	5	2.0
4	1	1.0
4	2	2.0
4	3	0.5
4	4	0.5
4	5	1.0
5	1	2.0
5	2	1.0
5	3	1.0
5	4	1.0
5	5	1.0
\.


--
-- Name: capacities capacities_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.capacities
    ADD CONSTRAINT capacities_pkey PRIMARY KEY ("capacityId");


--
-- Name: evolutions evolutions_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.evolutions
    ADD CONSTRAINT evolutions_pkey PRIMARY KEY ("evolutionId");


--
-- Name: generations generations_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.generations
    ADD CONSTRAINT generations_pkey PRIMARY KEY ("generationId");


--
-- Name: pokemons_capacities pokemons_capacities_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_capacities
    ADD CONSTRAINT pokemons_capacities_pkey PRIMARY KEY ("pokemonId", "capacityId");


--
-- Name: pokemons_evolutions pokemons_evolutions_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_evolutions
    ADD CONSTRAINT pokemons_evolutions_pkey PRIMARY KEY ("evolutionId", "basePokemonId", "nextPokemonId");


--
-- Name: pokemons pokemons_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT pokemons_pkey PRIMARY KEY ("pokemonId");


--
-- Name: pokemons_species pokemons_species_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_species
    ADD CONSTRAINT pokemons_species_pkey PRIMARY KEY ("pokemonId", "specieId");


--
-- Name: pokemons_talents pokemons_talents_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_talents
    ADD CONSTRAINT pokemons_talents_pkey PRIMARY KEY ("pokemonId", "talentId");


--
-- Name: pokemons_types pokemons_types_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT pokemons_types_pkey PRIMARY KEY ("pokemonId", "typeId");


--
-- Name: profession profession_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.profession
    ADD CONSTRAINT profession_pkey PRIMARY KEY ("professionId");


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY ("specieId");


--
-- Name: talents talents_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.talents
    ADD CONSTRAINT talents_pkey PRIMARY KEY ("talentId");


--
-- Name: trainers trainers_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.trainers
    ADD CONSTRAINT trainers_pkey PRIMARY KEY ("trainerId");


--
-- Name: trainers_pokemons trainers_pokemons_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.trainers_pokemons
    ADD CONSTRAINT trainers_pokemons_pkey PRIMARY KEY ("trainerId", "pokemonId");


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY ("typeId");


--
-- Name: types_weaknesses types_weaknesses_pkey; Type: CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.types_weaknesses
    ADD CONSTRAINT types_weaknesses_pkey PRIMARY KEY ("subjectTypeId", "actorTypeId");


--
-- Name: capacities capacities_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.capacities
    ADD CONSTRAINT "capacities_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types("typeId");


--
-- Name: pokemons_capacities pokemons_capacities_capacityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_capacities
    ADD CONSTRAINT "pokemons_capacities_capacityId_fkey" FOREIGN KEY ("capacityId") REFERENCES public.capacities("capacityId");


--
-- Name: pokemons_capacities pokemons_capacities_pokemonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_capacities
    ADD CONSTRAINT "pokemons_capacities_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public.pokemons("pokemonId");


--
-- Name: pokemons_evolutions pokemons_evolutions_basePokemonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_evolutions
    ADD CONSTRAINT "pokemons_evolutions_basePokemonId_fkey" FOREIGN KEY ("basePokemonId") REFERENCES public.pokemons("pokemonId");


--
-- Name: pokemons_evolutions pokemons_evolutions_evolutionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_evolutions
    ADD CONSTRAINT "pokemons_evolutions_evolutionId_fkey" FOREIGN KEY ("evolutionId") REFERENCES public.evolutions("evolutionId");


--
-- Name: pokemons_evolutions pokemons_evolutions_nextPokemonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_evolutions
    ADD CONSTRAINT "pokemons_evolutions_nextPokemonId_fkey" FOREIGN KEY ("nextPokemonId") REFERENCES public.pokemons("pokemonId");


--
-- Name: pokemons pokemons_generationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons
    ADD CONSTRAINT "pokemons_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES public.generations("generationId");


--
-- Name: pokemons_species pokemons_species_pokemonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_species
    ADD CONSTRAINT "pokemons_species_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public.pokemons("pokemonId");


--
-- Name: pokemons_species pokemons_species_specieId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_species
    ADD CONSTRAINT "pokemons_species_specieId_fkey" FOREIGN KEY ("specieId") REFERENCES public.species("specieId");


--
-- Name: pokemons_talents pokemons_talents_pokemonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_talents
    ADD CONSTRAINT "pokemons_talents_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public.pokemons("pokemonId");


--
-- Name: pokemons_talents pokemons_talents_talentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_talents
    ADD CONSTRAINT "pokemons_talents_talentId_fkey" FOREIGN KEY ("talentId") REFERENCES public.talents("talentId");


--
-- Name: pokemons_types pokemons_types_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.pokemons_types
    ADD CONSTRAINT "pokemons_types_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types("typeId");


--
-- Name: trainers_pokemons trainers_pokemons_pokemonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.trainers_pokemons
    ADD CONSTRAINT "trainers_pokemons_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public.pokemons("pokemonId");


--
-- Name: trainers_pokemons trainers_pokemons_trainerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.trainers_pokemons
    ADD CONSTRAINT "trainers_pokemons_trainerId_fkey" FOREIGN KEY ("trainerId") REFERENCES public.trainers("trainerId");


--
-- Name: trainers trainers_professionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.trainers
    ADD CONSTRAINT "trainers_professionId_fkey" FOREIGN KEY ("professionId") REFERENCES public.profession("professionId");


--
-- Name: types_weaknesses types_weaknesses_actorTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.types_weaknesses
    ADD CONSTRAINT "types_weaknesses_actorTypeId_fkey" FOREIGN KEY ("actorTypeId") REFERENCES public.types("typeId");


--
-- Name: types_weaknesses types_weaknesses_subjectTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zasuetoj
--

ALTER TABLE ONLY public.types_weaknesses
    ADD CONSTRAINT "types_weaknesses_subjectTypeId_fkey" FOREIGN KEY ("subjectTypeId") REFERENCES public.types("typeId");


--
-- PostgreSQL database dump complete
--

