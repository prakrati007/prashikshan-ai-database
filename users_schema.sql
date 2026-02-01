--
-- PostgreSQL database dump
--

\restrict oH5kkeiB99WYbKm1RMDjaUvBQqWxz3Fd4GvGaR0hW4tmsRQMuTnSHsnzhJBg6yo

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-02-01 13:38:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16603)
-- Name: users; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA users;


ALTER SCHEMA users OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA users; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA users IS 'by JBS';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16605)
-- Name: users; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.users (
    id bigint NOT NULL,
    "name " character varying(100) NOT NULL,
    email character varying(150) NOT NULL,
    password_hash character varying(255) NOT NULL,
    role character varying(20) DEFAULT 'student'::character varying,
    created_at time without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE users.users OWNER TO postgres;

--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE users; Type: COMMENT; Schema: users; Owner: postgres
--

COMMENT ON TABLE users.users IS 'by JBS';


--
-- TOC entry 222 (class 1259 OID 16608)
-- Name: users_id_seq; Type: SEQUENCE; Schema: users; Owner: postgres
--

CREATE SEQUENCE users.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE users.users_id_seq OWNER TO postgres;

--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 222
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: users; Owner: postgres
--

ALTER SEQUENCE users.users_id_seq OWNED BY users.users.id;


--
-- TOC entry 4861 (class 2604 OID 16609)
-- Name: users id; Type: DEFAULT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.users ALTER COLUMN id SET DEFAULT nextval('users.users_id_seq'::regclass);


--
-- TOC entry 4866 (class 2606 OID 16625)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2026-02-01 13:38:19

--
-- PostgreSQL database dump complete
--

\unrestrict oH5kkeiB99WYbKm1RMDjaUvBQqWxz3Fd4GvGaR0hW4tmsRQMuTnSHsnzhJBg6yo

