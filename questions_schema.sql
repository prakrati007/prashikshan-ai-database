--
-- PostgreSQL database dump
--

\restrict mc2amibn2pcFI8erz4fF6JykCvc9Dn4qfRpOzgLPMAsgp4HNfEIFdhR3yvRzfDx

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-02-01 13:39:38

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
-- TOC entry 7 (class 2615 OID 16604)
-- Name: questions; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA questions;


ALTER SCHEMA questions OWNER TO postgres;

--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA questions; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA questions IS 'by JBS';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 16626)
-- Name: questions; Type: TABLE; Schema: questions; Owner: postgres
--

CREATE TABLE questions.questions (
    id bigint NOT NULL,
    subject_id bigint,
    question_text text NOT NULL,
    bloom_level character varying(5) NOT NULL,
    difficulty character varying(10) NOT NULL,
    source_type character varying(20) NOT NULL,
    created_at time without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE questions.questions OWNER TO postgres;

--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE questions; Type: COMMENT; Schema: questions; Owner: postgres
--

COMMENT ON TABLE questions.questions IS 'by JBS';


--
-- TOC entry 4863 (class 2606 OID 16631)
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: questions; Owner: postgres
--

ALTER TABLE ONLY questions.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


-- Completed on 2026-02-01 13:39:38

--
-- PostgreSQL database dump complete
--

\unrestrict mc2amibn2pcFI8erz4fF6JykCvc9Dn4qfRpOzgLPMAsgp4HNfEIFdhR3yvRzfDx

