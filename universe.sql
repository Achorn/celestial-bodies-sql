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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    discovered integer,
    name character varying NOT NULL,
    asteroid_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    life boolean,
    size numeric,
    discovered integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    discovered integer,
    life boolean,
    name character varying NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    color text,
    name character varying NOT NULL,
    discovered integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    life boolean,
    name character varying NOT NULL,
    discovered integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1807, 'fourVesta', 1);
INSERT INTO public.asteroid VALUES (1903, '511David', 2);
INSERT INTO public.asteroid VALUES (1852, '16Psyche', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 1956, 'andromeda');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 1976, 'Milky Way');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 1984, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 1980, 'LMC');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 1981, 'Cigar');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 1961, 'Pinwheel');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 6, NULL, NULL, 'moon');
INSERT INTO public.moon VALUES (2, 5, NULL, NULL, 'phobos');
INSERT INTO public.moon VALUES (3, 5, NULL, NULL, 'deimos');
INSERT INTO public.moon VALUES (4, 1, NULL, NULL, 'europa');
INSERT INTO public.moon VALUES (5, 1, NULL, NULL, 'ganymede');
INSERT INTO public.moon VALUES (6, 1, NULL, NULL, 'callisto');
INSERT INTO public.moon VALUES (7, 1, NULL, NULL, 'lo');
INSERT INTO public.moon VALUES (8, 7, NULL, NULL, 'titan');
INSERT INTO public.moon VALUES (9, 7, NULL, NULL, 'enceladus');
INSERT INTO public.moon VALUES (10, 7, NULL, NULL, 'hyperion');
INSERT INTO public.moon VALUES (11, 7, NULL, NULL, 'prometheus');
INSERT INTO public.moon VALUES (12, 7, NULL, NULL, 'pandora');
INSERT INTO public.moon VALUES (13, 7, NULL, NULL, 'janus');
INSERT INTO public.moon VALUES (14, 7, NULL, NULL, 'epimetheus');
INSERT INTO public.moon VALUES (15, 7, NULL, NULL, 'mimas');
INSERT INTO public.moon VALUES (16, 7, NULL, NULL, 'iapetus');
INSERT INTO public.moon VALUES (17, 7, NULL, NULL, 'phoebe');
INSERT INTO public.moon VALUES (18, 7, NULL, NULL, 'tethys');
INSERT INTO public.moon VALUES (19, 7, NULL, NULL, 'telesto');
INSERT INTO public.moon VALUES (20, 2, NULL, NULL, 'meranda');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, NULL, 'jupiter', 1500);
INSERT INTO public.planet VALUES (2, 1, NULL, 'uranus', 1500);
INSERT INTO public.planet VALUES (3, 1, NULL, 'venus', 1500);
INSERT INTO public.planet VALUES (4, 1, NULL, 'neptune', 1500);
INSERT INTO public.planet VALUES (5, 1, NULL, 'mars', 1500);
INSERT INTO public.planet VALUES (6, 1, NULL, 'earth', 1500);
INSERT INTO public.planet VALUES (7, 1, NULL, 'saturn', 1500);
INSERT INTO public.planet VALUES (8, 1, NULL, 'mercury', 1500);
INSERT INTO public.planet VALUES (9, 1, NULL, 'pluto', 1500);
INSERT INTO public.planet VALUES (10, 2, NULL, 'fake planet-1', 1500);
INSERT INTO public.planet VALUES (11, 2, NULL, 'fake planet-2', 1500);
INSERT INTO public.planet VALUES (12, 2, NULL, 'fake planet-3', 1500);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, NULL, 'sun', 1204);
INSERT INTO public.star VALUES (2, 2, NULL, 'betelgeuse', 1204);
INSERT INTO public.star VALUES (3, 2, NULL, 'sirius', 1204);
INSERT INTO public.star VALUES (4, 2, NULL, 'vega', 1204);
INSERT INTO public.star VALUES (5, 2, NULL, 'mu cephei', 1204);
INSERT INTO public.star VALUES (6, 2, NULL, 'canopus', 1204);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_discovered_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_discovered_key UNIQUE (discovered);


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

