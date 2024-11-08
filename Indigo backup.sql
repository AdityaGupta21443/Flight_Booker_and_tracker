toc.dat                                                                                             0000600 0004000 0002000 00000012131 14711373717 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   '                
    |            Indigo    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    25165    Indigo    DATABASE     {   CREATE DATABASE "Indigo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Indigo";
                postgres    false         �            1259    25171    clients    TABLE     �   CREATE TABLE public.clients (
    full_name character varying(50) NOT NULL,
    emailid character varying(100) NOT NULL,
    contactno character varying(15) NOT NULL,
    dob date NOT NULL,
    preexistingcondition character varying(255)
);
    DROP TABLE public.clients;
       public         heap    postgres    false         �            1259    25194    flightschedule    TABLE        CREATE TABLE public.flightschedule (
    flightid integer NOT NULL,
    flight_code character varying(10) NOT NULL,
    seatsleft integer NOT NULL,
    flightfare numeric(10,2) NOT NULL,
    status character varying(20),
    starttime timestamp without time zone NOT NULL,
    endtime timestamp without time zone NOT NULL,
    CONSTRAINT flightschedule_status_check CHECK (((status)::text = ANY ((ARRAY['Not departed'::character varying, 'In air'::character varying, 'Arrived'::character varying])::text[])))
);
 "   DROP TABLE public.flightschedule;
       public         heap    postgres    false         �            1259    25176    loyalty    TABLE     j   CREATE TABLE public.loyalty (
    emailid character varying(100) NOT NULL,
    points integer NOT NULL
);
    DROP TABLE public.loyalty;
       public         heap    postgres    false         �            1259    25215 	   routeplan    TABLE     �   CREATE TABLE public.routeplan (
    flightid integer NOT NULL,
    fromlocation character varying(50) NOT NULL,
    tolocation character varying(50) NOT NULL,
    distancekm integer NOT NULL,
    avgdelay integer
);
    DROP TABLE public.routeplan;
       public         heap    postgres    false         �          0    25171    clients 
   TABLE DATA           [   COPY public.clients (full_name, emailid, contactno, dob, preexistingcondition) FROM stdin;
    public          postgres    false    215       4851.dat �          0    25194    flightschedule 
   TABLE DATA           r   COPY public.flightschedule (flightid, flight_code, seatsleft, flightfare, status, starttime, endtime) FROM stdin;
    public          postgres    false    217       4853.dat �          0    25176    loyalty 
   TABLE DATA           2   COPY public.loyalty (emailid, points) FROM stdin;
    public          postgres    false    216       4852.dat �          0    25215 	   routeplan 
   TABLE DATA           ]   COPY public.routeplan (flightid, fromlocation, tolocation, distancekm, avgdelay) FROM stdin;
    public          postgres    false    218       4854.dat ]           2606    25175    clients clients_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (emailid);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    215         _           2606    25199 "   flightschedule flightschedule_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.flightschedule
    ADD CONSTRAINT flightschedule_pkey PRIMARY KEY (flightid);
 L   ALTER TABLE ONLY public.flightschedule DROP CONSTRAINT flightschedule_pkey;
       public            postgres    false    217         a           2606    25219    routeplan routeplan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.routeplan
    ADD CONSTRAINT routeplan_pkey PRIMARY KEY (flightid);
 B   ALTER TABLE ONLY public.routeplan DROP CONSTRAINT routeplan_pkey;
       public            postgres    false    218         b           2606    25179    loyalty loyalty_emailid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.loyalty
    ADD CONSTRAINT loyalty_emailid_fkey FOREIGN KEY (emailid) REFERENCES public.clients(emailid) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.loyalty DROP CONSTRAINT loyalty_emailid_fkey;
       public          postgres    false    4701    216    215         c           2606    25220 !   routeplan routeplan_flightid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.routeplan
    ADD CONSTRAINT routeplan_flightid_fkey FOREIGN KEY (flightid) REFERENCES public.flightschedule(flightid);
 K   ALTER TABLE ONLY public.routeplan DROP CONSTRAINT routeplan_flightid_fkey;
       public          postgres    false    217    4703    218                                                                                                                                                                                                                                                                                                                                                                                                                                               4851.dat                                                                                            0000600 0004000 0002000 00000003263 14711373717 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Priya Singh	priya.singh@example.com	9876543215	1988-11-03	\N
Ravi Verma	ravi.verma@example.com	9876543214	1982-01-25	\N
Rahul Mehta	rahul.mehta@example.com	9876543216	1983-05-07	\N
Sonia Sharma	sonia.sharma@example.com	9876543217	1991-09-12	\N
Alice Brown	alice.brown@example.com	9876543220	1984-12-19	\N
Vivek Rao	vivek.rao@example.com	9876543221	1980-07-11	\N
Sara Ali	sara.ali@example.com	9876543222	1995-06-05	\N
Deepak Kumar	deepak.kumar@example.com	9876543223	1986-10-15	\N
Simran Kaur	simran.kaur@example.com	9876543230	1990-09-23	\N
Rohan Gupta	rohan.gupta@example.com	9876543231	1994-02-18	\N
Arun Kapoor	arun.k@vistara.com	9999999999	1986-03-12	\N
Megha Jain	megha.j@vistara.com	8888888888	1990-08-15	\N
Kapil Yadav	kapil.yadav@vistara.com	9123454321	1985-02-17	\N
Pooja Desai	pooja.desai@vistara.com	9776651234	1992-04-25	\N
Gaurav Khanna	gaurav.khanna@vistara.com	9555544333	1993-12-01	\N
Neha Pandey	neha.pandey@vistara.com	9887766555	1996-05-09	\N
Amit Shah	amit.shah@vistara.com	9665544332	1987-07-28	\N
Manisha Patil	manisha.patil@vistara.com	9331122233	1989-03-08	\N
Ishaan Verma	ishaan.verma@vistara.com	9123450000	1993-11-13	\N
Ritika Malhotra	ritika.malhotra@vistara.com	9000090001	1995-04-09	\N
Ankita Desai	ankita.desai@vistara.com	9887766554	1992-03-11	\N
Rohit Shetty	rohit.shetty@vistara.com	9776655443	1980-08-29	\N
Naina Sharma	naina.sharma@vistara.com	9665544332	1985-05-17	\N
Akash Kumar	akash.kumar@vistara.com	9000091234	1991-07-28	\N
Sneha Jain	sneha.jain@vistara.com	9111123456	1989-10-10	\N
Harish Menon	harish.menon@vistara.com	9222233445	1987-09-22	\N
Divya Sharma	divya.sharma@vistara.com	9000088880	1994-06-14	\N
Vikram Rao	vikram.rao@vistara.com	9111009876	1995-11-03	\N
\.


                                                                                                                                                                                                                                                                                                                                             4853.dat                                                                                            0000600 0004000 0002000 00000007112 14711373717 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	IGO101	20	3300.00	Not departed	2024-11-01 06:00:00	2024-11-01 08:00:00
2	IGO102	15	3100.00	Not departed	2024-11-01 07:00:00	2024-11-01 09:30:00
3	IGO103	18	3200.00	Not departed	2024-11-01 08:30:00	2024-11-01 10:30:00
4	IGO104	25	3500.00	Not departed	2024-11-01 09:00:00	2024-11-01 11:00:00
5	IGO105	17	2700.00	Not departed	2024-11-01 11:00:00	2024-11-01 13:00:00
6	IGO201	12	9800.00	Not departed	2024-11-01 14:00:00	2024-11-01 20:00:00
7	IGO202	20	11000.00	Not departed	2024-11-01 16:00:00	2024-11-01 22:30:00
8	IGO203	5	12000.00	Not departed	2024-11-01 18:00:00	2024-11-02 01:00:00
9	IGO204	28	13500.00	Not departed	2024-11-02 00:00:00	2024-11-02 06:00:00
10	IGO205	9	12500.00	Not departed	2024-11-02 04:00:00	2024-11-02 10:30:00
11	IGO106	10	3400.00	In air	2024-11-02 07:00:00	2024-11-02 09:00:00
12	IGO107	22	3200.00	Arrived	2024-11-02 09:30:00	2024-11-02 12:00:00
13	IGO206	6	9700.00	In air	2024-11-02 14:00:00	2024-11-02 19:30:00
14	IGO207	8	13000.00	Arrived	2024-11-02 16:00:00	2024-11-02 22:00:00
15	IGO108	23	3100.00	Not departed	2024-11-03 06:00:00	2024-11-03 08:30:00
16	IGO109	19	2900.00	Not departed	2024-11-03 07:30:00	2024-11-03 10:00:00
97	IGO198	11	3400.00	Not departed	2024-11-25 15:30:00	2024-11-25 18:00:00
98	IGO305	4	12500.00	In air	2024-11-25 17:30:00	2024-11-25 23:30:00
99	IGO306	8	11000.00	Arrived	2024-11-25 21:00:00	2024-11-26 02:00:00
100	IGO307	3	9500.00	In air	2024-11-26 03:00:00	2024-11-26 09:00:00
1001	IGO214	25	4500.00	Not departed	2024-11-05 09:00:00	2024-11-05 11:30:00
1002	IGO214	18	4500.00	Not departed	2024-11-06 09:00:00	2024-11-06 11:30:00
1003	IGO214	12	4500.00	In air	2024-11-07 09:00:00	2024-11-07 11:30:00
1004	IGO215	20	12500.00	Not departed	2024-11-08 07:30:00	2024-11-08 10:00:00
1005	IGO215	5	12500.00	Arrived	2024-11-09 07:30:00	2024-11-09 10:00:00
1006	IGO216	15	5000.00	Not departed	2024-11-10 14:00:00	2024-11-10 17:30:00
1007	IGO216	0	5000.00	Arrived	2024-11-11 14:00:00	2024-11-11 17:30:00
1008	IGO217	10	9000.00	Not departed	2024-11-12 06:30:00	2024-11-12 09:00:00
1009	IGO217	8	9000.00	Not departed	2024-11-13 11:30:00	2024-11-13 13:45:00
1010	IGO218	25	8000.00	Not departed	2024-11-14 16:00:00	2024-11-14 18:00:00
1011	IGO218	12	8000.00	Not departed	2024-11-15 05:45:00	2024-11-15 07:50:00
1012	IGO219	8	15500.00	In air	2024-11-16 20:00:00	2024-11-16 23:30:00
1013	IGO219	0	15500.00	Arrived	2024-11-17 20:00:00	2024-11-17 23:30:00
1014	IGO220	30	4500.00	Not departed	2024-11-18 12:00:00	2024-11-18 14:00:00
1015	IGO221	20	5600.00	Not departed	2024-11-19 09:30:00	2024-11-19 12:00:00
1016	IGO221	5	5600.00	Arrived	2024-11-20 09:30:00	2024-11-20 12:00:00
1017	IGO222	18	13500.00	Not departed	2024-11-21 11:00:00	2024-11-21 14:30:00
1018	IGO222	6	13500.00	Not departed	2024-11-22 11:00:00	2024-11-22 14:30:00
1019	IGO223	22	8000.00	Not departed	2024-11-23 05:00:00	2024-11-23 07:30:00
1020	IGO223	2	8000.00	Arrived	2024-11-24 05:00:00	2024-11-24 07:30:00
1021	IGO224	25	4600.00	Not departed	2024-11-25 06:00:00	2024-11-25 08:00:00
1022	IGO225	10	9100.00	In air	2024-11-26 17:30:00	2024-11-26 20:30:00
1023	IGO225	8	9100.00	Not departed	2024-11-27 19:00:00	2024-11-27 22:30:00
1024	IGO226	5	6400.00	Not departed	2024-11-28 10:30:00	2024-11-28 13:00:00
1025	IGO226	16	7500.00	Not departed	2024-11-29 04:30:00	2024-11-29 07:30:00
1026	IGO227	24	4900.00	Not departed	2024-11-30 08:00:00	2024-11-30 11:00:00
1027	IGO228	6	14500.00	Arrived	2024-12-01 15:00:00	2024-12-01 18:45:00
1028	IGO229	13	8600.00	Not departed	2024-12-02 12:15:00	2024-12-02 15:45:00
1029	IGO229	2	8600.00	In air	2024-12-03 18:30:00	2024-12-03 21:30:00
1030	IGO230	7	9500.00	Not departed	2024-12-04 14:30:00	2024-12-04 17:15:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                      4852.dat                                                                                            0000600 0004000 0002000 00000001441 14711373717 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        priya.singh@example.com	1000
ravi.verma@example.com	2000
rahul.mehta@example.com	1200
sonia.sharma@example.com	900
alice.brown@example.com	1300
vivek.rao@example.com	1100
sara.ali@example.com	600
deepak.kumar@example.com	1400
simran.kaur@example.com	700
rohan.gupta@example.com	1100
arun.k@vistara.com	300
megha.j@vistara.com	100
kapil.yadav@vistara.com	200
pooja.desai@vistara.com	500
gaurav.khanna@vistara.com	700
neha.pandey@vistara.com	1500
amit.shah@vistara.com	900
manisha.patil@vistara.com	400
ishaan.verma@vistara.com	1800
ritika.malhotra@vistara.com	600
ankita.desai@vistara.com	1500
rohit.shetty@vistara.com	2200
naina.sharma@vistara.com	1200
akash.kumar@vistara.com	300
sneha.jain@vistara.com	1700
harish.menon@vistara.com	4000
divya.sharma@vistara.com	1100
vikram.rao@vistara.com	900
\.


                                                                                                                                                                                                                               4854.dat                                                                                            0000600 0004000 0002000 00000002425 14711373717 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Delhi	Mumbai	1400	15
2	Mumbai	Bangalore	840	10
3	Bangalore	Hyderabad	560	5
4	Hyderabad	Chennai	600	12
5	Chennai	Kolkata	1650	20
6	Delhi	London	6700	60
7	Mumbai	Dubai	2000	30
8	Bangalore	Singapore	3500	45
9	Delhi	New York	12000	120
10	Mumbai	Tokyo	5800	90
11	Hyderabad	Kolkata	1500	20
12	Bangalore	Delhi	2000	25
13	Delhi	Dubai	2400	35
14	Chennai	Bangkok	2900	40
15	Bangalore	Ahmedabad	850	10
16	Kolkata	Pune	1600	25
1001	Delhi	Goa	1250	15
1002	Mumbai	Chennai	1000	10
1003	Bangalore	Hyderabad	560	5
1004	Kolkata	Delhi	1500	20
1005	Hyderabad	Pune	670	12
1006	Chennai	Kochi	700	10
1007	Delhi	Bangalore	2000	25
1008	Mumbai	Jaipur	280	5
1009	Kolkata	Varanasi	680	15
1010	Bangalore	Indore	850	12
1011	Delhi	Hong Kong	3000	50
1012	Mumbai	Singapore	5000	70
1013	Bangalore	Dubai	2000	40
1014	Chennai	Bangkok	2900	50
1015	Hyderabad	Maldives	3100	65
1016	Pune	Abu Dhabi	3300	70
1017	Kolkata	Sydney	9000	120
1018	Delhi	San Francisco	13000	180
1019	Mumbai	Berlin	7400	90
1020	Chennai	Singapore	3300	50
1021	Delhi	Istanbul	4900	80
1022	Bangalore	Kuala Lumpur	3800	55
1023	Hyderabad	Los Angeles	15000	200
1024	Pune	Dubai	2000	25
1025	Delhi	Shanghai	5500	75
1026	Mumbai	Bangkok	3300	60
1027	Chennai	London	6700	100
1028	Kolkata	New York	12000	150
1029	Bangalore	Sydney	7800	120
1030	Hyderabad	Toronto	13000	170
\.


                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000011737 14711373717 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE "Indigo";
--
-- Name: Indigo; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Indigo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Indigo" OWNER TO postgres;

\connect "Indigo"

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
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    full_name character varying(50) NOT NULL,
    emailid character varying(100) NOT NULL,
    contactno character varying(15) NOT NULL,
    dob date NOT NULL,
    preexistingcondition character varying(255)
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: flightschedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flightschedule (
    flightid integer NOT NULL,
    flight_code character varying(10) NOT NULL,
    seatsleft integer NOT NULL,
    flightfare numeric(10,2) NOT NULL,
    status character varying(20),
    starttime timestamp without time zone NOT NULL,
    endtime timestamp without time zone NOT NULL,
    CONSTRAINT flightschedule_status_check CHECK (((status)::text = ANY ((ARRAY['Not departed'::character varying, 'In air'::character varying, 'Arrived'::character varying])::text[])))
);


ALTER TABLE public.flightschedule OWNER TO postgres;

--
-- Name: loyalty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loyalty (
    emailid character varying(100) NOT NULL,
    points integer NOT NULL
);


ALTER TABLE public.loyalty OWNER TO postgres;

--
-- Name: routeplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.routeplan (
    flightid integer NOT NULL,
    fromlocation character varying(50) NOT NULL,
    tolocation character varying(50) NOT NULL,
    distancekm integer NOT NULL,
    avgdelay integer
);


ALTER TABLE public.routeplan OWNER TO postgres;

--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (full_name, emailid, contactno, dob, preexistingcondition) FROM stdin;
\.
COPY public.clients (full_name, emailid, contactno, dob, preexistingcondition) FROM '$$PATH$$/4851.dat';

--
-- Data for Name: flightschedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flightschedule (flightid, flight_code, seatsleft, flightfare, status, starttime, endtime) FROM stdin;
\.
COPY public.flightschedule (flightid, flight_code, seatsleft, flightfare, status, starttime, endtime) FROM '$$PATH$$/4853.dat';

--
-- Data for Name: loyalty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loyalty (emailid, points) FROM stdin;
\.
COPY public.loyalty (emailid, points) FROM '$$PATH$$/4852.dat';

--
-- Data for Name: routeplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.routeplan (flightid, fromlocation, tolocation, distancekm, avgdelay) FROM stdin;
\.
COPY public.routeplan (flightid, fromlocation, tolocation, distancekm, avgdelay) FROM '$$PATH$$/4854.dat';

--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (emailid);


--
-- Name: flightschedule flightschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flightschedule
    ADD CONSTRAINT flightschedule_pkey PRIMARY KEY (flightid);


--
-- Name: routeplan routeplan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.routeplan
    ADD CONSTRAINT routeplan_pkey PRIMARY KEY (flightid);


--
-- Name: loyalty loyalty_emailid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loyalty
    ADD CONSTRAINT loyalty_emailid_fkey FOREIGN KEY (emailid) REFERENCES public.clients(emailid) ON DELETE CASCADE;


--
-- Name: routeplan routeplan_flightid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.routeplan
    ADD CONSTRAINT routeplan_flightid_fkey FOREIGN KEY (flightid) REFERENCES public.flightschedule(flightid);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 