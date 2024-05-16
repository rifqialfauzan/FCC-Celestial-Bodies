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
-- Name: astrounot; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astrounot (
    astrounot_id integer NOT NULL,
    name character varying(25) NOT NULL,
    age integer,
    country text
);


ALTER TABLE public.astrounot OWNER TO freecodecamp;

--
-- Name: astrounot_astrounot_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astrounot_astrounot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astrounot_astrounot_id_seq OWNER TO freecodecamp;

--
-- Name: astrounot_astrounot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astrounot_astrounot_id_seq OWNED BY public.astrounot.astrounot_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    number_of_stars integer,
    galaxy_size numeric,
    galaxy_type text NOT NULL
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
    distance_from_earth integer,
    moon_size numeric,
    is_spherical boolean NOT NULL,
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
    has_life boolean,
    planet_types text NOT NULL,
    distance_from_earth numeric,
    star_id integer
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
    name character varying(25) NOT NULL,
    star_size numeric,
    stellar_classification text,
    is_spherical boolean NOT NULL,
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
-- Name: astrounot astrounot_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrounot ALTER COLUMN astrounot_id SET DEFAULT nextval('public.astrounot_astrounot_id_seq'::regclass);


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
-- Data for Name: astrounot; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astrounot VALUES (1, 'Muhammad', 23, 'Indonesia');
INSERT INTO public.astrounot VALUES (2, 'Rifqi', 23, 'Indonesia');
INSERT INTO public.astrounot VALUES (3, 'Al Fauzan', 23, 'Indonesia');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Comet Galaxy', 100, 600, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Circinus Galaxy', 150, 800, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Dwingeloo', 100, 500, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 100, 600, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 100, 800, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 200, 1000, 'spiral');
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 400, 1000, 'Barred spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (61, 'Moon', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (62, 'Io', 421, 1.737, true, 27);
INSERT INTO public.moon VALUES (63, 'Europa', 670, 1.737, true, 27);
INSERT INTO public.moon VALUES (64, 'Ganymede', 1070, 1.737, true, 27);
INSERT INTO public.moon VALUES (65, 'Callisto', 1882, 1.737, true, 27);
INSERT INTO public.moon VALUES (66, 'Mimas', 185, 1.737, true, 27);
INSERT INTO public.moon VALUES (67, 'Enceladus', 237, 1.737, true, 27);
INSERT INTO public.moon VALUES (68, 'Tethys', 294, 1.737, true, 27);
INSERT INTO public.moon VALUES (69, 'Dione', 377, 1.737, true, 27);
INSERT INTO public.moon VALUES (70, 'Rhea', 527, 1.737, true, 27);
INSERT INTO public.moon VALUES (71, 'Titan', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (72, 'Lapetus', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (73, 'Miranda', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (74, 'Ariel', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (75, 'Umbriel', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (76, 'Titania', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (77, 'Oberon', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (78, 'Triton', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (79, 'Charon', 384, 1.737, true, 27);
INSERT INTO public.moon VALUES (80, 'Memek', 384, 1.737, true, 27);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Mercury', false, 'Solar System', 0.38, 7);
INSERT INTO public.planet VALUES (26, 'Venus', false, 'Solar System', 0.72, 7);
INSERT INTO public.planet VALUES (27, 'Earth', true, 'Solar System', 1, 7);
INSERT INTO public.planet VALUES (28, 'Mars', false, 'Solar System', 1.5, 7);
INSERT INTO public.planet VALUES (29, 'Jupiter', false, 'Solar System', 5.2, 7);
INSERT INTO public.planet VALUES (30, 'Saturn', false, 'Solar System', 9.5, 7);
INSERT INTO public.planet VALUES (31, 'Uranus', false, 'Solar System', 9.5, 7);
INSERT INTO public.planet VALUES (32, 'Neptune', false, 'Solar System', 9.5, 7);
INSERT INTO public.planet VALUES (33, 'Ceres', false, 'Dwarf Planet', 2.7, 7);
INSERT INTO public.planet VALUES (34, 'Pluto', false, 'Dwarf Planet', 39.4, 7);
INSERT INTO public.planet VALUES (35, 'Haumea', false, 'Dwarf Planet', 43.3, 7);
INSERT INTO public.planet VALUES (36, 'Makemake', false, 'Dwarf Planet', 45.7, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Zeta Ophiuchi', 3.0, 'O', true, 1);
INSERT INTO public.star VALUES (8, 'Rigel', 2.6, 'B', true, 2);
INSERT INTO public.star VALUES (9, 'Altair', 2.5, 'A', true, 3);
INSERT INTO public.star VALUES (10, 'Procyon A', 0.34, 'F', true, 4);
INSERT INTO public.star VALUES (11, 'Sun', 4.6, 'K', true, 7);
INSERT INTO public.star VALUES (12, 'Epsilon Indi', 4.83, 'K', true, 5);


--
-- Name: astrounot_astrounot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astrounot_astrounot_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 80, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: astrounot astrounot_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrounot
    ADD CONSTRAINT astrounot_name_key UNIQUE (name);


--
-- Name: astrounot astrounot_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrounot
    ADD CONSTRAINT astrounot_pkey PRIMARY KEY (astrounot_id);


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

