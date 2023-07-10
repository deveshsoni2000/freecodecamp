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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text,
    galaxy_types character varying(15),
    age_in_millions_of_years integer,
    no_of_stars integer NOT NULL
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
    name character varying(20),
    description text,
    is_spherical boolean,
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
-- Name: org; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.org (
    org_id integer NOT NULL,
    name character varying(30),
    data_size_in_gb integer NOT NULL
);


ALTER TABLE public.org OWNER TO freecodecamp;

--
-- Name: org_org_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.org_org_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.org_org_id_seq OWNER TO freecodecamp;

--
-- Name: org_org_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.org_org_id_seq OWNED BY public.org.org_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    planet_types character varying(15),
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL,
    no_of_moons integer
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
    name character varying(20),
    description text,
    age_in_millions_of_years numeric(100,8),
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: org org_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.org ALTER COLUMN org_id SET DEFAULT nextval('public.org_org_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Whirlpool', 'Interacting spiral galaxy with a prominent spiral arm', 'Spiral', 800, 3);
INSERT INTO public.galaxy VALUES (2, 'M87', 'Giant elliptical galaxy at the center of Virgo Cluster', 'Spiral', 1000, 5);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Spiral galaxy in the local group', 'Spiral', 2200, 4);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'Our home galaxy, a barred spiral galaxy with a central bulge', 'Spiral(Barred)', 13000, 1);
INSERT INTO public.galaxy VALUES (5, 'CartWheel', 'Distorted galaxy with a ring-like appearance', 'Ring', 300, 1);
INSERT INTO public.galaxy VALUES (6, 'CigarGalaxy', 'Spiral galaxy with a long, narrow shape resembling a cigar', 'Spiral', 80, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s natural satellite', true, 5);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of Mars two small moons', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars other small moon', false, 2);
INSERT INTO public.moon VALUES (4, 'Titan', 'Saturn''s largest moon', true, 6);
INSERT INTO public.moon VALUES (5, 'Europa', 'One of Jupiter''s Galilean moons', true, 11);
INSERT INTO public.moon VALUES (6, 'Callisto', 'One of Jupiter''s Galilean moons', true, 11);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'One of Jupiter''s Galilean moons', true, 11);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Moon of Saturn with active geysers', true, 6);
INSERT INTO public.moon VALUES (9, 'Triton', 'Neptune''s largest moon', true, 3);
INSERT INTO public.moon VALUES (10, 'To', 'One of Jupiter''s Galilean moons', true, 11);
INSERT INTO public.moon VALUES (11, 'Charon', 'Pluto''s largest moon', true, 13);
INSERT INTO public.moon VALUES (12, 'Phoebe', 'Saturn''s irregular-shaped moon', false, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Saturn''s second-largest moon', true, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Saturn''s smallest spherical moon', true, 6);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Uranus outermost major moon', true, 9);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Uranus brighest moon', true, 9);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Uranus smallest spherical moon', true, 9);
INSERT INTO public.moon VALUES (18, 'Dione', 'Saturn''s third-largest moon', true, 6);
INSERT INTO public.moon VALUES (19, 'Nereid', 'Neptune''s third-largest moon', false, 3);
INSERT INTO public.moon VALUES (20, 'Larissa', 'Neptune''s fifth-largest moon', true, 3);


--
-- Data for Name: org; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.org VALUES (1, 'NASA', 999999);
INSERT INTO public.org VALUES (2, 'ISRO', 99999999);
INSERT INTO public.org VALUES (3, 'CNSA', 8988989);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Kepler-186f', 'Exoplanet', true, NULL, 1, 0);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', true, false, 13, 2);
INSERT INTO public.planet VALUES (3, 'Neptune', 'Gas Giant', true, false, 13, 14);
INSERT INTO public.planet VALUES (4, 'Gliese 581', 'Exoplanet', NULL, NULL, 2, 0);
INSERT INTO public.planet VALUES (5, 'Earth', 'Terrestrial', true, true, 13, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', true, false, 13, 82);
INSERT INTO public.planet VALUES (7, 'HD 209458b', 'Exoplanet', NULL, NULL, 8, 0);
INSERT INTO public.planet VALUES (8, 'Venus', 'Terrestrial', true, false, 9, 0);
INSERT INTO public.planet VALUES (9, 'Uranus', 'Ice Giant', true, false, 13, 27);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'Exoplanet', NULL, NULL, 14, 0);
INSERT INTO public.planet VALUES (11, 'Jupitar', 'Gas Giant', true, false, 13, 79);
INSERT INTO public.planet VALUES (12, 'Mercury', 'Terrestrial', true, false, 13, 0);
INSERT INTO public.planet VALUES (13, 'Eris', 'Dwarf Planet', true, false, 18, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Whirlpool Aplha', 'first star', 700.00000000, 1);
INSERT INTO public.star VALUES (2, 'Whirlpool Beta', 'second star', 500.00000000, 1);
INSERT INTO public.star VALUES (3, 'Whirlpool Gamma', 'last star', 800.00000000, 1);
INSERT INTO public.star VALUES (4, 'M87 Alpha', 'first star', 1000.00000000, 2);
INSERT INTO public.star VALUES (5, 'M87 Beta', 'second star', 900.00000000, 2);
INSERT INTO public.star VALUES (6, 'M87 Gamma', 'third star', 950.00000000, 2);
INSERT INTO public.star VALUES (7, 'M87 Delta', 'fourth star', 900.00000000, 2);
INSERT INTO public.star VALUES (8, 'M87 Epsilon', 'last star', 1000.00000000, 2);
INSERT INTO public.star VALUES (9, 'Andromeda Alpha', 'first star', 1900.00000000, 3);
INSERT INTO public.star VALUES (10, 'Andromeda Beta', 'second star', 2000.00000000, 3);
INSERT INTO public.star VALUES (11, 'Andromeda Gamma', 'third star', 2150.00000000, 3);
INSERT INTO public.star VALUES (12, 'Andromeda Delta', 'last star', 2200.00000000, 3);
INSERT INTO public.star VALUES (13, 'Sun', 'only star', 13000.00000000, 4);
INSERT INTO public.star VALUES (14, 'CartWheel Alpha', 'only star', 300.00000000, 5);
INSERT INTO public.star VALUES (15, 'Cigar Alpha', 'first star', 10.00000000, 6);
INSERT INTO public.star VALUES (16, 'Cigar Beta', 'second star', 65.00000000, 6);
INSERT INTO public.star VALUES (17, 'Cigar Gamma', 'third star', 50.00000000, 6);
INSERT INTO public.star VALUES (18, 'Cigar Delta', 'fourth star', 60.00000000, 6);
INSERT INTO public.star VALUES (19, 'Cigar Epsilon', 'last star', 80.00000000, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: org_org_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.org_org_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 19, true);


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
-- Name: org org_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT org_name_key UNIQUE (name);


--
-- Name: org org_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT org_pkey PRIMARY KEY (org_id);


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

