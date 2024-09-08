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
    name character varying(50) NOT NULL,
    number_of_bodies numeric,
    age integer,
    size integer
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    age integer,
    larget_crator_size integer
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
-- Name: oceans; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.oceans (
    name character varying(50) NOT NULL,
    oceans_id integer NOT NULL,
    depth integer
);


ALTER TABLE public.oceans OWNER TO freecodecamp;

--
-- Name: oceans_ocean_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.oceans_ocean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oceans_ocean_id_seq OWNER TO freecodecamp;

--
-- Name: oceans_ocean_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.oceans_ocean_id_seq OWNED BY public.oceans.oceans_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_types text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    age integer
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
    name character varying(50) NOT NULL,
    age integer,
    distance_from_earth integer,
    galaxy_id integer NOT NULL,
    width integer
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
-- Name: oceans oceans_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceans ALTER COLUMN oceans_id SET DEFAULT nextval('public.oceans_ocean_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Cadbryway', 4342, 32600, 1349);
INSERT INTO public.galaxy VALUES (2, 'Liquid_Lindt', 31321, 45445, 345346);
INSERT INTO public.galaxy VALUES (3, 'Moltezer_Malaxy', 534634, 334556, 33556);
INSERT INTO public.galaxy VALUES (4, 'Tarz_Tarcus', 97809, 78987, 3790);
INSERT INTO public.galaxy VALUES (5, 'Aurelian_sol', 34529, 34243, 7967);
INSERT INTO public.galaxy VALUES (6, 'Infinity_stones', 54748, 34256, 43546);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (26, 'Leucodontaceae', 1, 2004, 2);
INSERT INTO public.moon VALUES (28, 'Rubiaceae', 1, 1992, 9);
INSERT INTO public.moon VALUES (29, 'Parmeliaceae', 1, 2012, 61732);
INSERT INTO public.moon VALUES (30, 'Poaceae', 1, 2007, 9630);
INSERT INTO public.moon VALUES (31, 'Asteraceae', 2, 2009, 9);
INSERT INTO public.moon VALUES (32, 'Polygonaceae', 2, 2002, 1730);
INSERT INTO public.moon VALUES (34, 'Cecropiaceae', 3, 1995, 764);
INSERT INTO public.moon VALUES (35, 'Pottiaceae', 3, 2012, 2312);
INSERT INTO public.moon VALUES (36, 'Fabaceae', 3, 2005, 72950);
INSERT INTO public.moon VALUES (37, 'Eriocaulaceae', 4, 2013, 24);
INSERT INTO public.moon VALUES (38, 'Loasaceae', 5, 2009, 75164);
INSERT INTO public.moon VALUES (40, 'Urticaceae', 4, 2010, 72134);
INSERT INTO public.moon VALUES (41, 'Malvaceae', 5, 2001, 65245);
INSERT INTO public.moon VALUES (44, 'Chenopodiaceae', 7, 1997, 4788);
INSERT INTO public.moon VALUES (45, 'Solanaceae', 7, 2004, 829);
INSERT INTO public.moon VALUES (47, 'Scrophulariaceae', 9, 1998, 80236);
INSERT INTO public.moon VALUES (57, 'Poaceae2', 2, 1993, 700);
INSERT INTO public.moon VALUES (66, 'Fabaceae2', 6, 1994, 20);
INSERT INTO public.moon VALUES (67, 'Malvaceae2', 5, 2008, 63);
INSERT INTO public.moon VALUES (70, 'Asteraceae3', 6, 2007, 4228);
INSERT INTO public.moon VALUES (73, 'Asteraceae4', 7, 2008, 5);


--
-- Data for Name: oceans; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.oceans VALUES ('Pecific Ocean', 1, 34564);
INSERT INTO public.oceans VALUES ('Atlantic Ocean', 2, 2345635);
INSERT INTO public.oceans VALUES ('Sempec Ocean', 3, 23423436);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Pottiaceae', 'Wood', false, true, 1, 46);
INSERT INTO public.planet VALUES (2, 'Violaceae', 'Vinyl', true, true, 2, 9);
INSERT INTO public.planet VALUES (3, 'Crassulaceae', 'Stone', true, true, 2, 484);
INSERT INTO public.planet VALUES (4, 'Asteraceae', 'Steel', true, true, 3, 186);
INSERT INTO public.planet VALUES (5, 'Cladoniaceae', 'Clear Plastic', true, true, 3, 3083);
INSERT INTO public.planet VALUES (6, 'Paeoniaceae', 'Aluminum', true, true, 3, 506);
INSERT INTO public.planet VALUES (7, 'Caryophyllaceae', 'PVC', true, true, 4, 62);
INSERT INTO public.planet VALUES (9, 'Poaceae', 'PEA', false, false, 4, 7674);
INSERT INTO public.planet VALUES (10, 'Brassicaceae', 'Brass', false, true, 5, 64);
INSERT INTO public.planet VALUES (12, 'Samba', 'Granite', false, false, 6, 157);
INSERT INTO public.planet VALUES (13, 'beta03', 'Stainless Steel', true, true, 4, 4055);
INSERT INTO public.planet VALUES (14, 'Samba_pim', 'Granite', false, false, 6, 157);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 3, 3, 1, 1);
INSERT INTO public.star VALUES (2, 'sun1', 4, 1, 2, 3);
INSERT INTO public.star VALUES (3, 'sun2', 4, 1, 2, 3);
INSERT INTO public.star VALUES (4, 'sun3', 4, 1, 2, 3);
INSERT INTO public.star VALUES (5, 'sun5', 5, 1, 2, 3);
INSERT INTO public.star VALUES (6, 'sun6', 5, 1, 2, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 74, true);


--
-- Name: oceans_ocean_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.oceans_ocean_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: oceans oceans_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceans
    ADD CONSTRAINT oceans_name_key UNIQUE (name);


--
-- Name: oceans oceans_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceans
    ADD CONSTRAINT oceans_pkey PRIMARY KEY (oceans_id);


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
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

