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
-- Name: clusters; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.clusters (
    clusters_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    cluster_type character(1)
);


ALTER TABLE public.clusters OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    magnitude numeric,
    galaxy_type character varying
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
    name character varying NOT NULL,
    description text,
    distance_to_planet integer,
    radius numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mood_id_seq OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mood_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_atmosphere boolean,
    has_rings boolean,
    radius_km integer,
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
    name character varying NOT NULL,
    magnitude numeric,
    description text,
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mood_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: clusters; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.clusters VALUES (1, 'Argo', 1, NULL);
INSERT INTO public.clusters VALUES (2, 'Exodus', 1, NULL);
INSERT INTO public.clusters VALUES (3, 'Horse', 1, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 0.1, 'B');
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic', NULL, 0.9, 'B');
INSERT INTO public.galaxy VALUES (3, 'Small  Magellanic', NULL, 0.45, 'C');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', NULL, 0.5, 'D');
INSERT INTO public.galaxy VALUES (5, 'NGC', NULL, 0.5, 'D');
INSERT INTO public.galaxy VALUES (6, 'Hoang', NULL, 0.3, 'E');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'moon', NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'planet', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'planet', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirus', 1.23, 'Alpha', 1);
INSERT INTO public.star VALUES (2, 'Sun', 1.3, 'Gamma', 1);
INSERT INTO public.star VALUES (3, 'Pax', 2.3, 'Beta', 1);
INSERT INTO public.star VALUES (4, 'Sten', 2.2, NULL, 1);
INSERT INTO public.star VALUES (5, 'Procyn', 2.4, NULL, 1);
INSERT INTO public.star VALUES (6, 'Acrux', 2.4, NULL, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_mood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mood_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: clusters clusters_clusters_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_clusters_id_key UNIQUE (clusters_id);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_pkey PRIMARY KEY (clusters_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

