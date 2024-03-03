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
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_copy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_copy (
    galaxy_copy_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric(4,1)
);


ALTER TABLE public.galaxy_copy OWNER TO freecodecamp;

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
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric(4,1),
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
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric(4,1),
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
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_types integer,
    galaxy_types integer,
    distance_from_earth numeric(4,1),
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, true, true, 1000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', NULL, true, true, 2000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', NULL, true, false, 1500, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, true, false, 3500, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, false, false, 6500, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, false, true, 5500, NULL, NULL, NULL);


--
-- Data for Name: galaxy_copy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_copy VALUES (1, 'galaxy1', NULL, true, true, 1000, NULL, NULL, NULL);
INSERT INTO public.galaxy_copy VALUES (2, 'galaxy2', NULL, true, true, 2000, NULL, NULL, NULL);
INSERT INTO public.galaxy_copy VALUES (3, 'galaxy3', NULL, true, false, 1500, NULL, NULL, NULL);
INSERT INTO public.galaxy_copy VALUES (4, 'galaxy4', NULL, true, false, 3500, NULL, NULL, NULL);
INSERT INTO public.galaxy_copy VALUES (5, 'galaxy5', NULL, false, false, 6500, NULL, NULL, NULL);
INSERT INTO public.galaxy_copy VALUES (6, 'galaxy6', NULL, false, true, 5500, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (21, 'moon1', NULL, true, true, 2500, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, true, true, 2500, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, true, true, 2500, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, true, true, 2500, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, true, true, 2500, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, true, true, 2500, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, true, true, 2500, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, true, true, 2500, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, true, true, 2500, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, true, true, 2500, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, true, true, 2500, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, true, true, 2500, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, false, false, 500, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star2', NULL, false, false, 500, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'star3', NULL, false, false, 500, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'star4', NULL, false, false, 500, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'star5', NULL, false, false, 500, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'star6', NULL, false, false, 500, NULL, NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_copy galaxy_copy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_copy
    ADD CONSTRAINT galaxy_copy_id PRIMARY KEY (galaxy_copy_id);


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
-- Name: galaxy_copy unique_galaxy_copy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_copy
    ADD CONSTRAINT unique_galaxy_copy UNIQUE (galaxy_copy_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

