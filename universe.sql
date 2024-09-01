--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: empty_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.empty_table (
    empty_table_id integer NOT NULL,
    name character varying(100) NOT NULL,
    reference_id integer,
    some_numeric_value numeric NOT NULL,
    some_integer_value integer NOT NULL,
    has_property boolean NOT NULL
);


ALTER TABLE public.empty_table OWNER TO freecodecamp;

--
-- Name: empty_table_empty_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.empty_table_empty_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empty_table_empty_table_id_seq OWNER TO freecodecamp;

--
-- Name: empty_table_empty_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.empty_table_empty_table_id_seq OWNED BY public.empty_table.empty_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth numeric NOT NULL,
    number_of_stars integer NOT NULL,
    has_blackhole boolean NOT NULL
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
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    diameter numeric NOT NULL,
    has_atmosphere boolean NOT NULL
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
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    has_moons boolean NOT NULL,
    number_of_moons integer NOT NULL,
    type text NOT NULL
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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    age numeric NOT NULL,
    has_planet_system boolean NOT NULL
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
-- Name: empty_table empty_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty_table ALTER COLUMN empty_table_id SET DEFAULT nextval('public.empty_table_empty_table_id_seq'::regclass);


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
-- Data for Name: empty_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.empty_table VALUES (1, 'Item A', 1, 123.45, 100, true);
INSERT INTO public.empty_table VALUES (2, 'Item B', 2, 678.90, 200, false);
INSERT INTO public.empty_table VALUES (3, 'Item C', 3, 111.11, 300, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 100000000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 100000000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2992000, 40000000, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 11700000, 30000000, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 23000000, 100000000, true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 29000000, 80000000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3474, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3121, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5262, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4820, true);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 504, true);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 396, false);
INSERT INTO public.moon VALUES (11, 'Miranda', 7, 471, false);
INSERT INTO public.moon VALUES (12, 'Ariel', 7, 1158, false);
INSERT INTO public.moon VALUES (13, 'Umbriel', 7, 1169, false);
INSERT INTO public.moon VALUES (14, 'Titania', 7, 1577, false);
INSERT INTO public.moon VALUES (15, 'Oberon', 7, 1523, false);
INSERT INTO public.moon VALUES (16, 'Triton', 8, 2706, true);
INSERT INTO public.moon VALUES (17, 'Nereid', 8, 340, false);
INSERT INTO public.moon VALUES (18, 'Charon', 8, 1212, true);
INSERT INTO public.moon VALUES (19, 'Dysnomia', 11, 700, false);
INSERT INTO public.moon VALUES (20, 'Kepler-22b Moon', 12, 500, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 0, 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 0, 'Terrestrial');
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 1, 'Terrestrial');
INSERT INTO public.planet VALUES (4, 'Mars', 1, true, 2, 'Terrestrial');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, true, 79, 'Gas Giant');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, true, 82, 'Gas Giant');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, true, 27, 'Ice Giant');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, true, 14, 'Ice Giant');
INSERT INTO public.planet VALUES (9, 'Proxima b', 2, false, 0, 'Terrestrial');
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 5, false, 0, 'Terrestrial');
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 4, true, 2, 'Super-Earth');
INSERT INTO public.planet VALUES (12, 'Vega b', 6, false, 0, 'Gas Giant');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 4850, true);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 242, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 8000, false);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 2, 5300, true);
INSERT INTO public.star VALUES (6, 'Vega', 1, 455, false);


--
-- Name: empty_table_empty_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.empty_table_empty_table_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: empty_table empty_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty_table
    ADD CONSTRAINT empty_table_name_key UNIQUE (name);


--
-- Name: empty_table empty_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty_table
    ADD CONSTRAINT empty_table_pkey PRIMARY KEY (empty_table_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

