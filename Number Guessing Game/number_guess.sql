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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    secret_number integer,
    number_of_guesses integer,
    player_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 951, 2, 5);
INSERT INTO public.games VALUES (2, 985, 4, 1);
INSERT INTO public.games VALUES (3, 801, 1, 1);
INSERT INTO public.games VALUES (4, 221, 2, 1);
INSERT INTO public.games VALUES (5, 642, 643, 6);
INSERT INTO public.games VALUES (6, 267, 268, 6);
INSERT INTO public.games VALUES (7, 331, 332, 7);
INSERT INTO public.games VALUES (8, 257, 258, 7);
INSERT INTO public.games VALUES (9, 584, 587, 6);
INSERT INTO public.games VALUES (10, 612, 614, 6);
INSERT INTO public.games VALUES (11, 194, 195, 6);
INSERT INTO public.games VALUES (12, 269, 270, 8);
INSERT INTO public.games VALUES (13, 867, 868, 8);
INSERT INTO public.games VALUES (14, 63, 64, 9);
INSERT INTO public.games VALUES (15, 103, 104, 9);
INSERT INTO public.games VALUES (16, 483, 486, 8);
INSERT INTO public.games VALUES (17, 897, 898, 8);
INSERT INTO public.games VALUES (18, 672, 673, 8);
INSERT INTO public.games VALUES (19, 480, 3, 1);
INSERT INTO public.games VALUES (20, 520, 2, 1);
INSERT INTO public.games VALUES (21, 993, 11, 1);
INSERT INTO public.games VALUES (22, 789, 11, 10);
INSERT INTO public.games VALUES (23, 584, 585, 11);
INSERT INTO public.games VALUES (24, 767, 768, 11);
INSERT INTO public.games VALUES (25, 729, 730, 12);
INSERT INTO public.games VALUES (26, 7, 8, 12);
INSERT INTO public.games VALUES (27, 238, 241, 11);
INSERT INTO public.games VALUES (28, 599, 600, 11);
INSERT INTO public.games VALUES (29, 709, 710, 11);
INSERT INTO public.games VALUES (30, 555, 556, 13);
INSERT INTO public.games VALUES (31, 407, 408, 13);
INSERT INTO public.games VALUES (32, 47, 48, 14);
INSERT INTO public.games VALUES (33, 944, 945, 14);
INSERT INTO public.games VALUES (34, 449, 452, 13);
INSERT INTO public.games VALUES (35, 938, 939, 13);
INSERT INTO public.games VALUES (36, 241, 242, 13);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'Rifqi');
INSERT INTO public.players VALUES (4, '1000');
INSERT INTO public.players VALUES (5, 'rIFQI');
INSERT INTO public.players VALUES (6, 'user_1718243397587');
INSERT INTO public.players VALUES (7, 'user_1718243397586');
INSERT INTO public.players VALUES (8, 'user_1718243584804');
INSERT INTO public.players VALUES (9, 'user_1718243584803');
INSERT INTO public.players VALUES (10, 'Ayu');
INSERT INTO public.players VALUES (11, 'user_1718244413658');
INSERT INTO public.players VALUES (12, 'user_1718244413657');
INSERT INTO public.players VALUES (13, 'user_1718244726763');
INSERT INTO public.players VALUES (14, 'user_1718244726762');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

