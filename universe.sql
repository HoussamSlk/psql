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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    numd integer,
    numk integer,
    year numeric(4,0),
    comment text,
    is_filled boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    comple boolean,
    planet_id integer,
    jeje integer,
    xx integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more (
    more_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number integer,
    jeje integer
);


ALTER TABLE public.more OWNER TO freecodecamp;

--
-- Name: more_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_id_seq OWNER TO freecodecamp;

--
-- Name: more_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_id_seq OWNED BY public.more.more_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    xxy integer,
    xxyz integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    xx integer,
    xxy integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: more more_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more ALTER COLUMN more_id SET DEFAULT nextval('public.more_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('bbb', 1, 2, 1, 400, NULL, NULL);
INSERT INTO public.galaxy VALUES ('ccc', 2, 3, 4, 5050, NULL, NULL);
INSERT INTO public.galaxy VALUES ('bbbd', 3, 2, 33, 400, NULL, NULL);
INSERT INTO public.galaxy VALUES ('cc3c', 4, 3, 4, 5054, NULL, NULL);
INSERT INTO public.galaxy VALUES ('bbbd', 5, 2, 33, 400, NULL, NULL);
INSERT INTO public.galaxy VALUES ('cc3c', 6, 3, 4, 5054, NULL, NULL);
INSERT INTO public.galaxy VALUES ('bbbd', 7, 2, 33, 400, NULL, NULL);
INSERT INTO public.galaxy VALUES ('cc3c', 8, 3, 4, 5054, NULL, NULL);
INSERT INTO public.galaxy VALUES ('bbbd', 9, 2, 33, 400, NULL, NULL);
INSERT INTO public.galaxy VALUES ('cc3c', 10, 3, 4, 5054, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'dd', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'mas', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'dd', NULL, 3, NULL, NULL);


--
-- Data for Name: more; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more VALUES (1, 'aa', NULL, NULL);
INSERT INTO public.more VALUES (2, 'aa', NULL, NULL);
INSERT INTO public.more VALUES (3, 'aa', NULL, NULL);
INSERT INTO public.more VALUES (4, 'aa', NULL, NULL);
INSERT INTO public.more VALUES (5, 'aa', NULL, NULL);
INSERT INTO public.more VALUES (6, 'aa', NULL, NULL);
INSERT INTO public.more VALUES (7, 'aa', NULL, NULL);
INSERT INTO public.more VALUES (8, 'aa', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (26, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (27, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (28, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (29, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (30, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (31, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (32, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (33, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (34, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (35, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (36, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (37, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (38, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (39, 'java', 1, NULL, NULL);
INSERT INTO public.planet VALUES (40, 'starz', 2, NULL, NULL);
INSERT INTO public.planet VALUES (41, 'starza', 3, NULL, NULL);
INSERT INTO public.planet VALUES (42, 'java', 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starz', 2, NULL, NULL);
INSERT INTO public.star VALUES (2, 'starza', 3, NULL, NULL);
INSERT INTO public.star VALUES (3, 'java', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'starz', 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'starza', 3, NULL, NULL);
INSERT INTO public.star VALUES (6, 'java', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'starz', 2, NULL, NULL);
INSERT INTO public.star VALUES (8, 'starza', 3, NULL, NULL);
INSERT INTO public.star VALUES (9, 'java', 1, NULL, NULL);
INSERT INTO public.star VALUES (10, 'starz', 2, NULL, NULL);
INSERT INTO public.star VALUES (11, 'starza', 3, NULL, NULL);
INSERT INTO public.star VALUES (12, 'java', 1, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 10, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 38, true);


--
-- Name: more_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_id_seq', 8, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 42, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


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
-- Name: more more_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_pkey PRIMARY KEY (more_id);


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
-- Name: galaxy uni; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni UNIQUE (comment);


--
-- Name: moon unia; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unia UNIQUE (jeje);


--
-- Name: more uniaa; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT uniaa UNIQUE (jeje);


--
-- Name: planet unixaa; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unixaa UNIQUE (xxyz);


--
-- Name: star uxnixaa; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uxnixaa UNIQUE (xxy);


--
-- Name: star fk_gal; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_gal FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_plan; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_plan FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

