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
-- Name: category; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.category (
    name character varying(30) NOT NULL,
    category_id integer NOT NULL,
    description character varying(256)
);


ALTER TABLE public.category OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name text NOT NULL,
    star_count integer,
    planet_count integer,
    name character varying(30),
    galaxy_area numeric,
    description character varying(256)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    planet_id integer,
    descroption character varying(256)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_living boolean,
    galaxy_id integer,
    description character varying(256),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_alive boolean,
    description character varying(256),
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.category VALUES ('ktg1', 1, NULL);
INSERT INTO public.category VALUES ('ktg2', 2, NULL);
INSERT INTO public.category VALUES ('ktg3', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'glx 1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'glx 2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'glx 3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'g 4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'g 5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'g 6', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mn 1', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'mn 2', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'mn 3', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'm 4', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'm 5', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'm 6', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'm 7', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'm 8', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'm 9', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'm 10', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'm 11', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'm 12', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm 13', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'm 14', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'm 15', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'm 16', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'm 17', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'm 18', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'm 19', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'm 20', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p 1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'p 2', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'p 3', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'p 4', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'p 5', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'p 6', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'p 7', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'p 8', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'p 9', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'p 10', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'p 11', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'p 12', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's 1', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 's 2', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 's 3', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 's 4', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 's 5', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 's 6', NULL, NULL, 6);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: category category_category_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_category_id_key UNIQUE (category_id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


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

