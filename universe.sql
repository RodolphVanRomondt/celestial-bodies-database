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
-- Name: discover; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discover (
    discover_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year integer,
    country character varying(5),
    moon_id integer
);


ALTER TABLE public.discover OWNER TO freecodecamp;

--
-- Name: discover_discover_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discover_discover_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discover_discover_id_seq OWNER TO freecodecamp;

--
-- Name: discover_discover_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discover_discover_id_seq OWNED BY public.discover.discover_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation text NOT NULL,
    diameter integer,
    distance_from_earth integer
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
    name character varying(30) NOT NULL,
    discovery_year text,
    rotation numeric,
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
    name character varying(30) NOT NULL,
    discovery_year text,
    ring boolean,
    co2_ar_n2 boolean,
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    distance_from_earth integer,
    size_times_sun integer
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
-- Name: discover discover_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discover ALTER COLUMN discover_id SET DEFAULT nextval('public.discover_discover_id_seq'::regclass);


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
-- Data for Name: discover; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discover VALUES (1, 'Galileo', 1610, 'Italy', 3);
INSERT INTO public.discover VALUES (3, 'Galileo', 1610, 'Italy', 4);
INSERT INTO public.discover VALUES (4, 'Galileo', 1610, 'Italy', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarus', 100000, 0);
INSERT INTO public.galaxy VALUES (2, 'LMC', 'Dorado/Mensa', 14000, 158000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Andromeda', 220000, 2500000);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'Ursa Major', 37000, 11500000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Ursa Major', 170000, 20870000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Virgo', 50000, 29350000);
INSERT INTO public.galaxy VALUES (7, 'Whirpool', 'Canes Venatici', 60000, 30000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Prehistoric', 27.321582, 3);
INSERT INTO public.moon VALUES (3, 'Jupiter I', '1610', 1.7691378, 5);
INSERT INTO public.moon VALUES (4, 'Jupiter II', '1610', 3.551181, 5);
INSERT INTO public.moon VALUES (5, 'Jupiter III', '1610', 7.545553, 5);
INSERT INTO public.moon VALUES (6, 'Jupiter IV', '1610', 16.68902, 5);
INSERT INTO public.moon VALUES (7, 'Saturn I', '1789', 0.942422, 6);
INSERT INTO public.moon VALUES (8, 'Saturn II', '1789', 1.370218, 6);
INSERT INTO public.moon VALUES (9, 'Saturn III', '1684', 1.887802, 6);
INSERT INTO public.moon VALUES (10, 'Saturn IV', '1684', 2.736915, 6);
INSERT INTO public.moon VALUES (11, 'Saturn V', '1672', 4.518212, 6);
INSERT INTO public.moon VALUES (12, 'Saturn VI', '1655', 15.945, 6);
INSERT INTO public.moon VALUES (13, 'Saturn VIII', '1671', 79.322, 6);
INSERT INTO public.moon VALUES (14, 'Uranus I', '1851', 2.52, 7);
INSERT INTO public.moon VALUES (15, 'Uranus II', '1851', 4.144, 7);
INSERT INTO public.moon VALUES (16, 'Uranus III', '1787', 8.706, 7);
INSERT INTO public.moon VALUES (17, 'Uranus IV', '1787', 13.46, 7);
INSERT INTO public.moon VALUES (18, 'Uranus V', '1948', 1.414, 7);
INSERT INTO public.moon VALUES (19, 'Neptune I', '1846', 5.877, 8);
INSERT INTO public.moon VALUES (20, 'Pluto I', '1978', 6.387, 10);
INSERT INTO public.moon VALUES (21, 'Pluto II', '2005', 24.85463, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Prehistoric', false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Prehistoric', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Prehistoric', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Prehistoric', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Prehistoric', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Prehistoric', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', '1781', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', '1846', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', '1801', false, false, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', '1930', false, false, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', '2004', true, false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', '2005', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UY Scuti', 1, 5219, 1700);
INSERT INTO public.star VALUES (2, 'VY Canis Majoris', 1, 3900, 1420);
INSERT INTO public.star VALUES (3, 'RW Cephei', 1, 3500, 1535);
INSERT INTO public.star VALUES (4, 'V354 Cephei', 1, 9000, 1520);
INSERT INTO public.star VALUES (5, 'KY Cygni', 1, 5000, 1420);
INSERT INTO public.star VALUES (6, 'Mu Cephei', 1, 6000, 1260);
INSERT INTO public.star VALUES (7, 'Sun', 1, 4900, 1050);


--
-- Name: discover_discover_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discover_discover_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: discover discover_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_moon_id_key UNIQUE (moon_id);


--
-- Name: discover discover_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_pkey PRIMARY KEY (discover_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: discover discover_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

