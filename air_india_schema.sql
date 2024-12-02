--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-12-01 12:58:44

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
-- TOC entry 217 (class 1259 OID 16659)
-- Name: customer_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_info (
    "CustomerID" bigint,
    "FullName" text,
    "EmailAddress" text,
    "ContactNumber" bigint,
    "LoyaltyPoints" bigint,
    dataofbirth text,
    cityofresidence text,
    address text
);


ALTER TABLE public.customer_info OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16664)
-- Name: flight_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flight_info (
    flightid bigint,
    flightcode text,
    aircraftmodel text,
    ticketprice_economy double precision,
    ticketprice_business double precision,
    ticketprice_firstclass double precision,
    economy_seats bigint,
    business_seats bigint,
    firstclass_seats double precision,
    departuretime text,
    arrivaltime text
);


ALTER TABLE public.flight_info OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16669)
-- Name: flight_route; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flight_route (
    flightid bigint,
    flightcode text,
    departureairport text,
    destinationairport text,
    flightdistance double precision,
    currentstatus text,
    averagedelay double precision
);


ALTER TABLE public.flight_route OWNER TO postgres;

-- Completed on 2024-12-01 12:58:44

--
-- PostgreSQL database dump complete
--

