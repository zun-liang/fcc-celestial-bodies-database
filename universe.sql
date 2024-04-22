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
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    description text,
    age_in_millions_of_years integer
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
    diameter_km numeric,
    distance_km_from_planet numeric,
    atmosphere_present character varying(60),
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
    has_life boolean,
    planet_types character varying(30),
    description text,
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
    is_spherical boolean,
    description text,
    distance_from_earth_in_light_years numeric,
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
-- Name: zodiac; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zodiac (
    zodiac_id integer NOT NULL,
    name character varying(30) NOT NULL,
    dates character varying(60),
    ruling_planet character varying(30),
    element character varying(30),
    popularity integer
);


ALTER TABLE public.zodiac OWNER TO freecodecamp;

--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zodiac_zodiac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zodiac_zodiac_id_seq OWNER TO freecodecamp;

--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zodiac_zodiac_id_seq OWNED BY public.zodiac.zodiac_id;


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
-- Name: zodiac zodiac_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac ALTER COLUMN zodiac_id SET DEFAULT nextval('public.zodiac_zodiac_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Spiral', 'Also known as M31, it is a spiral galaxy and the closest large galaxy to the Milky Way.', 10000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'Barred Spiral', 'Our home galaxy, a barred spiral galaxy containing billions of stars.', 13600);
INSERT INTO public.galaxy VALUES (3, 'Messier 87 (M87)', 'Elliptical', 'A giant elliptical galaxy in the Virgo Cluster, known for its massive black hole.', 10000);
INSERT INTO public.galaxy VALUES (4, 'Leo I Dwarf Galaxy', 'Dwarf Irregular', 'A small satellite galaxy of the Milky Way.', 10000);
INSERT INTO public.galaxy VALUES (5, 'NGC 6822 (Barnard’s Galaxy)', 'Irregular', 'An irregular galaxy in the Local Group.', 10000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', 'M51, a stunning spiral galaxy with a prominent companion (M51b).', 400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474.8, 384400, 'No', 3);
INSERT INTO public.moon VALUES (2, 'Titan', 5150, 1221850000, 'Yes', 6);
INSERT INTO public.moon VALUES (8, 'Rhea', 1527, 527040000, 'No', 6);
INSERT INTO public.moon VALUES (11, 'Iapetus', 1470, 3560820000, 'No', 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1123, 377396000, 'Trace amounts', 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 1066, 294660000, 'No', 6);
INSERT INTO public.moon VALUES (14, 'Enceladus', 504.2, 238020000, 'Yes', 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 270.4, 1481100000, 'No', 6);
INSERT INTO public.moon VALUES (3, 'Ganymede', 5268, 1070400000, 'Trace amounts', 5);
INSERT INTO public.moon VALUES (4, 'Callisto', 4821, 1882700000, 'No', 5);
INSERT INTO public.moon VALUES (5, 'Io', 3643.2, 421800000, 'Yes', 5);
INSERT INTO public.moon VALUES (6, 'Europa', 3121.6, 671100000, 'Thin atmosphere', 5);
INSERT INTO public.moon VALUES (9, 'Titania', 1578, 435840000, 'Trace amounts', 7);
INSERT INTO public.moon VALUES (10, 'Oberon', 1523, 583520000, 'Trace amounts', 7);
INSERT INTO public.moon VALUES (15, 'Miranda', 471.6, 129390000, 'Trace amounts', 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 578.9, 191020000, 'Thin atmosphere', 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 584.7, 266300000, 'Thin atmosphere', 7);
INSERT INTO public.moon VALUES (18, 'Charon', 1212, 19640000, 'No', 9);
INSERT INTO public.moon VALUES (7, 'Triton', 2706.8, 354800000, 'Thin atmosphere', 7);
INSERT INTO public.moon VALUES (19, 'Nereid', 340, 5513400000, 'Trace amounts', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'Terrestrial', 'Mercury is the closest planet to the Sun and has a barren, rocky surface with extreme temperature variations.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'Terrestrial', 'Venus is a hot, inhospitable planet with a thick, acidic atmosphere. Its surface is dominated by volcanic plains and high-pressure conditions.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'Terrestrial', 'Our home planet, Earth, supports a diverse range of life forms. It has liquid water, a breathable atmosphere, and a variety of ecosystems.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'Terrestrial', 'Mars is a cold, desert-like planet with polar ice caps and ancient river valleys. Scientists continue to search for signs of past or present microbial life.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'Gas Giant', 'Jupiter is a massive gas giant composed mainly of hydrogen and helium. It has a turbulent atmosphere with iconic bands and a powerful magnetic field.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'Gas Giant', 'Saturn is famous for its stunning ring system, composed of icy particles. It is similar in composition to Jupiter and lacks a solid surface.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Ice Giant', 'Uranus is an ice giant with a blue-green hue due to its methane-rich atmosphere. It has a tilted rotation axis and lacks a solid surface.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'Ice Giant', 'Neptune, the farthest known planet in our solar system, has a deep blue color and strong winds. It also lacks a solid surface and has a dynamic atmosphere.', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 'Dwarf Planet', 'Once considered the ninth planet, Pluto is now classified as a dwarf planet. It orbits the Sun in the Kuiper Belt and has a varied surface with icy regions.', 1);
INSERT INTO public.planet VALUES (10, 'Eris', false, 'Dwarf Planet', 'Eris is another Kuiper Belt object and is slightly larger than Pluto. It has a highly elliptical orbit and a frigid, icy surface.', 1);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 'Dwarf Planet', 'Haumea is an elongated, fast-spinning dwarf planet. It has a unique shape and is covered in icy material.', 1);
INSERT INTO public.planet VALUES (12, 'Makemake', false, 'Dwarf Planet', 'Makemake is another Kuiper Belt object, known for its reddish color. It lacks a significant atmosphere and has a frozen surface.', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 'Our home star, a spherical ball of hot plasma that provides light and heat to our solar system.', 1, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', true, 'Part of the Alpha Centauri triple-star system, it’s the closest known star to Earth, located about 4.37 light-years away.', 4.37, 2);
INSERT INTO public.star VALUES (3, 'Sirius', true, 'The brightest star in the night sky, a binary system consisting of Sirius A and Sirius B.', 8.6, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', false, 'A red supergiant in the constellation Orion, nearing the end of its life.', 642, 2);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', true, 'One of the three stars in the Alpha Centauri system, similar to our Sun.', 4.37, 2);
INSERT INTO public.star VALUES (6, 'Vega', true, 'A blue-white main-sequence star in the constellation Lyra.', 25, 2);


--
-- Data for Name: zodiac; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zodiac VALUES (1, 'Aries', 'Mar 21 - Apr 19', 'Mars', 'Fire', 3);
INSERT INTO public.zodiac VALUES (2, 'Taurus', 'Apr 20 - May 20', 'Venus', 'Earth', 2);
INSERT INTO public.zodiac VALUES (3, 'Gemini', 'May 21 - Jun 20', 'Mercury', 'Air', 2);
INSERT INTO public.zodiac VALUES (4, 'Cancer', 'Jun 21 - Jul 22', 'Moon', 'Water', 2);
INSERT INTO public.zodiac VALUES (5, 'Leo', 'Jul 23 - Aug 22', 'Sun', 'Fire', 4);
INSERT INTO public.zodiac VALUES (6, 'Virgo', 'Aug 23 - Sep 22', 'Mercury', 'Earth', 1);
INSERT INTO public.zodiac VALUES (7, 'Libra', 'Sep 23 - Oct 22', 'Venus', 'Air', 3);
INSERT INTO public.zodiac VALUES (8, 'Scorpio', 'Oct 23 - Nov 21', 'Pluto/Mars', 'Water', 2);
INSERT INTO public.zodiac VALUES (9, 'Sagittarius', 'Nov 22 - Dec 21', 'Jupiter', 'Fire', 2);
INSERT INTO public.zodiac VALUES (10, 'Capricorn', 'Dec 22 - Jan 19', 'Saturn', 'Earth', 0);
INSERT INTO public.zodiac VALUES (11, 'Aquarius', 'Jan 20 - Feb 18', 'Uranus/Saturn', 'Air', 0);
INSERT INTO public.zodiac VALUES (12, 'Pisces', 'Feb 19 - Mar 20', 'Neptune', 'Water', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zodiac_zodiac_id_seq', 12, true);


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
-- Name: zodiac zodiac_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_name_key UNIQUE (name);


--
-- Name: zodiac zodiac_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_pkey PRIMARY KEY (zodiac_id);


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

