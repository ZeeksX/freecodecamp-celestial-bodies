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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    year integer,
    distance numeric,
    description text,
    is_travellable boolean,
    is_spherical boolean
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
    name character varying(25) NOT NULL,
    age integer,
    year integer,
    distance numeric,
    description text,
    is_travellable boolean,
    is_spherical boolean,
    planet_id integer
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
    name character varying(25) NOT NULL,
    age integer,
    year integer,
    distance numeric,
    description text,
    is_travellable boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

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
    name character varying(25) NOT NULL,
    age integer,
    year integer,
    distance numeric,
    description text,
    is_travellable boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: world; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.world (
    world_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    year integer,
    distance numeric,
    description text,
    is_travellable boolean,
    is_spherical boolean
);


ALTER TABLE public.world OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.world_world_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_world_id_seq OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.world_world_id_seq OWNED BY public.world.world_id;


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
-- Name: world world_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world ALTER COLUMN world_id SET DEFAULT nextval('public.world_world_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 20, 40, 30.5, 'galaxy1 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 21, 41, 31.5, 'galaxy2 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 22, 42, 32.5, 'galaxy3 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 23, 43, 33.5, 'galaxy4 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 24, 44, 34.5, 'galaxy5 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 25, 45, 35.5, 'galaxy6 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', 26, 46, 36.5, 'galaxy7 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (8, 'galaxy8', 27, 47, 37.5, 'galaxy8 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (9, 'galaxy9', 28, 48, 38.5, 'galaxy9 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (10, 'galaxy10', 29, 49, 39.5, 'galaxy10 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (11, 'galaxy11', 30, 50, 40.5, 'galaxy11 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (12, 'galaxy12', 31, 51, 41.5, 'galaxy12 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (13, 'galaxy13', 32, 52, 42.5, 'galaxy13 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (14, 'galaxy14', 33, 53, 43.5, 'galaxy14 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (15, 'galaxy15', 34, 54, 44.5, 'galaxy15 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (16, 'galaxy16', 35, 55, 45.5, 'galaxy16 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (17, 'galaxy17', 36, 56, 46.5, 'galaxy17 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (18, 'galaxy18', 37, 57, 47.5, 'galaxy18 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (19, 'galaxy19', 38, 58, 48.5, 'galaxy19 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (20, 'galaxy20', 39, 59, 49.5, 'galaxy20 is a galaxy', true, false);
INSERT INTO public.galaxy VALUES (21, 'galaxy21', 40, 60, 50.5, 'galaxy21 is a galaxy', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 20, 40, 30.5, 'moon1 is a moon', true, true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 21, 41, 31.5, 'moon2 is a moon', true, true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 22, 42, 32.5, 'moon3 is a moon', true, true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 23, 43, 33.5, 'moon4 is a moon', true, true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 24, 44, 34.5, 'moon5 is a moon', true, true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 25, 45, 35.5, 'moon6 is a moon', true, true, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 26, 46, 36.5, 'moon7 is a moon', true, true, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 27, 47, 37.5, 'moon8 is a moon', true, true, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 28, 48, 38.5, 'moon9 is a moon', true, true, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 29, 49, 39.5, 'moon10 is a moon', true, true, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 30, 50, 40.5, 'moon11 is a moon', true, true, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 31, 51, 41.5, 'moon12 is a moon', true, true, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 32, 52, 42.5, 'moon13 is a moon', true, true, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 33, 53, 43.5, 'moon14 is a moon', true, true, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 34, 54, 44.5, 'moon15 is a moon', true, true, 15);
INSERT INTO public.moon VALUES (16, 'moon16', 35, 55, 45.5, 'moon16 is a moon', true, true, 16);
INSERT INTO public.moon VALUES (17, 'moon17', 36, 56, 46.5, 'moon17 is a moon', true, true, 17);
INSERT INTO public.moon VALUES (18, 'moon18', 37, 57, 47.5, 'moon18 is a moon', true, true, 18);
INSERT INTO public.moon VALUES (19, 'moon19', 38, 58, 48.5, 'moon19 is a moon', true, true, 19);
INSERT INTO public.moon VALUES (20, 'moon20', 39, 59, 49.5, 'moon20 is a moon', true, true, 20);
INSERT INTO public.moon VALUES (21, 'moon21', 40, 60, 50.5, 'moon21 is a moon', true, true, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 20, 40, 30.5, 'planet1 is a planet', true, false, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 21, 41, 31.5, 'planet2 is a planet', true, false, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 22, 42, 32.5, 'planet3 is a planet', true, false, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 23, 43, 33.5, 'planet4 is a planet', true, false, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 24, 44, 34.5, 'planet5 is a planet', true, false, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 25, 45, 35.5, 'planet6 is a planet', true, false, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 26, 46, 36.5, 'planet7 is a planet', true, false, 7);
INSERT INTO public.planet VALUES (8, 'planet8', 27, 47, 37.5, 'planet8 is a planet', true, false, 8);
INSERT INTO public.planet VALUES (9, 'planet9', 28, 48, 38.5, 'planet9 is a planet', true, false, 9);
INSERT INTO public.planet VALUES (10, 'planet10', 29, 49, 39.5, 'planet10 is a planet', true, false, 10);
INSERT INTO public.planet VALUES (11, 'planet11', 30, 50, 40.5, 'planet11 is a planet', true, false, 11);
INSERT INTO public.planet VALUES (12, 'planet12', 31, 51, 41.5, 'planet12 is a planet', true, false, 12);
INSERT INTO public.planet VALUES (13, 'planet13', 32, 52, 42.5, 'planet13 is a planet', true, false, 13);
INSERT INTO public.planet VALUES (14, 'planet14', 33, 53, 43.5, 'planet14 is a planet', true, false, 14);
INSERT INTO public.planet VALUES (15, 'planet15', 34, 54, 44.5, 'planet15 is a planet', true, false, 15);
INSERT INTO public.planet VALUES (16, 'planet16', 35, 55, 45.5, 'planet16 is a planet', true, false, 16);
INSERT INTO public.planet VALUES (17, 'planet17', 36, 56, 46.5, 'planet17 is a planet', true, false, 17);
INSERT INTO public.planet VALUES (18, 'planet18', 37, 57, 47.5, 'planet18 is a planet', true, false, 18);
INSERT INTO public.planet VALUES (19, 'planet19', 38, 58, 48.5, 'planet19 is a planet', true, false, 19);
INSERT INTO public.planet VALUES (20, 'planet20', 39, 59, 49.5, 'planet20 is a planet', true, false, 20);
INSERT INTO public.planet VALUES (21, 'planet21', 40, 60, 50.5, 'planet21 is a planet', true, false, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 20, 40, 30.5, 'star1 is a star', true, true, 1);
INSERT INTO public.star VALUES (2, 'star2', 21, 41, 31.5, 'star2 is a star', true, true, 2);
INSERT INTO public.star VALUES (3, 'star3', 22, 42, 32.5, 'star3 is a star', true, true, 3);
INSERT INTO public.star VALUES (4, 'star4', 23, 43, 33.5, 'star4 is a star', true, true, 4);
INSERT INTO public.star VALUES (5, 'star5', 24, 44, 34.5, 'star5 is a star', true, true, 5);
INSERT INTO public.star VALUES (6, 'star6', 25, 45, 35.5, 'star6 is a star', true, true, 6);
INSERT INTO public.star VALUES (7, 'star7', 26, 46, 36.5, 'star7 is a star', true, true, 7);
INSERT INTO public.star VALUES (8, 'star8', 27, 47, 37.5, 'star8 is a star', true, true, 8);
INSERT INTO public.star VALUES (9, 'star9', 28, 48, 38.5, 'star9 is a star', true, false, 9);
INSERT INTO public.star VALUES (10, 'star10', 29, 49, 39.5, 'star10 is a star', true, false, 10);
INSERT INTO public.star VALUES (11, 'star11', 30, 50, 40.5, 'star11 is a star', true, false, 11);
INSERT INTO public.star VALUES (12, 'star12', 31, 51, 41.5, 'star12 is a star', true, false, 12);
INSERT INTO public.star VALUES (13, 'star13', 32, 52, 42.5, 'star13 is a star', true, false, 13);
INSERT INTO public.star VALUES (14, 'star14', 33, 53, 43.5, 'star14 is a star', true, false, 14);
INSERT INTO public.star VALUES (15, 'star15', 34, 54, 44.5, 'star15 is a star', true, false, 15);
INSERT INTO public.star VALUES (16, 'star16', 35, 55, 45.5, 'star16 is a star', true, false, 16);
INSERT INTO public.star VALUES (17, 'star17', 36, 56, 46.5, 'star17 is a star', true, false, 17);
INSERT INTO public.star VALUES (18, 'star18', 37, 57, 47.5, 'star18 is a star', true, false, 18);
INSERT INTO public.star VALUES (19, 'star19', 38, 58, 48.5, 'star19 is a star', true, false, 19);
INSERT INTO public.star VALUES (20, 'star20', 39, 59, 49.5, 'star20 is a star', true, false, 20);
INSERT INTO public.star VALUES (21, 'star21', 40, 60, 50.5, 'star21 is a star', true, false, 21);


--
-- Data for Name: world; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.world VALUES (1, 'planet1', 20, 40, 30.5, 'world1 is a world', false, false);
INSERT INTO public.world VALUES (2, 'world2', 21, 41, 31.5, 'world2 is a world', false, false);
INSERT INTO public.world VALUES (3, 'world3', 22, 42, 32.5, 'world3 is a world', false, false);
INSERT INTO public.world VALUES (4, 'world4', 23, 43, 33.5, 'world4 is a world', false, false);
INSERT INTO public.world VALUES (5, 'world5', 24, 44, 34.5, 'world5 is a world', false, false);
INSERT INTO public.world VALUES (6, 'world6', 25, 45, 35.5, 'world6 is a world', false, false);
INSERT INTO public.world VALUES (7, 'world7', 26, 46, 36.5, 'world7 is a world', false, false);
INSERT INTO public.world VALUES (8, 'world8', 27, 47, 37.5, 'world8 is a world', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: world_world_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.world_world_id_seq', 8, true);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: world world_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_name_key UNIQUE (name);


--
-- Name: world world_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_pkey PRIMARY KEY (world_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

