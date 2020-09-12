--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2020-09-12 15:36:45

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
-- TOC entry 207 (class 1259 OID 16446)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    brand character varying(15)
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16444)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO postgres;

--
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 206
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- TOC entry 211 (class 1259 OID 16522)
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    mark character varying(15),
    idbrand integer,
    idcolor integer,
    yearman integer,
    idcontry integer,
    idower integer,
    dateadd date
);


ALTER TABLE public.cars OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16520)
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cars_id_seq OWNER TO postgres;

--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 210
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- TOC entry 209 (class 1259 OID 16454)
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors (
    id integer NOT NULL,
    color character varying(15)
);


ALTER TABLE public.colors OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16452)
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_id_seq OWNER TO postgres;

--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 208
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;


--
-- TOC entry 203 (class 1259 OID 16430)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    country character varying(15)
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16428)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO postgres;

--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 202
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- TOC entry 205 (class 1259 OID 16438)
-- Name: owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.owners (
    id integer NOT NULL,
    firstname character varying(15),
    lastname character varying(15),
    address character varying(30),
    phone character varying(30),
    datebirth date
);


ALTER TABLE public.owners OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16436)
-- Name: owners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.owners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.owners_id_seq OWNER TO postgres;

--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 204
-- Name: owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.owners_id_seq OWNED BY public.owners.id;


--
-- TOC entry 2713 (class 2604 OID 16449)
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- TOC entry 2715 (class 2604 OID 16525)
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- TOC entry 2714 (class 2604 OID 16457)
-- Name: colors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 16433)
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 16441)
-- Name: owners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.owners ALTER COLUMN id SET DEFAULT nextval('public.owners_id_seq'::regclass);


--
-- TOC entry 2861 (class 0 OID 16446)
-- Dependencies: 207
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brands (id, brand) FROM stdin;
1	Audi
2	BMW
3	Ford
4	Kia
5	Opel
6	Nissan
\.


--
-- TOC entry 2865 (class 0 OID 16522)
-- Dependencies: 211
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars (id, mark, idbrand, idcolor, yearman, idcontry, idower, dateadd) FROM stdin;
1	АА999А96	1	3	1999	2	1	2020-09-10
2	ZZ999Z96	4	2	1999	3	2	2020-09-10
6	ASFsdg	1	1	1995	1	12	2020-09-10
7	ASF	1	1	1995	1	13	2020-09-10
8	AS458	2	3	1997	5	14	2020-09-10
9	AS458	5	2	1997	2	15	2020-09-10
14	ASFASF65	2	5	1998	5	20	2020-09-11
19	asd	1	1	1995	1	22	\N
20	asd	1	1	1995	1	23	2020-08-12
\.


--
-- TOC entry 2863 (class 0 OID 16454)
-- Dependencies: 209
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors (id, color) FROM stdin;
1	black
2	white
3	red
4	gray
5	blue
\.


--
-- TOC entry 2857 (class 0 OID 16430)
-- Dependencies: 203
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (id, country) FROM stdin;
1	China
2	France
3	Japan
4	Germany
5	USA
\.


--
-- TOC entry 2859 (class 0 OID 16438)
-- Dependencies: 205
-- Data for Name: owners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.owners (id, firstname, lastname, address, phone, datebirth) FROM stdin;
1	Ivan	Ivanov	Moscow	453687	1985-02-15
2	Petr	Petrovich	Moscow	234892	1975-10-03
3	Si	Kloy	Moscow	123456	1996-01-05
4	sdf	sdf	sdf	452	1995-01-01
5	asd	asd	asd	321	1995-01-01
6	fdg	dfg	dfg	654	1995-01-01
7	Si	Hkrt	Moscow	789456	2000-01-09
8	Si	Griy	Moscow	789456	2005-01-23
9	Si	Lkoy	Moscow	456123	2000-01-11
10	Si	Sloy	Moscow	456123	2000-01-10
11	Si	ASg	asd	456	1997-01-06
12	Sa	Jlou	Moscow	456	2007-01-27
13	So	SAd	ASd	456789	1995-01-04
14	Jo	AF	Afa	23	1998-01-03
15	Jo	Te	He	56+	1999-01-05
16					1995-01-01
17					1995-01-01
18					1995-01-01
19	Jo	Loy	Moscow	456789	2010-01-20
20	Go	Kloi	Moscow	123456	2006-01-08
21	Si	aSf	asDF	546	1995-01-01
22	asd	asd	asd	13	\N
23	asd	asd	asd	564	1995-01-01
\.


--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 206
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 6, true);


--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 210
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cars_id_seq', 20, true);


--
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 208
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_id_seq', 5, true);


--
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 202
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 5, true);


--
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 204
-- Name: owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.owners_id_seq', 23, true);


--
-- TOC entry 2721 (class 2606 OID 16451)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 2725 (class 2606 OID 16527)
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- TOC entry 2723 (class 2606 OID 16459)
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- TOC entry 2717 (class 2606 OID 16435)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 2719 (class 2606 OID 16443)
-- Name: owners owners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pkey PRIMARY KEY (id);


--
-- TOC entry 2726 (class 2606 OID 16528)
-- Name: cars cars_idbrand_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_idbrand_fkey FOREIGN KEY (idbrand) REFERENCES public.brands(id);


--
-- TOC entry 2727 (class 2606 OID 16533)
-- Name: cars cars_idcolor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_idcolor_fkey FOREIGN KEY (idcolor) REFERENCES public.colors(id);


--
-- TOC entry 2728 (class 2606 OID 16538)
-- Name: cars cars_idcontry_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_idcontry_fkey FOREIGN KEY (idcontry) REFERENCES public.countries(id);


--
-- TOC entry 2729 (class 2606 OID 16543)
-- Name: cars cars_idower_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_idower_fkey FOREIGN KEY (idower) REFERENCES public.owners(id);


-- Completed on 2020-09-12 15:36:46

--
-- PostgreSQL database dump complete
--

