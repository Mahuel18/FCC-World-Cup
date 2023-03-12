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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (111, 2018, 'Semi-Final', 116, 117, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Quarter-Final', 116, 119, 3, 2);
INSERT INTO public.games VALUES (113, 2018, 'Quarter-Final', 117, 120, 2, 0);
INSERT INTO public.games VALUES (114, 2018, 'Quarter-Final', 118, 121, 2, 1);
INSERT INTO public.games VALUES (115, 2018, 'Eighth-Final', 117, 123, 2, 1);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 120, 124, 1, 0);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 118, 125, 3, 2);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 121, 126, 2, 0);
INSERT INTO public.games VALUES (119, 2018, 'Eighth-Final', 116, 127, 2, 1);
INSERT INTO public.games VALUES (120, 2018, 'Eighth-Final', 119, 128, 2, 1);
INSERT INTO public.games VALUES (121, 2018, 'Eighth-Final', 122, 129, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Semi-Final', 130, 131, 1, 0);
INSERT INTO public.games VALUES (123, 2014, 'Quarter-Final', 131, 132, 1, 0);
INSERT INTO public.games VALUES (124, 2014, 'Quarter-Final', 130, 118, 1, 0);
INSERT INTO public.games VALUES (125, 2014, 'Quarter-Final', 121, 123, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 121, 134, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 123, 122, 2, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 133, 135, 2, 0);
INSERT INTO public.games VALUES (129, 2014, 'Eighth-Final', 131, 126, 2, 1);
INSERT INTO public.games VALUES (130, 2014, 'Eighth-Final', 132, 137, 2, 1);
INSERT INTO public.games VALUES (131, 2014, 'Eighth-Final', 130, 124, 1, 0);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 118, 138, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (116, 'Croatia');
INSERT INTO public.teams VALUES (117, 'England');
INSERT INTO public.teams VALUES (118, 'Belgium');
INSERT INTO public.teams VALUES (119, 'Russia');
INSERT INTO public.teams VALUES (120, 'Sweden');
INSERT INTO public.teams VALUES (121, 'Brazil');
INSERT INTO public.teams VALUES (122, 'Uruguay');
INSERT INTO public.teams VALUES (123, 'Colombia');
INSERT INTO public.teams VALUES (124, 'Switzerland');
INSERT INTO public.teams VALUES (125, 'Japan');
INSERT INTO public.teams VALUES (126, 'Mexico');
INSERT INTO public.teams VALUES (127, 'Denmark');
INSERT INTO public.teams VALUES (128, 'Spain');
INSERT INTO public.teams VALUES (129, 'Portugal');
INSERT INTO public.teams VALUES (130, 'Argentina');
INSERT INTO public.teams VALUES (131, 'Netherlands');
INSERT INTO public.teams VALUES (132, 'Costa Rica');
INSERT INTO public.teams VALUES (133, 'France');
INSERT INTO public.teams VALUES (134, 'Chile');
INSERT INTO public.teams VALUES (135, 'Nigeria');
INSERT INTO public.teams VALUES (136, 'Algeria');
INSERT INTO public.teams VALUES (137, 'Greece');
INSERT INTO public.teams VALUES (138, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 132, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 138, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winners; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winners FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

