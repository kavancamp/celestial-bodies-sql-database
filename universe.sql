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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    apparent_magnitude numeric,
    constellation text,
    contains_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    radius_mi numeric NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_a_moon boolean,
    number_of_moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 3.4, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (2, 'Backward Galaxy', 12.6, 'Centaurus', NULL);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 9.36, 'Coma Berenices', NULL);
INSERT INTO public.galaxy VALUES (4, 'Eye Of Sauron', 11.5, 'Canes Venatici', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Deimos', 4, 3.8525);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 7.0008);
INSERT INTO public.moon VALUES (3, 'Earths Moon', 3, 1079.6);
INSERT INTO public.moon VALUES (4, 'Titan', 6, 1599.9);
INSERT INTO public.moon VALUES (5, 'Mimas', 6, 123.16);
INSERT INTO public.moon VALUES (6, 'Europa', 5, 969.84);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1497.7);
INSERT INTO public.moon VALUES (8, 'Pandora', 6, 25.29);
INSERT INTO public.moon VALUES (9, 'Triton', 8, 840.96);
INSERT INTO public.moon VALUES (10, 'Thalassa', 8, 25.476);
INSERT INTO public.moon VALUES (11, 'Cressida', 7, 24.731);
INSERT INTO public.moon VALUES (12, 'Ophelia', 7, 13.297);
INSERT INTO public.moon VALUES (13, 'Galatea', 8, 54.308);
INSERT INTO public.moon VALUES (14, 'Psamathe', 8, 11.806);
INSERT INTO public.moon VALUES (15, 'Dione', 6, 348.84);
INSERT INTO public.moon VALUES (16, 'Hyperion', 6, 83.885);
INSERT INTO public.moon VALUES (18, 'Enceladus', 6, 156.65);
INSERT INTO public.moon VALUES (19, 'Tethys', 6, 329.95);
INSERT INTO public.moon VALUES (20, 'Larissa', 8, 60.273);
INSERT INTO public.moon VALUES (17, 'Iapetus', 6, 456.4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', false, 0, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 80, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', true, 83, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 27, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 14, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

