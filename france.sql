--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: france; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE france WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'fr_FR.UTF-8' LC_CTYPE = 'fr_FR.UTF-8';


ALTER DATABASE france OWNER TO postgres;

\connect france

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: orders; Type: TABLE; Schema: public; Owner: jasperdb; Tablespace: 
--

CREATE TABLE orders (
    orderid integer,
    customerid character varying(5),
    employeeid integer,
    orderdate timestamp(6) without time zone,
    requireddate timestamp(6) without time zone,
    shippeddate timestamp(6) without time zone,
    shipvia integer,
    freight double precision,
    shipname character varying(255),
    shipaddress character varying(255),
    shipcity character varying(100),
    shipregion character varying(100),
    shippostalcode character varying(20),
    shipcountry character varying(100)
);


ALTER TABLE public.orders OWNER TO jasperdb;

--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: jasperdb
--

COPY orders (orderid, customerid, employeeid, orderdate, requireddate, shippeddate, shipvia, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry) FROM stdin;
10248	VINET	5	1996-07-04 00:00:00	1996-08-01 00:00:00	1996-07-16 00:00:00	3	32.3800000000000026	Vins et alcools Chevalier	59 rue de l'Abbaye	Reims	\N	51100	France
10251	VICTE	3	1996-07-08 00:00:00	1996-08-05 00:00:00	1996-07-15 00:00:00	1	41.3400000000000034	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10265	BLONP	2	1996-07-25 00:00:00	1996-08-22 00:00:00	1996-08-12 00:00:00	1	55.2800000000000011	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10274	VINET	6	1996-08-06 00:00:00	1996-09-03 00:00:00	1996-08-16 00:00:00	1	6.00999999999999979	Vins et alcools Chevalier	59 rue de l'Abbaye	Reims	\N	51100	France
10295	VINET	2	1996-09-02 00:00:00	1996-09-30 00:00:00	1996-09-10 00:00:00	2	1.14999999999999991	Vins et alcools Chevalier	59 rue de l'Abbaye	Reims	\N	51100	France
10297	BLONP	5	1996-09-04 00:00:00	1996-10-16 00:00:00	1996-09-10 00:00:00	2	5.74000000000000021	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10311	DUMON	1	1996-09-20 00:00:00	1996-10-04 00:00:00	1996-09-26 00:00:00	3	24.6900000000000013	Du monde entier	67, rue des Cinquante Otages	Nantes	\N	44000	France
10331	BONAP	9	1996-10-16 00:00:00	1996-11-27 00:00:00	1996-10-21 00:00:00	1	10.1899999999999995	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10334	VICTE	8	1996-10-21 00:00:00	1996-11-18 00:00:00	1996-10-28 00:00:00	2	8.5600000000000005	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10340	BONAP	1	1996-10-29 00:00:00	1996-11-26 00:00:00	1996-11-08 00:00:00	3	166.310000000000002	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10350	LAMAI	6	1996-11-11 00:00:00	1996-12-09 00:00:00	1996-12-03 00:00:00	2	64.1899999999999977	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10358	LAMAI	5	1996-11-20 00:00:00	1996-12-18 00:00:00	1996-11-27 00:00:00	1	19.6400000000000006	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10360	BLONP	4	1996-11-22 00:00:00	1996-12-20 00:00:00	1996-12-02 00:00:00	3	131.699999999999989	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10362	BONAP	3	1996-11-25 00:00:00	1996-12-23 00:00:00	1996-11-28 00:00:00	1	96.0400000000000063	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10371	LAMAI	1	1996-12-03 00:00:00	1996-12-31 00:00:00	1996-12-24 00:00:00	1	0.450000000000000011	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10408	FOLIG	8	1997-01-08 00:00:00	1997-02-05 00:00:00	1997-01-14 00:00:00	1	11.2599999999999998	Folies gourmandes	184, chaussée de Tournai	Lille	\N	59000	France
10413	LAMAI	3	1997-01-14 00:00:00	1997-02-11 00:00:00	1997-01-16 00:00:00	2	95.6599999999999966	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10425	LAMAI	6	1997-01-24 00:00:00	1997-02-21 00:00:00	1997-02-14 00:00:00	2	7.92999999999999972	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10436	BLONP	3	1997-02-05 00:00:00	1997-03-05 00:00:00	1997-02-11 00:00:00	2	156.659999999999997	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10449	BLONP	3	1997-02-18 00:00:00	1997-03-18 00:00:00	1997-02-27 00:00:00	2	53.2999999999999972	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10450	VICTE	8	1997-02-19 00:00:00	1997-03-19 00:00:00	1997-03-11 00:00:00	2	7.23000000000000043	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10454	LAMAI	4	1997-02-21 00:00:00	1997-03-21 00:00:00	1997-02-25 00:00:00	3	2.74000000000000021	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10459	VICTE	4	1997-02-27 00:00:00	1997-03-27 00:00:00	1997-02-28 00:00:00	2	25.0899999999999999	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10470	BONAP	4	1997-03-11 00:00:00	1997-04-08 00:00:00	1997-03-14 00:00:00	2	64.5600000000000023	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10478	VICTE	2	1997-03-18 00:00:00	1997-04-01 00:00:00	1997-03-26 00:00:00	3	4.80999999999999961	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10480	FOLIG	6	1997-03-20 00:00:00	1997-04-17 00:00:00	1997-03-24 00:00:00	2	1.35000000000000009	Folies gourmandes	184, chaussée de Tournai	Lille	\N	59000	France
10493	LAMAI	4	1997-04-02 00:00:00	1997-04-30 00:00:00	1997-04-10 00:00:00	3	10.6400000000000006	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10500	LAMAI	6	1997-04-09 00:00:00	1997-05-07 00:00:00	1997-04-17 00:00:00	1	42.6799999999999997	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10511	BONAP	4	1997-04-18 00:00:00	1997-05-16 00:00:00	1997-04-21 00:00:00	3	350.639999999999986	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10525	BONAP	1	1997-05-02 00:00:00	1997-05-30 00:00:00	1997-05-23 00:00:00	2	11.0600000000000005	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10546	VICTE	1	1997-05-23 00:00:00	1997-06-20 00:00:00	1997-05-27 00:00:00	3	194.719999999999999	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10559	BLONP	6	1997-06-05 00:00:00	1997-07-03 00:00:00	1997-06-13 00:00:00	1	8.05000000000000071	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10566	BLONP	9	1997-06-12 00:00:00	1997-07-10 00:00:00	1997-06-18 00:00:00	1	88.4000000000000057	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10584	BLONP	4	1997-06-30 00:00:00	1997-07-28 00:00:00	1997-07-04 00:00:00	1	59.1400000000000006	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10609	DUMON	7	1997-07-24 00:00:00	1997-08-21 00:00:00	1997-07-30 00:00:00	2	1.85000000000000009	Du monde entier	67, rue des Cinquante Otages	Nantes	\N	44000	France
10610	LAMAI	8	1997-07-25 00:00:00	1997-08-22 00:00:00	1997-08-06 00:00:00	1	26.7800000000000011	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10628	BLONP	4	1997-08-12 00:00:00	1997-09-09 00:00:00	1997-08-20 00:00:00	3	30.3599999999999994	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10631	LAMAI	8	1997-08-14 00:00:00	1997-09-11 00:00:00	1997-08-15 00:00:00	1	0.869999999999999996	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10634	FOLIG	4	1997-08-15 00:00:00	1997-09-12 00:00:00	1997-08-21 00:00:00	3	487.379999999999995	Folies gourmandes	184, chaussée de Tournai	Lille	\N	59000	France
10663	BONAP	2	1997-09-10 00:00:00	1997-09-24 00:00:00	1997-10-03 00:00:00	2	113.150000000000006	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10671	FRANR	1	1997-09-17 00:00:00	1997-10-15 00:00:00	1997-09-24 00:00:00	1	30.3399999999999999	France restauration	54, rue Royale	Nantes	\N	44000	France
10679	BLONP	8	1997-09-23 00:00:00	1997-10-21 00:00:00	1997-09-30 00:00:00	3	27.9400000000000013	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10683	DUMON	2	1997-09-26 00:00:00	1997-10-24 00:00:00	1997-10-01 00:00:00	1	4.40000000000000036	Du monde entier	67, rue des Cinquante Otages	Nantes	\N	44000	France
10715	BONAP	3	1997-10-23 00:00:00	1997-11-06 00:00:00	1997-10-29 00:00:00	1	63.2000000000000028	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10730	BONAP	5	1997-11-05 00:00:00	1997-12-03 00:00:00	1997-11-14 00:00:00	1	20.120000000000001	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10732	BONAP	3	1997-11-06 00:00:00	1997-12-04 00:00:00	1997-11-07 00:00:00	1	16.9699999999999989	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10737	VINET	2	1997-11-11 00:00:00	1997-12-09 00:00:00	1997-11-18 00:00:00	2	7.79000000000000004	Vins et alcools Chevalier	59 rue de l'Abbaye	Reims	\N	51100	France
10738	SPECD	2	1997-11-12 00:00:00	1997-12-10 00:00:00	1997-11-18 00:00:00	1	2.91000000000000014	Spécialités du monde	25, rue Lauriston	Paris	\N	75016	France
10739	VINET	3	1997-11-12 00:00:00	1997-12-10 00:00:00	1997-11-17 00:00:00	3	11.0800000000000001	Vins et alcools Chevalier	59 rue de l'Abbaye	Reims	\N	51100	France
10755	BONAP	4	1997-11-26 00:00:00	1997-12-24 00:00:00	1997-11-28 00:00:00	2	16.7100000000000009	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10763	FOLIG	3	1997-12-03 00:00:00	1997-12-31 00:00:00	1997-12-08 00:00:00	3	37.3500000000000014	Folies gourmandes	184, chaussée de Tournai	Lille	\N	59000	France
10787	LAMAI	2	1997-12-19 00:00:00	1998-01-02 00:00:00	1997-12-26 00:00:00	1	249.930000000000007	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10789	FOLIG	1	1997-12-22 00:00:00	1998-01-19 00:00:00	1997-12-31 00:00:00	2	100.599999999999994	Folies gourmandes	184, chaussée de Tournai	Lille	\N	59000	France
10806	VICTE	3	1997-12-31 00:00:00	1998-01-28 00:00:00	1998-01-05 00:00:00	2	22.1099999999999994	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10814	VICTE	3	1998-01-05 00:00:00	1998-02-02 00:00:00	1998-01-14 00:00:00	3	130.939999999999998	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10826	BLONP	6	1998-01-12 00:00:00	1998-02-09 00:00:00	1998-02-06 00:00:00	1	7.08999999999999986	Blondel père et fils	24, place Kléber	Strasbourg	\N	67000	France
10827	BONAP	1	1998-01-12 00:00:00	1998-01-26 00:00:00	1998-02-06 00:00:00	2	63.5399999999999991	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10832	LAMAI	2	1998-01-14 00:00:00	1998-02-11 00:00:00	1998-01-19 00:00:00	2	43.259999999999998	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10843	VICTE	4	1998-01-21 00:00:00	1998-02-18 00:00:00	1998-01-26 00:00:00	2	9.25999999999999979	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10850	VICTE	1	1998-01-23 00:00:00	1998-03-06 00:00:00	1998-01-30 00:00:00	1	49.1899999999999977	Victuailles en stock	2, rue du Commerce	Lyon	\N	69004	France
10858	LACOR	2	1998-01-29 00:00:00	1998-02-26 00:00:00	1998-02-03 00:00:00	1	52.509999999999998	La corne d'abondance	67, avenue de l'Europe	Versailles	\N	78000	France
10860	FRANR	3	1998-01-29 00:00:00	1998-02-26 00:00:00	1998-02-04 00:00:00	3	19.2600000000000016	France restauration	54, rue Royale	Nantes	\N	44000	France
10871	BONAP	9	1998-02-05 00:00:00	1998-03-05 00:00:00	1998-02-10 00:00:00	2	112.269999999999996	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10876	BONAP	7	1998-02-09 00:00:00	1998-03-09 00:00:00	1998-02-12 00:00:00	3	60.4200000000000017	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10890	DUMON	7	1998-02-16 00:00:00	1998-03-16 00:00:00	1998-02-18 00:00:00	1	32.759999999999998	Du monde entier	67, rue des Cinquante Otages	Nantes	\N	44000	France
10907	SPECD	6	1998-02-25 00:00:00	1998-03-25 00:00:00	1998-02-27 00:00:00	3	9.1899999999999995	Spécialités du monde	25, rue Lauriston	Paris	\N	75016	France
10923	LAMAI	7	1998-03-03 00:00:00	1998-04-14 00:00:00	1998-03-13 00:00:00	3	68.2600000000000051	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
10927	LACOR	4	1998-03-05 00:00:00	1998-04-02 00:00:00	1998-04-08 00:00:00	1	19.7899999999999991	La corne d'abondance	67, avenue de l'Europe	Versailles	\N	78000	France
10932	BONAP	8	1998-03-06 00:00:00	1998-04-03 00:00:00	1998-03-24 00:00:00	1	134.639999999999986	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10940	BONAP	8	1998-03-11 00:00:00	1998-04-08 00:00:00	1998-03-23 00:00:00	3	19.7699999999999996	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
10964	SPECD	3	1998-03-20 00:00:00	1998-04-17 00:00:00	1998-03-24 00:00:00	2	87.3799999999999955	Spécialités du monde	25, rue Lauriston	Paris	\N	75016	France
10971	FRANR	2	1998-03-24 00:00:00	1998-04-21 00:00:00	1998-04-02 00:00:00	2	121.819999999999993	France restauration	54, rue Royale	Nantes	\N	44000	France
10972	LACOR	4	1998-03-24 00:00:00	1998-04-21 00:00:00	1998-03-26 00:00:00	2	0.0200000000000000004	La corne d'abondance	67, avenue de l'Europe	Versailles	\N	78000	France
10973	LACOR	6	1998-03-24 00:00:00	1998-04-21 00:00:00	1998-03-27 00:00:00	2	15.1699999999999999	La corne d'abondance	67, avenue de l'Europe	Versailles	\N	78000	France
11043	SPECD	5	1998-04-22 00:00:00	1998-05-20 00:00:00	1998-04-29 00:00:00	2	8.80000000000000071	Spécialités du monde	25, rue Lauriston	Paris	\N	75016	France
11051	LAMAI	7	1998-04-27 00:00:00	1998-05-25 00:00:00	1998-05-05 00:00:00	3	2.79000000000000004	La maison d'Asie	1 rue Alsace-Lorraine	Toulouse	\N	31000	France
11076	BONAP	4	1998-05-06 00:00:00	1998-06-03 00:00:00	1998-05-06 00:00:00	2	38.2800000000000011	Bon app'	12, rue des Bouchers	Marseille	\N	13008	France
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

