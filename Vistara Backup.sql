toc.dat                                                                                             0000600 0004000 0002000 00000014734 14711373755 0014465 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                   
    |            Vistara    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    25141    Vistara    DATABASE     |   CREATE DATABASE "Vistara" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Vistara";
                postgres    false         �            1259    25150    flightdetails    TABLE       CREATE TABLE public.flightdetails (
    flightid integer NOT NULL,
    flightnumber character varying(10) NOT NULL,
    aircrafttype character varying(50) NOT NULL,
    totalcapacity integer NOT NULL,
    priceperseat_economy numeric(10,2) NOT NULL,
    priceperseat_business numeric(10,2),
    availableseats_economy integer NOT NULL,
    availableseats_business integer,
    flightstatus character varying(20) NOT NULL,
    takeofftime timestamp without time zone NOT NULL,
    landtime timestamp without time zone NOT NULL
);
 !   DROP TABLE public.flightdetails;
       public         heap    postgres    false         �            1259    25149    flightdetails_flightid_seq    SEQUENCE     �   CREATE SEQUENCE public.flightdetails_flightid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.flightdetails_flightid_seq;
       public          postgres    false    218         �           0    0    flightdetails_flightid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.flightdetails_flightid_seq OWNED BY public.flightdetails.flightid;
          public          postgres    false    217         �            1259    25143 	   passenger    TABLE     A  CREATE TABLE public.passenger (
    passengerid integer NOT NULL,
    passengername character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    contact character varying(15) NOT NULL,
    frequentflyerpoints integer NOT NULL,
    dateofbirth date NOT NULL,
    city character varying(100) NOT NULL
);
    DROP TABLE public.passenger;
       public         heap    postgres    false         �            1259    25142    passenger_passengerid_seq    SEQUENCE     �   CREATE SEQUENCE public.passenger_passengerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.passenger_passengerid_seq;
       public          postgres    false    216         �           0    0    passenger_passengerid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.passenger_passengerid_seq OWNED BY public.passenger.passengerid;
          public          postgres    false    215         �            1259    25156    route    TABLE     �   CREATE TABLE public.route (
    flightid integer NOT NULL,
    origin character varying(50) NOT NULL,
    destination character varying(50) NOT NULL,
    distancetraveled integer NOT NULL,
    estimateddelay integer
);
    DROP TABLE public.route;
       public         heap    postgres    false         Z           2604    25153    flightdetails flightid    DEFAULT     �   ALTER TABLE ONLY public.flightdetails ALTER COLUMN flightid SET DEFAULT nextval('public.flightdetails_flightid_seq'::regclass);
 E   ALTER TABLE public.flightdetails ALTER COLUMN flightid DROP DEFAULT;
       public          postgres    false    217    218    218         Y           2604    25146    passenger passengerid    DEFAULT     ~   ALTER TABLE ONLY public.passenger ALTER COLUMN passengerid SET DEFAULT nextval('public.passenger_passengerid_seq'::regclass);
 D   ALTER TABLE public.passenger ALTER COLUMN passengerid DROP DEFAULT;
       public          postgres    false    215    216    216         �          0    25150    flightdetails 
   TABLE DATA           �   COPY public.flightdetails (flightid, flightnumber, aircrafttype, totalcapacity, priceperseat_economy, priceperseat_business, availableseats_economy, availableseats_business, flightstatus, takeofftime, landtime) FROM stdin;
    public          postgres    false    218       4850.dat �          0    25143 	   passenger 
   TABLE DATA           w   COPY public.passenger (passengerid, passengername, email, contact, frequentflyerpoints, dateofbirth, city) FROM stdin;
    public          postgres    false    216       4848.dat �          0    25156    route 
   TABLE DATA           `   COPY public.route (flightid, origin, destination, distancetraveled, estimateddelay) FROM stdin;
    public          postgres    false    219       4851.dat �           0    0    flightdetails_flightid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.flightdetails_flightid_seq', 18, true);
          public          postgres    false    217         �           0    0    passenger_passengerid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.passenger_passengerid_seq', 33, true);
          public          postgres    false    215         ^           2606    25155     flightdetails flightdetails_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.flightdetails
    ADD CONSTRAINT flightdetails_pkey PRIMARY KEY (flightid);
 J   ALTER TABLE ONLY public.flightdetails DROP CONSTRAINT flightdetails_pkey;
       public            postgres    false    218         \           2606    25148    passenger passenger_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (passengerid);
 B   ALTER TABLE ONLY public.passenger DROP CONSTRAINT passenger_pkey;
       public            postgres    false    216         _           2606    25159    route route_flightid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_flightid_fkey FOREIGN KEY (flightid) REFERENCES public.flightdetails(flightid);
 C   ALTER TABLE ONLY public.route DROP CONSTRAINT route_flightid_fkey;
       public          postgres    false    4702    219    218                                            4850.dat                                                                                            0000600 0004000 0002000 00000003310 14711373755 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	VST101	Airbus A320	180	5000.00	\N	100	\N	Arrived	2025-01-02 08:00:00	2025-01-02 10:30:00
2	VST102	Boeing 737	210	5500.00	\N	180	\N	In Air	2025-01-02 11:00:00	2025-01-02 13:30:00
3	VST103	Airbus A320	180	4800.00	\N	160	\N	Arrived	2025-01-01 06:00:00	2025-01-01 08:15:00
4	VST104	Boeing 737	210	5300.00	\N	150	\N	In Air	2025-01-01 12:00:00	2025-01-01 14:30:00
5	VST106	Airbus A320	180	5000.00	\N	180	\N	Not Departed	2025-01-03 08:00:00	2025-01-03 10:30:00
6	VST107	Boeing 737	210	5400.00	\N	150	\N	Arrived	2025-01-02 16:30:00	2025-01-02 19:00:00
7	VST110	Airbus A321	190	5100.00	\N	170	\N	Not Departed	2025-01-04 07:00:00	2025-01-04 09:30:00
8	VST111	Boeing 737	210	5300.00	\N	160	\N	Not Departed	2025-01-04 10:00:00	2025-01-04 12:30:00
9	VST112	Airbus A320	180	4800.00	\N	150	\N	Not Departed	2025-01-05 08:30:00	2025-01-05 11:00:00
10	VST201	Boeing 787	300	6000.00	12000.00	200	30	In Air	2025-01-02 15:00:00	2025-01-02 18:30:00
11	VST203	Boeing 787	300	6300.00	12500.00	150	20	Not Departed	2025-01-04 09:00:00	2025-01-04 12:30:00
12	VST205	Boeing 777	350	6500.00	15000.00	180	40	Not Departed	2025-01-03 09:30:00	2025-01-03 15:00:00
13	VST208	Airbus A330	260	6200.00	12500.00	200	35	Not Departed	2025-01-05 14:00:00	2025-01-05 17:45:00
14	VST209	Boeing 787	300	6400.00	12900.00	180	45	Not Departed	2025-01-06 10:30:00	2025-01-06 15:00:00
15	VST210	Airbus A350	280	6500.00	13500.00	150	30	Not Departed	2025-01-06 18:00:00	2025-01-06 23:00:00
16	VST398	Airbus A330	260	6200.00	12200.00	140	25	In Air	2025-01-03 13:30:00	2025-01-03 17:45:00
17	VST399	Boeing 737	210	5300.00	\N	180	\N	Arrived	2025-01-02 14:30:00	2025-01-02 17:00:00
18	VST400	Boeing 777	350	6500.00	15000.00	200	45	Not Departed	2025-01-04 18:00:00	2025-01-05 00:00:00
\.


                                                                                                                                                                                                                                                                                                                        4848.dat                                                                                            0000600 0004000 0002000 00000004576 14711373755 0014312 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Priya Singh	priya.singh@example.com	9876543215	1000	1988-11-03	Chennai
2	Ravi Verma	ravi.verma@example.com	9876543214	2000	1982-01-25	Hyderabad
3	Rahul Mehta	rahul.mehta@example.com	9876543216	1200	1983-05-07	Pune
4	Sonia Sharma	sonia.sharma@example.com	9876543217	900	1991-09-12	Ahmedabad
5	Alice Brown	alice.brown@example.com	9876543220	1300	1984-12-19	Delhi
6	Vivek Rao	vivek.rao@example.com	9876543221	1100	1980-07-11	Bangalore
7	Sara Ali	sara.ali@example.com	9876543222	600	1995-06-05	Mumbai
8	Deepak Kumar	deepak.kumar@example.com	9876543223	1400	1986-10-15	Hyderabad
9	Simran Kaur	simran.kaur@example.com	9876543230	700	1990-09-23	Mumbai
10	Rohan Gupta	rohan.gupta@example.com	9876543231	1100	1994-02-18	Hyderabad
11	Arun Kapoor	arun.k@vistara.com	9999999999	300	1986-03-12	Bangalore
12	Megha Jain	megha.j@vistara.com	8888888888	100	1990-08-15	Kolkata
13	Kapil Yadav	kapil.yadav@vistara.com	9123454321	200	1985-02-17	Chennai
14	Pooja Desai	pooja.desai@vistara.com	9776651234	500	1992-04-25	Kolkata
15	Gaurav Khanna	gaurav.khanna@vistara.com	9555544333	700	1993-12-01	Delhi
16	Neha Pandey	neha.pandey@vistara.com	9887766555	1500	1996-05-09	Bangalore
17	Amit Shah	amit.shah@vistara.com	9665544332	900	1987-07-28	Ahmedabad
18	Manisha Patil	manisha.patil@vistara.com	9331122233	400	1989-03-08	Pune
19	Ishaan Verma	ishaan.verma@vistara.com	9123450000	1800	1993-11-13	Chennai
20	Ritika Malhotra	ritika.malhotra@vistara.com	9000090001	600	1995-04-09	Delhi
21	Ankita Desai	ankita.desai@vistara.com	9887766554	1500	1992-03-11	Mumbai
22	Rohit Shetty	rohit.shetty@vistara.com	9776655443	2200	1980-08-29	Bangalore
23	Naina Sharma	naina.sharma@vistara.com	9665544332	1200	1985-05-17	Jaipur
24	Akash Kumar	akash.kumar@vistara.com	9000091234	300	1991-07-28	Kolkata
25	Sneha Jain	sneha.jain@vistara.com	9111123456	1700	1989-10-10	Pune
26	Harish Menon	harish.menon@vistara.com	9222233445	4000	1987-09-22	Bangalore
27	Divya Sharma	divya.sharma@vistara.com	9000088880	1100	1994-06-14	Mumbai
28	Vikram Rao	vikram.rao@vistara.com	9111009876	900	1995-11-03	Hyderabad
29	Rekha Sinha	rekha.sinha@vistara.com	9123459999	1300	1982-02-09	Delhi
30	Ajay Chauhan	ajay.chauhan@vistara.com	9123458888	1800	1986-05-06	Chennai
31	Devika Nair	devika.nair@vistara.com	9333322211	2200	1992-09-20	Kolkata
32	Rajiv Anand	rajiv.anand@vistara.com	9444467777	2900	1981-01-15	Mumbai
33	Ayesha Khan	ayesha.khan@vistara.com	9331122223	1600	1990-03-30	Ahmedabad
\.


                                                                                                                                  4851.dat                                                                                            0000600 0004000 0002000 00000000675 14711373755 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Mumbai	Delhi	1150	10
2	Delhi	Bangalore	1740	0
3	Mumbai	Chennai	1330	5
4	Delhi	Kolkata	1300	20
6	Hyderabad	Pune	500	0
7	Chennai	Ahmedabad	1500	0
10	Mumbai	Hyderabad	700	15
11	Kolkata	Delhi	1310	0
12	Delhi	Mumbai	1150	5
13	Delhi	London	6700	0
15	Mumbai	Dubai	1920	0
16	Delhi	New York	11700	30
17	Mumbai	Singapore	3900	20
18	Delhi	Paris	7600	45
14	Bangalore	Frankfurt	7600	15
5	Pune	Chennai	910	0
8	Mumbai	Goa	580	0
9	Hyderabad	Mumbai	700	5
\.


                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000014327 14711373755 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

DROP DATABASE "Vistara";
--
-- Name: Vistara; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Vistara" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Vistara" OWNER TO postgres;

\connect "Vistara"

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
-- Name: flightdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flightdetails (
    flightid integer NOT NULL,
    flightnumber character varying(10) NOT NULL,
    aircrafttype character varying(50) NOT NULL,
    totalcapacity integer NOT NULL,
    priceperseat_economy numeric(10,2) NOT NULL,
    priceperseat_business numeric(10,2),
    availableseats_economy integer NOT NULL,
    availableseats_business integer,
    flightstatus character varying(20) NOT NULL,
    takeofftime timestamp without time zone NOT NULL,
    landtime timestamp without time zone NOT NULL
);


ALTER TABLE public.flightdetails OWNER TO postgres;

--
-- Name: flightdetails_flightid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flightdetails_flightid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.flightdetails_flightid_seq OWNER TO postgres;

--
-- Name: flightdetails_flightid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flightdetails_flightid_seq OWNED BY public.flightdetails.flightid;


--
-- Name: passenger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.passenger (
    passengerid integer NOT NULL,
    passengername character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    contact character varying(15) NOT NULL,
    frequentflyerpoints integer NOT NULL,
    dateofbirth date NOT NULL,
    city character varying(100) NOT NULL
);


ALTER TABLE public.passenger OWNER TO postgres;

--
-- Name: passenger_passengerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.passenger_passengerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.passenger_passengerid_seq OWNER TO postgres;

--
-- Name: passenger_passengerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.passenger_passengerid_seq OWNED BY public.passenger.passengerid;


--
-- Name: route; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.route (
    flightid integer NOT NULL,
    origin character varying(50) NOT NULL,
    destination character varying(50) NOT NULL,
    distancetraveled integer NOT NULL,
    estimateddelay integer
);


ALTER TABLE public.route OWNER TO postgres;

--
-- Name: flightdetails flightid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flightdetails ALTER COLUMN flightid SET DEFAULT nextval('public.flightdetails_flightid_seq'::regclass);


--
-- Name: passenger passengerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passenger ALTER COLUMN passengerid SET DEFAULT nextval('public.passenger_passengerid_seq'::regclass);


--
-- Data for Name: flightdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flightdetails (flightid, flightnumber, aircrafttype, totalcapacity, priceperseat_economy, priceperseat_business, availableseats_economy, availableseats_business, flightstatus, takeofftime, landtime) FROM stdin;
\.
COPY public.flightdetails (flightid, flightnumber, aircrafttype, totalcapacity, priceperseat_economy, priceperseat_business, availableseats_economy, availableseats_business, flightstatus, takeofftime, landtime) FROM '$$PATH$$/4850.dat';

--
-- Data for Name: passenger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.passenger (passengerid, passengername, email, contact, frequentflyerpoints, dateofbirth, city) FROM stdin;
\.
COPY public.passenger (passengerid, passengername, email, contact, frequentflyerpoints, dateofbirth, city) FROM '$$PATH$$/4848.dat';

--
-- Data for Name: route; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.route (flightid, origin, destination, distancetraveled, estimateddelay) FROM stdin;
\.
COPY public.route (flightid, origin, destination, distancetraveled, estimateddelay) FROM '$$PATH$$/4851.dat';

--
-- Name: flightdetails_flightid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flightdetails_flightid_seq', 18, true);


--
-- Name: passenger_passengerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.passenger_passengerid_seq', 33, true);


--
-- Name: flightdetails flightdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flightdetails
    ADD CONSTRAINT flightdetails_pkey PRIMARY KEY (flightid);


--
-- Name: passenger passenger_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (passengerid);


--
-- Name: route route_flightid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_flightid_fkey FOREIGN KEY (flightid) REFERENCES public.flightdetails(flightid);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         