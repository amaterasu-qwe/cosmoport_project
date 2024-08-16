--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-08-16 21:38:08

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

--
-- TOC entry 4787 (class 1262 OID 16891)
-- Name: cosmoport; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cosmoport WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE cosmoport OWNER TO postgres;

\connect cosmoport

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
-- TOC entry 216 (class 1259 OID 16955)
-- Name: ship; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ship (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    planet character varying(50) NOT NULL,
    ship_type character varying(255) NOT NULL,
    prod_date date NOT NULL,
    is_used boolean NOT NULL,
    speed double precision NOT NULL,
    crew_size integer NOT NULL,
    rating double precision NOT NULL
);


ALTER TABLE public.ship OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16954)
-- Name: ship_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ship_id_seq OWNER TO postgres;

--
-- TOC entry 4788 (class 0 OID 0)
-- Dependencies: 215
-- Name: ship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ship_id_seq OWNED BY public.ship.id;


--
-- TOC entry 4634 (class 2604 OID 16958)
-- Name: ship id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ship ALTER COLUMN id SET DEFAULT nextval('public.ship_id_seq'::regclass);


--
-- TOC entry 4781 (class 0 OID 16955)
-- Dependencies: 216
-- Data for Name: ship; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (2, 'Daedalus', 'Jupiter', 'MERCHANT', '3001-01-01', true, 0.94, 1619, 1.98);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (3, 'Eagle Transporter', 'Earth', 'TRANSPORT', '2989-01-01', true, 0.79, 4527, 1.02);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (4, 'F-302 Mongoose', 'Neptune', 'MILITARY', '3011-01-01', false, 0.24, 2170, 2.13);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (5, 'Excalibur', 'Mercury', 'MILITARY', '3011-01-01', false, 0.64, 128, 5.69);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (7, 'Icarus I', 'Mercury', 'TRANSPORT', '2999-01-01', false, 0.07, 826, 0.27);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (8, 'Hermes', 'Venus', 'MERCHANT', '3010-01-01', false, 0.05, 445, 0.4);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (9, 'Odyssey', 'Neptune', 'TRANSPORT', '2988-01-01', false, 0.44, 1436, 1.1);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (10, 'Orbit Jet', 'Venus', 'TRANSPORT', '3011-01-01', false, 0.55, 1931, 4.89);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (11, 'Aries Ib', 'Saturn', 'MILITARY', '3013-01-01', true, 0.37, 3562, 2.11);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (12, 'Hunter IV', 'Jupiter', 'MILITARY', '3010-01-01', false, 0.71, 4379, 5.68);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (13, 'Serenity', 'Saturn', 'TRANSPORT', '3008-01-01', false, 0.92, 1588, 6.13);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (14, 'Scorpio E-X-1', 'Mars', 'MERCHANT', '3014-01-01', false, 0.03, 682, 0.4);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (15, 'Mark IX Hawk', 'Jupiter', 'MILITARY', '3003-01-01', true, 0.58, 927, 1.36);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (16, 'Excelsior', 'Venus', 'MILITARY', '3013-01-01', true, 0.45, 3488, 2.57);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (17, 'Amaterasu', 'Saturn', 'MILITARY', '3007-01-01', true, 0.88, 1517, 2.71);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (18, 'USS Cygnus', 'Jupiter', 'TRANSPORT', '3005-01-01', false, 0.74, 3129, 3.95);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (19, 'Argonaut', 'Jupiter', 'MERCHANT', '3002-01-01', false, 0.53, 4897, 2.36);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (20, 'Avalon', 'Mars', 'TRANSPORT', '3000-01-01', false, 0.91, 4660, 3.64);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (21, 'Arcadia', 'Earth', 'MILITARY', '2989-01-01', false, 0.07, 4271, 0.18);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (22, 'Red Dwarf', 'Venus', 'MERCHANT', '2990-01-01', true, 0.7, 3255, 0.93);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (23, 'Derelict', 'Earth', 'TRANSPORT', '2988-01-01', false, 0.75, 4419, 1.88);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (24, 'Terra V', 'Saturn', 'MERCHANT', '3013-01-01', false, 0.1, 1040, 1.14);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (25, 'Hyperion', 'Uranus', 'TRANSPORT', '3010-01-01', true, 0.79, 3987, 3.16);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (26, 'Normandy SR-1', 'Saturn', 'TRANSPORT', '3016-01-01', false, 0.91, 3749, 18.2);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (27, 'Battlestar', 'Earth', 'MILITARY', '2990-01-01', true, 0.55, 2307, 0.73);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (28, 'Conquistador', 'Uranus', 'MILITARY', '2990-01-01', false, 0.29, 315, 0.77);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (29, 'Titan', 'Mars', 'MERCHANT', '3002-01-01', true, 0.86, 1252, 1.91);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (30, 'Prometheus', 'Saturn', 'TRANSPORT', '3001-01-01', true, 0.14, 3841, 0.29);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (31, 'Centaur', 'Saturn', 'TRANSPORT', '3004-01-01', true, 0.62, 4277, 1.55);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (32, 'Venture Star', 'Mercury', 'MERCHANT', '3013-01-01', false, 0.59, 281, 6.74);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (33, 'Vorlon', 'Neptune', 'MERCHANT', '3001-01-01', true, 0.09, 3858, 0.19);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (34, 'Liberator', 'Uranus', 'MILITARY', '3015-01-01', false, 0.51, 3175, 8.16);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (35, 'Vulture', 'Venus', 'MERCHANT', '2993-01-01', true, 0.54, 1980, 0.8);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (36, 'Elysium', 'Saturn', 'MERCHANT', '3002-01-01', true, 0.66, 3865, 1.47);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (37, 'Nemesis', 'Neptune', 'MILITARY', '2999-01-01', true, 0.13, 1390, 0.25);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (38, 'Nostromo', 'Saturn', 'MERCHANT', '2991-01-01', true, 0.31, 1967, 0.43);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (39, 'Tardis', 'Jupiter', 'MERCHANT', '3016-01-01', false, 0.86, 4871, 17.2);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (40, 'Star Destroyer228', 'Mercury', 'MILITARY', '3017-01-01', false, 0.92, 4880, 24.53);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (1, 'Orion VVV', 'Mars', 'MERCHANT', '2995-01-01', true, 0.82, 617, 1.31);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (6, 'Explorer123', 'Saturn', 'MERCHANT', '3007-01-01', false, 0.69, 4495, 4.25);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (43, 'Lamner', 'Mars', 'MERCHANT', '2899-02-01', true, 122, 14444, 1.12);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (44, 'Loadwiier', 'Earth', 'MERCHANT', '3000-10-10', false, 11123, 555, 1.12);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (45, 'WADawd', 'Earth', 'MERCHANT', '3004-04-02', true, 123, 123, 1.12);
INSERT INTO public.ship (id, name, planet, ship_type, prod_date, is_used, speed, crew_size, rating) VALUES (46, 'TEST', 'Earth', 'MERCHANT', '3004-02-06', false, 0.12, 123, 0.6);


--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: ship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ship_id_seq', 47, true);


--
-- TOC entry 4636 (class 2606 OID 16960)
-- Name: ship ship_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_pkey PRIMARY KEY (id);


-- Completed on 2024-08-16 21:38:08

--
-- PostgreSQL database dump complete
--

