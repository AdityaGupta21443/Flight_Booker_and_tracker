--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-12-01 13:20:26

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
-- TOC entry 217 (class 1259 OID 16616)
-- Name: flightdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flightdetails (
    flightid bigint,
    flightnumber text,
    aircrafttype text,
    totalcapacity bigint,
    priceperseat_economy double precision,
    priceperseat_business double precision,
    availableseats_economy bigint,
    availableseats_business double precision,
    flightstatus text,
    takeofftime text,
    landtime text
);


ALTER TABLE public.flightdetails OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16621)
-- Name: passenger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.passenger (
    passengerid bigint,
    passengername text,
    email text,
    contact bigint,
    loyaltypoints bigint,
    dataofbirth text,
    city text,
    address text
);


ALTER TABLE public.passenger OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16626)
-- Name: route; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.route (
    flightid bigint,
    origin text,
    destination text,
    distancetraveled bigint,
    estimateddelay bigint
);


ALTER TABLE public.route OWNER TO postgres;

-- Completed on 2024-12-01 13:20:27

--
-- PostgreSQL database dump complete
--

