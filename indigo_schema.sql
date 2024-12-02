--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-12-01 13:20:00

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16596)
-- Name: flightschedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flightschedule (
    flightid bigint,
    flight_code text,
    seatsleft bigint,
    flightfare double precision,
    status text,
    starttime text,
    endtime text
);


ALTER TABLE public.flightschedule OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16601)
-- Name: loyalty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loyalty (
    emailid text,
    points bigint
);


ALTER TABLE public.loyalty OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16606)
-- Name: routeplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.routeplan (
    flightid bigint,
    fromlocation text,
    tolocation text,
    distancekm bigint,
    avgdelay bigint
);


ALTER TABLE public.routeplan OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16611)
-- Name: traveller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.traveller (
    customerid bigint,
    full_name text,
    emailid text,
    contactno bigint,
    loyaltypoints bigint,
    dob text,
    city text,
    address text
);


ALTER TABLE public.traveller OWNER TO postgres;

-- Completed on 2024-12-01 13:20:00

--
-- PostgreSQL database dump complete
--

