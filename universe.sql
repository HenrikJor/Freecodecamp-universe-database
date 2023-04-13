--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: descriptions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.descriptions (
    descriptions_id integer NOT NULL,
    description text NOT NULL,
    notes text,
    name character varying(200)
);


ALTER TABLE public.descriptions OWNER TO freecodecamp;

--
-- Name: descriptions_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.descriptions_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descriptions_description_id_seq OWNER TO freecodecamp;

--
-- Name: descriptions_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.descriptions_description_id_seq OWNED BY public.descriptions.descriptions_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    mass numeric(20,10),
    age integer,
    name character varying(200) NOT NULL,
    diameter integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(200),
    age integer,
    looks_cool boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(200) NOT NULL,
    mass numeric(20,10),
    age integer,
    has_athmosphere boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(200) NOT NULL,
    mass numeric(20,10),
    age integer,
    is_red_giant boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: descriptions descriptions_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions ALTER COLUMN descriptions_id SET DEFAULT nextval('public.descriptions_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: descriptions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.descriptions VALUES (1, 'mars is a big planet', 'i like mars', 'mars notes');
INSERT INTO public.descriptions VALUES (2, 'Pluto is not a planet', 'I hate pluto', 'pluto notes');
INSERT INTO public.descriptions VALUES (3, 'please free me', 'i am stuck', 'help');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 20.0000000000, 40, 'Milky', 12);
INSERT INTO public.galaxy VALUES (2, 12.0000000000, 31, 'boss_galaxy', 12);
INSERT INTO public.galaxy VALUES (3, 13.0000000000, 42, 'small_galaxy', 5);
INSERT INTO public.galaxy VALUES (4, 100.0000000000, 30, 'big_galaxy', 40);
INSERT INTO public.galaxy VALUES (5, 1.0000000000, 100, 'trash_galaxy', 1);
INSERT INTO public.galaxy VALUES (6, 12.0000000000, 32, 'the_galaxy', 54);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'bigmoon', 4, true, 1);
INSERT INTO public.moon VALUES (2, 'fx1337', 12, true, 3);
INSERT INTO public.moon VALUES (3, '420', 55, false, 6);
INSERT INTO public.moon VALUES (4, 'topidop', 4, false, 9);
INSERT INTO public.moon VALUES (5, 'okidookii', 44, false, 11);
INSERT INTO public.moon VALUES (6, 'punani', 32, true, 12);
INSERT INTO public.moon VALUES (7, 'ggwp', 9, false, 8);
INSERT INTO public.moon VALUES (8, 'mudia', 11, false, 10);
INSERT INTO public.moon VALUES (9, 'trashia', 44, true, 1);
INSERT INTO public.moon VALUES (10, 'lobotomo', 3, true, 6);
INSERT INTO public.moon VALUES (11, 'sepodomi', 2, true, 9);
INSERT INTO public.moon VALUES (12, 'ggBigL', 55, true, 2);
INSERT INTO public.moon VALUES (13, 'kbry', 3, false, 5);
INSERT INTO public.moon VALUES (14, 'ulalal', 5, true, 8);
INSERT INTO public.moon VALUES (15, 'djokogoat', 4, false, 3);
INSERT INTO public.moon VALUES (16, 'musegoat', 3, true, 1);
INSERT INTO public.moon VALUES (17, 'nadalclear', 11, true, 8);
INSERT INTO public.moon VALUES (18, 'lololo', 1, true, 1);
INSERT INTO public.moon VALUES (19, 'djokotrash', 3, true, 1);
INSERT INTO public.moon VALUES (20, 'murrayclear', 5, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'dovin', 44.0000000000, 12, true, 1);
INSERT INTO public.planet VALUES (2, 'trypo', 63.0000000000, 11, false, 2);
INSERT INTO public.planet VALUES (3, 'ggwp', 33.0000000000, 90, false, 2);
INSERT INTO public.planet VALUES (4, 'bomo', 89.0000000000, 34, false, 3);
INSERT INTO public.planet VALUES (5, 'jubbor', 44.0000000000, 23, false, 4);
INSERT INTO public.planet VALUES (6, 'bongo2', 11.0000000000, 43, false, 5);
INSERT INTO public.planet VALUES (7, 'BigL', 77.0000000000, 65, false, 5);
INSERT INTO public.planet VALUES (8, 'hubbabubba', 64.0000000000, 46, true, 3);
INSERT INTO public.planet VALUES (9, 'xcxwe', 55.0000000000, 43, false, 2);
INSERT INTO public.planet VALUES (10, 'gigaman', 44.0000000000, 99, true, 4);
INSERT INTO public.planet VALUES (11, 'onmore', 33.0000000000, 56, true, 1);
INSERT INTO public.planet VALUES (12, 'finnaly', 44.0000000000, 1, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 20.0000000000, 12, true, 1);
INSERT INTO public.star VALUES (2, 'earth', 30.0000000000, 12, false, 1);
INSERT INTO public.star VALUES (3, 'wowo', 12.0000000000, 54, true, 2);
INSERT INTO public.star VALUES (4, 'tipo', 56.0000000000, 23, false, 3);
INSERT INTO public.star VALUES (5, 'hubat', 42.0000000000, 13, true, 4);
INSERT INTO public.star VALUES (6, 'bubba', 44.0000000000, 23, true, 5);
INSERT INTO public.star VALUES (7, 'habbasut', 66.0000000000, 11, true, 6);


--
-- Name: descriptions_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.descriptions_description_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: descriptions descriptions_notes_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions
    ADD CONSTRAINT descriptions_notes_key UNIQUE (notes);


--
-- Name: descriptions descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions
    ADD CONSTRAINT descriptions_pkey PRIMARY KEY (descriptions_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name_constraint UNIQUE (name);


--
-- Name: moon unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_constraint UNIQUE (name);


--
-- Name: moon moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

