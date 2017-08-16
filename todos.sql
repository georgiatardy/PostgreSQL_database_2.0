--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: todo; Type: TABLE; Schema: public; Owner: reggieandgeorgiatardy
--

CREATE TABLE todo (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    details character varying(3000),
    priority integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    completed_at timestamp without time zone
);


ALTER TABLE todo OWNER TO reggieandgeorgiatardy;

--
-- Name: todo_id_seq; Type: SEQUENCE; Schema: public; Owner: reggieandgeorgiatardy
--

CREATE SEQUENCE todo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE todo_id_seq OWNER TO reggieandgeorgiatardy;

--
-- Name: todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reggieandgeorgiatardy
--

ALTER SEQUENCE todo_id_seq OWNED BY todo.id;


--
-- Name: todo id; Type: DEFAULT; Schema: public; Owner: reggieandgeorgiatardy
--

ALTER TABLE ONLY todo ALTER COLUMN id SET DEFAULT nextval('todo_id_seq'::regclass);


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: reggieandgeorgiatardy
--

COPY todo (id, title, details, priority, created_at, completed_at) FROM stdin;
2	car	mow lawn	1	2017-08-15 21:33:54.389207	\N
4	clothes	mow lawn	2	2017-08-15 21:36:09.750884	\N
3	car	wash	3	2017-08-15 21:35:05.038385	\N
\.


--
-- Name: todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reggieandgeorgiatardy
--

SELECT pg_catalog.setval('todo_id_seq', 1, false);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: reggieandgeorgiatardy
--

ALTER TABLE ONLY todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

