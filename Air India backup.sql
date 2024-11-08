toc.dat                                                                                             0000600 0004000 0002000 00000021156 14711373657 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                   
    |         	   Air India    16.3    16.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         	           1262    25106 	   Air India    DATABASE     ~   CREATE DATABASE "Air India" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Air India";
                postgres    false         �            1259    25119    customer_age    TABLE     j   CREATE TABLE public.customer_age (
    customerid integer NOT NULL,
    agegroup character varying(10)
);
     DROP TABLE public.customer_age;
       public         heap    postgres    false         �            1259    25114    customer_health    TABLE     j   CREATE TABLE public.customer_health (
    customerid integer NOT NULL,
    hasmedicalcondition boolean
);
 #   DROP TABLE public.customer_health;
       public         heap    postgres    false         �            1259    25108    customer_info    TABLE       CREATE TABLE public.customer_info (
    customerid integer NOT NULL,
    fullname character varying(100),
    emailaddress character varying(100),
    contactnumber character varying(15),
    loyaltypoints integer,
    cityofresidence character varying(50)
);
 !   DROP TABLE public.customer_info;
       public         heap    postgres    false         �            1259    25107    customer_info_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_info_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.customer_info_customerid_seq;
       public          postgres    false    216         
           0    0    customer_info_customerid_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.customer_info_customerid_seq OWNED BY public.customer_info.customerid;
          public          postgres    false    215         �            1259    25125    flight_info    TABLE     �  CREATE TABLE public.flight_info (
    flightid integer NOT NULL,
    flightcode character varying(10),
    aircraftmodel character varying(50),
    totalseats integer,
    ticketprice_economy numeric(10,2),
    ticketprice_business numeric(10,2),
    ticketprice_firstclass numeric(10,2),
    availabilitystatus_economy boolean,
    availabilitystatus_business boolean,
    availabilitystatus_firstclass boolean,
    departuretime timestamp without time zone,
    arrivaltime timestamp without time zone
);
    DROP TABLE public.flight_info;
       public         heap    postgres    false         �            1259    25124    flight_info_flightid_seq    SEQUENCE     �   CREATE SEQUENCE public.flight_info_flightid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.flight_info_flightid_seq;
       public          postgres    false    220                    0    0    flight_info_flightid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.flight_info_flightid_seq OWNED BY public.flight_info.flightid;
          public          postgres    false    219         �            1259    25131    flight_route    TABLE     0  CREATE TABLE public.flight_route (
    flightid integer NOT NULL,
    flightcode character varying(10),
    departureairport character varying(100),
    destinationairport character varying(100),
    flightdistance numeric(10,2),
    currentstatus character varying(15),
    averagedelay numeric(4,2)
);
     DROP TABLE public.flight_route;
       public         heap    postgres    false         a           2604    25111    customer_info customerid    DEFAULT     �   ALTER TABLE ONLY public.customer_info ALTER COLUMN customerid SET DEFAULT nextval('public.customer_info_customerid_seq'::regclass);
 G   ALTER TABLE public.customer_info ALTER COLUMN customerid DROP DEFAULT;
       public          postgres    false    215    216    216         b           2604    25128    flight_info flightid    DEFAULT     |   ALTER TABLE ONLY public.flight_info ALTER COLUMN flightid SET DEFAULT nextval('public.flight_info_flightid_seq'::regclass);
 C   ALTER TABLE public.flight_info ALTER COLUMN flightid DROP DEFAULT;
       public          postgres    false    219    220    220                    0    25119    customer_age 
   TABLE DATA           <   COPY public.customer_age (customerid, agegroup) FROM stdin;
    public          postgres    false    218       4864.dat �          0    25114    customer_health 
   TABLE DATA           J   COPY public.customer_health (customerid, hasmedicalcondition) FROM stdin;
    public          postgres    false    217       4863.dat �          0    25108    customer_info 
   TABLE DATA           z   COPY public.customer_info (customerid, fullname, emailaddress, contactnumber, loyaltypoints, cityofresidence) FROM stdin;
    public          postgres    false    216       4862.dat           0    25125    flight_info 
   TABLE DATA             COPY public.flight_info (flightid, flightcode, aircraftmodel, totalseats, ticketprice_economy, ticketprice_business, ticketprice_firstclass, availabilitystatus_economy, availabilitystatus_business, availabilitystatus_firstclass, departuretime, arrivaltime) FROM stdin;
    public          postgres    false    220       4866.dat           0    25131    flight_route 
   TABLE DATA           �   COPY public.flight_route (flightid, flightcode, departureairport, destinationairport, flightdistance, currentstatus, averagedelay) FROM stdin;
    public          postgres    false    221       4867.dat            0    0    customer_info_customerid_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.customer_info_customerid_seq', 1, false);
          public          postgres    false    215                    0    0    flight_info_flightid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.flight_info_flightid_seq', 43, true);
          public          postgres    false    219         h           2606    25123    customer_age customer_age_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.customer_age
    ADD CONSTRAINT customer_age_pkey PRIMARY KEY (customerid);
 H   ALTER TABLE ONLY public.customer_age DROP CONSTRAINT customer_age_pkey;
       public            postgres    false    218         f           2606    25118 $   customer_health customer_health_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.customer_health
    ADD CONSTRAINT customer_health_pkey PRIMARY KEY (customerid);
 N   ALTER TABLE ONLY public.customer_health DROP CONSTRAINT customer_health_pkey;
       public            postgres    false    217         d           2606    25113     customer_info customer_info_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.customer_info
    ADD CONSTRAINT customer_info_pkey PRIMARY KEY (customerid);
 J   ALTER TABLE ONLY public.customer_info DROP CONSTRAINT customer_info_pkey;
       public            postgres    false    216         j           2606    25130    flight_info flight_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.flight_info
    ADD CONSTRAINT flight_info_pkey PRIMARY KEY (flightid);
 F   ALTER TABLE ONLY public.flight_info DROP CONSTRAINT flight_info_pkey;
       public            postgres    false    220         l           2606    25135    flight_route flight_route_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.flight_route
    ADD CONSTRAINT flight_route_pkey PRIMARY KEY (flightid);
 H   ALTER TABLE ONLY public.flight_route DROP CONSTRAINT flight_route_pkey;
       public            postgres    false    221         m           2606    25136 '   flight_route flight_route_flightid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight_route
    ADD CONSTRAINT flight_route_flightid_fkey FOREIGN KEY (flightid) REFERENCES public.flight_info(flightid);
 Q   ALTER TABLE ONLY public.flight_route DROP CONSTRAINT flight_route_flightid_fkey;
       public          postgres    false    221    4714    220                                                                                                                                                                                                                                                                                                                                                                                                                          4864.dat                                                                                            0000600 0004000 0002000 00000000676 14711373657 0014306 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	26-35
2	36-45
3	18-25
4	46-55
5	26-35
6	18-25
7	36-45
8	46-55
9	26-35
10	36-45
11	18-25
12	46-55
13	26-35
14	36-45
15	18-25
16	46-55
17	26-35
18	36-45
19	18-25
20	46-55
21	26-35
22	36-45
23	18-25
24	46-55
25	26-35
26	36-45
27	18-25
28	46-55
29	26-35
30	36-45
31	18-25
32	46-55
33	26-35
34	36-45
35	18-25
36	46-55
37	26-35
38	36-45
39	18-25
40	46-55
41	26-35
42	36-45
43	18-25
44	46-55
45	26-35
46	36-45
47	18-25
48	46-55
49	26-35
50	36-45
\.


                                                                  4863.dat                                                                                            0000600 0004000 0002000 00000000366 14711373657 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	f
2	t
3	f
4	f
5	t
6	f
7	t
8	f
9	f
10	t
11	f
12	t
13	f
14	f
15	t
16	f
17	f
18	t
19	f
20	f
21	t
22	f
23	t
24	f
25	f
26	t
27	f
28	t
29	f
30	f
31	t
32	f
33	t
34	f
35	t
36	f
37	t
38	f
39	t
40	f
41	f
42	t
43	f
44	f
45	t
46	t
47	f
48	t
49	f
50	t
\.


                                                                                                                                                                                                                                                                          4862.dat                                                                                            0000600 0004000 0002000 00000006120 14711373657 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	John Doe	john.doe@example.com	9876543210	1200	Mumbai
2	Jane Smith	jane.smith@example.com	9876543211	800	Delhi
3	Arun Kapoor	arun.kapoor@example.com	9876543212	1500	Bangalore
4	Megha Jain	megha.jain@example.com	9876543213	500	Kolkata
5	Ravi Verma	ravi.verma@example.com	9876543214	2000	Hyderabad
6	Priya Singh	priya.singh@example.com	9876543215	1000	Chennai
7	Rahul Mehta	rahul.mehta@example.com	9876543216	1200	Pune
8	Sonia Sharma	sonia.sharma@example.com	9876543217	900	Ahmedabad
9	Alice Brown	alice.brown@example.com	9876543220	1300	Delhi
10	Vivek Rao	vivek.rao@example.com	9876543221	1100	Bangalore
11	Sara Ali	sara.ali@example.com	9876543222	600	Mumbai
12	Deepak Kumar	deepak.kumar@example.com	9876543223	1400	Hyderabad
13	Manisha Patil	manisha.patil@example.com	9876543224	900	Pune
14	Kapil Yadav	kapil.yadav@example.com	9876543225	1600	Chennai
15	Pooja Desai	pooja.desai@example.com	9876543226	800	Kolkata
16	Gaurav Khanna	gaurav.khanna@example.com	9876543227	1000	Delhi
17	Neha Pandey	neha.pandey@example.com	9876543228	500	Bangalore
18	Amit Shah	amit.shah@example.com	9876543229	1500	Ahmedabad
19	Simran Kaur	simran.kaur@example.com	9876543230	700	Mumbai
20	Rohan Gupta	rohan.gupta@example.com	9876543231	1100	Hyderabad
21	Monica Fernandes	monica.fernandes@example.com	9876543232	600	Pune
22	Raj Malhotra	raj.malhotra@example.com	9876543233	1300	Delhi
23	Ankita Sharma	ankita.sharma@example.com	9876543234	900	Bangalore
24	Vikas Nair	vikas.nair@example.com	9876543235	1000	Kolkata
25	Aditi Patel	aditi.patel@example.com	9876543236	1100	Mumbai
26	Nikhil Shah	nikhil.shah@example.com	9876543237	900	Ahmedabad
27	Krishna Rao	krishna.rao@example.com	9876543238	1200	Hyderabad
28	Suman Joshi	suman.joshi@example.com	9876543239	1500	Chennai
29	Anita Aggarwal	anita.aggarwal@example.com	9876543240	600	Delhi
30	Gopal Iyer	gopal.iyer@example.com	9876543241	2000	Pune
31	Lata Mehta	lata.mehta@example.com	9876543242	1800	Mumbai
32	Arjun Bhat	arjun.bhat@example.com	9876543243	1700	Bangalore
33	Sneha Verma	sneha.verma@example.com	9876543244	600	Hyderabad
34	Tina Kapoor	tina.kapoor@example.com	9876543245	1500	Delhi
35	Siddharth Desai	siddharth.desai@example.com	9876543246	1000	Ahmedabad
36	Vandana Singh	vandana.singh@example.com	9876543247	1200	Chennai
37	Ramesh Gupta	ramesh.gupta@example.com	9876543248	900	Pune
38	Suresh Kaur	suresh.kaur@example.com	9876543249	800	Delhi
39	Farah Khan	farah.khan@example.com	9876543250	1700	Mumbai
40	Manoj Dubey	manoj.dubey@example.com	9876543251	2000	Bangalore
41	Sunil Verma	sunil.verma@example.com	9876543252	1500	Ahmedabad
42	Nina Joshi	nina.joshi@example.com	9876543253	1200	Hyderabad
43	Rajesh Mehra	rajesh.mehra@example.com	9876543254	1400	Kolkata
44	Kamala Patel	kamala.patel@example.com	9876543255	1000	Delhi
45	Usha Iyer	usha.iyer@example.com	9876543256	1600	Pune
46	Ravi Narayan	ravi.narayan@example.com	9876543257	1700	Chennai
47	Pranav Bhatia	pranav.bhatia@example.com	9876543258	1200	Mumbai
48	Anjali Shah	anjali.shah@example.com	9876543259	1300	Bangalore
49	Tara Aggarwal	tara.aggarwal@example.com	9876543260	1000	Hyderabad
50	Kunal Kapoor	kunal.kapoor@example.com	9876543261	2000	Ahmedabad
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                4866.dat                                                                                            0000600 0004000 0002000 00000007750 14711373657 0014310 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	AI100	Boeing 777	300	15000.00	30000.00	60000.00	t	t	t	2025-01-01 10:00:00	2025-01-01 16:00:00
2	AI100	Boeing 777	300	15000.00	30000.00	60000.00	f	t	t	2025-01-03 10:00:00	2025-01-03 16:00:00
3	AI101	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-01-02 15:00:00	2025-01-02 21:00:00
4	AI102	Airbus A380	400	16000.00	32000.00	70000.00	t	t	t	2025-01-01 12:00:00	2025-01-01 18:30:00
5	AI102	Airbus A380	400	16000.00	32000.00	70000.00	t	t	f	2025-01-05 12:00:00	2025-01-05 18:30:00
6	AI200	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-01-02 06:00:00	2025-01-02 08:00:00
7	AI200	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-01-03 06:00:00	2025-01-03 08:00:00
8	AI201	Boeing 737	220	9000.00	16000.00	\N	t	t	\N	2025-01-03 14:00:00	2025-01-03 16:30:00
9	AI202	Airbus A321	210	8500.00	15500.00	\N	t	t	\N	2025-01-04 17:00:00	2025-01-04 19:30:00
10	AI203	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-01-02 22:00:00	2025-01-03 05:00:00
11	AI204	Airbus A330	260	13000.00	27000.00	52000.00	t	t	f	2025-01-02 18:00:00	2025-01-03 01:00:00
12	AI205	Boeing 777	300	15000.00	30000.00	60000.00	t	t	t	2025-01-03 10:00:00	2025-01-03 16:00:00
13	AI300	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-01-02 06:00:00	2025-01-02 08:00:00
14	AI300	Airbus A320	180	8000.00	15000.00	\N	f	t	\N	2025-01-03 06:00:00	2025-01-03 08:00:00
15	AI301	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-01-06 11:00:00	2025-01-06 17:00:00
16	AI302	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-01-07 07:00:00	2025-01-07 09:00:00
17	AI303	Boeing 737	220	9000.00	16000.00	\N	t	t	\N	2025-01-07 12:00:00	2025-01-07 14:30:00
18	AI304	Airbus A380	400	16000.00	32000.00	70000.00	t	t	t	2025-01-08 13:00:00	2025-01-08 19:00:00
19	AI305	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-01-09 11:00:00	2025-01-09 17:00:00
20	AI306	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-01-10 06:00:00	2025-01-10 08:00:00
21	AI307	Boeing 737	220	9000.00	16000.00	\N	t	t	\N	2025-01-11 10:00:00	2025-01-11 12:30:00
22	AI308	Airbus A380	400	16000.00	32000.00	70000.00	t	t	t	2025-01-12 13:00:00	2025-01-12 19:00:00
23	AI309	Airbus A330	260	13000.00	27000.00	52000.00	t	t	f	2025-01-13 18:00:00	2025-01-13 01:00:00
24	AI310	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-01-14 06:00:00	2025-01-14 08:00:00
25	AI311	Boeing 737	220	9000.00	16000.00	\N	t	t	\N	2025-01-15 14:00:00	2025-01-15 16:30:00
26	AI312	Airbus A321	210	8500.00	15500.00	\N	t	t	\N	2025-01-16 17:00:00	2025-01-16 19:30:00
27	AI313	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-01-17 12:00:00	2025-01-17 18:00:00
28	AI314	Airbus A380	400	16000.00	32000.00	70000.00	t	t	t	2025-01-18 13:00:00	2025-01-18 19:00:00
29	AI315	Airbus A330	260	13000.00	27000.00	52000.00	t	t	f	2025-01-19 18:00:00	2025-01-19 01:00:00
30	AI316	Boeing 737	220	9000.00	16000.00	\N	t	t	\N	2025-02-01 14:00:00	2025-02-01 16:30:00
31	AI317	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-02-02 06:00:00	2025-02-02 08:00:00
32	AI318	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-02-03 11:00:00	2025-02-03 17:00:00
33	AI319	Airbus A380	400	16000.00	32000.00	70000.00	t	t	t	2025-02-04 13:00:00	2025-02-04 19:00:00
34	AI320	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-02-05 06:00:00	2025-02-05 08:00:00
35	AI321	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-02-06 11:00:00	2025-02-06 17:00:00
36	AI322	Airbus A330	260	13000.00	27000.00	52000.00	t	t	f	2025-02-07 18:00:00	2025-02-07 01:00:00
37	AI323	Airbus A380	400	16000.00	32000.00	70000.00	t	t	t	2025-02-08 13:00:00	2025-02-08 19:00:00
38	AI324	Boeing 737	220	9000.00	16000.00	\N	t	t	\N	2025-02-09 14:00:00	2025-02-09 16:30:00
39	AI325	Airbus A321	210	8500.00	15500.00	\N	t	t	\N	2025-02-10 17:00:00	2025-02-10 19:30:00
40	AI326	Airbus A380	400	16000.00	32000.00	70000.00	t	t	t	2025-02-11 13:00:00	2025-02-11 19:00:00
41	AI327	Boeing 787	250	14000.00	28000.00	55000.00	t	t	t	2025-02-12 11:00:00	2025-02-12 17:00:00
42	AI328	Airbus A320	180	8000.00	15000.00	\N	t	t	\N	2025-02-13 06:00:00	2025-02-13 08:00:00
43	AI329	Boeing 737	220	9000.00	16000.00	\N	t	t	\N	2025-02-14 14:00:00	2025-02-14 16:30:00
\.


                        4867.dat                                                                                            0000600 0004000 0002000 00000003225 14711373657 0014302 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	AI100	DEL	JFK	11760.00	In Air	10.00
2	AI100	DEL	JFK	11760.00	Not Departed	0.00
3	AI101	BOM	LHR	7200.00	Arrived	15.00
4	AI102	BLR	DXB	2700.00	In Air	5.00
5	AI102	BLR	DXB	2700.00	Not Departed	0.00
6	AI200	DEL	BOM	1150.00	Arrived	5.00
7	AI200	DEL	BOM	1150.00	Not Departed	0.00
8	AI201	BLR	HYD	500.00	In Air	8.00
9	AI202	CCU	DEL	1440.00	Arrived	2.00
10	AI203	DEL	BLR	1740.00	In Air	12.00
11	AI204	BOM	BLR	850.00	Arrived	7.00
12	AI205	HYD	DEL	1250.00	Not Departed	0.00
13	AI300	DEL	BOM	1150.00	In Air	9.00
14	AI300	DEL	BOM	1150.00	Arrived	3.00
15	AI301	DEL	SIN	4150.00	Not Departed	0.00
16	AI302	BLR	GOI	620.00	Arrived	6.00
17	AI303	BLR	HYD	500.00	In Air	10.00
18	AI304	DEL	LHR	7200.00	Not Departed	0.00
19	AI305	BOM	DXB	2300.00	Arrived	8.00
20	AI306	CCU	BOM	1675.00	Not Departed	0.00
21	AI307	BLR	HYD	500.00	In Air	4.00
22	AI308	DEL	SIN	4150.00	Not Departed	0.00
23	AI309	DEL	DXB	2700.00	In Air	6.00
24	AI310	DEL	SIN	4150.00	Arrived	10.00
25	AI311	BOM	DEL	1150.00	Arrived	2.00
26	AI312	BLR	CCU	1560.00	In Air	12.00
27	AI313	BOM	JFK	12500.00	Arrived	20.00
28	AI314	DEL	DXB	2700.00	Not Departed	0.00
29	AI315	BLR	BOM	850.00	In Air	3.00
30	AI316	DEL	LHR	7200.00	Arrived	14.00
31	AI317	BOM	SIN	4150.00	Not Departed	0.00
32	AI318	BLR	LHR	8380.00	Arrived	10.00
33	AI319	BOM	DXB	2300.00	In Air	7.00
34	AI320	BOM	HYD	710.00	Not Departed	0.00
35	AI321	DEL	CCU	1440.00	Arrived	2.00
36	AI322	BOM	BLR	850.00	In Air	6.00
37	AI323	DEL	HYD	1250.00	Arrived	5.00
38	AI324	BLR	GOI	620.00	Not Departed	0.00
39	AI325	BOM	LHR	7200.00	In Air	12.00
40	AI326	DEL	SIN	4150.00	Not Departed	0.00
41	AI327	BLR	HYD	500.00	In Air	8.00
42	AI328	DEL	BOM	1150.00	Arrived	3.00
43	AI329	BOM	JFK	12500.00	In Air	15.00
\.


                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000020051 14711373657 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE "Air India";
--
-- Name: Air India; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Air India" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE "Air India" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Air India'"

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
-- Name: customer_age; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_age (
    customerid integer NOT NULL,
    agegroup character varying(10)
);


ALTER TABLE public.customer_age OWNER TO postgres;

--
-- Name: customer_health; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_health (
    customerid integer NOT NULL,
    hasmedicalcondition boolean
);


ALTER TABLE public.customer_health OWNER TO postgres;

--
-- Name: customer_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_info (
    customerid integer NOT NULL,
    fullname character varying(100),
    emailaddress character varying(100),
    contactnumber character varying(15),
    loyaltypoints integer,
    cityofresidence character varying(50)
);


ALTER TABLE public.customer_info OWNER TO postgres;

--
-- Name: customer_info_customerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_info_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_info_customerid_seq OWNER TO postgres;

--
-- Name: customer_info_customerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_info_customerid_seq OWNED BY public.customer_info.customerid;


--
-- Name: flight_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flight_info (
    flightid integer NOT NULL,
    flightcode character varying(10),
    aircraftmodel character varying(50),
    totalseats integer,
    ticketprice_economy numeric(10,2),
    ticketprice_business numeric(10,2),
    ticketprice_firstclass numeric(10,2),
    availabilitystatus_economy boolean,
    availabilitystatus_business boolean,
    availabilitystatus_firstclass boolean,
    departuretime timestamp without time zone,
    arrivaltime timestamp without time zone
);


ALTER TABLE public.flight_info OWNER TO postgres;

--
-- Name: flight_info_flightid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flight_info_flightid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.flight_info_flightid_seq OWNER TO postgres;

--
-- Name: flight_info_flightid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flight_info_flightid_seq OWNED BY public.flight_info.flightid;


--
-- Name: flight_route; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flight_route (
    flightid integer NOT NULL,
    flightcode character varying(10),
    departureairport character varying(100),
    destinationairport character varying(100),
    flightdistance numeric(10,2),
    currentstatus character varying(15),
    averagedelay numeric(4,2)
);


ALTER TABLE public.flight_route OWNER TO postgres;

--
-- Name: customer_info customerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_info ALTER COLUMN customerid SET DEFAULT nextval('public.customer_info_customerid_seq'::regclass);


--
-- Name: flight_info flightid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flight_info ALTER COLUMN flightid SET DEFAULT nextval('public.flight_info_flightid_seq'::regclass);


--
-- Data for Name: customer_age; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_age (customerid, agegroup) FROM stdin;
\.
COPY public.customer_age (customerid, agegroup) FROM '$$PATH$$/4864.dat';

--
-- Data for Name: customer_health; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_health (customerid, hasmedicalcondition) FROM stdin;
\.
COPY public.customer_health (customerid, hasmedicalcondition) FROM '$$PATH$$/4863.dat';

--
-- Data for Name: customer_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_info (customerid, fullname, emailaddress, contactnumber, loyaltypoints, cityofresidence) FROM stdin;
\.
COPY public.customer_info (customerid, fullname, emailaddress, contactnumber, loyaltypoints, cityofresidence) FROM '$$PATH$$/4862.dat';

--
-- Data for Name: flight_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flight_info (flightid, flightcode, aircraftmodel, totalseats, ticketprice_economy, ticketprice_business, ticketprice_firstclass, availabilitystatus_economy, availabilitystatus_business, availabilitystatus_firstclass, departuretime, arrivaltime) FROM stdin;
\.
COPY public.flight_info (flightid, flightcode, aircraftmodel, totalseats, ticketprice_economy, ticketprice_business, ticketprice_firstclass, availabilitystatus_economy, availabilitystatus_business, availabilitystatus_firstclass, departuretime, arrivaltime) FROM '$$PATH$$/4866.dat';

--
-- Data for Name: flight_route; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flight_route (flightid, flightcode, departureairport, destinationairport, flightdistance, currentstatus, averagedelay) FROM stdin;
\.
COPY public.flight_route (flightid, flightcode, departureairport, destinationairport, flightdistance, currentstatus, averagedelay) FROM '$$PATH$$/4867.dat';

--
-- Name: customer_info_customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_info_customerid_seq', 1, false);


--
-- Name: flight_info_flightid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flight_info_flightid_seq', 43, true);


--
-- Name: customer_age customer_age_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_age
    ADD CONSTRAINT customer_age_pkey PRIMARY KEY (customerid);


--
-- Name: customer_health customer_health_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_health
    ADD CONSTRAINT customer_health_pkey PRIMARY KEY (customerid);


--
-- Name: customer_info customer_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_info
    ADD CONSTRAINT customer_info_pkey PRIMARY KEY (customerid);


--
-- Name: flight_info flight_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flight_info
    ADD CONSTRAINT flight_info_pkey PRIMARY KEY (flightid);


--
-- Name: flight_route flight_route_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flight_route
    ADD CONSTRAINT flight_route_pkey PRIMARY KEY (flightid);


--
-- Name: flight_route flight_route_flightid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flight_route
    ADD CONSTRAINT flight_route_flightid_fkey FOREIGN KEY (flightid) REFERENCES public.flight_info(flightid);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       