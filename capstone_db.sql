--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)

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
-- Name: addresses; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    street text NOT NULL,
    city text NOT NULL,
    state text NOT NULL,
    county text,
    lat double precision,
    lng double precision,
    geo_code integer
);


ALTER TABLE public.addresses OWNER TO bernardn;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO bernardn;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: income_data; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.income_data (
    id integer NOT NULL,
    county character varying(100),
    income integer
);


ALTER TABLE public.income_data OWNER TO bernardn;

--
-- Name: income_data_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.income_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.income_data_id_seq OWNER TO bernardn;

--
-- Name: income_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.income_data_id_seq OWNED BY public.income_data.id;


--
-- Name: place_address_relation; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.place_address_relation (
    id integer NOT NULL,
    place_id text,
    address_id integer
);


ALTER TABLE public.place_address_relation OWNER TO bernardn;

--
-- Name: place_address_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.place_address_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_address_relation_id_seq OWNER TO bernardn;

--
-- Name: place_address_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.place_address_relation_id_seq OWNED BY public.place_address_relation.id;


--
-- Name: place_types; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.place_types (
    id integer NOT NULL,
    place_id text,
    type_id integer
);


ALTER TABLE public.place_types OWNER TO bernardn;

--
-- Name: place_types_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.place_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_types_id_seq OWNER TO bernardn;

--
-- Name: place_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.place_types_id_seq OWNED BY public.place_types.id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.places (
    id integer NOT NULL,
    place_id text,
    name text NOT NULL,
    lat double precision NOT NULL,
    lng double precision NOT NULL,
    price_level double precision,
    overall_rating double precision,
    ratings_count integer,
    link text
);


ALTER TABLE public.places OWNER TO bernardn;

--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.places_id_seq OWNER TO bernardn;

--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;


--
-- Name: population_data; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.population_data (
    fips_code integer NOT NULL,
    object_id integer,
    county_code integer,
    name text,
    state text,
    population integer,
    population_density double precision,
    date_created text
);


ALTER TABLE public.population_data OWNER TO bernardn;

--
-- Name: population_data_fips_code_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.population_data_fips_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_data_fips_code_seq OWNER TO bernardn;

--
-- Name: population_data_fips_code_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.population_data_fips_code_seq OWNED BY public.population_data.fips_code;


--
-- Name: types; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.types (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.types OWNER TO bernardn;

--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO bernardn;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- Name: user_addresses; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.user_addresses (
    id integer NOT NULL,
    user_id integer,
    address_id integer
);


ALTER TABLE public.user_addresses OWNER TO bernardn;

--
-- Name: user_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.user_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_addresses_id_seq OWNER TO bernardn;

--
-- Name: user_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.user_addresses_id_seq OWNED BY public.user_addresses.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: bernardn
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    password text NOT NULL,
    email text NOT NULL
);


ALTER TABLE public.users OWNER TO bernardn;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: bernardn
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO bernardn;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bernardn
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: income_data id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.income_data ALTER COLUMN id SET DEFAULT nextval('public.income_data_id_seq'::regclass);


--
-- Name: place_address_relation id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.place_address_relation ALTER COLUMN id SET DEFAULT nextval('public.place_address_relation_id_seq'::regclass);


--
-- Name: place_types id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.place_types ALTER COLUMN id SET DEFAULT nextval('public.place_types_id_seq'::regclass);


--
-- Name: places id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);


--
-- Name: population_data fips_code; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.population_data ALTER COLUMN fips_code SET DEFAULT nextval('public.population_data_fips_code_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- Name: user_addresses id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.user_addresses ALTER COLUMN id SET DEFAULT nextval('public.user_addresses_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.addresses (id, street, city, state, county, lat, lng, geo_code) FROM stdin;
1	3325 s 26th st	milwaukee	wi	\N	\N	\N	\N
\.


--
-- Data for Name: income_data; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.income_data (id, county, income) FROM stdin;
1	Alabama County	44145
2	Autauga County	43917
3	Baldwin County	47485
4	Barbour County	35763
5	Bibb County	31725
6	Blount County	36412
7	Bullock County	29080
8	Butler County	37523
9	Calhoun County	38394
10	Chambers County	35900
11	Cherokee County	36432
12	Chilton County	36188
13	Choctaw County	40145
14	Clarke County	37965
15	Clay County	34322
16	Cleburne County	35791
17	Coffee County	43979
18	Colbert County	39679
19	Conecuh County	34892
20	Coosa County	32523
21	Covington County	36756
22	Crenshaw County	37118
23	Cullman County	40818
24	Dale County	37853
25	Dallas County	38362
26	DeKalb County	33242
27	Elmore County	44316
28	Escambia County	34432
29	Etowah County	38326
30	Fayette County	36465
31	Franklin County	35292
32	Geneva County	36848
33	Greene County	33386
34	Hale County	38207
35	Henry County	43502
36	Houston County	44647
37	Jackson County	38315
38	Jefferson County	57329
39	Lamar County	35148
40	Lauderdale County	38758
41	Lawrence County	35039
42	Lee County	39781
43	Limestone County	44946
44	Lowndes County	40785
45	Macon County	34901
46	Madison County	54010
47	Marengo County	41567
48	Marion County	34000
49	Marshall County	37345
50	Mobile County	40112
51	Monroe County	35174
52	Montgomery County	45479
53	Morgan County	41741
54	Perry County	33529
55	Pickens County	33890
56	Pike County	38473
57	Randolph County	33804
58	Russell County	33986
59	St. Clair County	40766
60	Shelby County	56830
61	Sumter County	33009
62	Talladega County	36125
63	Tallapoosa County	42509
64	Tuscaloosa County	40648
65	Walker County	42477
66	Washington County	37837
67	Wilcox County	34903
68	Winston County	35776
69	Alaska County	62806
70	Aleutians East Borough County	62537
71	Aleutians West Census Area County	58008
72	Anchorage Municipality County	70145
73	Bethel Census Area County	46348
74	Bristol Bay Borough County	151900
75	Denali Borough County	84166
76	Dillingham Census Area County	61922
77	Fairbanks North Star Borough County	59958
78	Haines Borough County	71711
79	Hoonah-Angoon Census Area County	64905
80	Juneau City and Borough County	73335
81	Kenai Peninsula Borough County	54870
82	Ketchikan Gateway Borough County	70985
83	Kodiak Island Borough County	66382
84	Kusilvak Census Area County	31944
85	Lake and Peninsula Borough County	65898
86	Matanuska-Susitna Borough County	48943
87	Nome Census Area County	54272
88	North Slope Borough County	89863
89	Northwest Arctic Borough County	51526
90	Petersburg Borough County	74021
91	Prince of Wales-Hyder Census Area County	49177
92	Sitka City and Borough County	74440
93	Skagway Municipality County	86519
94	Southeast Fairbanks Census Area County	52458
95	Valdez-Cordova Census Area County	64202
96	Wrangell City and Borough County	49549
97	Yakutat City and Borough County	66967
98	Yukon-Koyukuk Census Area County	60579
99	Arizona County	46058
100	Apache County	35189
101	Cochise County	41766
102	Coconino County	49189
103	Gila County	41217
104	Graham County	31895
105	Greenlee County	42296
106	La Paz County	34006
107	Maricopa County	49704
108	Mohave County	34393
109	Navajo County	33268
110	Pima County	45456
111	Pinal County	32182
112	Santa Cruz County	39427
113	Yavapai County	41393
114	Yuma County	36570
115	Arkansas County	44629
116	Arkansas County	47899
117	Ashley County	37944
118	Baxter County	37749
119	Benton County	92697
120	Boone County	36414
121	Bradley County	39980
122	Calhoun County	35686
123	Carroll County	33021
124	Chicot County	40389
125	Clark County	36832
126	Clay County	36459
127	Cleburne County	38942
128	Cleveland County	39847
129	Columbia County	37456
130	Conway County	38892
131	Craighead County	38669
132	Crawford County	33904
133	Crittenden County	39041
134	Cross County	38693
135	Dallas County	37101
136	Desha County	40943
137	Drew County	37742
138	Faulkner County	38949
139	Franklin County	33404
140	Fulton County	29020
141	Garland County	41069
142	Grant County	39087
143	Greene County	35770
144	Hempstead County	32238
145	Hot Spring County	31443
146	Howard County	34762
147	Independence County	36476
148	Izard County	30923
149	Jackson County	40703
150	Jefferson County	36586
151	Johnson County	28920
152	Lafayette County	36524
153	Lawrence County	34400
154	Lee County	32099
155	Lincoln County	28024
156	Little River County	35383
157	Logan County	33386
158	Lonoke County	40749
159	Madison County	34245
160	Marion County	31405
161	Miller County	35035
162	Mississippi County	36882
163	Monroe County	36710
164	Montgomery County	29858
165	Nevada County	34274
166	Newton County	30096
167	Ouachita County	38801
168	Perry County	36248
169	Phillips County	35438
170	Pike County	32499
171	Poinsett County	35558
172	Polk County	30984
173	Pope County	35464
174	Prairie County	37330
175	Pulaski County	51927
176	Randolph County	34352
177	St. Francis County	29154
178	Saline County	42688
179	Scott County	31159
180	Searcy County	28143
181	Sebastian County	42821
182	Sevier County	32001
183	Sharp County	34403
184	Stone County	31593
185	Union County	45261
186	Van Buren County	31697
187	Washington County	41005
188	White County	37082
189	Woodruff County	39902
190	Yell County	33260
191	California County	66619
192	Alameda County	81171
193	Alpine County	72155
194	Amador County	45920
195	Butte County	47860
196	Calaveras County	51131
197	Colusa County	51342
198	Contra Costa County	85324
199	Del Norte County	38445
200	El Dorado County	69895
201	Fresno County	45487
202	Glenn County	49194
203	Humboldt County	49654
204	Imperial County	40447
205	Inyo County	60513
206	Kern County	41843
207	Kings County	39433
208	Lake County	44259
209	Lassen County	38130
210	Los Angeles County	65094
211	Madera County	41267
212	Marin County	141735
213	Mariposa County	56354
214	Mendocino County	52976
215	Merced County	41077
216	Modoc County	51088
217	Mono County	53500
218	Monterey County	59838
219	Napa County	75717
220	Nevada County	63542
221	Orange County	71711
222	Placer County	68936
223	Plumas County	55910
224	Riverside County	42418
225	Sacramento County	55266
226	San Benito County	55261
227	San Bernardino County	42043
228	San Diego County	63729
229	San Francisco County	139405
230	San Joaquin County	47139
231	San Luis Obispo County	61004
232	San Mateo County	134107
233	Santa Barbara County	66076
234	Santa Clara County	115997
235	Santa Cruz County	71592
236	Shasta County	48438
237	Sierra County	47245
238	Siskiyou County	48021
239	Solano County	53505
240	Sonoma County	66700
241	Stanislaus County	45742
242	Sutter County	47605
243	Tehama County	43268
244	Trinity County	43471
245	Tulare County	42845
246	Tuolumne County	48841
247	Ventura County	64715
248	Yolo County	56123
249	Yuba County	43536
250	Colorado County	61157
251	Adams County	45481
252	Alamosa County	40076
253	Arapahoe County	64477
254	Archuleta County	43088
255	Baca County	43297
256	Bent County	31374
257	Boulder County	76527
258	Broomfield County	70996
259	Chaffee County	49036
260	Cheyenne County	55188
261	Clear Creek County	61816
262	Conejos County	38385
263	Costilla County	35621
264	Crowley County	20822
265	Custer County	42381
266	Delta County	39339
267	Denver County	81405
268	Dolores County	38005
269	Douglas County	78455
270	Eagle County	84765
271	Elbert County	60586
272	El Paso County	51117
273	Fremont County	36966
274	Garfield County	60285
275	Gilpin County	50346
276	Grand County	51891
277	Gunnison County	48853
278	Hinsdale County	50294
279	Huerfano County	41561
280	Jackson County	55715
281	Jefferson County	66017
282	Kiowa County	54765
283	Kit Carson County	45658
284	Lake County	37391
285	La Plata County	58216
286	Larimer County	55884
287	Las Animas County	39762
288	Lincoln County	30855
289	Logan County	46697
290	Mesa County	46719
291	Mineral County	75044
292	Moffat County	43842
293	Montezuma County	43542
294	Montrose County	41852
295	Morgan County	47774
296	Otero County	39708
297	Ouray County	64076
298	Park County	46261
299	Phillips County	49259
300	Pitkin County	158313
301	Prowers County	44623
302	Pueblo County	40680
303	Rio Blanco County	49846
304	Rio Grande County	50408
305	Routt County	81699
306	Saguache County	37022
307	San Juan County	47933
308	San Miguel County	90444
309	Sedgwick County	48824
310	Summit County	71479
311	Teller County	51206
312	Washington County	43765
313	Weld County	50198
314	Yuma County	49201
315	Connecticut County	77289
316	Fairfield County	121397
317	Hartford County	65720
318	Litchfield County	65458
319	Middlesex County	69167
320	New Haven County	57748
321	New London County	59717
322	Tolland County	57307
323	Windham County	47618
324	Delaware County	54485
325	Kent County	43097
326	New Castle County	59175
327	Sussex County	52085
328	District of Columbia County	83406
329	Florida County	52426
330	Alachua County	46690
331	Baker County	33254
332	Bay County	45690
333	Bradford County	34179
334	Brevard County	47911
335	Broward County	52308
336	Calhoun County	29526
337	Charlotte County	42793
338	Citrus County	39055
339	Clay County	44042
340	Collier County	99382
341	Columbia County	35583
342	DeSoto County	26128
343	Dixie County	28314
344	Duval County	47475
345	Escambia County	44349
346	Flagler County	47558
347	Franklin County	37320
348	Gadsden County	35885
349	Gilchrist County	34756
350	Glades County	26102
351	Gulf County	46346
352	Hamilton County	27643
353	Hardee County	29545
354	Hendry County	33204
355	Hernando County	38223
356	Highlands County	34480
357	Hillsborough County	48452
358	Holmes County	31822
359	Indian River County	80818
360	Jackson County	36014
361	Jefferson County	41989
362	Lafayette County	27645
363	Lake County	43425
364	Lee County	52064
365	Leon County	46394
366	Levy County	37680
367	Liberty County	25973
368	Madison County	33859
369	Manatee County	48618
370	Marion County	38293
371	Martin County	85394
372	Miami-Dade County	54902
373	Monroe County	101262
374	Nassau County	61329
375	Okaloosa County	50681
376	Okeechobee County	31971
377	Orange County	46250
378	Osceola County	35258
379	Palm Beach County	83268
380	Pasco County	42070
381	Pinellas County	55607
382	Polk County	36649
383	Putnam County	32949
384	St. Johns County	70498
385	St. Lucie County	41125
386	Santa Rosa County	45981
387	Sarasota County	66878
388	Seminole County	51156
389	Sumter County	48387
390	Suwannee County	33882
391	Taylor County	31054
392	Union County	22440
393	Volusia County	44180
394	Wakulla County	37660
395	Walton County	64481
396	Washington County	30268
397	Georgia County	48236
398	Appling County	35514
399	Atkinson County	31542
400	Bacon County	33393
401	Baker County	41323
402	Baldwin County	34128
403	Banks County	35151
404	Barrow County	37436
405	Bartow County	39505
406	Ben Hill County	33228
407	Berrien County	32935
408	Bibb County	42696
409	Bleckley County	35272
410	Brantley County	28248
411	Brooks County	37655
412	Bryan County	53853
413	Bulloch County	32724
414	Burke County	38481
415	Butts County	35017
416	Calhoun County	27390
417	Camden County	37184
418	Candler County	34192
419	Carroll County	39147
420	Catoosa County	36399
421	Charlton County	25020
422	Chatham County	48294
423	Chattahoochee County	30062
424	Chattooga County	31577
425	Cherokee County	52953
426	Clarke County	34869
427	Clay County	35142
428	Clayton County	28665
429	Clinch County	39136
430	Cobb County	59194
431	Coffee County	34073
432	Colquitt County	34780
433	Columbia County	51184
434	Cook County	33845
435	Coweta County	48424
436	Crawford County	34100
437	Crisp County	35421
438	Dade County	34639
439	Dawson County	46278
440	Decatur County	38393
441	DeKalb County	53086
442	Dodge County	31970
443	Dooly County	34331
444	Dougherty County	37050
445	Douglas County	36497
446	Early County	40465
447	Echols County	28211
448	Effingham County	42271
449	Elbert County	35550
450	Emanuel County	33921
451	Evans County	35109
452	Fannin County	37385
453	Fayette County	67467
454	Floyd County	39314
455	Forsyth County	63864
456	Franklin County	34017
457	Fulton County	88832
458	Gilmer County	35576
459	Glascock County	34786
460	Glynn County	48170
461	Gordon County	35557
462	Grady County	36527
463	Greene County	58708
464	Gwinnett County	42902
465	Habersham County	34831
466	Hall County	45576
467	Hancock County	31297
468	Haralson County	37582
469	Harris County	49471
470	Hart County	37701
471	Heard County	31965
472	Henry County	40182
473	Houston County	44059
474	Irwin County	36036
475	Jackson County	43508
476	Jasper County	38568
477	Jeff Davis County	32069
478	Jefferson County	36033
479	Jenkins County	31635
480	Johnson County	26341
481	Jones County	38526
482	Lamar County	34375
483	Lanier County	28991
484	Laurens County	38995
485	Lee County	49274
486	Liberty County	37424
487	Lincoln County	38527
488	Long County	27232
489	Lowndes County	38706
490	Lumpkin County	38450
491	McDuffie County	38456
492	McIntosh County	30981
493	Macon County	32343
494	Madison County	36879
495	Marion County	29849
496	Meriwether County	36050
497	Miller County	48011
498	Mitchell County	37608
499	Monroe County	46563
500	Montgomery County	31037
501	Morgan County	51677
502	Murray County	30964
503	Muscogee County	45352
504	Newton County	34696
505	Oconee County	67845
506	Oglethorpe County	36698
507	Paulding County	38978
508	Peach County	39336
509	Pickens County	48493
510	Pierce County	37486
511	Pike County	41401
512	Polk County	34055
513	Pulaski County	31603
514	Putnam County	44643
515	Quitman County	31466
516	Rabun County	41058
517	Randolph County	35186
518	Richmond County	39370
519	Rockdale County	36138
520	Schley County	33044
521	Screven County	35346
522	Seminole County	47527
523	Spalding County	35740
524	Stephens County	39335
525	Stewart County	23081
526	Sumter County	37936
527	Talbot County	35705
528	Taliaferro County	37088
529	Tattnall County	29106
530	Taylor County	32801
531	Telfair County	21535
532	Terrell County	43654
533	Thomas County	46223
534	Tift County	39317
535	Toombs County	37143
536	Towns County	39181
537	Treutlen County	29682
538	Troup County	37690
539	Turner County	36836
540	Twiggs County	43163
541	Union County	37588
542	Upson County	36653
543	Walker County	34078
544	Walton County	42406
545	Ware County	34915
546	Warren County	36427
547	Washington County	36321
548	Wayne County	32633
549	Webster County	34700
550	Wheeler County	19472
551	White County	35238
552	Whitfield County	39927
553	Wilcox County	29334
554	Wilkes County	42644
555	Wilkinson County	37011
556	Worth County	36974
557	Hawaii County	57015
558	Hawaii County	43578
559	Honolulu County	61174
560	Kauai County	51545
561	Maui + Kalawao County	51348
562	Idaho County	45968
563	Ada County	54896
564	Adams County	39038
565	Bannock County	39246
566	Bear Lake County	43103
567	Benewah County	39695
568	Bingham County	37909
569	Blaine County	117097
570	Boise County	43320
571	Bonner County	42277
572	Bonneville County	50114
573	Boundary County	38142
574	Butte County	44828
575	Camas County	47417
576	Canyon County	34446
577	Caribou County	42527
578	Cassia County	49712
579	Clark County	41622
580	Clearwater County	36805
581	Custer County	43920
582	Elmore County	40585
583	Franklin County	37293
584	Fremont (includes Yellowstone National Park) County	37953
585	Gem County	39382
586	Gooding County	61715
587	Idaho County	35946
588	Jefferson County	37025
589	Jerome County	40190
590	Kootenai County	46645
591	Latah County	41833
592	Lemhi County	44199
593	Lewis County	49643
594	Lincoln County	41610
595	Madison County	28780
596	Minidoka County	41421
597	Nez Perce County	47200
598	Oneida County	39523
599	Owyhee County	39409
600	Payette County	41890
601	Power County	43313
602	Shoshone County	36793
603	Teton County	40911
604	Twin Falls County	42379
605	Valley County	51088
606	Washington County	36292
607	Illinois County	58764
608	Adams County	47898
609	Alexander County	37723
610	Bond County	37871
611	Boone County	47682
612	Brown County	37500
613	Bureau County	43040
614	Calhoun County	43368
615	Carroll County	45342
616	Cass County	41954
617	Champaign County	45967
618	Christian County	42576
619	Clark County	42593
620	Clay County	40308
621	Clinton County	47653
622	Coles County	41751
623	Cook County	65306
624	Crawford County	47935
625	Cumberland County	83954
626	DeKalb County	42120
627	De Witt County	47023
628	Douglas County	51859
629	DuPage County	75137
630	Edgar County	42665
631	Edwards County	40991
632	Effingham County	51296
633	Fayette County	36310
634	Ford County	50606
635	Franklin County	38289
636	Fulton County	38465
637	Gallatin County	42451
638	Greene County	36652
639	Grundy County	55741
640	Hamilton County	43609
641	Hancock County	45052
642	Hardin County	37438
643	Henderson County	42414
644	Henry County	46700
645	Iroquois County	44994
646	Jackson County	37967
647	Jasper County	41811
648	Jefferson County	40516
649	Jersey County	42836
650	Jo Daviess County	48743
651	Johnson County	36717
652	Kane County	52163
653	Kankakee County	42687
654	Kendall County	49931
655	Knox County	40363
656	Lake County	80973
657	LaSalle County	46013
658	Lawrence County	30877
659	Lee County	42776
660	Livingston County	45090
661	Logan County	37660
662	McDonough County	38550
663	McHenry County	56711
664	McLean County	49602
665	Macon County	48764
666	Macoupin County	42341
667	Madison County	48222
668	Marion County	42895
669	Marshall County	45901
670	Mason County	41137
671	Massac County	38926
672	Menard County	47012
673	Mercer County	47701
674	Monroe County	59125
675	Montgomery County	36324
676	Morgan County	40560
677	Moultrie County	64409
678	Ogle County	47369
679	Peoria County	51089
680	Perry County	38179
681	Piatt County	54940
682	Pike County	41957
683	Pope County	29510
684	Pulaski County	37936
685	Putnam County	61363
686	Randolph County	37988
687	Richland County	42275
688	Rock Island County	45711
689	St. Clair County	46116
690	Saline County	40891
691	Sangamon County	49445
692	Schuyler County	44586
693	Scott County	41942
694	Shelby County	40517
695	Stark County	42563
696	Stephenson County	42980
697	Tazewell County	48515
698	Union County	43491
699	Vermilion County	40109
700	Wabash County	43098
701	Warren County	41270
702	Washington County	48740
703	Wayne County	39592
704	White County	50560
705	Whiteside County	44916
706	Will County	53895
707	Williamson County	45878
708	Winnebago County	44234
709	Woodford County	53163
710	Indiana County	48678
711	Adams County	40584
712	Allen County	47602
713	Bartholomew County	52546
714	Benton County	42135
715	Blackford County	38813
716	Boone County	76241
717	Brown County	48862
718	Carroll County	43432
719	Cass County	40693
720	Clark County	45270
721	Clay County	39004
722	Clinton County	39905
723	Crawford County	35054
724	Daviess County	43998
725	Dearborn County	49949
726	Decatur County	44168
727	DeKalb County	45324
728	Delaware County	38129
729	Dubois County	57217
730	Elkhart County	46975
731	Fayette County	41993
732	Floyd County	57145
733	Fountain County	41412
734	Franklin County	47664
735	Fulton County	43775
736	Gibson County	46049
737	Grant County	41491
738	Greene County	41747
739	Hamilton County	77263
740	Hancock County	52134
741	Harrison County	43431
742	Hendricks County	50979
743	Henry County	39863
744	Howard County	42911
745	Huntington County	42824
746	Jackson County	44192
747	Jasper County	45777
748	Jay County	39317
749	Jefferson County	44102
750	Jennings County	41169
751	Johnson County	50018
752	Knox County	45882
753	Kosciusko County	48425
754	Lagrange County	43275
755	Lake County	46736
756	LaPorte County	43910
757	Lawrence County	42538
758	Madison County	39428
759	Marion County	54405
760	Marshall County	42196
761	Martin County	39207
762	Miami County	35970
763	Monroe County	43660
764	Montgomery County	40979
765	Morgan County	45352
766	Newton County	41454
767	Noble County	40799
768	Ohio County	41339
769	Orange County	38432
770	Owen County	41632
771	Parke County	37570
772	Perry County	38272
773	Pike County	41827
774	Porter County	54723
775	Posey County	50407
776	Pulaski County	45473
777	Putnam County	38303
778	Randolph County	39222
779	Ripley County	43282
780	Rush County	47445
781	St. Joseph County	48535
782	Scott County	38948
783	Shelby County	44799
784	Spencer County	46393
785	Starke County	35648
786	Steuben County	44854
787	Sullivan County	36863
788	Switzerland County	32174
789	Tippecanoe County	39525
790	Tipton County	47392
791	Union County	40659
792	Vanderburgh County	47233
793	Vermillion County	38633
794	Vigo County	39432
795	Wabash County	43955
796	Warren County	45202
797	Warrick County	58539
798	Washington County	39759
799	Wayne County	42857
800	Wells County	42857
801	White County	44008
802	Whitley County	46555
803	Iowa County	51865
804	Adair County	55251
805	Adams County	66683
806	Allamakee County	49945
807	Appanoose County	40000
808	Audubon County	58359
809	Benton County	55520
810	Black Hawk County	46326
811	Boone County	49794
812	Bremer County	50810
813	Buchanan County	50823
814	Buena Vista County	48394
815	Butler County	49509
816	Calhoun County	54273
817	Carroll County	58482
818	Cass County	50153
819	Cedar County	56419
820	Cerro Gordo County	54253
821	Cherokee County	65727
822	Chickasaw County	62483
823	Clarke County	42031
824	Clay County	54270
825	Clayton County	51982
826	Clinton County	46466
827	Crawford County	45817
828	Dallas County	68246
829	Davis County	40289
830	Decatur County	36494
831	Delaware County	54823
832	Des Moines County	50725
833	Dickinson County	62364
834	Dubuque County	51525
835	Emmet County	48926
836	Fayette County	46621
837	Floyd County	50203
838	Franklin County	53241
839	Fremont County	50441
840	Greene County	53039
841	Grundy County	55017
842	Guthrie County	54843
843	Hamilton County	58399
844	Hancock County	57702
845	Hardin County	52844
846	Harrison County	49085
847	Henry County	44932
848	Howard County	53184
849	Humboldt County	52742
850	Ida County	56128
851	Iowa County	56382
852	Jackson County	47052
853	Jasper County	43987
854	Jefferson County	41936
855	Johnson County	54917
856	Jones County	45927
857	Keokuk County	48084
858	Kossuth County	56902
859	Lee County	43430
860	Linn County	53533
861	Louisa County	46211
862	Lucas County	43061
863	Lyon County	66756
864	Madison County	50460
865	Mahaska County	46516
866	Marion County	50862
867	Marshall County	44589
868	Mills County	57897
869	Mitchell County	69700
870	Monona County	50103
871	Monroe County	46356
872	Montgomery County	44918
873	Muscatine County	48563
874	O'Brien County	61246
875	Osceola County	61277
876	Page County	44442
877	Palo Alto County	58989
878	Plymouth County	60040
879	Pocahontas County	61992
880	Polk County	53859
881	Pottawattamie County	47150
882	Poweshiek County	47199
883	Ringgold County	50405
884	Sac County	59085
885	Scott County	55758
886	Shelby County	56323
887	Sioux County	58585
888	Story County	43643
889	Tama County	48923
890	Taylor County	45093
891	Union County	42530
892	Van Buren County	42908
893	Wapello County	40344
894	Warren County	51776
895	Washington County	62145
896	Wayne County	44614
897	Webster County	48588
898	Winnebago County	45793
899	Winneshiek County	51904
900	Woodbury County	45132
901	Worth County	44675
902	Wright County	55258
903	Kansas County	53426
904	Allen County	43163
905	Anderson County	42046
906	Atchison County	40335
907	Barber County	48489
908	Barton County	49460
909	Bourbon County	46149
910	Brown County	47930
911	Butler County	48216
912	Chase County	53882
913	Chautauqua County	43327
914	Cherokee County	42872
915	Cheyenne County	54890
916	Clark County	64457
917	Clay County	46888
918	Cloud County	41892
919	Coffey County	55119
920	Comanche County	46878
921	Cowley County	40042
922	Crawford County	39788
923	Decatur County	50635
924	Dickinson County	44101
925	Doniphan County	44486
926	Douglas County	45163
927	Edwards County	62707
928	Elk County	41529
929	Ellis County	47758
930	Ellsworth County	48380
931	Finney County	46823
932	Ford County	41373
933	Franklin County	44472
934	Geary County	51410
935	Gove County	66403
936	Graham County	56940
937	Grant County	54892
938	Gray County	75961
939	Greeley County	98916
940	Greenwood County	44689
941	Hamilton County	69339
942	Harper County	54894
943	Harvey County	44416
944	Haskell County	77955
945	Hodgeman County	65688
946	Jackson County	43447
947	Jefferson County	46234
948	Jewell County	57690
949	Johnson County	76206
950	Kearny County	59187
951	Kingman County	48512
952	Kiowa County	47726
953	Labette County	44760
954	Lane County	85007
955	Leavenworth County	44075
956	Lincoln County	48445
957	Linn County	41013
958	Logan County	53800
959	Lyon County	39962
960	McPherson County	56617
961	Marion County	45681
962	Marshall County	46580
963	Meade County	66270
964	Miami County	50210
965	Mitchell County	62780
966	Montgomery County	39041
967	Morris County	46409
968	Morton County	53296
969	Nemaha County	53211
970	Neosho County	41324
971	Ness County	58901
972	Norton County	47838
973	Osage County	43460
974	Osborne County	52889
975	Ottawa County	45417
976	Pawnee County	46226
977	Phillips County	56113
978	Pottawatomie County	55271
979	Pratt County	53891
980	Rawlins County	62147
981	Reno County	42115
982	Republic County	50019
983	Rice County	47243
984	Riley County	42528
985	Rooks County	44398
986	Rush County	52199
987	Russell County	47049
988	Saline County	50820
989	Scott County	74223
990	Sedgwick County	53577
991	Seward County	41567
992	Shawnee County	47991
993	Sheridan County	62156
994	Sherman County	46588
995	Smith County	53381
996	Stafford County	55629
997	Stanton County	75841
998	Stevens County	49540
999	Sumner County	42524
1000	Thomas County	52540
1001	Trego County	53593
1002	Wabaunsee County	52706
1003	Wallace County	64805
1004	Washington County	52141
1005	Wichita County	86215
1006	Wilson County	44521
1007	Woodson County	42276
1008	Wyandotte County	34518
1009	Kentucky County	43770
1010	Adair County	32549
1011	Allen County	32881
1012	Anderson County	40581
1013	Ballard County	38711
1014	Barren County	37337
1015	Bath County	31327
1016	Bell County	30649
1017	Boone County	49778
1018	Bourbon County	51505
1019	Boyd County	40453
1020	Boyle County	38958
1021	Bracken County	38692
1022	Breathitt County	34232
1023	Breckinridge County	34418
1024	Bullitt County	42799
1025	Butler County	35121
1026	Caldwell County	35437
1027	Calloway County	35878
1028	Campbell County	50398
1029	Carlisle County	42991
1030	Carroll County	37806
1031	Carter County	31713
1032	Casey County	31688
1033	Christian County	39504
1034	Clark County	40413
1035	Clay County	31200
1036	Clinton County	31601
1037	Crittenden County	36354
1038	Cumberland County	36467
1039	Daviess County	42372
1040	Edmonson County	34037
1041	Elliott County	22828
1042	Estill County	32928
1043	Fayette County	51707
1044	Fleming County	34732
1045	Floyd County	37133
1046	Franklin County	43271
1047	Fulton County	35240
1048	Gallatin County	33697
1049	Garrard County	35251
1050	Grant County	37083
1051	Graves County	38485
1052	Grayson County	34450
1053	Green County	34997
1054	Greenup County	42516
1055	Hancock County	38722
1056	Hardin County	44244
1057	Harlan County	31824
1058	Harrison County	36545
1059	Hart County	33648
1060	Henderson County	41279
1061	Henry County	39175
1062	Hickman County	42635
1063	Hopkins County	40317
1064	Jackson County	29848
1065	Jefferson County	54155
1066	Jessamine County	46250
1067	Johnson County	34356
1068	Kenton County	58349
1069	Knott County	31929
1070	Knox County	30105
1071	Larue County	38316
1072	Laurel County	34289
1073	Lawrence County	33213
1074	Lee County	29162
1075	Leslie County	34079
1076	Letcher County	31871
1077	Lewis County	32147
1078	Lincoln County	32881
1079	Livingston County	38515
1080	Logan County	36834
1081	Lyon County	37276
1082	McCracken County	49087
1083	McCreary County	26600
1084	McLean County	39163
1085	Madison County	36331
1086	Magoffin County	32995
1087	Marion County	37340
1088	Marshall County	42342
1089	Martin County	29905
1090	Mason County	41350
1091	Meade County	40942
1092	Menifee County	31681
1093	Mercer County	37806
1094	Metcalfe County	31848
1095	Monroe County	36837
1096	Montgomery County	35915
1097	Morgan County	27978
1098	Muhlenberg County	35138
1099	Nelson County	43809
1100	Nicholas County	34856
1101	Ohio County	33313
1102	Oldham County	66238
1103	Owen County	33365
1104	Owsley County	32461
1105	Pendleton County	45039
1106	Perry County	39308
1107	Pike County	37490
1108	Powell County	32532
1109	Pulaski County	38492
1110	Robertson County	34196
1111	Rockcastle County	32294
1112	Rowan County	31566
1113	Russell County	37346
1114	Scott County	44335
1115	Shelby County	46657
1116	Simpson County	39235
1117	Spencer County	45208
1118	Taylor County	35546
1119	Todd County	38112
1120	Trigg County	37633
1121	Trimble County	39400
1122	Union County	36348
1123	Warren County	38268
1124	Washington County	38210
1125	Wayne County	28935
1126	Webster County	39965
1127	Whitley County	34663
1128	Wolfe County	31658
1129	Woodford County	53292
1130	Louisiana County	47460
1131	Acadia County	37786
1132	Allen County	34644
1133	Ascension County	50671
1134	Assumption County	47947
1135	Avoyelles County	39001
1136	Beauregard County	43473
1137	Bienville County	39111
1138	Bossier County	45110
1139	Caddo County	50690
1140	Calcasieu County	49664
1141	Caldwell County	35353
1142	Cameron County	49000
1143	Catahoula County	35037
1144	Claiborne County	34954
1145	Concordia County	34110
1146	De Soto County	42298
1147	East Baton Rouge County	53002
1148	East Carroll County	36035
1149	East Feliciana County	42353
1150	Evangeline County	33474
1151	Franklin County	33250
1152	Grant County	31890
1153	Iberia County	40403
1154	Iberville County	42418
1155	Jackson County	34843
1156	Jefferson County	52274
1157	Jefferson Davis County	42519
1158	Lafayette County	49629
1159	Lafourche County	45806
1160	LaSalle County	33992
1161	Lincoln County	40541
1162	Livingston County	42217
1163	Madison County	33275
1164	Morehouse County	39521
1165	Natchitoches County	41846
1166	Orleans County	53923
1167	Ouachita County	42398
1168	Plaquemines County	49507
1169	Pointe Coupee County	47083
1170	Rapides County	46614
1171	Red River County	44440
1172	Richland County	39080
1173	Sabine County	36025
1174	St. Bernard County	33556
1175	St. Charles County	49660
1176	St. Helena County	43338
1177	St. James County	52567
1178	St. John the Baptist County	41368
1179	St. Landry County	41922
1180	St. Martin County	39053
1181	St. Mary County	40746
1182	St. Tammany County	65938
1183	Tangipahoa County	38800
1184	Tensas County	41323
1185	Terrebonne County	42267
1186	Union County	40441
1187	Vermilion County	40237
1188	Vernon County	42755
1189	Washington County	34744
1190	Webster County	40860
1191	West Baton Rouge County	48144
1192	West Carroll County	33073
1193	West Feliciana County	38926
1194	Winn County	37988
1195	Maine County	50634
1196	Androscoggin County	42968
1197	Aroostook County	43189
1198	Cumberland County	64948
1199	Franklin County	40189
1200	Hancock County	52294
1201	Kennebec County	46958
1202	Knox County	51959
1203	Lincoln County	51687
1204	Oxford County	39240
1205	Penobscot County	43136
1206	Piscataquis County	39614
1207	Sagadahoc County	52736
1208	Somerset County	39282
1209	Waldo County	43793
1210	Washington County	41094
1211	York County	54225
1212	Maryland County	64640
1213	Allegany County	41454
1214	Anne Arundel County	69035
1215	Baltimore County	62976
1216	Calvert County	63976
1217	Caroline County	46883
1218	Carroll County	64288
1219	Cecil County	49749
1220	Charles County	57774
1221	Dorchester County	47699
1222	Frederick County	64147
1223	Garrett County	47735
1224	Harford County	60266
1225	Howard County	79253
1226	Kent County	63141
1227	Montgomery County	90139
1228	Prince George's County	50625
1229	Queen Anne's County	66733
1230	St. Mary's County	58582
1231	Somerset County	31668
1232	Talbot County	74711
1233	Washington County	48650
1234	Wicomico County	42547
1235	Worcester County	60222
1236	Baltimore City County	53378
1237	Massachusetts County	74187
1238	Barnstable County	77435
1239	Berkshire County	58299
1240	Bristol County	55718
1241	Dukes County	100996
1242	Essex County	69981
1243	Franklin County	56793
1244	Hampden County	53248
1245	Hampshire County	54867
1246	Middlesex County	87192
1247	Nantucket County	136204
1248	Norfolk County	95221
1249	Plymouth County	69669
1250	Suffolk County	83490
1251	Worcester County	58563
1252	Michigan County	49228
1253	Alcona County	41049
1254	Alger County	34233
1255	Allegan County	45937
1256	Alpena County	41783
1257	Antrim County	47855
1258	Arenac County	39009
1259	Baraga County	34044
1260	Barry County	45804
1261	Bay County	43657
1262	Benzie County	44283
1263	Berrien County	48237
1264	Branch County	37202
1265	Calhoun County	40257
1266	Cass County	45409
1267	Charlevoix County	53136
1268	Cheboygan County	40405
1269	Chippewa County	35034
1270	Clare County	34637
1271	Clinton County	47411
1272	Crawford County	35407
1273	Delta County	41210
1274	Dickinson County	49179
1275	Eaton County	43365
1276	Emmet County	58528
1277	Genesee County	41929
1278	Gladwin County	37512
1279	Gogebic County	44113
1280	Grand Traverse County	51619
1281	Gratiot County	38274
1282	Hillsdale County	36033
1283	Houghton County	39124
1284	Huron County	47909
1285	Ingham County	41286
1286	Ionia County	35518
1287	Iosco County	39832
1288	Iron County	45463
1289	Isabella County	36356
1290	Jackson County	40387
1291	Kalamazoo County	49493
1292	Kalkaska County	35387
1293	Kent County	53664
1294	Keweenaw County	47963
1295	Lake County	33368
1296	Lapeer County	44706
1297	Leelanau County	68281
1298	Lenawee County	40932
1299	Livingston County	58879
1300	Luce County	32174
1301	Mackinac County	45138
1302	Macomb County	47487
1303	Manistee County	39389
1304	Marquette County	40772
1305	Mason County	41488
1306	Mecosta County	34090
1307	Menominee County	44114
1308	Midland County	55972
1309	Missaukee County	36922
1310	Monroe County	48581
1311	Montcalm County	35537
1312	Montmorency County	38079
1313	Muskegon County	39637
1314	Newaygo County	38429
1315	Oakland County	73271
1316	Oceana County	38856
1317	Ogemaw County	34770
1318	Ontonagon County	41363
1319	Osceola County	37636
1320	Oscoda County	34549
1321	Otsego County	41925
1322	Ottawa County	49345
1323	Presque Isle County	41560
1324	Roscommon County	37507
1325	Saginaw County	40533
1326	St. Clair County	45662
1327	St. Joseph County	38936
1328	Sanilac County	38917
1329	Schoolcraft County	41073
1330	Shiawassee County	40535
1331	Tuscola County	38676
1332	Van Buren County	41773
1333	Washtenaw County	60843
1334	Wayne County	44512
1335	Wexford County	37240
1336	Minnesota County	58834
1337	Aitkin County	41327
1338	Anoka County	52250
1339	Becker County	49190
1340	Beltrami County	42212
1341	Benton County	45458
1342	Big Stone County	55491
1343	Blue Earth County	46793
1344	Brown County	55904
1345	Carlton County	44391
1346	Carver County	72852
1347	Cass County	47981
1348	Chippewa County	51230
1349	Chisago County	50093
1350	Clay County	44023
1351	Clearwater County	44765
1352	Cook County	54964
1353	Cottonwood County	51543
1354	Crow Wing County	45685
1355	Dakota County	61914
1356	Dodge County	47665
1357	Douglas County	52691
1358	Faribault County	46941
1359	Fillmore County	47061
1360	Freeborn County	47356
1361	Goodhue County	55816
1362	Grant County	50366
1363	Hennepin County	76552
1364	Houston County	53446
1365	Hubbard County	45257
1366	Isanti County	45781
1367	Itasca County	46020
1368	Jackson County	57933
1369	Kanabec County	43416
1370	Kandiyohi County	54111
1371	Kittson County	50628
1372	Koochiching County	45054
1373	Lac qui Parle County	56527
1374	Lake County	49743
1375	Lake of the Woods County	57121
1376	Le Sueur County	50728
1377	Lincoln County	52251
1378	Lyon County	54108
1379	McLeod County	50380
1380	Mahnomen County	36427
1381	Marshall County	51545
1382	Martin County	57091
1383	Meeker County	46073
1384	Mille Lacs County	43058
1385	Morrison County	43703
1386	Mower County	47445
1387	Murray County	59183
1388	Nicollet County	51036
1389	Nobles County	49217
1390	Norman County	41584
1391	Olmsted County	59176
1392	Otter Tail County	49277
1393	Pennington County	57337
1394	Pine County	37971
1395	Pipestone County	61830
1396	Polk County	48513
1397	Pope County	52217
1398	Ramsey County	55583
1399	Red Lake County	50221
1400	Redwood County	54719
1401	Renville County	53855
1402	Rice County	45092
1403	Rock County	57617
1404	Roseau County	49328
1405	St. Louis County	48718
1406	Scott County	62164
1407	Sherburne County	47712
1408	Sibley County	49408
1409	Stearns County	47938
1410	Steele County	48580
1411	Stevens County	50696
1412	Swift County	52813
1413	Todd County	43979
1414	Traverse County	60535
1415	Wabasha County	50042
1416	Wadena County	40756
1417	Waseca County	44262
1418	Washington County	68525
1419	Watonwan County	48684
1420	Wilkin County	57087
1421	Winona County	49412
1422	Wright County	51609
1423	Yellow Medicine County	57881
1424	Mississippi County	38914
1425	Adams County	35563
1426	Alcorn County	36592
1427	Amite County	35151
1428	Attala County	34583
1429	Benton County	31411
1430	Bolivar County	39179
1431	Calhoun County	33450
1432	Carroll County	38497
1433	Chickasaw County	36994
1434	Choctaw County	34999
1435	Claiborne County	31501
1436	Clarke County	38735
1437	Clay County	39449
1438	Coahoma County	37070
1439	Copiah County	33932
1440	Covington County	36985
1441	DeSoto County	42007
1442	Forrest County	39450
1443	Franklin County	35353
1444	George County	33595
1445	Greene County	28617
1446	Grenada County	37067
1447	Hancock County	36533
1448	Harrison County	38140
1449	Hinds County	40279
1450	Holmes County	29976
1451	Humphreys County	34941
1452	Issaquena County	27430
1453	Itawamba County	36375
1454	Jackson County	38269
1455	Jasper County	39699
1456	Jefferson County	34860
1457	Jefferson Davis County	30429
1458	Jones County	38740
1459	Kemper County	30021
1460	Lafayette County	43820
1461	Lamar County	40207
1462	Lauderdale County	39359
1463	Lawrence County	34308
1464	Leake County	31441
1465	Lee County	42635
1466	Leflore County	38974
1467	Lincoln County	39441
1468	Lowndes County	40717
1469	Madison County	65746
1470	Marion County	38701
1471	Marshall County	34165
1472	Monroe County	36295
1473	Montgomery County	35910
1474	Neshoba County	36785
1475	Newton County	35563
1476	Noxubee County	34204
1477	Oktibbeha County	35457
1478	Panola County	33528
1479	Pearl River County	37178
1480	Perry County	33188
1481	Pike County	31536
1482	Pontotoc County	33932
1483	Prentiss County	31314
1484	Quitman County	30185
1485	Rankin County	45237
1486	Scott County	31585
1487	Sharkey County	34830
1488	Simpson County	36587
1489	Smith County	35445
1490	Stone County	33369
1491	Sunflower County	31846
1492	Tallahatchie County	30451
1493	Tate County	36836
1494	Tippah County	35061
1495	Tishomingo County	34871
1496	Tunica County	34325
1497	Union County	33027
1498	Walthall County	31910
1499	Warren County	41102
1500	Washington County	38942
1501	Wayne County	34961
1502	Webster County	39794
1503	Wilkinson County	30723
1504	Winston County	36414
1505	Yalobusha County	38478
1506	Yazoo County	27666
1507	Missouri County	48656
1508	Adair County	33351
1509	Andrew County	45594
1510	Atchison County	48160
1511	Audrain County	39118
1512	Barry County	35003
1513	Barton County	36035
1514	Bates County	40325
1515	Benton County	38536
1516	Bollinger County	33632
1517	Boone County	48525
1518	Buchanan County	40156
1519	Butler County	36606
1520	Caldwell County	38939
1521	Callaway County	39111
1522	Camden County	38352
1523	Cape Girardeau County	46754
1524	Carroll County	49468
1525	Carter County	33370
1526	Cass County	47907
1527	Cedar County	31208
1528	Chariton County	46156
1529	Christian County	41516
1530	Clark County	36842
1531	Clay County	48920
1532	Clinton County	43200
1533	Cole County	48273
1534	Cooper County	40212
1535	Crawford County	36242
1536	Dade County	35409
1537	Dallas County	34214
1538	Daviess County	35453
1539	DeKalb County	29649
1540	Dent County	34112
1541	Douglas County	29191
1542	Dunklin County	37291
1543	Franklin County	45672
1544	Gasconade County	40932
1545	Gentry County	44599
1546	Greene County	45476
1547	Grundy County	36146
1548	Harrison County	38154
1549	Henry County	42741
1550	Hickory County	29033
1551	Holt County	53880
1552	Howard County	41534
1553	Howell County	35261
1554	Iron County	34554
1555	Jackson County	47819
1556	Jasper County	42348
1557	Jefferson County	43259
1558	Johnson County	37615
1559	Knox County	37092
1560	Laclede County	37228
1561	Lafayette County	42819
1562	Lawrence County	34465
1563	Lewis County	37197
1564	Lincoln County	41082
1565	Linn County	40419
1566	Livingston County	39305
1567	McDonald County	28931
1568	Macon County	43173
1569	Madison County	37430
1570	Maries County	34965
1571	Marion County	41677
1572	Mercer County	34283
1573	Miller County	36501
1574	Mississippi County	33213
1575	Moniteau County	36675
1576	Monroe County	42136
1577	Montgomery County	41354
1578	Morgan County	40924
1579	New Madrid County	38281
1580	Newton County	39495
1581	Nodaway County	33466
1582	Oregon County	30778
1583	Osage County	46222
1584	Ozark County	31526
1585	Pemiscot County	37487
1586	Perry County	42182
1587	Pettis County	38545
1588	Phelps County	40208
1589	Pike County	35410
1590	Platte County	59095
1591	Polk County	35193
1592	Pulaski County	41734
1593	Putnam County	37336
1594	Ralls County	40447
1595	Randolph County	40856
1596	Ray County	43569
1597	Reynolds County	35467
1598	Ripley County	31522
1599	St. Charles County	54472
1600	St. Clair County	30578
1601	Ste. Genevieve County	41802
1602	St. Francois County	34886
1603	St. Louis County	73016
1604	Saline County	39037
1605	Schuyler County	30715
1606	Scotland County	36001
1607	Scott County	41626
1608	Shannon County	31184
1609	Shelby County	41446
1610	Stoddard County	37365
1611	Stone County	39225
1612	Sullivan County	41690
1613	Taney County	36794
1614	Texas County	29618
1615	Vernon County	35742
1616	Warren County	42648
1617	Washington County	30490
1618	Wayne County	30930
1619	Webster County	33387
1620	Worth County	40013
1621	Wright County	33243
1622	St. Louis City County	48202
1623	Montana County	49747
1624	Beaverhead County	48424
1625	Big Horn County	31887
1626	Blaine County	33560
1627	Broadwater County	45211
1628	Carbon County	52371
1629	Carter County	41642
1630	Cascade County	49803
1631	Chouteau County	41312
1632	Custer County	47268
1633	Daniels County	48385
1634	Dawson County	47273
1635	Deer Lodge County	41454
1636	Fallon County	50824
1637	Fergus County	46646
1638	Flathead County	48866
1639	Gallatin County	58195
1640	Garfield County	33995
1641	Glacier County	36484
1642	Golden Valley County	52862
1643	Granite County	44717
1644	Hill County	47082
1645	Jefferson County	49780
1646	Judith Basin County	50997
1647	Lake County	40754
1648	Lewis and Clark County	50600
1649	Liberty County	47675
1650	Lincoln County	37155
1651	McCone County	39913
1652	Madison County	53567
1653	Meagher County	46461
1654	Mineral County	40547
1655	Missoula County	51090
1656	Musselshell County	45902
1657	Park County	51538
1658	Petroleum County	37070
1659	Phillips County	42055
1660	Pondera County	47477
1661	Powder River County	35063
1662	Powell County	44111
1663	Prairie County	49750
1664	Ravalli County	46768
1665	Richland County	64486
1666	Roosevelt County	36067
1667	Rosebud County	45929
1668	Sanders County	36296
1669	Sheridan County	49659
1670	Silver Bow County	49285
1671	Stillwater County	53913
1672	Sweet Grass County	48591
1673	Teton County	49840
1674	Toole County	56222
1675	Treasure County	61553
1676	Valley County	47831
1677	Wheatland County	40015
1678	Wibaux County	42078
1679	Yellowstone County	54069
1680	Nebraska County	54515
1681	Adams County	50399
1682	Antelope County	54945
1683	Arthur County	48955
1684	Banner County	55695
1685	Blaine County	60120
1686	Boone County	58042
1687	Box Butte County	50518
1688	Boyd County	57949
1689	Brown County	57563
1690	Buffalo County	57453
1691	Burt County	50943
1692	Butler County	50050
1693	Cass County	53422
1694	Cedar County	50992
1695	Chase County	61516
1696	Cherry County	46632
1697	Cheyenne County	49384
1698	Clay County	51362
1699	Colfax County	44785
1700	Cuming County	67977
1701	Custer County	49091
1702	Dakota County	43872
1703	Dawes County	38564
1704	Dawson County	46256
1705	Deuel County	42899
1706	Dixon County	43920
1707	Dodge County	48123
1708	Douglas County	63853
1709	Dundy County	74921
1710	Fillmore County	59979
1711	Franklin County	49619
1712	Frontier County	38860
1713	Furnas County	46012
1714	Gage County	49057
1715	Garden County	48213
1716	Garfield County	41192
1717	Gosper County	50478
1718	Grant County	51082
1719	Greeley County	46979
1720	Hall County	45112
1721	Hamilton County	56372
1722	Harlan County	53210
1723	Hayes County	70008
1724	Hitchcock County	39690
1725	Holt County	54796
1726	Hooker County	51849
1727	Howard County	46471
1728	Jefferson County	50079
1729	Johnson County	36262
1730	Kearney County	56230
1731	Keith County	48533
1732	Keya Paha County	52917
1733	Kimball County	44484
1734	Knox County	47418
1735	Lancaster County	50743
1736	Lincoln County	49052
1737	Logan County	53451
1738	Loup County	52977
1739	McPherson County	47684
1740	Madison County	51785
1741	Merrick County	47637
1742	Morrill County	58632
1743	Nance County	40934
1744	Nemaha County	49201
1745	Nuckolls County	53144
1746	Otoe County	55284
1747	Pawnee County	45191
1748	Perkins County	65325
1749	Phelps County	54249
1750	Pierce County	56236
1751	Platte County	48102
1752	Polk County	53462
1753	Red Willow County	47027
1754	Richardson County	50988
1755	Rock County	62018
1756	Saline County	44351
1757	Sarpy County	52190
1758	Saunders County	53427
1759	Scotts Bluff County	45992
1760	Seward County	52487
1761	Sheridan County	48644
1762	Sherman County	42984
1763	Sioux County	52159
1764	Stanton County	45869
1765	Thayer County	56265
1766	Thomas County	55960
1767	Thurston County	39667
1768	Valley County	49708
1769	Washington County	57962
1770	Wayne County	44879
1771	Webster County	52857
1772	Wheeler County	82976
1773	York County	51573
1774	Nevada County	51161
1775	Churchill County	45219
1776	Clark County	48806
1777	Douglas County	75635
1778	Elko County	48584
1779	Esmeralda County	41641
1780	Eureka County	42932
1781	Humboldt County	49228
1782	Lander County	69293
1783	Lincoln County	39362
1784	Lyon County	39650
1785	Mineral County	41634
1786	Nye County	39431
1787	Pershing County	32859
1788	Storey County	59628
1789	Washoe County	63360
1790	White Pine County	46761
1791	Carson City County	52470
1792	New Hampshire County	63502
1793	Belknap County	63308
1794	Carroll County	60157
1795	Cheshire County	53141
1796	Coos County	44399
1797	Grafton County	63319
1798	Hillsborough County	63218
1799	Merrimack County	59593
1800	Rockingham County	76902
1801	Strafford County	52387
1802	Sullivan County	54115
1803	New Jersey County	70471
1804	Atlantic County	50631
1805	Bergen County	89456
1806	Burlington County	63605
1807	Camden County	55780
1808	Cape May County	62734
1809	Cumberland County	41237
1810	Essex County	67657
1811	Gloucester County	56499
1812	Hudson County	69406
1813	Hunterdon County	92291
1814	Mercer County	71790
1815	Middlesex County	63457
1816	Monmouth County	82551
1817	Morris County	101646
1818	Ocean County	53139
1819	Passaic County	52129
1820	Salem County	50203
1821	Somerset County	109916
1822	Sussex County	63784
1823	Union County	70865
1824	Warren County	57854
1825	New Mexico County	43326
1826	Bernalillo County	45431
1827	Catron County	32866
1828	Chaves County	41746
1829	Cibola County	29384
1830	Colfax County	42497
1831	Curry County	44914
1832	De Baca County	52191
1833	Doña Ana County	37756
1834	Eddy County	59661
1835	Grant County	42959
1836	Guadalupe County	35516
1837	Harding County	44883
1838	Hidalgo County	44716
1839	Lea County	49039
1840	Lincoln County	42900
1841	Los Alamos County	73821
1842	Luna County	33927
1843	McKinley County	29714
1844	Mora County	39987
1845	Otero County	35889
1846	Quay County	41569
1847	Rio Arriba County	36100
1848	Roosevelt County	43330
1849	Sandoval County	43125
1850	San Juan County	35999
1851	San Miguel County	36105
1852	Santa Fe County	60276
1853	Sierra County	42255
1854	Socorro County	35867
1855	Taos County	38810
1856	Torrance County	33446
1857	Union County	37763
1858	Valencia County	34964
1859	New York County	71717
1860	Albany County	63037
1861	Allegany County	36164
1862	Bronx County	39711
1863	Broome County	46361
1864	Cattaraugus County	41774
1865	Cayuga County	44520
1866	Chautauqua County	42355
1867	Chemung County	46421
1868	Chenango County	44146
1869	Clinton County	45112
1870	Columbia County	58123
1871	Cortland County	42252
1872	Delaware County	42220
1873	Dutchess County	58478
1874	Erie County	53498
1875	Essex County	48181
1876	Franklin County	39649
1877	Fulton County	45459
1878	Genesee County	46181
1879	Greene County	49100
1880	Hamilton County	55578
1881	Herkimer County	43479
1882	Jefferson County	49365
1883	Kings County	56080
1884	Lewis County	47471
1885	Livingston County	48268
1886	Madison County	45794
1887	Monroe County	55034
1888	Montgomery County	43272
1889	Nassau County	93241
1890	New York County	197847
1891	Niagara County	47207
1892	Oneida County	46867
1893	Onondaga County	55564
1894	Ontario County	55541
1895	Orange County	53656
1896	Orleans County	41050
1897	Oswego County	42025
1898	Otsego County	45774
1899	Putnam County	69365
1900	Queens County	53008
1901	Rensselaer County	51356
1902	Richmond County	58890
1903	Rockland County	63167
1904	St. Lawrence County	39697
1905	Saratoga County	72757
1906	Schenectady County	51697
1907	Schoharie County	43113
1908	Schuyler County	43262
1909	Seneca County	40534
1910	Steuben County	47212
1911	Suffolk County	71911
1912	Sullivan County	48753
1913	Tioga County	46969
1914	Tompkins County	46496
1915	Ulster County	53006
1916	Warren County	55181
1917	Washington County	42181
1918	Wayne County	47886
1919	Westchester County	113477
1920	Wyoming County	43176
1921	Yates County	40877
1922	North Carolina County	47766
1923	Alamance County	41193
1924	Alexander County	37622
1925	Alleghany County	38514
1926	Anson County	36307
1927	Ashe County	36426
1928	Avery County	36748
1929	Beaufort County	43743
1930	Bertie County	37424
1931	Bladen County	36312
1932	Brunswick County	44129
1933	Buncombe County	50690
1934	Burke County	36212
1935	Cabarrus County	46615
1936	Caldwell County	36609
1937	Camden County	46366
1938	Carteret County	51582
1939	Caswell County	36153
1940	Catawba County	46367
1941	Chatham County	64807
1942	Cherokee County	33402
1943	Chowan County	42314
1944	Clay County	34391
1945	Cleveland County	38644
1946	Columbus County	33743
1947	Craven County	46446
1948	Cumberland County	40233
1949	Currituck County	47767
1950	Dare County	57688
1951	Davidson County	40876
1952	Davie County	49508
1953	Duplin County	35208
1954	Durham County	51713
1955	Edgecombe County	36814
1956	Forsyth County	49247
1957	Franklin County	37089
1958	Gaston County	41506
1959	Gates County	38851
1960	Graham County	35040
1961	Granville County	39610
1962	Greene County	32904
1963	Guilford County	47546
1964	Halifax County	37854
1965	Harnett County	35484
1966	Haywood County	41798
1967	Henderson County	45342
1968	Hertford County	33251
1969	Hoke County	32574
1970	Hyde County	40044
1971	Iredell County	52423
1972	Jackson County	34860
1973	Johnston County	41327
1974	Jones County	42024
1975	Lee County	42021
1976	Lenoir County	41752
1977	Lincoln County	47178
1978	McDowell County	35227
1979	Macon County	40848
1980	Madison County	35729
1981	Martin County	35541
1982	Mecklenburg County	62890
1983	Mitchell County	36684
1984	Montgomery County	36181
1985	Moore County	51913
1986	Nash County	43971
1987	New Hanover County	48029
1988	Northampton County	36597
1989	Onslow County	47525
1990	Orange County	65185
1991	Pamlico County	43290
1992	Pasquotank County	40388
1993	Pender County	38338
1994	Perquimans County	41804
1995	Person County	39119
1996	Pitt County	43325
1997	Polk County	45459
1998	Randolph County	38892
1999	Richmond County	35630
2000	Robeson County	30423
2001	Rockingham County	38419
2002	Rowan County	40213
2003	Rutherford County	34021
2004	Sampson County	35871
2005	Scotland County	33938
2006	Stanly County	40157
2007	Stokes County	38835
2008	Surry County	39525
2009	Swain County	40819
2010	Transylvania County	42515
2011	Tyrrell County	32712
2012	Union County	53417
2013	Vance County	35278
2014	Wake County	62264
2015	Warren County	30377
2016	Washington County	37481
2017	Watauga County	38720
2018	Wayne County	39894
2019	Wilkes County	37313
2020	Wilson County	41339
2021	Yadkin County	38816
2022	Yancey County	37812
2023	North Dakota County	57232
2024	Adams County	50172
2025	Barnes County	55764
2026	Benson County	36139
2027	Billings County	79550
2028	Bottineau County	61071
2029	Bowman County	66566
2030	Burke County	74224
2031	Burleigh County	60117
2032	Cass County	58783
2033	Cavalier County	65298
2034	Dickey County	60512
2035	Divide County	52476
2036	Dunn County	63237
2037	Eddy County	59794
2038	Emmons County	49101
2039	Foster County	59570
2040	Golden Valley County	37688
2041	Grand Forks County	53502
2042	Grant County	45370
2043	Griggs County	56996
2044	Hettinger County	49775
2045	Kidder County	52877
2046	LaMoure County	57831
2047	Logan County	51670
2048	McHenry County	52038
2049	McIntosh County	58245
2050	McKenzie County	65130
2051	McLean County	55710
2052	Mercer County	57936
2053	Morton County	53454
2054	Mountrail County	61569
2055	Nelson County	60964
2056	Oliver County	44140
2057	Pembina County	60512
2058	Pierce County	49600
2059	Ramsey County	50047
2060	Ransom County	57933
2061	Renville County	70486
2062	Richland County	51045
2063	Rolette County	36875
2064	Sargent County	61102
2065	Sheridan County	46962
2066	Sioux County	28524
2067	Slope County	46328
2068	Stark County	63942
2069	Steele County	57770
2070	Stutsman County	53065
2071	Towner County	62530
2072	Traill County	53140
2073	Walsh County	51995
2074	Ward County	56088
2075	Wells County	59292
2076	Williams County	68291
2077	Ohio County	50199
2078	Adams County	35269
2079	Allen County	43788
2080	Ashland County	39977
2081	Ashtabula County	39767
2082	Athens County	34796
2083	Auglaize County	49789
2084	Belmont County	42987
2085	Brown County	38401
2086	Butler County	49146
2087	Carroll County	40833
2088	Champaign County	42432
2089	Clark County	41811
2090	Clermont County	55842
2091	Clinton County	46599
2092	Columbiana County	39311
2093	Coshocton County	35962
2094	Crawford County	39844
2095	Cuyahoga County	56502
2096	Darke County	44297
2097	Defiance County	42003
2098	Delaware County	75778
2099	Erie County	61821
2100	Fairfield County	47295
2101	Fayette County	40002
2102	Franklin County	51644
2103	Fulton County	46811
2104	Gallia County	40038
2105	Geauga County	70955
2106	Greene County	51509
2107	Guernsey County	41613
2108	Hamilton County	61732
2109	Hancock County	51762
2110	Hardin County	33788
2111	Harrison County	39209
2112	Henry County	46006
2113	Highland County	37317
2114	Hocking County	38975
2115	Holmes County	46876
2116	Huron County	41797
2117	Jackson County	36672
2118	Jefferson County	40844
2119	Knox County	44019
2120	Lake County	52475
2121	Lawrence County	39610
2122	Licking County	47097
2123	Logan County	44030
2124	Lorain County	47666
2125	Lucas County	47875
2126	Madison County	41862
2127	Mahoning County	43925
2128	Marion County	38644
2129	Medina County	57387
2130	Meigs County	35723
2131	Mercer County	52106
2132	Miami County	48997
2133	Monroe County	36672
2134	Montgomery County	48448
2135	Morgan County	34038
2136	Morrow County	40221
2137	Muskingum County	41998
2138	Noble County	27703
2139	Ottawa County	53133
2140	Paulding County	42017
2141	Perry County	38469
2142	Pickaway County	41422
2143	Pike County	38610
2144	Portage County	45023
2145	Preble County	41110
2146	Putnam County	50560
2147	Richland County	40507
2148	Ross County	38563
2149	Sandusky County	42188
2150	Scioto County	40144
2151	Seneca County	40607
2152	Shelby County	46739
2153	Stark County	46441
2154	Summit County	52918
2155	Trumbull County	42005
2156	Tuscarawas County	45199
2157	Union County	59811
2158	Van Wert County	43166
2159	Vinton County	34400
2160	Warren County	62111
2161	Washington County	44283
2162	Wayne County	46420
2163	Williams County	42970
2164	Wood County	48823
2165	Wyandot County	46428
2166	Oklahoma County	47341
2167	Adair County	29528
2168	Alfalfa County	39316
2169	Atoka County	32823
2170	Beaver County	52877
2171	Beckham County	38789
2172	Blaine County	42256
2173	Bryan County	35269
2174	Caddo County	37603
2175	Canadian County	46116
2176	Carter County	43578
2177	Cherokee County	33583
2178	Choctaw County	32368
2179	Cimarron County	71734
2180	Cleveland County	45675
2181	Coal County	38741
2182	Comanche County	42676
2183	Cotton County	43032
2184	Craig County	38861
2185	Creek County	41624
2186	Custer County	41261
2187	Delaware County	33113
2188	Dewey County	47685
2189	Ellis County	54037
2190	Garfield County	44899
2191	Garvin County	39303
2192	Grady County	40777
2193	Grant County	46669
2194	Greer County	30055
2195	Harmon County	42281
2196	Harper County	53798
2197	Haskell County	32972
2198	Hughes County	42601
2199	Jackson County	43321
2200	Jefferson County	34118
2201	Johnston County	34931
2202	Kay County	41469
2203	Kingfisher County	54342
2204	Kiowa County	37761
2205	Latimer County	35167
2206	Le Flore County	33222
2207	Lincoln County	35697
2208	Logan County	43861
2209	Love County	37666
2210	McClain County	46874
2211	McCurtain County	33002
2212	McIntosh County	35335
2213	Major County	43815
2214	Marshall County	33857
2215	Mayes County	36363
2216	Murray County	43275
2217	Muskogee County	37827
2218	Noble County	44037
2219	Nowata County	37054
2220	Okfuskee County	31212
2221	Oklahoma County	52048
2222	Okmulgee County	34888
2223	Osage County	35458
2224	Ottawa County	38291
2225	Pawnee County	36538
2226	Payne County	38276
2227	Pittsburg County	39331
2228	Pontotoc County	44712
2229	Pottawatomie County	38053
2230	Pushmataha County	32830
2231	Roger Mills County	44454
2232	Rogers County	47635
2233	Seminole County	34658
2234	Sequoyah County	33665
2235	Stephens County	43723
2236	Texas County	61652
2237	Tillman County	38674
2238	Tulsa County	64699
2239	Wagoner County	40851
2240	Washington County	66805
2241	Washita County	36141
2242	Woods County	44427
2243	Woodward County	38156
2244	Oregon County	53191
2245	Baker County	42494
2246	Benton County	48725
2247	Clackamas County	61726
2248	Clatsop County	47081
2249	Columbia County	46019
2250	Coos County	46429
2251	Crook County	42584
2252	Curry County	45474
2253	Deschutes County	56447
2254	Douglas County	42334
2255	Gilliam County	55409
2256	Grant County	42888
2257	Harney County	41818
2258	Hood River County	56325
2259	Jackson County	48291
2260	Jefferson County	35155
2261	Josephine County	43554
2262	Klamath County	41613
2263	Lake County	43228
2264	Lane County	47340
2265	Lincoln County	45935
2266	Linn County	44830
2267	Malheur County	34576
2268	Marion County	45158
2269	Morrow County	48605
2270	Multnomah County	60773
2271	Polk County	42897
2272	Sherman County	56940
2273	Tillamook County	45879
2274	Umatilla County	41928
2275	Union County	41721
2276	Wallowa County	46044
2277	Wasco County	43596
2278	Washington County	64043
2279	Wheeler County	39368
2280	Yamhill County	47494
2281	Pennsylvania County	58032
2282	Adams County	50182
2283	Allegheny County	65784
2284	Armstrong County	46925
2285	Beaver County	50600
2286	Bedford County	43426
2287	Berks County	51299
2288	Blair County	48277
2289	Bradford County	43187
2290	Bucks County	75864
2291	Butler County	60493
2292	Cambria County	45107
2293	Cameron County	47470
2294	Carbon County	53053
2295	Centre County	47564
2296	Chester County	87557
2297	Clarion County	42281
2298	Clearfield County	46253
2299	Clinton County	40669
2300	Columbia County	43793
2301	Crawford County	42237
2302	Cumberland County	56540
2303	Dauphin County	52716
2304	Delaware County	69740
2305	Elk County	49141
2306	Erie County	46379
2307	Fayette County	43835
2308	Forest County	24113
2309	Franklin County	47934
2310	Fulton County	45774
2311	Greene County	45161
2312	Huntingdon County	39371
2313	Indiana County	41503
2314	Jefferson County	45855
2315	Juniata County	46258
2316	Lackawanna County	48967
2317	Lancaster County	54314
2318	Lawrence County	45252
2319	Lebanon County	48924
2320	Lehigh County	54471
2321	Luzerne County	46363
2322	Lycoming County	44941
2323	McKean County	44774
2324	Mercer County	43682
2325	Mifflin County	40641
2326	Monroe County	43823
2327	Montgomery County	82037
2328	Montour County	58872
2329	Northampton County	56931
2330	Northumberland County	43289
2331	Perry County	46212
2332	Philadelphia County	57265
2333	Pike County	49873
2334	Potter County	45887
2335	Schuylkill County	44055
2336	Snyder County	43286
2337	Somerset County	43103
2338	Sullivan County	47455
2339	Susquehanna County	46737
2340	Tioga County	41990
2341	Union County	41400
2342	Venango County	43822
2343	Warren County	43401
2344	Washington County	60295
2345	Wayne County	45221
2346	Westmoreland County	53740
2347	Wyoming County	47099
2348	York County	51585
2349	Rhode Island County	56361
2350	Bristol County	78975
2351	Kent County	60874
2352	Newport County	70893
2353	Providence County	49392
2354	Washington County	67688
2355	South Carolina County	45438
2356	Abbeville County	35219
2357	Aiken County	44349
2358	Allendale County	33582
2359	Anderson County	41170
2360	Bamberg County	35203
2361	Barnwell County	35606
2362	Beaufort County	59318
2363	Berkeley County	42365
2364	Calhoun County	41136
2365	Charleston County	63901
2366	Cherokee County	33875
2367	Chester County	35227
2368	Chesterfield County	32249
2369	Clarendon County	34475
2370	Colleton County	37521
2371	Darlington County	39195
2372	Dillon County	30203
2373	Dorchester County	40926
2374	Edgefield County	37294
2375	Fairfield County	37834
2376	Florence County	44001
2377	Georgetown County	49341
2378	Greenville County	49801
2379	Greenwood County	38180
2380	Hampton County	34322
2381	Horry County	39028
2382	Jasper County	31488
2383	Kershaw County	42929
2384	Lancaster County	52396
2385	Laurens County	35441
2386	Lee County	33605
2387	Lexington County	47992
2388	McCormick County	40004
2389	Marion County	33569
2390	Marlboro County	32637
2391	Newberry County	39024
2392	Oconee County	45004
2393	Orangeburg County	35656
2394	Pickens County	39549
2395	Richland County	47299
2396	Saluda County	34353
2397	Spartanburg County	44169
2398	Sumter County	40019
2399	Union County	34341
2400	Williamsburg County	34993
2401	York County	48588
2402	South Dakota County	53962
2403	Aurora County	40709
2404	Beadle County	49521
2405	Bennett County	36759
2406	Bon Homme County	40713
2407	Brookings County	47782
2408	Brown County	55397
2409	Brule County	45320
2410	Buffalo County	20682
2411	Butte County	38449
2412	Campbell County	48544
2413	Charles Mix County	41567
2414	Clark County	46281
2415	Clay County	40589
2416	Codington County	51250
2417	Corson County	27114
2418	Custer County	49665
2419	Davison County	53275
2420	Day County	46087
2421	Deuel County	52808
2422	Dewey County	38051
2423	Douglas County	59855
2424	Edmunds County	54210
2425	Fall River County	48186
2426	Faulk County	56814
2427	Grant County	57365
2428	Gregory County	44981
2429	Haakon County	51865
2430	Hamlin County	44145
2431	Hand County	54579
2432	Hanson County	65135
2433	Harding County	50170
2434	Hughes County	54352
2435	Hutchinson County	56811
2436	Hyde County	48836
2437	Jackson County	27278
2438	Jerauld County	39599
2439	Jones County	58796
2440	Kingsbury County	57495
2441	Lake County	51119
2442	Lawrence County	52919
2443	Lincoln County	70461
2444	Lyman County	41809
2445	McCook County	53322
2446	McPherson County	43635
2447	Marshall County	49754
2448	Meade County	44365
2449	Mellette County	31131
2450	Miner County	50603
2451	Minnehaha County	59905
2452	Moody County	51866
2453	Oglala Lakota County	25840
2454	Pennington County	53071
2455	Perkins County	40282
2456	Potter County	72468
2457	Roberts County	36756
2458	Sanborn County	52093
2459	Spink County	55810
2460	Stanley County	62601
2461	Sully County	73244
2462	Todd County	26172
2463	Tripp County	51501
2464	Turner County	54445
2465	Union County	117055
2466	Walworth County	46589
2467	Yankton County	51011
2468	Ziebach County	19940
2469	Tennessee County	48684
2470	Anderson County	43045
2471	Bedford County	38667
2472	Benton County	34482
2473	Bledsoe County	27113
2474	Blount County	45222
2475	Bradley County	40712
2476	Campbell County	34655
2477	Cannon County	36713
2478	Carroll County	37529
2479	Carter County	34691
2480	Cheatham County	46138
2481	Chester County	34800
2482	Claiborne County	35996
2483	Clay County	31056
2484	Cocke County	33340
2485	Coffee County	40415
2486	Crockett County	40735
2487	Cumberland County	37720
2488	Davidson County	71252
2489	Decatur County	41949
2490	DeKalb County	40280
2491	Dickson County	42088
2492	Dyer County	42552
2493	Fayette County	56361
2494	Fentress County	33727
2495	Franklin County	40370
2496	Gibson County	39892
2497	Giles County	38934
2498	Grainger County	34983
2499	Greene County	37287
2500	Grundy County	33635
2501	Hamblen County	38304
2502	Hamilton County	53360
2503	Hancock County	28083
2504	Hardeman County	30977
2505	Hardin County	40331
2506	Hawkins County	35077
2507	Haywood County	35920
2508	Henderson County	36986
2509	Henry County	42407
2510	Hickman County	33840
2511	Houston County	33635
2512	Humphreys County	39784
2513	Jackson County	31676
2514	Jefferson County	37494
2515	Johnson County	33058
2516	Knox County	51758
2517	Lake County	25772
2518	Lauderdale County	31976
2519	Lawrence County	35983
2520	Lewis County	36378
2521	Lincoln County	42134
2522	Loudon County	50154
2523	McMinn County	37601
2524	McNairy County	33914
2525	Macon County	33535
2526	Madison County	44135
2527	Marion County	40365
2528	Marshall County	39173
2529	Maury County	44246
2530	Meigs County	34472
2531	Monroe County	34720
2532	Montgomery County	43028
2533	Moore County	41565
2534	Morgan County	30962
2535	Obion County	42717
2536	Overton County	35085
2537	Perry County	34522
2538	Pickett County	39569
2539	Polk County	34234
2540	Putnam County	40223
2541	Rhea County	35424
2542	Roane County	41917
2543	Robertson County	43856
2544	Rutherford County	42712
2545	Scott County	31046
2546	Sequatchie County	39154
2547	Sevier County	41136
2548	Shelby County	50744
2549	Smith County	40290
2550	Stewart County	41155
2551	Sullivan County	43610
2552	Sumner County	50213
2553	Tipton County	40514
2554	Trousdale County	31835
2555	Unicoi County	37278
2556	Union County	32853
2557	Van Buren County	31628
2558	Warren County	35453
2559	Washington County	44593
2560	Wayne County	28922
2561	Weakley County	38465
2562	White County	33761
2563	Williamson County	95053
2564	Wilson County	50875
2565	Texas County	52813
2566	Anderson County	36027
2567	Andrews County	51769
2568	Angelina County	39644
2569	Aransas County	51614
2570	Archer County	52335
2571	Armstrong County	53422
2572	Atascosa County	37644
2573	Austin County	51118
2574	Bailey County	44665
2575	Bandera County	44925
2576	Bastrop County	38289
2577	Baylor County	46615
2578	Bee County	29792
2579	Bell County	43919
2580	Bexar County	47830
2581	Blanco County	54814
2582	Borden County	61287
2583	Bosque County	42366
2584	Bowie County	41172
2585	Brazoria County	48374
2586	Brazos County	41348
2587	Brewster County	48422
2588	Briscoe County	44413
2589	Brooks County	36558
2590	Brown County	39661
2591	Burleson County	45970
2592	Burnet County	49731
2593	Caldwell County	34617
2594	Calhoun County	46208
2595	Callahan County	41962
2596	Cameron County	29928
2597	Camp County	37111
2598	Carson County	48571
2599	Cass County	37566
2600	Castro County	64427
2601	Chambers County	56610
2602	Cherokee County	35245
2603	Childress County	30731
2604	Clay County	44295
2605	Cochran County	39333
2606	Coke County	41669
2607	Coleman County	42683
2608	Collin County	68474
2609	Collingsworth County	42026
2610	Colorado County	46909
2611	Comal County	60056
2612	Comanche County	43242
2613	Concho County	35758
2614	Cooke County	52875
2615	Coryell County	35570
2616	Cottle County	60260
2617	Crane County	51025
2618	Crockett County	44458
2619	Crosby County	37580
2620	Culberson County	59506
2621	Dallam County	64756
2622	Dallas County	62782
2623	Dawson County	40131
2624	Deaf Smith County	52368
2625	Delta County	40622
2626	Denton County	59414
2627	DeWitt County	59389
2628	Dickens County	33843
2629	Dimmit County	38800
2630	Donley County	45531
2631	Duval County	39029
2632	Eastland County	78826
2633	Ector County	50161
2634	Edwards County	45429
2635	Ellis County	45968
2636	El Paso County	37715
2637	Erath County	40462
2638	Falls County	35258
2639	Fannin County	39830
2640	Fayette County	54552
2641	Fisher County	44630
2642	Floyd County	44646
2643	Foard County	44895
2644	Fort Bend County	59653
2645	Franklin County	41307
2646	Freestone County	38182
2647	Frio County	30223
2648	Gaines County	44405
2649	Galveston County	54250
2650	Garza County	32601
2651	Gillespie County	63291
2652	Glasscock County	84623
2653	Goliad County	45589
2654	Gonzales County	44789
2655	Gray County	44127
2656	Grayson County	43987
2657	Gregg County	47109
2658	Grimes County	36909
2659	Guadalupe County	45797
2660	Hale County	35633
2661	Hall County	33095
2662	Hamilton County	60584
2663	Hansford County	65330
2664	Hardeman County	42023
2665	Hardin County	47221
2666	Harris County	60002
2667	Harrison County	42891
2668	Hartley County	81238
2669	Haskell County	39899
2670	Hays County	45332
2671	Hemphill County	57053
2672	Henderson County	40135
2673	Hidalgo County	27415
2674	Hill County	41240
2675	Hockley County	42162
2676	Hood County	51384
2677	Hopkins County	41562
2678	Houston County	39609
2679	Howard County	43348
2680	Hudspeth County	23569
2681	Hunt County	38892
2682	Hutchinson County	43981
2683	Irion County	72177
2684	Jack County	40827
2685	Jackson County	46596
2686	Jasper County	40834
2687	Jeff Davis County	43080
2688	Jefferson County	44613
2689	Jim Hogg County	33602
2690	Jim Wells County	42174
2691	Johnson County	43759
2692	Jones County	32639
2693	Karnes County	56449
2694	Kaufman County	43972
2695	Kendall County	81882
2696	Kenedy County	42262
2697	Kent County	54630
2698	Kerr County	51768
2699	Kimble County	44371
2700	King County	78849
2701	Kinney County	32219
2702	Kleberg County	41526
2703	Knox County	39587
2704	Lamar County	43063
2705	Lamb County	45655
2706	Lampasas County	50656
2707	La Salle County	39913
2708	Lavaca County	53483
2709	Lee County	50665
2710	Leon County	40056
2711	Liberty County	37874
2712	Limestone County	37774
2713	Lipscomb County	77810
2714	Live Oak County	37415
2715	Llano County	49905
2716	Loving County	53734
2717	Lubbock County	44311
2718	Lynn County	43141
2719	McCulloch County	38895
2720	McLennan County	42159
2721	McMullen County	65250
2722	Madison County	32648
2723	Marion County	39895
2724	Martin County	60844
2725	Mason County	47439
2726	Matagorda County	45237
2727	Maverick County	31380
2728	Medina County	41095
2729	Menard County	37218
2730	Midland County	130983
2731	Milam County	37238
2732	Mills County	39334
2733	Mitchell County	33593
2734	Montague County	42230
2735	Montgomery County	63424
2736	Moore County	46108
2737	Morris County	41068
2738	Motley County	32988
2739	Nacogdoches County	38569
2740	Navarro County	39652
2741	Newton County	34265
2742	Nolan County	46066
2743	Nueces County	44889
2744	Ochiltree County	60862
2745	Oldham County	55479
2746	Orange County	45663
2747	Palo Pinto County	41193
2748	Panola County	45467
2749	Parker County	55811
2750	Parmer County	49541
2751	Pecos County	39731
2752	Polk County	39818
2753	Potter County	46086
2754	Presidio County	46581
2755	Rains County	34819
2756	Randall County	49544
2757	Reagan County	51945
2758	Real County	36070
2759	Red River County	43039
2760	Reeves County	45458
2761	Refugio County	46464
2762	Roberts County	48344
2763	Robertson County	42463
2764	Rockwall County	62237
2765	Runnels County	41929
2766	Rusk County	37697
2767	Sabine County	36627
2768	San Augustine County	42299
2769	San Jacinto County	36260
2770	San Patricio County	46506
2771	San Saba County	40521
2772	Schleicher County	42255
2773	Scurry County	42915
2774	Shackelford County	113163
2775	Shelby County	41767
2776	Sherman County	97002
2777	Smith County	56292
2778	Somervell County	45812
2779	Starr County	27713
2780	Stephens County	43971
2781	Sterling County	61920
2782	Stonewall County	58541
2783	Sutton County	61646
2784	Swisher County	51779
2785	Tarrant County	53292
2786	Taylor County	47793
2787	Terrell County	49591
2788	Terry County	37741
2789	Throckmorton County	41454
2790	Titus County	37070
2791	Tom Green County	48876
2792	Travis County	71666
2793	Trinity County	36062
2794	Tyler County	32978
2795	Upshur County	37563
2796	Upton County	47118
2797	Uvalde County	41116
2798	Val Verde County	38331
2799	Van Zandt County	39609
2800	Victoria County	48938
2801	Walker County	29838
2802	Waller County	42456
2803	Ward County	53870
2804	Washington County	55735
2805	Webb County	32466
2806	Wharton County	45221
2807	Wheeler County	44309
2808	Wichita County	44479
2809	Wilbarger County	46314
2810	Willacy County	27584
2811	Williamson County	53145
2812	Wilson County	46448
2813	Winkler County	63667
2814	Wise County	44870
2815	Wood County	39803
2816	Yoakum County	44932
2817	Young County	50732
2818	Zapata County	28936
2819	Zavala County	30779
2820	Utah County	48939
2821	Beaver County	40889
2822	Box Elder County	40621
2823	Cache County	41811
2824	Carbon County	40679
2825	Daggett County	47753
2826	Davis County	48423
2827	Duchesne County	37869
2828	Emery County	35177
2829	Garfield County	39900
2830	Grand County	59196
2831	Iron County	34353
2832	Juab County	39103
2833	Kane County	41502
2834	Millard County	38336
2835	Morgan County	55967
2836	Piute County	44169
2837	Rich County	40845
2838	Salt Lake County	55446
2839	San Juan County	28074
2840	Sanpete County	30592
2841	Sevier County	37558
2842	Summit County	151326
2843	Tooele County	38446
2844	Uintah County	32241
2845	Utah County	42995
2846	Wasatch County	59584
2847	Washington County	40886
2848	Wayne County	42426
2849	Weber County	43707
2850	Vermont County	55293
2851	Addison County	52966
2852	Bennington County	55870
2853	Caledonia County	43113
2854	Chittenden County	61858
2855	Essex County	38844
2856	Franklin County	47889
2857	Grand Isle County	59863
2858	Lamoille County	54761
2859	Orange County	48961
2860	Orleans County	44579
2861	Rutland County	53152
2862	Washington County	60368
2863	Windham County	52123
2864	Windsor County	59604
2865	Virginia County	59657
2866	Accomack County	42923
2867	Amelia County	44297
2868	Amherst County	38165
2869	Appomattox County	39268
2870	Arlington County	99407
2871	Bath County	66864
2872	Bedford County	47590
2873	Bland County	38126
2874	Botetourt County	51738
2875	Brunswick County	33784
2876	Buchanan County	37048
2877	Buckingham County	30966
2878	Caroline County	42977
2879	Charles City County	46976
2880	Charlotte County	36737
2881	Chesterfield County	55070
2882	Clarke County	67094
2883	Craig County	39087
2884	Culpeper County	47689
2885	Cumberland County	39094
2886	Dickenson County	34397
2887	Essex County	43041
2888	Fauquier County	72577
2889	Floyd County	40065
2890	Fluvanna County	45334
2891	Franklin County	41795
2892	Giles County	41179
2893	Gloucester County	51847
2894	Goochland County	102690
2895	Grayson County	33190
2896	Greene County	46529
2897	Halifax County	38414
2898	Hanover County	61832
2899	Henrico County	68639
2900	Highland County	44791
2901	Isle of Wight County	57645
2902	King and Queen County	44798
2903	King George County	53777
2904	King William County	47802
2905	Lancaster County	61447
2906	Lee County	31087
2907	Loudoun County	80914
2908	Louisa County	42723
2909	Lunenburg County	33996
2910	Madison County	48577
2911	Mathews County	57844
2912	Mecklenburg County	38481
2913	Middlesex County	53553
2914	Nelson County	51297
2915	New Kent County	75221
2916	Northampton County	51101
2917	Northumberland County	54616
2918	Nottoway County	36295
2919	Orange County	50642
2920	Page County	39633
2921	Patrick County	34541
2922	Powhatan County	58609
2923	Prince Edward County	32416
2924	Pulaski County	41311
2925	Rappahannock County	68382
2926	Richmond County	37741
2927	Russell County	34827
2928	Scott County	34589
2929	Shenandoah County	46680
2930	Smyth County	38090
2931	Stafford County	56346
2932	Surry County	44647
2933	Sussex County	32383
2934	Tazewell County	39276
2935	Warren County	47932
2936	Westmoreland County	45782
2937	Wythe County	36695
2938	Washington County	48456
2939	Adams County	49354
2940	Asotin County	56253
2941	Benton County	47856
2942	Chelan County	56401
2943	Clallam County	51660
2944	Clark County	46503
2945	Columbia County	41725
2946	Cowlitz County	37311
2947	Douglas County	39526
2948	Ferry County	54352
2949	Franklin County	41141
2950	Garfield County	41928
2951	Grant County	56977
2952	Grays Harbor County	55447
2953	Island County	94974
2954	Jefferson County	58874
2955	King County	43562
2956	Kitsap County	49458
2957	Kittitas County	44569
2958	Klickitat County	47282
2959	Lewis County	43966
2960	Lincoln County	43295
2961	Mason County	42603
2962	Okanogan County	44461
2963	Pacific County	53572
2964	Pend Oreille County	81351
2965	Pierce County	54505
2966	San Juan County	47461
2967	Skagit County	58729
2968	Skamania County	48436
2969	Snohomish County	40863
2970	Spokane County	52828
2971	Stevens County	44522
2972	Thurston County	48444
2973	Wahkiakum County	50915
2974	Walla Walla County	42665
2975	Whatcom County	45757
2976	Whitman County	42315
2977	Yakima County	33599
2978	West Virginia County	42473
2979	Barbour County	35615
2980	Berkeley County	32816
2981	Boone County	43882
2982	Braxton County	44177
2983	Brooke County	31229
2984	Cabell County	32197
2985	Calhoun County	30173
2986	Clay County	36424
2987	Doddridge County	29672
2988	Fayette County	36862
2989	Gilmer County	38842
2990	Grant County	36093
2991	Greenbrier County	43823
2992	Hampshire County	34417
2993	Hancock County	49793
2994	Hardy County	39254
2995	Harrison County	51527
2996	Jackson County	49553
2997	Jefferson County	41728
2998	Kanawha County	31997
2999	Lewis County	38147
3000	Lincoln County	32294
3001	Logan County	43522
3002	McDowell County	42595
3003	Marion County	34833
3004	Marshall County	38778
3005	Mason County	40518
3006	Mercer County	33553
3007	Mineral County	46630
3008	Mingo County	32189
3009	Monongalia County	35536
3010	Monroe County	34792
3011	Morgan County	64461
3012	Nicholas County	36491
3013	Ohio County	43929
3014	Pendleton County	40243
3015	Pleasants County	37595
3016	Pocahontas County	47849
3017	Preston County	43846
3018	Putnam County	38142
3019	Raleigh County	39828
3020	Randolph County	36608
3021	Ritchie County	34933
3022	Roane County	41663
3023	Summers County	43069
3024	Taylor County	39863
3025	Tucker County	35420
3026	Tyler County	34811
3027	Upshur County	29348
3028	Wayne County	36874
3029	Webster County	32680
3030	Wetzel County	44754
3031	Wirt County	31315
3032	Wood County	53227
3033	Wyoming County	40841
3034	Wisconsin County	42007
3035	Adams County	50166
3036	Ashland County	50750
3037	Barron County	54090
3038	Bayfield County	47630
3039	Brown County	45023
3040	Buffalo County	52859
3041	Burnett County	47507
3042	Calumet County	43135
3043	Chippewa County	53423
3044	Clark County	43124
3045	Columbia County	64071
3046	Crawford County	46099
3047	Dane County	64249
3048	Dodge County	44941
3049	Door County	41208
3050	Douglas County	49851
3051	Dunn County	53310
3052	Eau Claire County	49949
3053	Florence County	42663
3054	Fond du Lac County	45392
3055	Forest County	53782
3056	Grant County	46260
3057	Green County	50309
3058	Green Lake County	50249
3059	Iowa County	46296
3060	Iron County	47152
3061	Jackson County	39218
3062	Jefferson County	48596
3063	Juneau County	49539
3064	Kenosha County	51813
3065	Kewaunee County	45339
3066	La Crosse County	44923
3067	Lafayette County	47135
3068	Langlade County	48502
3069	Lincoln County	52141
3070	Manitowoc County	45906
3071	Marathon County	42513
3072	Marinette County	30977
3073	Marquette County	49098
3074	Menominee County	42974
3075	Milwaukee County	47104
3076	Monroe County	52014
3077	Oconto County	52640
3078	Oneida County	85492
3079	Outagamie County	49793
3080	Ozaukee County	47114
3081	Pepin County	47856
3082	Pierce County	47278
3083	Polk County	47086
3084	Portage County	50845
3085	Price County	44803
3086	Racine County	46236
3087	Richland County	44556
3088	Rock County	57328
3089	Rusk County	51115
3090	St. Croix County	47360
3091	Sauk County	44196
3092	Sawyer County	54703
3093	Shawano County	41858
3094	Sheboygan County	45218
3095	Taylor County	42578
3096	Trempealeau County	54734
3097	Vernon County	51196
3098	Vilas County	49456
3099	Walworth County	59979
3100	Washburn County	73873
3101	Washington County	47035
3102	Waukesha County	42544
3103	Waupaca County	49276
3104	Waushara County	48046
3105	Winnebago County	62189
3106	Wood County	42698
3107	Wyoming County	39318
3108	Albany County	55348
3109	Big Horn County	59665
3110	Campbell County	63736
3111	Carbon County	47966
3112	Converse County	47071
3113	Crook County	43725
3114	Fremont County	57101
3115	Goshen County	54476
3116	Hot Springs County	54113
3117	Johnson County	44331
3118	Laramie County	72187
3119	Lincoln County	52484
3120	Natrona County	58386
3121	Niobrara County	52624
3122	Park County	59666
3123	Platte County	54850
3124	Sheridan County	57225
3125	Sublette County	229825
3126	Sweetwater County	41912
3127	Teton County	50735
3128	Uinta County	46655
3129	Washakie County	52640
3130	Weston County	85492
3131	Pepin County	49793
3132	Pierce County	47114
3133	Polk County	47856
3134	Portage County	47278
3135	Price County	47086
3136	Racine County	50845
3137	Richland County	44803
3138	Rock County	46236
3139	Rusk County	44556
3140	St. Croix County	57328
3141	Sauk County	51115
3142	Sawyer County	47360
3143	Shawano County	44196
3144	Sheboygan County	54703
3145	Taylor County	41858
3146	Trempealeau County	45218
3147	Vernon County	42578
3148	Vilas County	54734
3149	Walworth County	51196
3150	Washburn County	49456
3151	Washington County	59979
3152	Waukesha County	73873
3153	Waupaca County	47035
3154	Waushara County	42544
3155	Winnebago County	49276
3156	Wood County	48046
3157	Wyoming County	62189
3158	Albany County	42698
3159	Big Horn County	39318
3160	Campbell County	55348
3161	Carbon County	59665
3162	Converse County	63736
3163	Crook County	47966
3164	Fremont County	47071
3165	Goshen County	43725
3166	Hot Springs County	57101
3167	Johnson County	54476
3168	Laramie County	54113
3169	Lincoln County	44331
3170	Natrona County	72187
3171	Niobrara County	52484
3172	Park County	58386
3173	Platte County	52624
3174	Sheridan County	59666
3175	Sublette County	54850
3176	Sweetwater County	57225
3177	Teton County	229825
3178	Uinta County	41912
3179	Washakie County	50735
3180	Weston County	46655
\.


--
-- Data for Name: place_address_relation; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.place_address_relation (id, place_id, address_id) FROM stdin;
1	ChIJkeJaBr8QBYgRVop65TGxzT0	1
2	ChIJf0lTeLwQBYgRGsEoC7rcTNY	1
3	ChIJrdpiPUoXBYgRmffumT1sEwU	1
4	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	1
5	ChIJrdpiPUoXBYgRAUrzgzQjBy8	1
6	ChIJaaA1QdsQBYgRkAoWKcpkNjk	1
7	ChIJ54nTyrgQBYgRD9qefHdRVns	1
8	ChIJVY4sYb8QBYgRDda9Qc_nvSs	1
9	ChIJKeSeycYQBYgRdgtNp4VKsnE	1
10	ChIJ1538A7wQBYgRWHKD_9_TxXw	1
11	ChIJg0FlNrkQBYgRYLB6z9JcNhU	1
12	ChIJYxoPscYQBYgREnc48fDUaCQ	1
13	ChIJTccCecMQBYgREPD7rlez65I	1
14	ChIJgzpDHkwXBYgRwzQGGLr9__g	1
15	ChIJA82pmd0VBYgRSiwe3anpPvg	1
16	ChIJNejdd04XBYgRl9_Mc68IV9M	1
17	ChIJI4YYpMYQBYgR22Y7NIJD9IY	1
18	ChIJz9z3CukQBYgRw7qRVtLHuD4	1
19	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	1
20	ChIJTURpSbkQBYgRzza-nRWLffQ	1
21	ChIJHaxi9rsQBYgRHe7WLuvhVa8	1
22	ChIJ6wcpabwQBYgRXFCpCsFnK7M	1
23	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	1
24	ChIJR4_GSrkQBYgRlJHCR74rM-s	1
25	ChIJEdXItMAQBYgRPJnU9byrpw8	1
26	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	1
27	ChIJMcyCKbkQBYgRZk8SOBfb_N0	1
28	ChIJq-GWWMcQBYgR_0-FCZtqFYU	1
29	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	1
30	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	1
31	ChIJEz0Ez-gQBYgRC-n2GAZSdks	1
32	ChIJfwaYn04XBYgRL-0IbL7HrYM	1
33	ChIJ_28aTL8QBYgRV6uYmeqM88Y	1
34	ChIJedoQV9MRBYgRqrVWAkYdGzA	1
35	ChIJYdnWeSURBYgRcdXRVUHG-JE	1
36	ChIJMYup0f4RBYgR8pFl5Din6P4	1
37	ChIJC7G_WVERBYgRJeOlxyG8mgo	1
38	ChIJtW0nBRMRBYgRe02OrUNLP78	1
39	ChIJUdrjn5MRBYgR403D5r4ZCk8	1
40	ChIJHa7ysYQRBYgRcc-_lQRS248	1
41	ChIJj8s7AUoXBYgRaqwOZKNaRrs	1
42	ChIJye6xncMQBYgRI4YpStY3CwE	1
43	ChIJUaLy-ScXBYgRuLBwoomy1NM	1
44	ChIJFbOGt4ERBYgR99sTM0PWuB0	1
45	ChIJCeJkWp4RBYgRTkY4wsoEhG4	1
46	ChIJ8yqmR2ERBYgR-jq7kJVOU08	1
47	ChIJr-42Tg0aBYgRdOvgnTS4IA8	1
48	ChIJadNS2wMRBYgRuna7m-1TVyI	1
49	ChIJxajE_00XBYgR737ZZOJBDxo	1
50	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	1
51	ChIJ9UGhX58QBYgRJROWYSS1i5E	1
52	ChIJa51p_Q0XBYgRWL9FwsikTd0	1
53	ChIJGa2eFzcXBYgRRTFlRlgCxpA	1
54	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	1
55	ChIJc3Ufpt4QBYgRBcWFtKy8g48	1
56	ChIJ1e7dJooQBYgR8eZbItGcIkw	1
57	ChIJW9Mxr3wXBYgRd2jbhewjw9k	1
58	ChIJ57c441MXBYgR0hX7GHWn5vQ	1
59	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	1
60	ChIJo7KvSi4bBYgRx5rM13umhOc	1
\.


--
-- Data for Name: place_types; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.place_types (id, place_id, type_id) FROM stdin;
1	ChIJkeJaBr8QBYgRVop65TGxzT0	57
2	ChIJkeJaBr8QBYgRVop65TGxzT0	75
3	ChIJkeJaBr8QBYgRVop65TGxzT0	109
4	ChIJkeJaBr8QBYgRVop65TGxzT0	120
5	ChIJkeJaBr8QBYgRVop65TGxzT0	106
6	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
7	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
8	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
9	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
10	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
11	ChIJrdpiPUoXBYgRmffumT1sEwU	75
12	ChIJrdpiPUoXBYgRmffumT1sEwU	109
13	ChIJrdpiPUoXBYgRmffumT1sEwU	120
14	ChIJrdpiPUoXBYgRmffumT1sEwU	106
15	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
16	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
17	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
18	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
19	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
20	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
21	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
22	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
23	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
24	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
25	ChIJaaA1QdsQBYgRkAoWKcpkNjk	13
26	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
27	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
28	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
29	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
30	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
31	ChIJ54nTyrgQBYgRD9qefHdRVns	75
32	ChIJ54nTyrgQBYgRD9qefHdRVns	109
33	ChIJ54nTyrgQBYgRD9qefHdRVns	120
34	ChIJ54nTyrgQBYgRD9qefHdRVns	106
35	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
36	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
37	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
38	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
39	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
40	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
41	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
42	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
43	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
44	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
45	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
46	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
47	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
48	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
49	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
50	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
51	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
52	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
53	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
54	ChIJYxoPscYQBYgREnc48fDUaCQ	75
55	ChIJYxoPscYQBYgREnc48fDUaCQ	109
56	ChIJYxoPscYQBYgREnc48fDUaCQ	120
57	ChIJYxoPscYQBYgREnc48fDUaCQ	106
58	ChIJTccCecMQBYgREPD7rlez65I	75
59	ChIJTccCecMQBYgREPD7rlez65I	109
60	ChIJTccCecMQBYgREPD7rlez65I	120
61	ChIJTccCecMQBYgREPD7rlez65I	106
62	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
63	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
64	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
65	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
66	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
67	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
68	ChIJA82pmd0VBYgRSiwe3anpPvg	75
69	ChIJA82pmd0VBYgRSiwe3anpPvg	109
70	ChIJA82pmd0VBYgRSiwe3anpPvg	120
71	ChIJA82pmd0VBYgRSiwe3anpPvg	106
72	ChIJNejdd04XBYgRl9_Mc68IV9M	56
73	ChIJNejdd04XBYgRl9_Mc68IV9M	57
74	ChIJNejdd04XBYgRl9_Mc68IV9M	75
75	ChIJNejdd04XBYgRl9_Mc68IV9M	109
76	ChIJNejdd04XBYgRl9_Mc68IV9M	120
77	ChIJNejdd04XBYgRl9_Mc68IV9M	106
78	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
79	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
80	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
81	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
82	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
83	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
84	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
85	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
86	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
87	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
88	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
89	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
90	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
91	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
92	ChIJTURpSbkQBYgRzza-nRWLffQ	56
93	ChIJTURpSbkQBYgRzza-nRWLffQ	57
94	ChIJTURpSbkQBYgRzza-nRWLffQ	75
95	ChIJTURpSbkQBYgRzza-nRWLffQ	109
96	ChIJTURpSbkQBYgRzza-nRWLffQ	120
97	ChIJTURpSbkQBYgRzza-nRWLffQ	106
98	ChIJHaxi9rsQBYgRHe7WLuvhVa8	75
99	ChIJHaxi9rsQBYgRHe7WLuvhVa8	109
100	ChIJHaxi9rsQBYgRHe7WLuvhVa8	120
101	ChIJHaxi9rsQBYgRHe7WLuvhVa8	106
102	ChIJ6wcpabwQBYgRXFCpCsFnK7M	75
103	ChIJ6wcpabwQBYgRXFCpCsFnK7M	57
104	ChIJ6wcpabwQBYgRXFCpCsFnK7M	109
105	ChIJ6wcpabwQBYgRXFCpCsFnK7M	120
106	ChIJ6wcpabwQBYgRXFCpCsFnK7M	85
107	ChIJ6wcpabwQBYgRXFCpCsFnK7M	106
108	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	7
109	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	15
110	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	75
111	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	109
112	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	120
113	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	85
114	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	106
115	ChIJR4_GSrkQBYgRlJHCR74rM-s	56
116	ChIJR4_GSrkQBYgRlJHCR74rM-s	75
117	ChIJR4_GSrkQBYgRlJHCR74rM-s	109
118	ChIJR4_GSrkQBYgRlJHCR74rM-s	120
119	ChIJR4_GSrkQBYgRlJHCR74rM-s	106
120	ChIJEdXItMAQBYgRPJnU9byrpw8	56
121	ChIJEdXItMAQBYgRPJnU9byrpw8	57
122	ChIJEdXItMAQBYgRPJnU9byrpw8	75
123	ChIJEdXItMAQBYgRPJnU9byrpw8	109
124	ChIJEdXItMAQBYgRPJnU9byrpw8	120
125	ChIJEdXItMAQBYgRPJnU9byrpw8	106
126	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	75
127	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	109
128	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	120
129	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	106
130	ChIJMcyCKbkQBYgRZk8SOBfb_N0	57
131	ChIJMcyCKbkQBYgRZk8SOBfb_N0	75
132	ChIJMcyCKbkQBYgRZk8SOBfb_N0	109
133	ChIJMcyCKbkQBYgRZk8SOBfb_N0	120
134	ChIJMcyCKbkQBYgRZk8SOBfb_N0	106
135	ChIJq-GWWMcQBYgR_0-FCZtqFYU	15
136	ChIJq-GWWMcQBYgR_0-FCZtqFYU	75
137	ChIJq-GWWMcQBYgR_0-FCZtqFYU	109
138	ChIJq-GWWMcQBYgR_0-FCZtqFYU	120
139	ChIJq-GWWMcQBYgR_0-FCZtqFYU	85
140	ChIJq-GWWMcQBYgR_0-FCZtqFYU	106
141	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	57
142	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	75
143	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	109
144	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	120
145	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	85
146	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	106
147	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	75
148	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	109
149	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	120
150	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	106
151	ChIJEz0Ez-gQBYgRC-n2GAZSdks	9
152	ChIJEz0Ez-gQBYgRC-n2GAZSdks	75
153	ChIJEz0Ez-gQBYgRC-n2GAZSdks	109
154	ChIJEz0Ez-gQBYgRC-n2GAZSdks	120
155	ChIJEz0Ez-gQBYgRC-n2GAZSdks	106
156	ChIJfwaYn04XBYgRL-0IbL7HrYM	75
157	ChIJfwaYn04XBYgRL-0IbL7HrYM	109
158	ChIJfwaYn04XBYgRL-0IbL7HrYM	120
159	ChIJfwaYn04XBYgRL-0IbL7HrYM	106
160	ChIJ_28aTL8QBYgRV6uYmeqM88Y	15
161	ChIJ_28aTL8QBYgRV6uYmeqM88Y	75
162	ChIJ_28aTL8QBYgRV6uYmeqM88Y	109
163	ChIJ_28aTL8QBYgRV6uYmeqM88Y	120
164	ChIJ_28aTL8QBYgRV6uYmeqM88Y	85
165	ChIJ_28aTL8QBYgRV6uYmeqM88Y	106
166	ChIJedoQV9MRBYgRqrVWAkYdGzA	75
167	ChIJedoQV9MRBYgRqrVWAkYdGzA	109
168	ChIJedoQV9MRBYgRqrVWAkYdGzA	120
169	ChIJedoQV9MRBYgRqrVWAkYdGzA	106
170	ChIJYdnWeSURBYgRcdXRVUHG-JE	75
171	ChIJYdnWeSURBYgRcdXRVUHG-JE	109
172	ChIJYdnWeSURBYgRcdXRVUHG-JE	120
173	ChIJYdnWeSURBYgRcdXRVUHG-JE	106
174	ChIJMYup0f4RBYgR8pFl5Din6P4	75
175	ChIJMYup0f4RBYgR8pFl5Din6P4	109
176	ChIJMYup0f4RBYgR8pFl5Din6P4	120
177	ChIJMYup0f4RBYgR8pFl5Din6P4	106
178	ChIJC7G_WVERBYgRJeOlxyG8mgo	15
179	ChIJC7G_WVERBYgRJeOlxyG8mgo	7
180	ChIJC7G_WVERBYgRJeOlxyG8mgo	57
181	ChIJC7G_WVERBYgRJeOlxyG8mgo	75
182	ChIJC7G_WVERBYgRJeOlxyG8mgo	109
183	ChIJC7G_WVERBYgRJeOlxyG8mgo	120
184	ChIJC7G_WVERBYgRJeOlxyG8mgo	85
185	ChIJC7G_WVERBYgRJeOlxyG8mgo	106
186	ChIJtW0nBRMRBYgRe02OrUNLP78	75
187	ChIJtW0nBRMRBYgRe02OrUNLP78	109
188	ChIJtW0nBRMRBYgRe02OrUNLP78	120
189	ChIJtW0nBRMRBYgRe02OrUNLP78	106
190	ChIJUdrjn5MRBYgR403D5r4ZCk8	75
191	ChIJUdrjn5MRBYgR403D5r4ZCk8	109
192	ChIJUdrjn5MRBYgR403D5r4ZCk8	120
193	ChIJUdrjn5MRBYgR403D5r4ZCk8	106
194	ChIJHa7ysYQRBYgRcc-_lQRS248	75
195	ChIJHa7ysYQRBYgRcc-_lQRS248	109
196	ChIJHa7ysYQRBYgRcc-_lQRS248	120
197	ChIJHa7ysYQRBYgRcc-_lQRS248	106
198	ChIJj8s7AUoXBYgRaqwOZKNaRrs	140
199	ChIJj8s7AUoXBYgRaqwOZKNaRrs	75
200	ChIJj8s7AUoXBYgRaqwOZKNaRrs	109
201	ChIJj8s7AUoXBYgRaqwOZKNaRrs	120
202	ChIJj8s7AUoXBYgRaqwOZKNaRrs	85
203	ChIJj8s7AUoXBYgRaqwOZKNaRrs	106
204	ChIJye6xncMQBYgRI4YpStY3CwE	56
205	ChIJye6xncMQBYgRI4YpStY3CwE	57
206	ChIJye6xncMQBYgRI4YpStY3CwE	75
207	ChIJye6xncMQBYgRI4YpStY3CwE	109
208	ChIJye6xncMQBYgRI4YpStY3CwE	120
209	ChIJye6xncMQBYgRI4YpStY3CwE	106
210	ChIJUaLy-ScXBYgRuLBwoomy1NM	75
211	ChIJUaLy-ScXBYgRuLBwoomy1NM	109
212	ChIJUaLy-ScXBYgRuLBwoomy1NM	120
213	ChIJUaLy-ScXBYgRuLBwoomy1NM	106
214	ChIJFbOGt4ERBYgR99sTM0PWuB0	75
215	ChIJFbOGt4ERBYgR99sTM0PWuB0	109
216	ChIJFbOGt4ERBYgR99sTM0PWuB0	120
217	ChIJFbOGt4ERBYgR99sTM0PWuB0	106
218	ChIJCeJkWp4RBYgRTkY4wsoEhG4	75
219	ChIJCeJkWp4RBYgRTkY4wsoEhG4	109
220	ChIJCeJkWp4RBYgRTkY4wsoEhG4	120
221	ChIJCeJkWp4RBYgRTkY4wsoEhG4	106
222	ChIJ8yqmR2ERBYgR-jq7kJVOU08	75
223	ChIJ8yqmR2ERBYgR-jq7kJVOU08	109
224	ChIJ8yqmR2ERBYgR-jq7kJVOU08	120
225	ChIJ8yqmR2ERBYgR-jq7kJVOU08	106
226	ChIJr-42Tg0aBYgRdOvgnTS4IA8	56
227	ChIJr-42Tg0aBYgRdOvgnTS4IA8	75
228	ChIJr-42Tg0aBYgRdOvgnTS4IA8	109
229	ChIJr-42Tg0aBYgRdOvgnTS4IA8	120
230	ChIJr-42Tg0aBYgRdOvgnTS4IA8	106
231	ChIJadNS2wMRBYgRuna7m-1TVyI	75
232	ChIJadNS2wMRBYgRuna7m-1TVyI	109
233	ChIJadNS2wMRBYgRuna7m-1TVyI	120
234	ChIJadNS2wMRBYgRuna7m-1TVyI	106
235	ChIJxajE_00XBYgR737ZZOJBDxo	75
236	ChIJxajE_00XBYgR737ZZOJBDxo	109
237	ChIJxajE_00XBYgR737ZZOJBDxo	120
238	ChIJxajE_00XBYgR737ZZOJBDxo	106
239	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	75
240	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	109
241	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	120
242	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	106
243	ChIJ9UGhX58QBYgRJROWYSS1i5E	9
244	ChIJ9UGhX58QBYgRJROWYSS1i5E	75
245	ChIJ9UGhX58QBYgRJROWYSS1i5E	109
246	ChIJ9UGhX58QBYgRJROWYSS1i5E	120
247	ChIJ9UGhX58QBYgRJROWYSS1i5E	106
248	ChIJa51p_Q0XBYgRWL9FwsikTd0	75
249	ChIJa51p_Q0XBYgRWL9FwsikTd0	109
250	ChIJa51p_Q0XBYgRWL9FwsikTd0	120
251	ChIJa51p_Q0XBYgRWL9FwsikTd0	106
252	ChIJGa2eFzcXBYgRRTFlRlgCxpA	75
253	ChIJGa2eFzcXBYgRRTFlRlgCxpA	109
254	ChIJGa2eFzcXBYgRRTFlRlgCxpA	120
255	ChIJGa2eFzcXBYgRRTFlRlgCxpA	106
256	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	75
257	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	109
258	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	120
259	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	106
260	ChIJc3Ufpt4QBYgRBcWFtKy8g48	15
261	ChIJc3Ufpt4QBYgRBcWFtKy8g48	75
262	ChIJc3Ufpt4QBYgRBcWFtKy8g48	109
263	ChIJc3Ufpt4QBYgRBcWFtKy8g48	120
264	ChIJc3Ufpt4QBYgRBcWFtKy8g48	85
265	ChIJc3Ufpt4QBYgRBcWFtKy8g48	106
266	ChIJ1e7dJooQBYgR8eZbItGcIkw	75
267	ChIJ1e7dJooQBYgR8eZbItGcIkw	109
268	ChIJ1e7dJooQBYgR8eZbItGcIkw	120
269	ChIJ1e7dJooQBYgR8eZbItGcIkw	106
270	ChIJW9Mxr3wXBYgRd2jbhewjw9k	75
271	ChIJW9Mxr3wXBYgRd2jbhewjw9k	109
272	ChIJW9Mxr3wXBYgRd2jbhewjw9k	120
273	ChIJW9Mxr3wXBYgRd2jbhewjw9k	106
274	ChIJ57c441MXBYgR0hX7GHWn5vQ	75
275	ChIJ57c441MXBYgR0hX7GHWn5vQ	109
276	ChIJ57c441MXBYgR0hX7GHWn5vQ	120
277	ChIJ57c441MXBYgR0hX7GHWn5vQ	106
278	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	75
279	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	109
280	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	120
281	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	106
282	ChIJo7KvSi4bBYgRx5rM13umhOc	75
283	ChIJo7KvSi4bBYgRx5rM13umhOc	109
284	ChIJo7KvSi4bBYgRx5rM13umhOc	120
285	ChIJo7KvSi4bBYgRx5rM13umhOc	106
286	ChIJG849GdOQb4YRoTVUDtLveVc	75
287	ChIJG849GdOQb4YRoTVUDtLveVc	57
288	ChIJG849GdOQb4YRoTVUDtLveVc	109
289	ChIJG849GdOQb4YRoTVUDtLveVc	120
290	ChIJG849GdOQb4YRoTVUDtLveVc	85
291	ChIJG849GdOQb4YRoTVUDtLveVc	106
292	ChIJcxWF0LiWb4YRvjW4vweCAzA	75
293	ChIJcxWF0LiWb4YRvjW4vweCAzA	109
294	ChIJcxWF0LiWb4YRvjW4vweCAzA	120
295	ChIJcxWF0LiWb4YRvjW4vweCAzA	106
296	ChIJBxJDE0eRb4YR8wedc3L27oY	57
297	ChIJBxJDE0eRb4YR8wedc3L27oY	75
298	ChIJBxJDE0eRb4YR8wedc3L27oY	109
299	ChIJBxJDE0eRb4YR8wedc3L27oY	120
300	ChIJBxJDE0eRb4YR8wedc3L27oY	106
301	ChIJ8xNUitGWb4YRm5jeheZu4Nw	57
302	ChIJ8xNUitGWb4YRm5jeheZu4Nw	75
303	ChIJ8xNUitGWb4YRm5jeheZu4Nw	109
304	ChIJ8xNUitGWb4YRm5jeheZu4Nw	120
305	ChIJ8xNUitGWb4YRm5jeheZu4Nw	106
306	ChIJAxhWaLiWb4YRRXqWxllpXTo	15
307	ChIJAxhWaLiWb4YRRXqWxllpXTo	75
308	ChIJAxhWaLiWb4YRRXqWxllpXTo	109
309	ChIJAxhWaLiWb4YRRXqWxllpXTo	120
310	ChIJAxhWaLiWb4YRRXqWxllpXTo	85
311	ChIJAxhWaLiWb4YRRXqWxllpXTo	106
312	ChIJiV6PmjiRb4YRalmz5uZ8008	75
313	ChIJiV6PmjiRb4YRalmz5uZ8008	109
314	ChIJiV6PmjiRb4YRalmz5uZ8008	120
315	ChIJiV6PmjiRb4YRalmz5uZ8008	106
316	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	75
317	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	109
318	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	120
319	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	106
320	ChIJQ5CBHM-Wb4YREDH33bUva4g	75
321	ChIJQ5CBHM-Wb4YREDH33bUva4g	109
322	ChIJQ5CBHM-Wb4YREDH33bUva4g	120
323	ChIJQ5CBHM-Wb4YREDH33bUva4g	106
324	ChIJX6f6ysiWb4YRbGsL2RZkj8A	75
325	ChIJX6f6ysiWb4YRbGsL2RZkj8A	109
326	ChIJX6f6ysiWb4YRbGsL2RZkj8A	120
327	ChIJX6f6ysiWb4YRbGsL2RZkj8A	106
328	ChIJA5HRjciWb4YR8Z5396h5gIk	75
329	ChIJA5HRjciWb4YR8Z5396h5gIk	109
330	ChIJA5HRjciWb4YR8Z5396h5gIk	120
331	ChIJA5HRjciWb4YR8Z5396h5gIk	106
332	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
333	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
334	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
335	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
336	ChIJvaSp7wOVb4YRa8mTHstAID0	75
337	ChIJvaSp7wOVb4YRa8mTHstAID0	109
338	ChIJvaSp7wOVb4YRa8mTHstAID0	120
339	ChIJvaSp7wOVb4YRa8mTHstAID0	106
340	ChIJtT2l4saWb4YRO8BkZ9Jme7I	57
341	ChIJtT2l4saWb4YRO8BkZ9Jme7I	75
342	ChIJtT2l4saWb4YRO8BkZ9Jme7I	109
343	ChIJtT2l4saWb4YRO8BkZ9Jme7I	120
344	ChIJtT2l4saWb4YRO8BkZ9Jme7I	106
345	ChIJI9gqeriWb4YRsRpZRDbKTUc	75
346	ChIJI9gqeriWb4YRsRpZRDbKTUc	109
347	ChIJI9gqeriWb4YRsRpZRDbKTUc	120
348	ChIJI9gqeriWb4YRsRpZRDbKTUc	106
349	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	9
350	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	75
351	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	109
352	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	120
353	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	106
354	ChIJZZdNTr6Wb4YReLa8XqQqdtI	9
355	ChIJZZdNTr6Wb4YReLa8XqQqdtI	75
356	ChIJZZdNTr6Wb4YReLa8XqQqdtI	109
357	ChIJZZdNTr6Wb4YReLa8XqQqdtI	120
358	ChIJZZdNTr6Wb4YReLa8XqQqdtI	106
359	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
360	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
361	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
362	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
363	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
364	ChIJmwgQwuGTb4YRT-EvolhZRGE	75
365	ChIJmwgQwuGTb4YRT-EvolhZRGE	109
366	ChIJmwgQwuGTb4YRT-EvolhZRGE	120
367	ChIJmwgQwuGTb4YRT-EvolhZRGE	106
368	ChIJCYEQO2GXb4YRO02qTd-9E-o	75
369	ChIJCYEQO2GXb4YRO02qTd-9E-o	109
370	ChIJCYEQO2GXb4YRO02qTd-9E-o	120
371	ChIJCYEQO2GXb4YRO02qTd-9E-o	106
372	ChIJw_7akseWb4YRfmj3u-LNKdI	15
373	ChIJw_7akseWb4YRfmj3u-LNKdI	75
374	ChIJw_7akseWb4YRfmj3u-LNKdI	109
375	ChIJw_7akseWb4YRfmj3u-LNKdI	120
376	ChIJw_7akseWb4YRfmj3u-LNKdI	85
377	ChIJw_7akseWb4YRfmj3u-LNKdI	106
378	ChIJ7UgWk4vV2IgRhjETCc4raac	9
379	ChIJ7UgWk4vV2IgRhjETCc4raac	75
380	ChIJ7UgWk4vV2IgRhjETCc4raac	109
381	ChIJ7UgWk4vV2IgRhjETCc4raac	120
382	ChIJ7UgWk4vV2IgRhjETCc4raac	106
383	ChIJTdZIeY3V2IgRcKBrPX5kPOU	75
384	ChIJTdZIeY3V2IgRcKBrPX5kPOU	109
385	ChIJTdZIeY3V2IgRcKBrPX5kPOU	120
386	ChIJTdZIeY3V2IgRcKBrPX5kPOU	106
387	ChIJi1HxdpPV2IgRLHatiayIb7w	57
388	ChIJi1HxdpPV2IgRLHatiayIb7w	75
389	ChIJi1HxdpPV2IgRLHatiayIb7w	109
390	ChIJi1HxdpPV2IgRLHatiayIb7w	120
391	ChIJi1HxdpPV2IgRLHatiayIb7w	106
392	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	57
393	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	75
394	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	109
395	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	120
396	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	106
397	ChIJCbVlQQnW2IgRjE5EAZAzq3U	75
398	ChIJCbVlQQnW2IgRjE5EAZAzq3U	109
399	ChIJCbVlQQnW2IgRjE5EAZAzq3U	120
400	ChIJCbVlQQnW2IgRjE5EAZAzq3U	106
401	ChIJDREnfIvV2IgRbnAeOnsGHso	75
402	ChIJDREnfIvV2IgRbnAeOnsGHso	109
403	ChIJDREnfIvV2IgRbnAeOnsGHso	120
404	ChIJDREnfIvV2IgRbnAeOnsGHso	85
405	ChIJDREnfIvV2IgRbnAeOnsGHso	106
406	ChIJc7jrSXQq2YgR5UKnK3nlfJk	15
407	ChIJc7jrSXQq2YgR5UKnK3nlfJk	75
408	ChIJc7jrSXQq2YgR5UKnK3nlfJk	109
409	ChIJc7jrSXQq2YgR5UKnK3nlfJk	120
410	ChIJc7jrSXQq2YgR5UKnK3nlfJk	106
411	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	56
412	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	75
413	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	109
414	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	120
415	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	106
416	ChIJe2yVib_V2IgRszY_dJGATRk	56
417	ChIJe2yVib_V2IgRszY_dJGATRk	57
418	ChIJe2yVib_V2IgRszY_dJGATRk	75
419	ChIJe2yVib_V2IgRszY_dJGATRk	109
420	ChIJe2yVib_V2IgRszY_dJGATRk	120
421	ChIJe2yVib_V2IgRszY_dJGATRk	106
422	ChIJ-X6SAg_W2IgRLBhoBX5x180	15
423	ChIJ-X6SAg_W2IgRLBhoBX5x180	75
424	ChIJ-X6SAg_W2IgRLBhoBX5x180	109
425	ChIJ-X6SAg_W2IgRLBhoBX5x180	120
426	ChIJ-X6SAg_W2IgRLBhoBX5x180	85
427	ChIJ-X6SAg_W2IgRLBhoBX5x180	106
428	ChIJaynMrOvV2IgREqNCugwBQ40	57
429	ChIJaynMrOvV2IgREqNCugwBQ40	75
430	ChIJaynMrOvV2IgREqNCugwBQ40	109
431	ChIJaynMrOvV2IgREqNCugwBQ40	120
432	ChIJaynMrOvV2IgREqNCugwBQ40	106
433	ChIJPcZOf43V2IgRngz1V_2dvKw	75
434	ChIJPcZOf43V2IgRngz1V_2dvKw	109
435	ChIJPcZOf43V2IgRngz1V_2dvKw	120
436	ChIJPcZOf43V2IgRngz1V_2dvKw	106
437	ChIJi-beQAnW2IgRdUZNRA5v6Kc	75
438	ChIJi-beQAnW2IgRdUZNRA5v6Kc	109
439	ChIJi-beQAnW2IgRdUZNRA5v6Kc	120
440	ChIJi-beQAnW2IgRdUZNRA5v6Kc	106
441	ChIJi-beQAnW2IgRxIQsYXaWLiw	56
442	ChIJi-beQAnW2IgRxIQsYXaWLiw	57
443	ChIJi-beQAnW2IgRxIQsYXaWLiw	75
444	ChIJi-beQAnW2IgRxIQsYXaWLiw	109
445	ChIJi-beQAnW2IgRxIQsYXaWLiw	120
446	ChIJi-beQAnW2IgRxIQsYXaWLiw	106
447	ChIJe7HA-QXW2IgRVtsvYijEiMY	75
448	ChIJe7HA-QXW2IgRVtsvYijEiMY	109
449	ChIJe7HA-QXW2IgRVtsvYijEiMY	120
450	ChIJe7HA-QXW2IgRVtsvYijEiMY	85
451	ChIJe7HA-QXW2IgRVtsvYijEiMY	106
452	ChIJN2NpkwXW2IgR_ulVGz1WI0s	75
453	ChIJN2NpkwXW2IgR_ulVGz1WI0s	109
454	ChIJN2NpkwXW2IgR_ulVGz1WI0s	120
455	ChIJN2NpkwXW2IgR_ulVGz1WI0s	106
456	ChIJl9drkwXW2IgRtMPZwhfMoVE	57
457	ChIJl9drkwXW2IgRtMPZwhfMoVE	75
458	ChIJl9drkwXW2IgRtMPZwhfMoVE	109
459	ChIJl9drkwXW2IgRtMPZwhfMoVE	120
460	ChIJl9drkwXW2IgRtMPZwhfMoVE	106
461	ChIJ72iVEA_W2IgRTiRYb5GEFk0	56
462	ChIJ72iVEA_W2IgRTiRYb5GEFk0	57
463	ChIJ72iVEA_W2IgRTiRYb5GEFk0	75
464	ChIJ72iVEA_W2IgRTiRYb5GEFk0	109
465	ChIJ72iVEA_W2IgRTiRYb5GEFk0	120
466	ChIJ72iVEA_W2IgRTiRYb5GEFk0	85
467	ChIJ72iVEA_W2IgRTiRYb5GEFk0	106
468	ChIJq0JuNw_W2IgRLMNtj8Hv02o	75
469	ChIJq0JuNw_W2IgRLMNtj8Hv02o	109
470	ChIJq0JuNw_W2IgRLMNtj8Hv02o	120
471	ChIJq0JuNw_W2IgRLMNtj8Hv02o	85
472	ChIJq0JuNw_W2IgRLMNtj8Hv02o	106
473	ChIJ74PxJw_W2IgRZUmm66qwTFE	75
474	ChIJ74PxJw_W2IgRZUmm66qwTFE	109
475	ChIJ74PxJw_W2IgRZUmm66qwTFE	120
476	ChIJ74PxJw_W2IgRZUmm66qwTFE	106
477	ChIJkeJaBr8QBYgRVop65TGxzT0	57
478	ChIJkeJaBr8QBYgRVop65TGxzT0	75
479	ChIJkeJaBr8QBYgRVop65TGxzT0	109
480	ChIJkeJaBr8QBYgRVop65TGxzT0	120
481	ChIJkeJaBr8QBYgRVop65TGxzT0	106
482	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
483	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
484	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
485	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
486	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
487	ChIJrdpiPUoXBYgRmffumT1sEwU	75
488	ChIJrdpiPUoXBYgRmffumT1sEwU	109
489	ChIJrdpiPUoXBYgRmffumT1sEwU	120
490	ChIJrdpiPUoXBYgRmffumT1sEwU	106
491	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
492	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
493	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
494	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
495	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
496	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
497	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
498	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
499	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
500	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
501	ChIJaaA1QdsQBYgRkAoWKcpkNjk	13
502	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
503	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
504	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
505	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
506	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
507	ChIJ54nTyrgQBYgRD9qefHdRVns	75
508	ChIJ54nTyrgQBYgRD9qefHdRVns	109
509	ChIJ54nTyrgQBYgRD9qefHdRVns	120
510	ChIJ54nTyrgQBYgRD9qefHdRVns	106
511	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
512	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
513	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
514	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
515	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
516	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
517	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
518	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
519	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
520	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
521	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
522	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
523	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
524	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
525	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
526	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
527	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
528	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
529	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
530	ChIJYxoPscYQBYgREnc48fDUaCQ	75
531	ChIJYxoPscYQBYgREnc48fDUaCQ	109
532	ChIJYxoPscYQBYgREnc48fDUaCQ	120
533	ChIJYxoPscYQBYgREnc48fDUaCQ	106
534	ChIJTccCecMQBYgREPD7rlez65I	75
535	ChIJTccCecMQBYgREPD7rlez65I	109
536	ChIJTccCecMQBYgREPD7rlez65I	120
537	ChIJTccCecMQBYgREPD7rlez65I	106
538	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
539	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
540	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
541	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
542	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
543	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
544	ChIJA82pmd0VBYgRSiwe3anpPvg	75
545	ChIJA82pmd0VBYgRSiwe3anpPvg	109
546	ChIJA82pmd0VBYgRSiwe3anpPvg	120
547	ChIJA82pmd0VBYgRSiwe3anpPvg	106
548	ChIJNejdd04XBYgRl9_Mc68IV9M	56
549	ChIJNejdd04XBYgRl9_Mc68IV9M	57
550	ChIJNejdd04XBYgRl9_Mc68IV9M	75
551	ChIJNejdd04XBYgRl9_Mc68IV9M	109
552	ChIJNejdd04XBYgRl9_Mc68IV9M	120
553	ChIJNejdd04XBYgRl9_Mc68IV9M	106
554	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
555	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
556	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
557	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
558	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
559	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
560	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
561	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
562	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
563	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
564	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
565	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
566	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
567	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
568	ChIJTURpSbkQBYgRzza-nRWLffQ	56
569	ChIJTURpSbkQBYgRzza-nRWLffQ	57
570	ChIJTURpSbkQBYgRzza-nRWLffQ	75
571	ChIJTURpSbkQBYgRzza-nRWLffQ	109
572	ChIJTURpSbkQBYgRzza-nRWLffQ	120
573	ChIJTURpSbkQBYgRzza-nRWLffQ	106
574	ChIJf2-nXPmWb4YRd8AiWnrkc54	56
575	ChIJf2-nXPmWb4YRd8AiWnrkc54	57
576	ChIJf2-nXPmWb4YRd8AiWnrkc54	75
577	ChIJf2-nXPmWb4YRd8AiWnrkc54	109
578	ChIJf2-nXPmWb4YRd8AiWnrkc54	120
579	ChIJf2-nXPmWb4YRd8AiWnrkc54	106
580	ChIJ--x4v_iWb4YRS18beQn76q8	56
581	ChIJ--x4v_iWb4YRS18beQn76q8	57
582	ChIJ--x4v_iWb4YRS18beQn76q8	75
583	ChIJ--x4v_iWb4YRS18beQn76q8	109
584	ChIJ--x4v_iWb4YRS18beQn76q8	120
585	ChIJ--x4v_iWb4YRS18beQn76q8	106
586	ChIJFa-7yf-Wb4YRsX-6oB_4cGo	75
587	ChIJFa-7yf-Wb4YRsX-6oB_4cGo	109
588	ChIJFa-7yf-Wb4YRsX-6oB_4cGo	120
589	ChIJFa-7yf-Wb4YRsX-6oB_4cGo	106
590	ChIJq-izrfmWb4YRiiwxiBz2UlM	57
591	ChIJq-izrfmWb4YRiiwxiBz2UlM	75
592	ChIJq-izrfmWb4YRiiwxiBz2UlM	109
593	ChIJq-izrfmWb4YRiiwxiBz2UlM	120
594	ChIJq-izrfmWb4YRiiwxiBz2UlM	106
595	ChIJG8n_LvuWb4YRIJ-Hs-RpfWg	75
596	ChIJG8n_LvuWb4YRIJ-Hs-RpfWg	109
597	ChIJG8n_LvuWb4YRIJ-Hs-RpfWg	120
598	ChIJG8n_LvuWb4YRIJ-Hs-RpfWg	106
599	ChIJkZg9y-WWb4YRp2LR0hqurz8	75
600	ChIJkZg9y-WWb4YRp2LR0hqurz8	109
601	ChIJkZg9y-WWb4YRp2LR0hqurz8	120
602	ChIJkZg9y-WWb4YRp2LR0hqurz8	106
603	ChIJle38rfmWb4YRIOU1hK-MEkw	75
604	ChIJle38rfmWb4YRIOU1hK-MEkw	109
605	ChIJle38rfmWb4YRIOU1hK-MEkw	120
606	ChIJle38rfmWb4YRIOU1hK-MEkw	106
607	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
608	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
609	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
610	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
611	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
612	ChIJf2-nXPmWb4YRhuNWUB8wob0	75
613	ChIJf2-nXPmWb4YRhuNWUB8wob0	109
614	ChIJf2-nXPmWb4YRhuNWUB8wob0	120
615	ChIJf2-nXPmWb4YRhuNWUB8wob0	106
616	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
617	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
618	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
619	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
620	ChIJq0RP29uWb4YRm8Qi56akor0	75
621	ChIJq0RP29uWb4YRm8Qi56akor0	109
622	ChIJq0RP29uWb4YRm8Qi56akor0	120
623	ChIJq0RP29uWb4YRm8Qi56akor0	106
624	ChIJkfot5-SWb4YRCGhpx7k3uZI	75
625	ChIJkfot5-SWb4YRCGhpx7k3uZI	109
626	ChIJkfot5-SWb4YRCGhpx7k3uZI	120
627	ChIJkfot5-SWb4YRCGhpx7k3uZI	106
628	ChIJKXjCUwCXb4YRNDrtHg318pA	9
629	ChIJKXjCUwCXb4YRNDrtHg318pA	65
630	ChIJKXjCUwCXb4YRNDrtHg318pA	75
631	ChIJKXjCUwCXb4YRNDrtHg318pA	109
632	ChIJKXjCUwCXb4YRNDrtHg318pA	120
633	ChIJKXjCUwCXb4YRNDrtHg318pA	106
634	ChIJG6YFiv-Xb4YRT2XwwFz6ewM	75
635	ChIJG6YFiv-Xb4YRT2XwwFz6ewM	109
636	ChIJG6YFiv-Xb4YRT2XwwFz6ewM	120
637	ChIJG6YFiv-Xb4YRT2XwwFz6ewM	106
638	ChIJq7TOGbCXb4YRTR0c6AxbqV4	75
639	ChIJq7TOGbCXb4YRTR0c6AxbqV4	109
640	ChIJq7TOGbCXb4YRTR0c6AxbqV4	120
641	ChIJq7TOGbCXb4YRTR0c6AxbqV4	106
642	ChIJk9EOEgqXb4YRygCq5xZ77uo	75
643	ChIJk9EOEgqXb4YRygCq5xZ77uo	109
644	ChIJk9EOEgqXb4YRygCq5xZ77uo	120
645	ChIJk9EOEgqXb4YRygCq5xZ77uo	106
646	ChIJf2I9UgCXb4YRHj2GinIAnOE	57
647	ChIJf2I9UgCXb4YRHj2GinIAnOE	75
648	ChIJf2I9UgCXb4YRHj2GinIAnOE	109
649	ChIJf2I9UgCXb4YRHj2GinIAnOE	120
650	ChIJf2I9UgCXb4YRHj2GinIAnOE	106
651	ChIJy2FitVOXb4YRtf3keeZXvIc	75
652	ChIJy2FitVOXb4YRtf3keeZXvIc	109
653	ChIJy2FitVOXb4YRtf3keeZXvIc	120
654	ChIJy2FitVOXb4YRtf3keeZXvIc	106
655	ChIJZy6HffmWb4YRFSD8JuOjhUk	57
656	ChIJZy6HffmWb4YRFSD8JuOjhUk	75
657	ChIJZy6HffmWb4YRFSD8JuOjhUk	109
658	ChIJZy6HffmWb4YRFSD8JuOjhUk	120
659	ChIJZy6HffmWb4YRFSD8JuOjhUk	106
660	ChIJUfNZG_uWb4YRJEpzOrZFkNU	57
661	ChIJUfNZG_uWb4YRJEpzOrZFkNU	75
662	ChIJUfNZG_uWb4YRJEpzOrZFkNU	109
663	ChIJUfNZG_uWb4YRJEpzOrZFkNU	120
664	ChIJUfNZG_uWb4YRJEpzOrZFkNU	106
665	ChIJ7UgWk4vV2IgRhjETCc4raac	9
666	ChIJ7UgWk4vV2IgRhjETCc4raac	75
667	ChIJ7UgWk4vV2IgRhjETCc4raac	109
668	ChIJ7UgWk4vV2IgRhjETCc4raac	120
669	ChIJ7UgWk4vV2IgRhjETCc4raac	106
670	ChIJTdZIeY3V2IgRcKBrPX5kPOU	75
671	ChIJTdZIeY3V2IgRcKBrPX5kPOU	109
672	ChIJTdZIeY3V2IgRcKBrPX5kPOU	120
673	ChIJTdZIeY3V2IgRcKBrPX5kPOU	106
674	ChIJi1HxdpPV2IgRLHatiayIb7w	57
675	ChIJi1HxdpPV2IgRLHatiayIb7w	75
676	ChIJi1HxdpPV2IgRLHatiayIb7w	109
677	ChIJi1HxdpPV2IgRLHatiayIb7w	120
678	ChIJi1HxdpPV2IgRLHatiayIb7w	106
679	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	57
680	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	75
681	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	109
682	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	120
683	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	106
684	ChIJCbVlQQnW2IgRjE5EAZAzq3U	75
685	ChIJCbVlQQnW2IgRjE5EAZAzq3U	109
686	ChIJCbVlQQnW2IgRjE5EAZAzq3U	120
687	ChIJCbVlQQnW2IgRjE5EAZAzq3U	106
688	ChIJDREnfIvV2IgRbnAeOnsGHso	75
689	ChIJDREnfIvV2IgRbnAeOnsGHso	109
690	ChIJDREnfIvV2IgRbnAeOnsGHso	120
691	ChIJDREnfIvV2IgRbnAeOnsGHso	85
692	ChIJDREnfIvV2IgRbnAeOnsGHso	106
693	ChIJc7jrSXQq2YgR5UKnK3nlfJk	15
694	ChIJc7jrSXQq2YgR5UKnK3nlfJk	75
695	ChIJc7jrSXQq2YgR5UKnK3nlfJk	109
696	ChIJc7jrSXQq2YgR5UKnK3nlfJk	120
697	ChIJc7jrSXQq2YgR5UKnK3nlfJk	106
698	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	56
699	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	75
700	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	109
701	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	120
702	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	106
703	ChIJe2yVib_V2IgRszY_dJGATRk	56
704	ChIJe2yVib_V2IgRszY_dJGATRk	57
705	ChIJe2yVib_V2IgRszY_dJGATRk	75
706	ChIJe2yVib_V2IgRszY_dJGATRk	109
707	ChIJe2yVib_V2IgRszY_dJGATRk	120
708	ChIJe2yVib_V2IgRszY_dJGATRk	106
709	ChIJ-X6SAg_W2IgRLBhoBX5x180	15
710	ChIJ-X6SAg_W2IgRLBhoBX5x180	75
711	ChIJ-X6SAg_W2IgRLBhoBX5x180	109
712	ChIJ-X6SAg_W2IgRLBhoBX5x180	120
713	ChIJ-X6SAg_W2IgRLBhoBX5x180	85
714	ChIJ-X6SAg_W2IgRLBhoBX5x180	106
715	ChIJaynMrOvV2IgREqNCugwBQ40	57
716	ChIJaynMrOvV2IgREqNCugwBQ40	75
717	ChIJaynMrOvV2IgREqNCugwBQ40	109
718	ChIJaynMrOvV2IgREqNCugwBQ40	120
719	ChIJaynMrOvV2IgREqNCugwBQ40	106
720	ChIJPcZOf43V2IgRngz1V_2dvKw	75
721	ChIJPcZOf43V2IgRngz1V_2dvKw	109
722	ChIJPcZOf43V2IgRngz1V_2dvKw	120
723	ChIJPcZOf43V2IgRngz1V_2dvKw	106
724	ChIJi-beQAnW2IgRdUZNRA5v6Kc	75
725	ChIJi-beQAnW2IgRdUZNRA5v6Kc	109
726	ChIJi-beQAnW2IgRdUZNRA5v6Kc	120
727	ChIJi-beQAnW2IgRdUZNRA5v6Kc	106
728	ChIJi-beQAnW2IgRxIQsYXaWLiw	56
729	ChIJi-beQAnW2IgRxIQsYXaWLiw	57
730	ChIJi-beQAnW2IgRxIQsYXaWLiw	75
731	ChIJi-beQAnW2IgRxIQsYXaWLiw	109
732	ChIJi-beQAnW2IgRxIQsYXaWLiw	120
733	ChIJi-beQAnW2IgRxIQsYXaWLiw	106
734	ChIJe7HA-QXW2IgRVtsvYijEiMY	75
735	ChIJe7HA-QXW2IgRVtsvYijEiMY	109
736	ChIJe7HA-QXW2IgRVtsvYijEiMY	120
737	ChIJe7HA-QXW2IgRVtsvYijEiMY	85
738	ChIJe7HA-QXW2IgRVtsvYijEiMY	106
739	ChIJN2NpkwXW2IgR_ulVGz1WI0s	75
740	ChIJN2NpkwXW2IgR_ulVGz1WI0s	109
741	ChIJN2NpkwXW2IgR_ulVGz1WI0s	120
742	ChIJN2NpkwXW2IgR_ulVGz1WI0s	106
743	ChIJl9drkwXW2IgRtMPZwhfMoVE	57
744	ChIJl9drkwXW2IgRtMPZwhfMoVE	75
745	ChIJl9drkwXW2IgRtMPZwhfMoVE	109
746	ChIJl9drkwXW2IgRtMPZwhfMoVE	120
747	ChIJl9drkwXW2IgRtMPZwhfMoVE	106
748	ChIJ72iVEA_W2IgRTiRYb5GEFk0	56
749	ChIJ72iVEA_W2IgRTiRYb5GEFk0	57
750	ChIJ72iVEA_W2IgRTiRYb5GEFk0	75
751	ChIJ72iVEA_W2IgRTiRYb5GEFk0	109
752	ChIJ72iVEA_W2IgRTiRYb5GEFk0	120
753	ChIJ72iVEA_W2IgRTiRYb5GEFk0	85
754	ChIJ72iVEA_W2IgRTiRYb5GEFk0	106
755	ChIJq0JuNw_W2IgRLMNtj8Hv02o	75
756	ChIJq0JuNw_W2IgRLMNtj8Hv02o	109
757	ChIJq0JuNw_W2IgRLMNtj8Hv02o	120
758	ChIJq0JuNw_W2IgRLMNtj8Hv02o	85
759	ChIJq0JuNw_W2IgRLMNtj8Hv02o	106
760	ChIJ74PxJw_W2IgRZUmm66qwTFE	75
761	ChIJ74PxJw_W2IgRZUmm66qwTFE	109
762	ChIJ74PxJw_W2IgRZUmm66qwTFE	120
763	ChIJ74PxJw_W2IgRZUmm66qwTFE	106
764	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	9
765	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	75
766	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	109
767	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	120
768	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	106
769	ChIJfUOjp9i1RIYRRODubsPMQKs	75
770	ChIJfUOjp9i1RIYRRODubsPMQKs	109
771	ChIJfUOjp9i1RIYRRODubsPMQKs	120
772	ChIJfUOjp9i1RIYRRODubsPMQKs	106
773	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	57
774	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	75
775	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	109
776	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	120
777	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	106
778	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	57
779	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	75
780	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	109
781	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	120
782	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	106
783	ChIJi4dkYX62RIYRmPx-8zo1uBU	75
784	ChIJi4dkYX62RIYRmPx-8zo1uBU	109
785	ChIJi4dkYX62RIYRmPx-8zo1uBU	120
786	ChIJi4dkYX62RIYRmPx-8zo1uBU	106
787	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	57
788	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	75
789	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	109
790	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	120
791	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	106
792	ChIJN5T3EtW1RIYRjs_1F_HgjO0	75
793	ChIJN5T3EtW1RIYRjs_1F_HgjO0	55
794	ChIJN5T3EtW1RIYRjs_1F_HgjO0	9
795	ChIJN5T3EtW1RIYRjs_1F_HgjO0	109
796	ChIJN5T3EtW1RIYRjs_1F_HgjO0	120
797	ChIJN5T3EtW1RIYRjs_1F_HgjO0	106
798	ChIJfUOjp9i1RIYRTxFXyNhFLyA	75
799	ChIJfUOjp9i1RIYRTxFXyNhFLyA	109
800	ChIJfUOjp9i1RIYRTxFXyNhFLyA	120
801	ChIJfUOjp9i1RIYRTxFXyNhFLyA	106
802	ChIJcyktFKm1RIYRhoAuiJG50Zk	9
803	ChIJcyktFKm1RIYRhoAuiJG50Zk	75
804	ChIJcyktFKm1RIYRhoAuiJG50Zk	109
805	ChIJcyktFKm1RIYRhoAuiJG50Zk	120
806	ChIJcyktFKm1RIYRhoAuiJG50Zk	106
807	ChIJz9bESdK1RIYR48vQlkchtqY	9
808	ChIJz9bESdK1RIYR48vQlkchtqY	75
809	ChIJz9bESdK1RIYR48vQlkchtqY	109
810	ChIJz9bESdK1RIYR48vQlkchtqY	120
811	ChIJz9bESdK1RIYR48vQlkchtqY	106
812	ChIJ85wOns61RIYRZvO4l2_VRAU	56
813	ChIJ85wOns61RIYRZvO4l2_VRAU	57
814	ChIJ85wOns61RIYRZvO4l2_VRAU	75
815	ChIJ85wOns61RIYRZvO4l2_VRAU	109
816	ChIJ85wOns61RIYRZvO4l2_VRAU	120
817	ChIJ85wOns61RIYRZvO4l2_VRAU	106
818	ChIJNZ3dGXa2RIYRUlGO68eWJWA	56
819	ChIJNZ3dGXa2RIYRUlGO68eWJWA	57
820	ChIJNZ3dGXa2RIYRUlGO68eWJWA	75
821	ChIJNZ3dGXa2RIYRUlGO68eWJWA	109
822	ChIJNZ3dGXa2RIYRUlGO68eWJWA	120
823	ChIJNZ3dGXa2RIYRUlGO68eWJWA	106
824	ChIJQ1asA9a1RIYRwTo5i529--U	15
825	ChIJQ1asA9a1RIYRwTo5i529--U	75
826	ChIJQ1asA9a1RIYRwTo5i529--U	109
827	ChIJQ1asA9a1RIYRwTo5i529--U	120
828	ChIJQ1asA9a1RIYRwTo5i529--U	106
829	ChIJW_40QHa2RIYRAGV1pOsbRGc	9
830	ChIJW_40QHa2RIYRAGV1pOsbRGc	75
831	ChIJW_40QHa2RIYRAGV1pOsbRGc	109
832	ChIJW_40QHa2RIYRAGV1pOsbRGc	120
833	ChIJW_40QHa2RIYRAGV1pOsbRGc	106
834	ChIJx7P8DHa2RIYR5UAu_my5E4g	15
835	ChIJx7P8DHa2RIYR5UAu_my5E4g	75
836	ChIJx7P8DHa2RIYR5UAu_my5E4g	109
837	ChIJx7P8DHa2RIYR5UAu_my5E4g	120
838	ChIJx7P8DHa2RIYR5UAu_my5E4g	85
839	ChIJx7P8DHa2RIYR5UAu_my5E4g	106
840	ChIJz39IldS1RIYRKb1xMktUKX4	75
841	ChIJz39IldS1RIYRKb1xMktUKX4	109
842	ChIJz39IldS1RIYRKb1xMktUKX4	120
843	ChIJz39IldS1RIYRKb1xMktUKX4	106
844	ChIJBxYt6nW2RIYRcS6WMMGoXDs	75
845	ChIJBxYt6nW2RIYRcS6WMMGoXDs	109
846	ChIJBxYt6nW2RIYRcS6WMMGoXDs	120
847	ChIJBxYt6nW2RIYRcS6WMMGoXDs	106
848	ChIJF042qxK2RIYRUfIPrXib42s	75
849	ChIJF042qxK2RIYRUfIPrXib42s	109
850	ChIJF042qxK2RIYRUfIPrXib42s	120
851	ChIJF042qxK2RIYRUfIPrXib42s	106
852	ChIJ53aopN-1RIYRNxZKMt-TZEc	56
853	ChIJ53aopN-1RIYRNxZKMt-TZEc	57
854	ChIJ53aopN-1RIYRNxZKMt-TZEc	75
855	ChIJ53aopN-1RIYRNxZKMt-TZEc	109
856	ChIJ53aopN-1RIYRNxZKMt-TZEc	120
857	ChIJ53aopN-1RIYRNxZKMt-TZEc	106
858	ChIJgcqMjEa2RIYRjSGM55ShqDw	39
859	ChIJgcqMjEa2RIYRjSGM55ShqDw	6
860	ChIJgcqMjEa2RIYRjSGM55ShqDw	26
861	ChIJgcqMjEa2RIYRjSGM55ShqDw	107
862	ChIJgcqMjEa2RIYRjSGM55ShqDw	75
863	ChIJgcqMjEa2RIYRjSGM55ShqDw	109
864	ChIJgcqMjEa2RIYRjSGM55ShqDw	120
865	ChIJgcqMjEa2RIYRjSGM55ShqDw	85
866	ChIJgcqMjEa2RIYRjSGM55ShqDw	106
867	ChIJkeJaBr8QBYgRVop65TGxzT0	57
868	ChIJkeJaBr8QBYgRVop65TGxzT0	75
869	ChIJkeJaBr8QBYgRVop65TGxzT0	109
870	ChIJkeJaBr8QBYgRVop65TGxzT0	120
871	ChIJkeJaBr8QBYgRVop65TGxzT0	106
872	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
873	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
874	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
875	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
876	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
877	ChIJrdpiPUoXBYgRmffumT1sEwU	75
878	ChIJrdpiPUoXBYgRmffumT1sEwU	109
879	ChIJrdpiPUoXBYgRmffumT1sEwU	120
880	ChIJrdpiPUoXBYgRmffumT1sEwU	106
881	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
882	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
883	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
884	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
885	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
886	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
887	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
888	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
889	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
890	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
891	ChIJaaA1QdsQBYgRkAoWKcpkNjk	13
892	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
893	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
894	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
895	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
896	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
897	ChIJ54nTyrgQBYgRD9qefHdRVns	75
898	ChIJ54nTyrgQBYgRD9qefHdRVns	109
899	ChIJ54nTyrgQBYgRD9qefHdRVns	120
900	ChIJ54nTyrgQBYgRD9qefHdRVns	106
901	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
902	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
903	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
904	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
905	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
906	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
907	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
908	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
909	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
910	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
911	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
912	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
913	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
914	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
915	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
916	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
917	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
918	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
919	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
920	ChIJYxoPscYQBYgREnc48fDUaCQ	75
921	ChIJYxoPscYQBYgREnc48fDUaCQ	109
922	ChIJYxoPscYQBYgREnc48fDUaCQ	120
923	ChIJYxoPscYQBYgREnc48fDUaCQ	106
924	ChIJTccCecMQBYgREPD7rlez65I	75
925	ChIJTccCecMQBYgREPD7rlez65I	109
926	ChIJTccCecMQBYgREPD7rlez65I	120
927	ChIJTccCecMQBYgREPD7rlez65I	106
928	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
929	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
930	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
931	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
932	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
933	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
934	ChIJA82pmd0VBYgRSiwe3anpPvg	75
935	ChIJA82pmd0VBYgRSiwe3anpPvg	109
936	ChIJA82pmd0VBYgRSiwe3anpPvg	120
937	ChIJA82pmd0VBYgRSiwe3anpPvg	106
938	ChIJNejdd04XBYgRl9_Mc68IV9M	56
939	ChIJNejdd04XBYgRl9_Mc68IV9M	57
940	ChIJNejdd04XBYgRl9_Mc68IV9M	75
941	ChIJNejdd04XBYgRl9_Mc68IV9M	109
942	ChIJNejdd04XBYgRl9_Mc68IV9M	120
943	ChIJNejdd04XBYgRl9_Mc68IV9M	106
944	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
945	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
946	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
947	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
948	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
949	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
950	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
951	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
952	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
953	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
954	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
955	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
956	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
957	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
958	ChIJTURpSbkQBYgRzza-nRWLffQ	56
959	ChIJTURpSbkQBYgRzza-nRWLffQ	57
960	ChIJTURpSbkQBYgRzza-nRWLffQ	75
961	ChIJTURpSbkQBYgRzza-nRWLffQ	109
962	ChIJTURpSbkQBYgRzza-nRWLffQ	120
963	ChIJTURpSbkQBYgRzza-nRWLffQ	106
964	ChIJHaxi9rsQBYgRHe7WLuvhVa8	75
965	ChIJHaxi9rsQBYgRHe7WLuvhVa8	109
966	ChIJHaxi9rsQBYgRHe7WLuvhVa8	120
967	ChIJHaxi9rsQBYgRHe7WLuvhVa8	106
968	ChIJ6wcpabwQBYgRXFCpCsFnK7M	75
969	ChIJ6wcpabwQBYgRXFCpCsFnK7M	57
970	ChIJ6wcpabwQBYgRXFCpCsFnK7M	109
971	ChIJ6wcpabwQBYgRXFCpCsFnK7M	120
972	ChIJ6wcpabwQBYgRXFCpCsFnK7M	85
973	ChIJ6wcpabwQBYgRXFCpCsFnK7M	106
974	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	7
975	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	15
976	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	75
977	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	109
978	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	120
979	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	85
980	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	106
981	ChIJR4_GSrkQBYgRlJHCR74rM-s	56
982	ChIJR4_GSrkQBYgRlJHCR74rM-s	75
983	ChIJR4_GSrkQBYgRlJHCR74rM-s	109
984	ChIJR4_GSrkQBYgRlJHCR74rM-s	120
985	ChIJR4_GSrkQBYgRlJHCR74rM-s	106
986	ChIJEdXItMAQBYgRPJnU9byrpw8	56
987	ChIJEdXItMAQBYgRPJnU9byrpw8	57
988	ChIJEdXItMAQBYgRPJnU9byrpw8	75
989	ChIJEdXItMAQBYgRPJnU9byrpw8	109
990	ChIJEdXItMAQBYgRPJnU9byrpw8	120
991	ChIJEdXItMAQBYgRPJnU9byrpw8	106
992	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	75
993	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	109
994	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	120
995	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	106
996	ChIJMcyCKbkQBYgRZk8SOBfb_N0	57
997	ChIJMcyCKbkQBYgRZk8SOBfb_N0	75
998	ChIJMcyCKbkQBYgRZk8SOBfb_N0	109
999	ChIJMcyCKbkQBYgRZk8SOBfb_N0	120
1000	ChIJMcyCKbkQBYgRZk8SOBfb_N0	106
1001	ChIJq-GWWMcQBYgR_0-FCZtqFYU	15
1002	ChIJq-GWWMcQBYgR_0-FCZtqFYU	75
1003	ChIJq-GWWMcQBYgR_0-FCZtqFYU	109
1004	ChIJq-GWWMcQBYgR_0-FCZtqFYU	120
1005	ChIJq-GWWMcQBYgR_0-FCZtqFYU	85
1006	ChIJq-GWWMcQBYgR_0-FCZtqFYU	106
1007	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	57
1008	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	75
1009	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	109
1010	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	120
1011	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	85
1012	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	106
1013	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	75
1014	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	109
1015	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	120
1016	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	106
1017	ChIJEz0Ez-gQBYgRC-n2GAZSdks	9
1018	ChIJEz0Ez-gQBYgRC-n2GAZSdks	75
1019	ChIJEz0Ez-gQBYgRC-n2GAZSdks	109
1020	ChIJEz0Ez-gQBYgRC-n2GAZSdks	120
1021	ChIJEz0Ez-gQBYgRC-n2GAZSdks	106
1022	ChIJfwaYn04XBYgRL-0IbL7HrYM	75
1023	ChIJfwaYn04XBYgRL-0IbL7HrYM	109
1024	ChIJfwaYn04XBYgRL-0IbL7HrYM	120
1025	ChIJfwaYn04XBYgRL-0IbL7HrYM	106
1026	ChIJ_28aTL8QBYgRV6uYmeqM88Y	15
1027	ChIJ_28aTL8QBYgRV6uYmeqM88Y	75
1028	ChIJ_28aTL8QBYgRV6uYmeqM88Y	109
1029	ChIJ_28aTL8QBYgRV6uYmeqM88Y	120
1030	ChIJ_28aTL8QBYgRV6uYmeqM88Y	85
1031	ChIJ_28aTL8QBYgRV6uYmeqM88Y	106
1032	ChIJedoQV9MRBYgRqrVWAkYdGzA	75
1033	ChIJedoQV9MRBYgRqrVWAkYdGzA	109
1034	ChIJedoQV9MRBYgRqrVWAkYdGzA	120
1035	ChIJedoQV9MRBYgRqrVWAkYdGzA	106
1036	ChIJYdnWeSURBYgRcdXRVUHG-JE	75
1037	ChIJYdnWeSURBYgRcdXRVUHG-JE	109
1038	ChIJYdnWeSURBYgRcdXRVUHG-JE	120
1039	ChIJYdnWeSURBYgRcdXRVUHG-JE	106
1040	ChIJMYup0f4RBYgR8pFl5Din6P4	75
1041	ChIJMYup0f4RBYgR8pFl5Din6P4	109
1042	ChIJMYup0f4RBYgR8pFl5Din6P4	120
1043	ChIJMYup0f4RBYgR8pFl5Din6P4	106
1044	ChIJC7G_WVERBYgRJeOlxyG8mgo	15
1045	ChIJC7G_WVERBYgRJeOlxyG8mgo	7
1046	ChIJC7G_WVERBYgRJeOlxyG8mgo	57
1047	ChIJC7G_WVERBYgRJeOlxyG8mgo	75
1048	ChIJC7G_WVERBYgRJeOlxyG8mgo	109
1049	ChIJC7G_WVERBYgRJeOlxyG8mgo	120
1050	ChIJC7G_WVERBYgRJeOlxyG8mgo	85
1051	ChIJC7G_WVERBYgRJeOlxyG8mgo	106
1052	ChIJtW0nBRMRBYgRe02OrUNLP78	75
1053	ChIJtW0nBRMRBYgRe02OrUNLP78	109
1054	ChIJtW0nBRMRBYgRe02OrUNLP78	120
1055	ChIJtW0nBRMRBYgRe02OrUNLP78	106
1056	ChIJUdrjn5MRBYgR403D5r4ZCk8	75
1057	ChIJUdrjn5MRBYgR403D5r4ZCk8	109
1058	ChIJUdrjn5MRBYgR403D5r4ZCk8	120
1059	ChIJUdrjn5MRBYgR403D5r4ZCk8	106
1060	ChIJHa7ysYQRBYgRcc-_lQRS248	75
1061	ChIJHa7ysYQRBYgRcc-_lQRS248	109
1062	ChIJHa7ysYQRBYgRcc-_lQRS248	120
1063	ChIJHa7ysYQRBYgRcc-_lQRS248	106
1064	ChIJj8s7AUoXBYgRaqwOZKNaRrs	140
1065	ChIJj8s7AUoXBYgRaqwOZKNaRrs	75
1066	ChIJj8s7AUoXBYgRaqwOZKNaRrs	109
1067	ChIJj8s7AUoXBYgRaqwOZKNaRrs	120
1068	ChIJj8s7AUoXBYgRaqwOZKNaRrs	85
1069	ChIJj8s7AUoXBYgRaqwOZKNaRrs	106
1070	ChIJye6xncMQBYgRI4YpStY3CwE	56
1071	ChIJye6xncMQBYgRI4YpStY3CwE	57
1072	ChIJye6xncMQBYgRI4YpStY3CwE	75
1073	ChIJye6xncMQBYgRI4YpStY3CwE	109
1074	ChIJye6xncMQBYgRI4YpStY3CwE	120
1075	ChIJye6xncMQBYgRI4YpStY3CwE	106
1076	ChIJUaLy-ScXBYgRuLBwoomy1NM	75
1077	ChIJUaLy-ScXBYgRuLBwoomy1NM	109
1078	ChIJUaLy-ScXBYgRuLBwoomy1NM	120
1079	ChIJUaLy-ScXBYgRuLBwoomy1NM	106
1080	ChIJFbOGt4ERBYgR99sTM0PWuB0	75
1081	ChIJFbOGt4ERBYgR99sTM0PWuB0	109
1082	ChIJFbOGt4ERBYgR99sTM0PWuB0	120
1083	ChIJFbOGt4ERBYgR99sTM0PWuB0	106
1084	ChIJCeJkWp4RBYgRTkY4wsoEhG4	75
1085	ChIJCeJkWp4RBYgRTkY4wsoEhG4	109
1086	ChIJCeJkWp4RBYgRTkY4wsoEhG4	120
1087	ChIJCeJkWp4RBYgRTkY4wsoEhG4	106
1088	ChIJ8yqmR2ERBYgR-jq7kJVOU08	75
1089	ChIJ8yqmR2ERBYgR-jq7kJVOU08	109
1090	ChIJ8yqmR2ERBYgR-jq7kJVOU08	120
1091	ChIJ8yqmR2ERBYgR-jq7kJVOU08	106
1092	ChIJr-42Tg0aBYgRdOvgnTS4IA8	56
1093	ChIJr-42Tg0aBYgRdOvgnTS4IA8	75
1094	ChIJr-42Tg0aBYgRdOvgnTS4IA8	109
1095	ChIJr-42Tg0aBYgRdOvgnTS4IA8	120
1096	ChIJr-42Tg0aBYgRdOvgnTS4IA8	106
1097	ChIJadNS2wMRBYgRuna7m-1TVyI	75
1098	ChIJadNS2wMRBYgRuna7m-1TVyI	109
1099	ChIJadNS2wMRBYgRuna7m-1TVyI	120
1100	ChIJadNS2wMRBYgRuna7m-1TVyI	106
1101	ChIJxajE_00XBYgR737ZZOJBDxo	75
1102	ChIJxajE_00XBYgR737ZZOJBDxo	109
1103	ChIJxajE_00XBYgR737ZZOJBDxo	120
1104	ChIJxajE_00XBYgR737ZZOJBDxo	106
1105	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	75
1106	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	109
1107	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	120
1108	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	106
1109	ChIJ9UGhX58QBYgRJROWYSS1i5E	9
1110	ChIJ9UGhX58QBYgRJROWYSS1i5E	75
1111	ChIJ9UGhX58QBYgRJROWYSS1i5E	109
1112	ChIJ9UGhX58QBYgRJROWYSS1i5E	120
1113	ChIJ9UGhX58QBYgRJROWYSS1i5E	106
1114	ChIJa51p_Q0XBYgRWL9FwsikTd0	75
1115	ChIJa51p_Q0XBYgRWL9FwsikTd0	109
1116	ChIJa51p_Q0XBYgRWL9FwsikTd0	120
1117	ChIJa51p_Q0XBYgRWL9FwsikTd0	106
1118	ChIJGa2eFzcXBYgRRTFlRlgCxpA	75
1119	ChIJGa2eFzcXBYgRRTFlRlgCxpA	109
1120	ChIJGa2eFzcXBYgRRTFlRlgCxpA	120
1121	ChIJGa2eFzcXBYgRRTFlRlgCxpA	106
1122	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	75
1123	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	109
1124	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	120
1125	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	106
1126	ChIJc3Ufpt4QBYgRBcWFtKy8g48	15
1127	ChIJc3Ufpt4QBYgRBcWFtKy8g48	75
1128	ChIJc3Ufpt4QBYgRBcWFtKy8g48	109
1129	ChIJc3Ufpt4QBYgRBcWFtKy8g48	120
1130	ChIJc3Ufpt4QBYgRBcWFtKy8g48	85
1131	ChIJc3Ufpt4QBYgRBcWFtKy8g48	106
1132	ChIJ1e7dJooQBYgR8eZbItGcIkw	75
1133	ChIJ1e7dJooQBYgR8eZbItGcIkw	109
1134	ChIJ1e7dJooQBYgR8eZbItGcIkw	120
1135	ChIJ1e7dJooQBYgR8eZbItGcIkw	106
1136	ChIJW9Mxr3wXBYgRd2jbhewjw9k	75
1137	ChIJW9Mxr3wXBYgRd2jbhewjw9k	109
1138	ChIJW9Mxr3wXBYgRd2jbhewjw9k	120
1139	ChIJW9Mxr3wXBYgRd2jbhewjw9k	106
1140	ChIJ57c441MXBYgR0hX7GHWn5vQ	75
1141	ChIJ57c441MXBYgR0hX7GHWn5vQ	109
1142	ChIJ57c441MXBYgR0hX7GHWn5vQ	120
1143	ChIJ57c441MXBYgR0hX7GHWn5vQ	106
1144	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	75
1145	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	109
1146	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	120
1147	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	106
1148	ChIJo7KvSi4bBYgRx5rM13umhOc	75
1149	ChIJo7KvSi4bBYgRx5rM13umhOc	109
1150	ChIJo7KvSi4bBYgRx5rM13umhOc	120
1151	ChIJo7KvSi4bBYgRx5rM13umhOc	106
1152	ChIJb_FeRCyUb4YRMFzpjf7-BO8	57
1153	ChIJb_FeRCyUb4YRMFzpjf7-BO8	75
1154	ChIJb_FeRCyUb4YRMFzpjf7-BO8	109
1155	ChIJb_FeRCyUb4YRMFzpjf7-BO8	120
1156	ChIJb_FeRCyUb4YRMFzpjf7-BO8	106
1157	ChIJk5U9lZiWb4YRMEBvbsyCRek	57
1158	ChIJk5U9lZiWb4YRMEBvbsyCRek	75
1159	ChIJk5U9lZiWb4YRMEBvbsyCRek	109
1160	ChIJk5U9lZiWb4YRMEBvbsyCRek	120
1161	ChIJk5U9lZiWb4YRMEBvbsyCRek	106
1162	ChIJMUTHysmVb4YRhbdUR2VPo0E	57
1163	ChIJMUTHysmVb4YRhbdUR2VPo0E	75
1164	ChIJMUTHysmVb4YRhbdUR2VPo0E	109
1165	ChIJMUTHysmVb4YRhbdUR2VPo0E	120
1166	ChIJMUTHysmVb4YRhbdUR2VPo0E	106
1167	ChIJ9SVT16CWb4YR5CHECbtsHNA	75
1168	ChIJ9SVT16CWb4YR5CHECbtsHNA	109
1169	ChIJ9SVT16CWb4YR5CHECbtsHNA	120
1170	ChIJ9SVT16CWb4YR5CHECbtsHNA	106
1171	ChIJxeZnDqOWb4YRsNKFJm0r4qI	60
1172	ChIJxeZnDqOWb4YRsNKFJm0r4qI	57
1173	ChIJxeZnDqOWb4YRsNKFJm0r4qI	75
1174	ChIJxeZnDqOWb4YRsNKFJm0r4qI	109
1175	ChIJxeZnDqOWb4YRsNKFJm0r4qI	120
1176	ChIJxeZnDqOWb4YRsNKFJm0r4qI	106
1177	ChIJxb7KAZmWb4YRUfZ9IJJngJM	56
1178	ChIJxb7KAZmWb4YRUfZ9IJJngJM	57
1179	ChIJxb7KAZmWb4YRUfZ9IJJngJM	75
1180	ChIJxb7KAZmWb4YRUfZ9IJJngJM	109
1181	ChIJxb7KAZmWb4YRUfZ9IJJngJM	120
1182	ChIJxb7KAZmWb4YRUfZ9IJJngJM	106
1183	ChIJjc8OnyGUb4YRUf3KjZN6q2w	56
1184	ChIJjc8OnyGUb4YRUf3KjZN6q2w	57
1185	ChIJjc8OnyGUb4YRUf3KjZN6q2w	75
1186	ChIJjc8OnyGUb4YRUf3KjZN6q2w	109
1187	ChIJjc8OnyGUb4YRUf3KjZN6q2w	120
1188	ChIJjc8OnyGUb4YRUf3KjZN6q2w	106
1189	ChIJ14IuKzSUb4YRc089X1Sneeo	56
1190	ChIJ14IuKzSUb4YRc089X1Sneeo	57
1191	ChIJ14IuKzSUb4YRc089X1Sneeo	75
1192	ChIJ14IuKzSUb4YRc089X1Sneeo	109
1193	ChIJ14IuKzSUb4YRc089X1Sneeo	120
1194	ChIJ14IuKzSUb4YRc089X1Sneeo	106
1195	ChIJdUcMCriVb4YRGK-vT0BiDDI	56
1196	ChIJdUcMCriVb4YRGK-vT0BiDDI	57
1197	ChIJdUcMCriVb4YRGK-vT0BiDDI	75
1198	ChIJdUcMCriVb4YRGK-vT0BiDDI	109
1199	ChIJdUcMCriVb4YRGK-vT0BiDDI	120
1200	ChIJdUcMCriVb4YRGK-vT0BiDDI	106
1201	ChIJk1IxdDSUb4YRSpeMG1k345A	60
1202	ChIJk1IxdDSUb4YRSpeMG1k345A	57
1203	ChIJk1IxdDSUb4YRSpeMG1k345A	75
1204	ChIJk1IxdDSUb4YRSpeMG1k345A	109
1205	ChIJk1IxdDSUb4YRSpeMG1k345A	120
1206	ChIJk1IxdDSUb4YRSpeMG1k345A	106
1207	ChIJ0SsI14WWb4YRDR03As-Nv1s	75
1208	ChIJ0SsI14WWb4YRDR03As-Nv1s	109
1209	ChIJ0SsI14WWb4YRDR03As-Nv1s	120
1210	ChIJ0SsI14WWb4YRDR03As-Nv1s	106
1211	ChIJYwggssiWb4YRRIzK_XqyCgw	75
1212	ChIJYwggssiWb4YRRIzK_XqyCgw	109
1213	ChIJYwggssiWb4YRRIzK_XqyCgw	120
1214	ChIJYwggssiWb4YRRIzK_XqyCgw	106
1215	ChIJs2HUysuVb4YRw65GBZ2ATB4	75
1216	ChIJs2HUysuVb4YRw65GBZ2ATB4	109
1217	ChIJs2HUysuVb4YRw65GBZ2ATB4	120
1218	ChIJs2HUysuVb4YRw65GBZ2ATB4	106
1219	ChIJswWiJSyUb4YRub5R2KNE1ew	56
1220	ChIJswWiJSyUb4YRub5R2KNE1ew	75
1221	ChIJswWiJSyUb4YRub5R2KNE1ew	109
1222	ChIJswWiJSyUb4YRub5R2KNE1ew	120
1223	ChIJswWiJSyUb4YRub5R2KNE1ew	106
1224	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	75
1225	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	109
1226	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	120
1227	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	106
1228	ChIJI6xOuzGUb4YR5OPFS4wcPNs	9
1229	ChIJI6xOuzGUb4YR5OPFS4wcPNs	75
1230	ChIJI6xOuzGUb4YR5OPFS4wcPNs	109
1231	ChIJI6xOuzGUb4YR5OPFS4wcPNs	120
1232	ChIJI6xOuzGUb4YR5OPFS4wcPNs	106
1233	ChIJXdR86YaWb4YRvtbeBjJxMrs	75
1234	ChIJXdR86YaWb4YRvtbeBjJxMrs	109
1235	ChIJXdR86YaWb4YRvtbeBjJxMrs	120
1236	ChIJXdR86YaWb4YRvtbeBjJxMrs	106
1237	ChIJS_VW-oaWb4YRQB0t-wz0o5U	75
1238	ChIJS_VW-oaWb4YRQB0t-wz0o5U	109
1239	ChIJS_VW-oaWb4YRQB0t-wz0o5U	120
1240	ChIJS_VW-oaWb4YRQB0t-wz0o5U	106
1241	ChIJeZTy_ZeWb4YREBgOViOQXzs	75
1242	ChIJeZTy_ZeWb4YREBgOViOQXzs	109
1243	ChIJeZTy_ZeWb4YREBgOViOQXzs	120
1244	ChIJeZTy_ZeWb4YREBgOViOQXzs	106
1245	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	57
1246	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	75
1247	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	109
1248	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	120
1249	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	106
1250	ChIJD04fn4eWb4YRT0Oxo89QzfU	75
1251	ChIJD04fn4eWb4YRT0Oxo89QzfU	109
1252	ChIJD04fn4eWb4YRT0Oxo89QzfU	120
1253	ChIJD04fn4eWb4YRT0Oxo89QzfU	106
1254	ChIJq2xesH2Wb4YRv8pMHr4St30	57
1255	ChIJq2xesH2Wb4YRv8pMHr4St30	75
1256	ChIJq2xesH2Wb4YRv8pMHr4St30	109
1257	ChIJq2xesH2Wb4YRv8pMHr4St30	120
1258	ChIJq2xesH2Wb4YRv8pMHr4St30	106
1259	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	57
1260	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	75
1261	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	109
1262	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	120
1263	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	106
1264	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	7
1265	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	15
1266	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	75
1267	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	109
1268	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	120
1269	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	85
1270	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	106
1271	ChIJndV26IWWb4YRGmIaF0RlrPQ	75
1272	ChIJndV26IWWb4YRGmIaF0RlrPQ	109
1273	ChIJndV26IWWb4YRGmIaF0RlrPQ	120
1274	ChIJndV26IWWb4YRGmIaF0RlrPQ	106
1275	ChIJuXRGUjSUb4YRvWXWF2L77s4	7
1276	ChIJuXRGUjSUb4YRvWXWF2L77s4	57
1277	ChIJuXRGUjSUb4YRvWXWF2L77s4	15
1278	ChIJuXRGUjSUb4YRvWXWF2L77s4	75
1279	ChIJuXRGUjSUb4YRvWXWF2L77s4	109
1280	ChIJuXRGUjSUb4YRvWXWF2L77s4	120
1281	ChIJuXRGUjSUb4YRvWXWF2L77s4	85
1282	ChIJuXRGUjSUb4YRvWXWF2L77s4	106
1283	ChIJsehxxk-Ub4YRGgtpi43GRH4	75
1284	ChIJsehxxk-Ub4YRGgtpi43GRH4	109
1285	ChIJsehxxk-Ub4YRGgtpi43GRH4	120
1286	ChIJsehxxk-Ub4YRGgtpi43GRH4	106
1287	ChIJdyKMnkS-b4YRC0eiAic03vE	26
1288	ChIJdyKMnkS-b4YRC0eiAic03vE	39
1289	ChIJdyKMnkS-b4YRC0eiAic03vE	57
1290	ChIJdyKMnkS-b4YRC0eiAic03vE	15
1291	ChIJdyKMnkS-b4YRC0eiAic03vE	75
1292	ChIJdyKMnkS-b4YRC0eiAic03vE	109
1293	ChIJdyKMnkS-b4YRC0eiAic03vE	120
1294	ChIJdyKMnkS-b4YRC0eiAic03vE	85
1295	ChIJdyKMnkS-b4YRC0eiAic03vE	106
1296	ChIJAXUCogCVb4YRJQ1kWlCrnuU	15
1297	ChIJAXUCogCVb4YRJQ1kWlCrnuU	75
1298	ChIJAXUCogCVb4YRJQ1kWlCrnuU	109
1299	ChIJAXUCogCVb4YRJQ1kWlCrnuU	120
1300	ChIJAXUCogCVb4YRJQ1kWlCrnuU	85
1301	ChIJAXUCogCVb4YRJQ1kWlCrnuU	106
1302	ChIJ4zabyTeUb4YREXF4OXzPe9Q	75
1303	ChIJ4zabyTeUb4YREXF4OXzPe9Q	109
1304	ChIJ4zabyTeUb4YREXF4OXzPe9Q	120
1305	ChIJ4zabyTeUb4YREXF4OXzPe9Q	106
1306	ChIJgx6U65iWb4YRqgVIsonZlmk	7
1307	ChIJgx6U65iWb4YRqgVIsonZlmk	15
1308	ChIJgx6U65iWb4YRqgVIsonZlmk	75
1309	ChIJgx6U65iWb4YRqgVIsonZlmk	109
1310	ChIJgx6U65iWb4YRqgVIsonZlmk	120
1311	ChIJgx6U65iWb4YRqgVIsonZlmk	85
1312	ChIJgx6U65iWb4YRqgVIsonZlmk	106
1313	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	9
1314	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	75
1315	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	109
1316	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	120
1317	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	106
1318	ChIJH26h0JmWb4YRtQoIK-GlHtI	75
1319	ChIJH26h0JmWb4YRtQoIK-GlHtI	109
1320	ChIJH26h0JmWb4YRtQoIK-GlHtI	120
1321	ChIJH26h0JmWb4YRtQoIK-GlHtI	106
1322	ChIJ7c8B88uQb4YREMxnqvLu40A	15
1323	ChIJ7c8B88uQb4YREMxnqvLu40A	75
1324	ChIJ7c8B88uQb4YREMxnqvLu40A	109
1325	ChIJ7c8B88uQb4YREMxnqvLu40A	120
1326	ChIJ7c8B88uQb4YREMxnqvLu40A	85
1327	ChIJ7c8B88uQb4YREMxnqvLu40A	106
1328	ChIJ0xiL5seVb4YRtaBIbhOVyZI	57
1329	ChIJ0xiL5seVb4YRtaBIbhOVyZI	75
1330	ChIJ0xiL5seVb4YRtaBIbhOVyZI	109
1331	ChIJ0xiL5seVb4YRtaBIbhOVyZI	120
1332	ChIJ0xiL5seVb4YRtaBIbhOVyZI	106
1333	ChIJCbDc9ceWb4YRkEzh6pdyeXo	75
1334	ChIJCbDc9ceWb4YRkEzh6pdyeXo	109
1335	ChIJCbDc9ceWb4YRkEzh6pdyeXo	120
1336	ChIJCbDc9ceWb4YRkEzh6pdyeXo	106
1337	ChIJhTNSdMeVb4YRFu3FscDysUQ	75
1338	ChIJhTNSdMeVb4YRFu3FscDysUQ	109
1339	ChIJhTNSdMeVb4YRFu3FscDysUQ	120
1340	ChIJhTNSdMeVb4YRFu3FscDysUQ	106
1341	ChIJl6lJsiaUb4YRN5hlh_bgxFA	75
1342	ChIJl6lJsiaUb4YRN5hlh_bgxFA	109
1343	ChIJl6lJsiaUb4YRN5hlh_bgxFA	120
1344	ChIJl6lJsiaUb4YRN5hlh_bgxFA	106
1345	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	75
1346	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	109
1347	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	120
1348	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	106
1349	ChIJ_194WhqUb4YRmrvR_W6bi6E	75
1350	ChIJ_194WhqUb4YRmrvR_W6bi6E	109
1351	ChIJ_194WhqUb4YRmrvR_W6bi6E	120
1352	ChIJ_194WhqUb4YRmrvR_W6bi6E	106
1353	ChIJLea86cuQb4YRGIs4AHuhK0E	75
1354	ChIJLea86cuQb4YRGIs4AHuhK0E	109
1355	ChIJLea86cuQb4YRGIs4AHuhK0E	120
1356	ChIJLea86cuQb4YRGIs4AHuhK0E	106
1357	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	57
1358	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	75
1359	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	109
1360	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	112
1361	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	120
1362	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	85
1363	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	106
1364	ChIJyboIxgCXb4YRu-SR5Q7NbTI	75
1365	ChIJyboIxgCXb4YRu-SR5Q7NbTI	109
1366	ChIJyboIxgCXb4YRu-SR5Q7NbTI	120
1367	ChIJyboIxgCXb4YRu-SR5Q7NbTI	106
1368	ChIJvSBS6YaWb4YRiJwA5fRfPFk	57
1369	ChIJvSBS6YaWb4YRiJwA5fRfPFk	75
1370	ChIJvSBS6YaWb4YRiJwA5fRfPFk	109
1371	ChIJvSBS6YaWb4YRiJwA5fRfPFk	120
1372	ChIJvSBS6YaWb4YRiJwA5fRfPFk	85
1373	ChIJvSBS6YaWb4YRiJwA5fRfPFk	106
1374	ChIJmReIURqUb4YRQetkuhNlmF8	26
1375	ChIJmReIURqUb4YRQetkuhNlmF8	39
1376	ChIJmReIURqUb4YRQetkuhNlmF8	57
1377	ChIJmReIURqUb4YRQetkuhNlmF8	15
1378	ChIJmReIURqUb4YRQetkuhNlmF8	75
1379	ChIJmReIURqUb4YRQetkuhNlmF8	109
1380	ChIJmReIURqUb4YRQetkuhNlmF8	120
1381	ChIJmReIURqUb4YRQetkuhNlmF8	85
1382	ChIJmReIURqUb4YRQetkuhNlmF8	106
1383	ChIJ20n_R5qWb4YRIEu0LhOAPAc	15
1384	ChIJ20n_R5qWb4YRIEu0LhOAPAc	75
1385	ChIJ20n_R5qWb4YRIEu0LhOAPAc	109
1386	ChIJ20n_R5qWb4YRIEu0LhOAPAc	120
1387	ChIJ20n_R5qWb4YRIEu0LhOAPAc	85
1388	ChIJ20n_R5qWb4YRIEu0LhOAPAc	106
1389	ChIJv2c5UWozCIcRHiF0aMkUXzs	57
1390	ChIJv2c5UWozCIcRHiF0aMkUXzs	75
1391	ChIJv2c5UWozCIcRHiF0aMkUXzs	109
1392	ChIJv2c5UWozCIcRHiF0aMkUXzs	120
1393	ChIJv2c5UWozCIcRHiF0aMkUXzs	106
1394	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	75
1395	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	109
1396	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	120
1397	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	106
1398	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	75
1399	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	109
1400	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	120
1401	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	106
1402	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	75
1403	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	109
1404	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	120
1405	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	106
1406	ChIJKcL0gcmVb4YRDJ6xFV8zebU	75
1407	ChIJKcL0gcmVb4YRDJ6xFV8zebU	109
1408	ChIJKcL0gcmVb4YRDJ6xFV8zebU	120
1409	ChIJKcL0gcmVb4YRDJ6xFV8zebU	106
1410	ChIJl6lJsiaUb4YRA_mP2FxwZqE	75
1411	ChIJl6lJsiaUb4YRA_mP2FxwZqE	109
1412	ChIJl6lJsiaUb4YRA_mP2FxwZqE	120
1413	ChIJl6lJsiaUb4YRA_mP2FxwZqE	106
1414	ChIJNUdVcIaWb4YR3jbYDzozGxI	15
1415	ChIJNUdVcIaWb4YR3jbYDzozGxI	75
1416	ChIJNUdVcIaWb4YR3jbYDzozGxI	109
1417	ChIJNUdVcIaWb4YR3jbYDzozGxI	120
1418	ChIJNUdVcIaWb4YR3jbYDzozGxI	85
1419	ChIJNUdVcIaWb4YR3jbYDzozGxI	106
1420	ChIJi0xkOSGUb4YRe3vqR0xeDDY	75
1421	ChIJi0xkOSGUb4YRe3vqR0xeDDY	109
1422	ChIJi0xkOSGUb4YRe3vqR0xeDDY	120
1423	ChIJi0xkOSGUb4YRe3vqR0xeDDY	106
1424	ChIJkd-v_TSUb4YRqqfIrrbcMic	56
1425	ChIJkd-v_TSUb4YRqqfIrrbcMic	75
1426	ChIJkd-v_TSUb4YRqqfIrrbcMic	109
1427	ChIJkd-v_TSUb4YRqqfIrrbcMic	120
1428	ChIJkd-v_TSUb4YRqqfIrrbcMic	106
1429	ChIJmwgQwuGTb4YRuLFJCVlhOFk	75
1430	ChIJmwgQwuGTb4YRuLFJCVlhOFk	109
1431	ChIJmwgQwuGTb4YRuLFJCVlhOFk	120
1432	ChIJmwgQwuGTb4YRuLFJCVlhOFk	106
1433	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	7
1434	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	15
1435	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	75
1436	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	109
1437	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	120
1438	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	85
1439	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	106
1440	ChIJPSnKtDqUb4YR3KpckulBrt4	75
1441	ChIJPSnKtDqUb4YR3KpckulBrt4	109
1442	ChIJPSnKtDqUb4YR3KpckulBrt4	120
1443	ChIJPSnKtDqUb4YR3KpckulBrt4	106
1444	ChIJtVWPNhGUb4YRG6rudSb_0H8	56
1445	ChIJtVWPNhGUb4YRG6rudSb_0H8	57
1446	ChIJtVWPNhGUb4YRG6rudSb_0H8	75
1447	ChIJtVWPNhGUb4YRG6rudSb_0H8	109
1448	ChIJtVWPNhGUb4YRG6rudSb_0H8	120
1449	ChIJtVWPNhGUb4YRG6rudSb_0H8	106
1450	ChIJbQoKVjSUb4YRdIFnYzYTHQA	57
1451	ChIJbQoKVjSUb4YRdIFnYzYTHQA	75
1452	ChIJbQoKVjSUb4YRdIFnYzYTHQA	109
1453	ChIJbQoKVjSUb4YRdIFnYzYTHQA	120
1454	ChIJbQoKVjSUb4YRdIFnYzYTHQA	106
1455	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	9
1456	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	75
1457	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	109
1458	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	120
1459	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	106
1460	ChIJfUOjp9i1RIYRRODubsPMQKs	75
1461	ChIJfUOjp9i1RIYRRODubsPMQKs	109
1462	ChIJfUOjp9i1RIYRRODubsPMQKs	120
1463	ChIJfUOjp9i1RIYRRODubsPMQKs	106
1464	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	57
1465	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	75
1466	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	109
1467	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	120
1468	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	106
1469	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	57
1470	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	75
1471	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	109
1472	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	120
1473	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	106
1474	ChIJi4dkYX62RIYRmPx-8zo1uBU	75
1475	ChIJi4dkYX62RIYRmPx-8zo1uBU	109
1476	ChIJi4dkYX62RIYRmPx-8zo1uBU	120
1477	ChIJi4dkYX62RIYRmPx-8zo1uBU	106
1478	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	57
1479	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	75
1480	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	109
1481	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	120
1482	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	106
1483	ChIJN5T3EtW1RIYRjs_1F_HgjO0	75
1484	ChIJN5T3EtW1RIYRjs_1F_HgjO0	55
1485	ChIJN5T3EtW1RIYRjs_1F_HgjO0	9
1486	ChIJN5T3EtW1RIYRjs_1F_HgjO0	109
1487	ChIJN5T3EtW1RIYRjs_1F_HgjO0	120
1488	ChIJN5T3EtW1RIYRjs_1F_HgjO0	106
1489	ChIJfUOjp9i1RIYRTxFXyNhFLyA	75
1490	ChIJfUOjp9i1RIYRTxFXyNhFLyA	109
1491	ChIJfUOjp9i1RIYRTxFXyNhFLyA	120
1492	ChIJfUOjp9i1RIYRTxFXyNhFLyA	106
1493	ChIJcyktFKm1RIYRhoAuiJG50Zk	9
1494	ChIJcyktFKm1RIYRhoAuiJG50Zk	75
1495	ChIJcyktFKm1RIYRhoAuiJG50Zk	109
1496	ChIJcyktFKm1RIYRhoAuiJG50Zk	120
1497	ChIJcyktFKm1RIYRhoAuiJG50Zk	106
1498	ChIJz9bESdK1RIYR48vQlkchtqY	9
1499	ChIJz9bESdK1RIYR48vQlkchtqY	75
1500	ChIJz9bESdK1RIYR48vQlkchtqY	109
1501	ChIJz9bESdK1RIYR48vQlkchtqY	120
1502	ChIJz9bESdK1RIYR48vQlkchtqY	106
1503	ChIJ85wOns61RIYRZvO4l2_VRAU	56
1504	ChIJ85wOns61RIYRZvO4l2_VRAU	57
1505	ChIJ85wOns61RIYRZvO4l2_VRAU	75
1506	ChIJ85wOns61RIYRZvO4l2_VRAU	109
1507	ChIJ85wOns61RIYRZvO4l2_VRAU	120
1508	ChIJ85wOns61RIYRZvO4l2_VRAU	106
1509	ChIJNZ3dGXa2RIYRUlGO68eWJWA	56
1510	ChIJNZ3dGXa2RIYRUlGO68eWJWA	57
1511	ChIJNZ3dGXa2RIYRUlGO68eWJWA	75
1512	ChIJNZ3dGXa2RIYRUlGO68eWJWA	109
1513	ChIJNZ3dGXa2RIYRUlGO68eWJWA	120
1514	ChIJNZ3dGXa2RIYRUlGO68eWJWA	106
1515	ChIJQ1asA9a1RIYRwTo5i529--U	15
1516	ChIJQ1asA9a1RIYRwTo5i529--U	75
1517	ChIJQ1asA9a1RIYRwTo5i529--U	109
1518	ChIJQ1asA9a1RIYRwTo5i529--U	120
1519	ChIJQ1asA9a1RIYRwTo5i529--U	106
1520	ChIJW_40QHa2RIYRAGV1pOsbRGc	9
1521	ChIJW_40QHa2RIYRAGV1pOsbRGc	75
1522	ChIJW_40QHa2RIYRAGV1pOsbRGc	109
1523	ChIJW_40QHa2RIYRAGV1pOsbRGc	120
1524	ChIJW_40QHa2RIYRAGV1pOsbRGc	106
1525	ChIJx7P8DHa2RIYR5UAu_my5E4g	15
1526	ChIJx7P8DHa2RIYR5UAu_my5E4g	75
1527	ChIJx7P8DHa2RIYR5UAu_my5E4g	109
1528	ChIJx7P8DHa2RIYR5UAu_my5E4g	120
1529	ChIJx7P8DHa2RIYR5UAu_my5E4g	85
1530	ChIJx7P8DHa2RIYR5UAu_my5E4g	106
1531	ChIJz39IldS1RIYRKb1xMktUKX4	75
1532	ChIJz39IldS1RIYRKb1xMktUKX4	109
1533	ChIJz39IldS1RIYRKb1xMktUKX4	120
1534	ChIJz39IldS1RIYRKb1xMktUKX4	106
1535	ChIJBxYt6nW2RIYRcS6WMMGoXDs	75
1536	ChIJBxYt6nW2RIYRcS6WMMGoXDs	109
1537	ChIJBxYt6nW2RIYRcS6WMMGoXDs	120
1538	ChIJBxYt6nW2RIYRcS6WMMGoXDs	106
1539	ChIJF042qxK2RIYRUfIPrXib42s	75
1540	ChIJF042qxK2RIYRUfIPrXib42s	109
1541	ChIJF042qxK2RIYRUfIPrXib42s	120
1542	ChIJF042qxK2RIYRUfIPrXib42s	106
1543	ChIJ53aopN-1RIYRNxZKMt-TZEc	56
1544	ChIJ53aopN-1RIYRNxZKMt-TZEc	57
1545	ChIJ53aopN-1RIYRNxZKMt-TZEc	75
1546	ChIJ53aopN-1RIYRNxZKMt-TZEc	109
1547	ChIJ53aopN-1RIYRNxZKMt-TZEc	120
1548	ChIJ53aopN-1RIYRNxZKMt-TZEc	106
1549	ChIJgcqMjEa2RIYRjSGM55ShqDw	39
1550	ChIJgcqMjEa2RIYRjSGM55ShqDw	6
1551	ChIJgcqMjEa2RIYRjSGM55ShqDw	26
1552	ChIJgcqMjEa2RIYRjSGM55ShqDw	107
1553	ChIJgcqMjEa2RIYRjSGM55ShqDw	75
1554	ChIJgcqMjEa2RIYRjSGM55ShqDw	109
1555	ChIJgcqMjEa2RIYRjSGM55ShqDw	120
1556	ChIJgcqMjEa2RIYRjSGM55ShqDw	85
1557	ChIJgcqMjEa2RIYRjSGM55ShqDw	106
1558	ChIJYW903ka2RIYRBhyd87t14oo	9
1559	ChIJYW903ka2RIYRBhyd87t14oo	75
1560	ChIJYW903ka2RIYRBhyd87t14oo	109
1561	ChIJYW903ka2RIYRBhyd87t14oo	120
1562	ChIJYW903ka2RIYRBhyd87t14oo	106
1563	ChIJk1zZNdK1RIYRvzyfrHZomHU	75
1564	ChIJk1zZNdK1RIYRvzyfrHZomHU	109
1565	ChIJk1zZNdK1RIYRvzyfrHZomHU	120
1566	ChIJk1zZNdK1RIYRvzyfrHZomHU	106
1567	ChIJZZTSdy20RIYRLD4e_xca3aU	75
1568	ChIJZZTSdy20RIYRLD4e_xca3aU	109
1569	ChIJZZTSdy20RIYRLD4e_xca3aU	120
1570	ChIJZZTSdy20RIYRLD4e_xca3aU	106
1571	ChIJfzQBjy20RIYRMMohcj4xWvw	9
1572	ChIJfzQBjy20RIYRMMohcj4xWvw	75
1573	ChIJfzQBjy20RIYRMMohcj4xWvw	109
1574	ChIJfzQBjy20RIYRMMohcj4xWvw	120
1575	ChIJfzQBjy20RIYRMMohcj4xWvw	106
1576	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	26
1577	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	6
1578	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	20
1579	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	39
1580	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	57
1581	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	107
1582	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	15
1583	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	75
1584	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	109
1585	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	120
1586	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	85
1587	ChIJhTxvfTK0RIYRQ3eS3qKvf6Q	106
1588	ChIJIWdz8XW2RIYRcy_EGylZZT0	75
1589	ChIJIWdz8XW2RIYRcy_EGylZZT0	109
1590	ChIJIWdz8XW2RIYRcy_EGylZZT0	120
1591	ChIJIWdz8XW2RIYRcy_EGylZZT0	106
1592	ChIJlZpaThG2RIYRG1E_McYYop4	26
1593	ChIJlZpaThG2RIYRG1E_McYYop4	6
1594	ChIJlZpaThG2RIYRG1E_McYYop4	20
1595	ChIJlZpaThG2RIYRG1E_McYYop4	39
1596	ChIJlZpaThG2RIYRG1E_McYYop4	57
1597	ChIJlZpaThG2RIYRG1E_McYYop4	107
1598	ChIJlZpaThG2RIYRG1E_McYYop4	15
1599	ChIJlZpaThG2RIYRG1E_McYYop4	75
1600	ChIJlZpaThG2RIYRG1E_McYYop4	109
1601	ChIJlZpaThG2RIYRG1E_McYYop4	120
1602	ChIJlZpaThG2RIYRG1E_McYYop4	85
1603	ChIJlZpaThG2RIYRG1E_McYYop4	106
1604	ChIJ92cBp861RIYR7cL4LsK_J6w	56
1605	ChIJ92cBp861RIYR7cL4LsK_J6w	57
1606	ChIJ92cBp861RIYR7cL4LsK_J6w	75
1607	ChIJ92cBp861RIYR7cL4LsK_J6w	109
1608	ChIJ92cBp861RIYR7cL4LsK_J6w	120
1609	ChIJ92cBp861RIYR7cL4LsK_J6w	106
1610	ChIJ5TnXj7O1RIYR1QQH8J_paW8	75
1611	ChIJ5TnXj7O1RIYR1QQH8J_paW8	109
1612	ChIJ5TnXj7O1RIYR1QQH8J_paW8	120
1613	ChIJ5TnXj7O1RIYR1QQH8J_paW8	106
1614	ChIJJ8EjPjO0RIYRokdgVyijNV0	57
1615	ChIJJ8EjPjO0RIYRokdgVyijNV0	75
1616	ChIJJ8EjPjO0RIYRokdgVyijNV0	109
1617	ChIJJ8EjPjO0RIYRokdgVyijNV0	120
1618	ChIJJ8EjPjO0RIYRokdgVyijNV0	106
1619	ChIJ59iiFTO0RIYRxMrtPgFZL68	75
1620	ChIJ59iiFTO0RIYRxMrtPgFZL68	109
1621	ChIJ59iiFTO0RIYRxMrtPgFZL68	120
1622	ChIJ59iiFTO0RIYRxMrtPgFZL68	106
1623	ChIJ0X4ahGeoXIYRzMXVhVW9wxc	75
1624	ChIJ0X4ahGeoXIYRzMXVhVW9wxc	109
1625	ChIJ0X4ahGeoXIYRzMXVhVW9wxc	120
1626	ChIJ0X4ahGeoXIYRzMXVhVW9wxc	106
1627	ChIJcaXcyta1RIYRxgtMkAGWLAU	75
1628	ChIJcaXcyta1RIYRxgtMkAGWLAU	109
1629	ChIJcaXcyta1RIYRxgtMkAGWLAU	120
1630	ChIJcaXcyta1RIYRxgtMkAGWLAU	106
1631	ChIJs8IeQAm3RIYR9_h1i9v-6qo	75
1632	ChIJs8IeQAm3RIYR9_h1i9v-6qo	109
1633	ChIJs8IeQAm3RIYR9_h1i9v-6qo	120
1634	ChIJs8IeQAm3RIYR9_h1i9v-6qo	106
1635	ChIJa1jfk6i3RIYRzIDEwT7uoZ8	75
1636	ChIJa1jfk6i3RIYRzIDEwT7uoZ8	109
1637	ChIJa1jfk6i3RIYRzIDEwT7uoZ8	120
1638	ChIJa1jfk6i3RIYRzIDEwT7uoZ8	106
1639	ChIJdQh2sKe3RIYRPI-BtZArptk	75
1640	ChIJdQh2sKe3RIYRPI-BtZArptk	109
1641	ChIJdQh2sKe3RIYRPI-BtZArptk	120
1642	ChIJdQh2sKe3RIYRPI-BtZArptk	106
1643	ChIJ995IQja3RIYR38L_N8JnSnU	75
1644	ChIJ995IQja3RIYR38L_N8JnSnU	109
1645	ChIJ995IQja3RIYR38L_N8JnSnU	120
1646	ChIJ995IQja3RIYR38L_N8JnSnU	106
1647	ChIJ8YWdDTK3RIYRpVYfVMn0eNA	75
1648	ChIJ8YWdDTK3RIYRpVYfVMn0eNA	109
1649	ChIJ8YWdDTK3RIYRpVYfVMn0eNA	120
1650	ChIJ8YWdDTK3RIYRpVYfVMn0eNA	106
1651	ChIJe2sEqCa3RIYRAxogI3wJm7c	75
1652	ChIJe2sEqCa3RIYRAxogI3wJm7c	109
1653	ChIJe2sEqCa3RIYRAxogI3wJm7c	120
1654	ChIJe2sEqCa3RIYRAxogI3wJm7c	106
1655	ChIJ7y-mzTW3RIYR0LsgSmz3WP4	57
1656	ChIJ7y-mzTW3RIYR0LsgSmz3WP4	75
1657	ChIJ7y-mzTW3RIYR0LsgSmz3WP4	109
1658	ChIJ7y-mzTW3RIYR0LsgSmz3WP4	120
1659	ChIJ7y-mzTW3RIYR0LsgSmz3WP4	106
1660	ChIJ3ZkkpT-3RIYRQjO_3dhOLxw	9
1661	ChIJ3ZkkpT-3RIYRQjO_3dhOLxw	75
1662	ChIJ3ZkkpT-3RIYRQjO_3dhOLxw	109
1663	ChIJ3ZkkpT-3RIYRQjO_3dhOLxw	120
1664	ChIJ3ZkkpT-3RIYRQjO_3dhOLxw	106
1665	ChIJe5D78l-3RIYRPmrA68S_Mbg	75
1666	ChIJe5D78l-3RIYRPmrA68S_Mbg	109
1667	ChIJe5D78l-3RIYRPmrA68S_Mbg	120
1668	ChIJe5D78l-3RIYRPmrA68S_Mbg	106
1669	ChIJbcg0C7m3RIYRB9S8O-wGfmo	75
1670	ChIJbcg0C7m3RIYRB9S8O-wGfmo	109
1671	ChIJbcg0C7m3RIYRB9S8O-wGfmo	120
1672	ChIJbcg0C7m3RIYRB9S8O-wGfmo	106
1673	ChIJq2JS9Km3RIYR5eArzK9n4eE	7
1674	ChIJq2JS9Km3RIYR5eArzK9n4eE	75
1675	ChIJq2JS9Km3RIYR5eArzK9n4eE	109
1676	ChIJq2JS9Km3RIYR5eArzK9n4eE	120
1677	ChIJq2JS9Km3RIYR5eArzK9n4eE	25
1678	ChIJq2JS9Km3RIYR5eArzK9n4eE	85
1679	ChIJq2JS9Km3RIYR5eArzK9n4eE	106
1680	ChIJVftsnqq3RIYRXRQ_DLHwRcc	75
1681	ChIJVftsnqq3RIYRXRQ_DLHwRcc	109
1682	ChIJVftsnqq3RIYRXRQ_DLHwRcc	120
1683	ChIJVftsnqq3RIYRXRQ_DLHwRcc	106
1684	ChIJv044BRK3RIYRqE8F15USL4k	7
1685	ChIJv044BRK3RIYRqE8F15USL4k	15
1686	ChIJv044BRK3RIYRqE8F15USL4k	75
1687	ChIJv044BRK3RIYRqE8F15USL4k	109
1688	ChIJv044BRK3RIYRqE8F15USL4k	120
1689	ChIJv044BRK3RIYRqE8F15USL4k	85
1690	ChIJv044BRK3RIYRqE8F15USL4k	106
1691	ChIJz0wACLy3RIYRkqTKgQ-gk9A	75
1692	ChIJz0wACLy3RIYRkqTKgQ-gk9A	109
1693	ChIJz0wACLy3RIYRkqTKgQ-gk9A	120
1694	ChIJz0wACLy3RIYRkqTKgQ-gk9A	106
1695	ChIJLXdq_9W1RIYRj4uTZvP0GUg	75
1696	ChIJLXdq_9W1RIYRj4uTZvP0GUg	109
1697	ChIJLXdq_9W1RIYRj4uTZvP0GUg	120
1698	ChIJLXdq_9W1RIYRj4uTZvP0GUg	106
1699	ChIJhbMRIWq3RIYRDemO7Mfi1PQ	75
1700	ChIJhbMRIWq3RIYRDemO7Mfi1PQ	109
1701	ChIJhbMRIWq3RIYRDemO7Mfi1PQ	120
1702	ChIJhbMRIWq3RIYRDemO7Mfi1PQ	106
1703	ChIJnWu7dDW3RIYRBM19kMcVIdo	75
1704	ChIJnWu7dDW3RIYRBM19kMcVIdo	109
1705	ChIJnWu7dDW3RIYRBM19kMcVIdo	120
1706	ChIJnWu7dDW3RIYRBM19kMcVIdo	106
1707	ChIJdZdfOOi3RIYRkUXjCtJLWZg	75
1708	ChIJdZdfOOi3RIYRkUXjCtJLWZg	109
1709	ChIJdZdfOOi3RIYRkUXjCtJLWZg	120
1710	ChIJdZdfOOi3RIYRkUXjCtJLWZg	106
1711	ChIJZaTImj-3RIYRFOcWtF7-WBY	75
1712	ChIJZaTImj-3RIYRFOcWtF7-WBY	109
1713	ChIJZaTImj-3RIYRFOcWtF7-WBY	120
1714	ChIJZaTImj-3RIYRFOcWtF7-WBY	106
1715	ChIJhZYFpYG2RIYRiotaMFcEQME	75
1716	ChIJhZYFpYG2RIYRiotaMFcEQME	109
1717	ChIJhZYFpYG2RIYRiotaMFcEQME	120
1718	ChIJhZYFpYG2RIYRiotaMFcEQME	106
1719	ChIJ07nXQr63RIYR1bevyUOb480	75
1720	ChIJ07nXQr63RIYR1bevyUOb480	109
1721	ChIJ07nXQr63RIYR1bevyUOb480	120
1722	ChIJ07nXQr63RIYR1bevyUOb480	106
1723	ChIJGyO3eIi1RIYRa1t8DeyjCT8	75
1724	ChIJGyO3eIi1RIYRa1t8DeyjCT8	109
1725	ChIJGyO3eIi1RIYRa1t8DeyjCT8	120
1726	ChIJGyO3eIi1RIYRa1t8DeyjCT8	106
1727	ChIJ2WpPayq0RIYRiA6zmK8ku70	75
1728	ChIJ2WpPayq0RIYRiA6zmK8ku70	109
1729	ChIJ2WpPayq0RIYRiA6zmK8ku70	120
1730	ChIJ2WpPayq0RIYRiA6zmK8ku70	106
1731	ChIJQXDRRHC1RIYRCOp1g21OecY	75
1732	ChIJQXDRRHC1RIYRCOp1g21OecY	109
1733	ChIJQXDRRHC1RIYRCOp1g21OecY	120
1734	ChIJQXDRRHC1RIYRCOp1g21OecY	106
1735	ChIJu3CG6XS3RIYR91yAR7aT_3M	75
1736	ChIJu3CG6XS3RIYR91yAR7aT_3M	109
1737	ChIJu3CG6XS3RIYR91yAR7aT_3M	120
1738	ChIJu3CG6XS3RIYR91yAR7aT_3M	106
1739	ChIJ8YcC2Cy1RIYRPSIJg8fhP-0	75
1740	ChIJ8YcC2Cy1RIYRPSIJg8fhP-0	109
1741	ChIJ8YcC2Cy1RIYRPSIJg8fhP-0	120
1742	ChIJ8YcC2Cy1RIYRPSIJg8fhP-0	106
1743	ChIJb99yydK3RIYRGXt9_kmN7kY	15
1744	ChIJb99yydK3RIYRGXt9_kmN7kY	75
1745	ChIJb99yydK3RIYRGXt9_kmN7kY	109
1746	ChIJb99yydK3RIYRGXt9_kmN7kY	120
1747	ChIJb99yydK3RIYRGXt9_kmN7kY	85
1748	ChIJb99yydK3RIYRGXt9_kmN7kY	106
1749	ChIJkeJaBr8QBYgRVop65TGxzT0	57
1750	ChIJkeJaBr8QBYgRVop65TGxzT0	75
1751	ChIJkeJaBr8QBYgRVop65TGxzT0	109
1752	ChIJkeJaBr8QBYgRVop65TGxzT0	120
1753	ChIJkeJaBr8QBYgRVop65TGxzT0	106
1754	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
1755	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
1756	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
1757	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
1758	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
1759	ChIJrdpiPUoXBYgRmffumT1sEwU	75
1760	ChIJrdpiPUoXBYgRmffumT1sEwU	109
1761	ChIJrdpiPUoXBYgRmffumT1sEwU	120
1762	ChIJrdpiPUoXBYgRmffumT1sEwU	106
1763	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
1764	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
1765	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
1766	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
1767	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
1768	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
1769	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
1770	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
1771	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
1772	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
1773	ChIJaaA1QdsQBYgRkAoWKcpkNjk	13
1774	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
1775	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
1776	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
1777	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
1778	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
1779	ChIJ54nTyrgQBYgRD9qefHdRVns	75
1780	ChIJ54nTyrgQBYgRD9qefHdRVns	109
1781	ChIJ54nTyrgQBYgRD9qefHdRVns	120
1782	ChIJ54nTyrgQBYgRD9qefHdRVns	106
1783	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
1784	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
1785	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
1786	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
1787	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
1788	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
1789	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
1790	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
1791	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
1792	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
1793	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
1794	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
1795	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
1796	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
1797	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
1798	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
1799	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
1800	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
1801	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
1802	ChIJYxoPscYQBYgREnc48fDUaCQ	75
1803	ChIJYxoPscYQBYgREnc48fDUaCQ	109
1804	ChIJYxoPscYQBYgREnc48fDUaCQ	120
1805	ChIJYxoPscYQBYgREnc48fDUaCQ	106
1806	ChIJTccCecMQBYgREPD7rlez65I	75
1807	ChIJTccCecMQBYgREPD7rlez65I	109
1808	ChIJTccCecMQBYgREPD7rlez65I	120
1809	ChIJTccCecMQBYgREPD7rlez65I	106
1810	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
1811	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
1812	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
1813	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
1814	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
1815	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
1816	ChIJA82pmd0VBYgRSiwe3anpPvg	75
1817	ChIJA82pmd0VBYgRSiwe3anpPvg	109
1818	ChIJA82pmd0VBYgRSiwe3anpPvg	120
1819	ChIJA82pmd0VBYgRSiwe3anpPvg	106
1820	ChIJNejdd04XBYgRl9_Mc68IV9M	56
1821	ChIJNejdd04XBYgRl9_Mc68IV9M	57
1822	ChIJNejdd04XBYgRl9_Mc68IV9M	75
1823	ChIJNejdd04XBYgRl9_Mc68IV9M	109
1824	ChIJNejdd04XBYgRl9_Mc68IV9M	120
1825	ChIJNejdd04XBYgRl9_Mc68IV9M	106
1826	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
1827	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
1828	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
1829	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
1830	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
1831	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
1832	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
1833	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
1834	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
1835	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
1836	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
1837	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
1838	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
1839	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
1840	ChIJTURpSbkQBYgRzza-nRWLffQ	56
1841	ChIJTURpSbkQBYgRzza-nRWLffQ	57
1842	ChIJTURpSbkQBYgRzza-nRWLffQ	75
1843	ChIJTURpSbkQBYgRzza-nRWLffQ	109
1844	ChIJTURpSbkQBYgRzza-nRWLffQ	120
1845	ChIJTURpSbkQBYgRzza-nRWLffQ	106
1846	ChIJHaxi9rsQBYgRHe7WLuvhVa8	75
1847	ChIJHaxi9rsQBYgRHe7WLuvhVa8	109
1848	ChIJHaxi9rsQBYgRHe7WLuvhVa8	120
1849	ChIJHaxi9rsQBYgRHe7WLuvhVa8	106
1850	ChIJ6wcpabwQBYgRXFCpCsFnK7M	75
1851	ChIJ6wcpabwQBYgRXFCpCsFnK7M	57
1852	ChIJ6wcpabwQBYgRXFCpCsFnK7M	109
1853	ChIJ6wcpabwQBYgRXFCpCsFnK7M	120
1854	ChIJ6wcpabwQBYgRXFCpCsFnK7M	85
1855	ChIJ6wcpabwQBYgRXFCpCsFnK7M	106
1856	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	7
1857	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	15
1858	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	75
1859	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	109
1860	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	120
1861	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	85
1862	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	106
1863	ChIJR4_GSrkQBYgRlJHCR74rM-s	56
1864	ChIJR4_GSrkQBYgRlJHCR74rM-s	75
1865	ChIJR4_GSrkQBYgRlJHCR74rM-s	109
1866	ChIJR4_GSrkQBYgRlJHCR74rM-s	120
1867	ChIJR4_GSrkQBYgRlJHCR74rM-s	106
1868	ChIJEdXItMAQBYgRPJnU9byrpw8	56
1869	ChIJEdXItMAQBYgRPJnU9byrpw8	57
1870	ChIJEdXItMAQBYgRPJnU9byrpw8	75
1871	ChIJEdXItMAQBYgRPJnU9byrpw8	109
1872	ChIJEdXItMAQBYgRPJnU9byrpw8	120
1873	ChIJEdXItMAQBYgRPJnU9byrpw8	106
1874	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	75
1875	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	109
1876	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	120
1877	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	106
1878	ChIJMcyCKbkQBYgRZk8SOBfb_N0	57
1879	ChIJMcyCKbkQBYgRZk8SOBfb_N0	75
1880	ChIJMcyCKbkQBYgRZk8SOBfb_N0	109
1881	ChIJMcyCKbkQBYgRZk8SOBfb_N0	120
1882	ChIJMcyCKbkQBYgRZk8SOBfb_N0	106
1883	ChIJq-GWWMcQBYgR_0-FCZtqFYU	15
1884	ChIJq-GWWMcQBYgR_0-FCZtqFYU	75
1885	ChIJq-GWWMcQBYgR_0-FCZtqFYU	109
1886	ChIJq-GWWMcQBYgR_0-FCZtqFYU	120
1887	ChIJq-GWWMcQBYgR_0-FCZtqFYU	85
1888	ChIJq-GWWMcQBYgR_0-FCZtqFYU	106
1889	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	57
1890	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	75
1891	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	109
1892	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	120
1893	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	85
1894	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	106
1895	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	75
1896	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	109
1897	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	120
1898	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	106
1899	ChIJEz0Ez-gQBYgRC-n2GAZSdks	9
1900	ChIJEz0Ez-gQBYgRC-n2GAZSdks	75
1901	ChIJEz0Ez-gQBYgRC-n2GAZSdks	109
1902	ChIJEz0Ez-gQBYgRC-n2GAZSdks	120
1903	ChIJEz0Ez-gQBYgRC-n2GAZSdks	106
1904	ChIJfwaYn04XBYgRL-0IbL7HrYM	75
1905	ChIJfwaYn04XBYgRL-0IbL7HrYM	109
1906	ChIJfwaYn04XBYgRL-0IbL7HrYM	120
1907	ChIJfwaYn04XBYgRL-0IbL7HrYM	106
1908	ChIJ_28aTL8QBYgRV6uYmeqM88Y	15
1909	ChIJ_28aTL8QBYgRV6uYmeqM88Y	75
1910	ChIJ_28aTL8QBYgRV6uYmeqM88Y	109
1911	ChIJ_28aTL8QBYgRV6uYmeqM88Y	120
1912	ChIJ_28aTL8QBYgRV6uYmeqM88Y	85
1913	ChIJ_28aTL8QBYgRV6uYmeqM88Y	106
1914	ChIJedoQV9MRBYgRqrVWAkYdGzA	75
1915	ChIJedoQV9MRBYgRqrVWAkYdGzA	109
1916	ChIJedoQV9MRBYgRqrVWAkYdGzA	120
1917	ChIJedoQV9MRBYgRqrVWAkYdGzA	106
1918	ChIJYdnWeSURBYgRcdXRVUHG-JE	75
1919	ChIJYdnWeSURBYgRcdXRVUHG-JE	109
1920	ChIJYdnWeSURBYgRcdXRVUHG-JE	120
1921	ChIJYdnWeSURBYgRcdXRVUHG-JE	106
1922	ChIJMYup0f4RBYgR8pFl5Din6P4	75
1923	ChIJMYup0f4RBYgR8pFl5Din6P4	109
1924	ChIJMYup0f4RBYgR8pFl5Din6P4	120
1925	ChIJMYup0f4RBYgR8pFl5Din6P4	106
1926	ChIJC7G_WVERBYgRJeOlxyG8mgo	15
1927	ChIJC7G_WVERBYgRJeOlxyG8mgo	7
1928	ChIJC7G_WVERBYgRJeOlxyG8mgo	57
1929	ChIJC7G_WVERBYgRJeOlxyG8mgo	75
1930	ChIJC7G_WVERBYgRJeOlxyG8mgo	109
1931	ChIJC7G_WVERBYgRJeOlxyG8mgo	120
1932	ChIJC7G_WVERBYgRJeOlxyG8mgo	85
1933	ChIJC7G_WVERBYgRJeOlxyG8mgo	106
1934	ChIJtW0nBRMRBYgRe02OrUNLP78	75
1935	ChIJtW0nBRMRBYgRe02OrUNLP78	109
1936	ChIJtW0nBRMRBYgRe02OrUNLP78	120
1937	ChIJtW0nBRMRBYgRe02OrUNLP78	106
1938	ChIJUdrjn5MRBYgR403D5r4ZCk8	75
1939	ChIJUdrjn5MRBYgR403D5r4ZCk8	109
1940	ChIJUdrjn5MRBYgR403D5r4ZCk8	120
1941	ChIJUdrjn5MRBYgR403D5r4ZCk8	106
1942	ChIJHa7ysYQRBYgRcc-_lQRS248	75
1943	ChIJHa7ysYQRBYgRcc-_lQRS248	109
1944	ChIJHa7ysYQRBYgRcc-_lQRS248	120
1945	ChIJHa7ysYQRBYgRcc-_lQRS248	106
1946	ChIJj8s7AUoXBYgRaqwOZKNaRrs	140
1947	ChIJj8s7AUoXBYgRaqwOZKNaRrs	75
1948	ChIJj8s7AUoXBYgRaqwOZKNaRrs	109
1949	ChIJj8s7AUoXBYgRaqwOZKNaRrs	120
1950	ChIJj8s7AUoXBYgRaqwOZKNaRrs	85
1951	ChIJj8s7AUoXBYgRaqwOZKNaRrs	106
1952	ChIJye6xncMQBYgRI4YpStY3CwE	56
1953	ChIJye6xncMQBYgRI4YpStY3CwE	57
1954	ChIJye6xncMQBYgRI4YpStY3CwE	75
1955	ChIJye6xncMQBYgRI4YpStY3CwE	109
1956	ChIJye6xncMQBYgRI4YpStY3CwE	120
1957	ChIJye6xncMQBYgRI4YpStY3CwE	106
1958	ChIJUaLy-ScXBYgRuLBwoomy1NM	75
1959	ChIJUaLy-ScXBYgRuLBwoomy1NM	109
1960	ChIJUaLy-ScXBYgRuLBwoomy1NM	120
1961	ChIJUaLy-ScXBYgRuLBwoomy1NM	106
1962	ChIJFbOGt4ERBYgR99sTM0PWuB0	75
1963	ChIJFbOGt4ERBYgR99sTM0PWuB0	109
1964	ChIJFbOGt4ERBYgR99sTM0PWuB0	120
1965	ChIJFbOGt4ERBYgR99sTM0PWuB0	106
1966	ChIJCeJkWp4RBYgRTkY4wsoEhG4	75
1967	ChIJCeJkWp4RBYgRTkY4wsoEhG4	109
1968	ChIJCeJkWp4RBYgRTkY4wsoEhG4	120
1969	ChIJCeJkWp4RBYgRTkY4wsoEhG4	106
1970	ChIJ8yqmR2ERBYgR-jq7kJVOU08	75
1971	ChIJ8yqmR2ERBYgR-jq7kJVOU08	109
1972	ChIJ8yqmR2ERBYgR-jq7kJVOU08	120
1973	ChIJ8yqmR2ERBYgR-jq7kJVOU08	106
1974	ChIJr-42Tg0aBYgRdOvgnTS4IA8	56
1975	ChIJr-42Tg0aBYgRdOvgnTS4IA8	75
1976	ChIJr-42Tg0aBYgRdOvgnTS4IA8	109
1977	ChIJr-42Tg0aBYgRdOvgnTS4IA8	120
1978	ChIJr-42Tg0aBYgRdOvgnTS4IA8	106
1979	ChIJadNS2wMRBYgRuna7m-1TVyI	75
1980	ChIJadNS2wMRBYgRuna7m-1TVyI	109
1981	ChIJadNS2wMRBYgRuna7m-1TVyI	120
1982	ChIJadNS2wMRBYgRuna7m-1TVyI	106
1983	ChIJxajE_00XBYgR737ZZOJBDxo	75
1984	ChIJxajE_00XBYgR737ZZOJBDxo	109
1985	ChIJxajE_00XBYgR737ZZOJBDxo	120
1986	ChIJxajE_00XBYgR737ZZOJBDxo	106
1987	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	75
1988	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	109
1989	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	120
1990	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	106
1991	ChIJ9UGhX58QBYgRJROWYSS1i5E	9
1992	ChIJ9UGhX58QBYgRJROWYSS1i5E	75
1993	ChIJ9UGhX58QBYgRJROWYSS1i5E	109
1994	ChIJ9UGhX58QBYgRJROWYSS1i5E	120
1995	ChIJ9UGhX58QBYgRJROWYSS1i5E	106
1996	ChIJa51p_Q0XBYgRWL9FwsikTd0	75
1997	ChIJa51p_Q0XBYgRWL9FwsikTd0	109
1998	ChIJa51p_Q0XBYgRWL9FwsikTd0	120
1999	ChIJa51p_Q0XBYgRWL9FwsikTd0	106
2000	ChIJGa2eFzcXBYgRRTFlRlgCxpA	75
2001	ChIJGa2eFzcXBYgRRTFlRlgCxpA	109
2002	ChIJGa2eFzcXBYgRRTFlRlgCxpA	120
2003	ChIJGa2eFzcXBYgRRTFlRlgCxpA	106
2004	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	75
2005	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	109
2006	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	120
2007	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	106
2008	ChIJc3Ufpt4QBYgRBcWFtKy8g48	15
2009	ChIJc3Ufpt4QBYgRBcWFtKy8g48	75
2010	ChIJc3Ufpt4QBYgRBcWFtKy8g48	109
2011	ChIJc3Ufpt4QBYgRBcWFtKy8g48	120
2012	ChIJc3Ufpt4QBYgRBcWFtKy8g48	85
2013	ChIJc3Ufpt4QBYgRBcWFtKy8g48	106
2014	ChIJ1e7dJooQBYgR8eZbItGcIkw	75
2015	ChIJ1e7dJooQBYgR8eZbItGcIkw	109
2016	ChIJ1e7dJooQBYgR8eZbItGcIkw	120
2017	ChIJ1e7dJooQBYgR8eZbItGcIkw	106
2018	ChIJW9Mxr3wXBYgRd2jbhewjw9k	75
2019	ChIJW9Mxr3wXBYgRd2jbhewjw9k	109
2020	ChIJW9Mxr3wXBYgRd2jbhewjw9k	120
2021	ChIJW9Mxr3wXBYgRd2jbhewjw9k	106
2022	ChIJ57c441MXBYgR0hX7GHWn5vQ	75
2023	ChIJ57c441MXBYgR0hX7GHWn5vQ	109
2024	ChIJ57c441MXBYgR0hX7GHWn5vQ	120
2025	ChIJ57c441MXBYgR0hX7GHWn5vQ	106
2026	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	75
2027	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	109
2028	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	120
2029	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	106
2030	ChIJo7KvSi4bBYgRx5rM13umhOc	75
2031	ChIJo7KvSi4bBYgRx5rM13umhOc	109
2032	ChIJo7KvSi4bBYgRx5rM13umhOc	120
2033	ChIJo7KvSi4bBYgRx5rM13umhOc	106
2034	ChIJb_FeRCyUb4YRMFzpjf7-BO8	57
2035	ChIJb_FeRCyUb4YRMFzpjf7-BO8	75
2036	ChIJb_FeRCyUb4YRMFzpjf7-BO8	109
2037	ChIJb_FeRCyUb4YRMFzpjf7-BO8	120
2038	ChIJb_FeRCyUb4YRMFzpjf7-BO8	106
2039	ChIJk5U9lZiWb4YRMEBvbsyCRek	57
2040	ChIJk5U9lZiWb4YRMEBvbsyCRek	75
2041	ChIJk5U9lZiWb4YRMEBvbsyCRek	109
2042	ChIJk5U9lZiWb4YRMEBvbsyCRek	120
2043	ChIJk5U9lZiWb4YRMEBvbsyCRek	106
2044	ChIJMUTHysmVb4YRhbdUR2VPo0E	57
2045	ChIJMUTHysmVb4YRhbdUR2VPo0E	75
2046	ChIJMUTHysmVb4YRhbdUR2VPo0E	109
2047	ChIJMUTHysmVb4YRhbdUR2VPo0E	120
2048	ChIJMUTHysmVb4YRhbdUR2VPo0E	106
2049	ChIJ9SVT16CWb4YR5CHECbtsHNA	75
2050	ChIJ9SVT16CWb4YR5CHECbtsHNA	109
2051	ChIJ9SVT16CWb4YR5CHECbtsHNA	120
2052	ChIJ9SVT16CWb4YR5CHECbtsHNA	106
2053	ChIJxeZnDqOWb4YRsNKFJm0r4qI	60
2054	ChIJxeZnDqOWb4YRsNKFJm0r4qI	57
2055	ChIJxeZnDqOWb4YRsNKFJm0r4qI	75
2056	ChIJxeZnDqOWb4YRsNKFJm0r4qI	109
2057	ChIJxeZnDqOWb4YRsNKFJm0r4qI	120
2058	ChIJxeZnDqOWb4YRsNKFJm0r4qI	106
2059	ChIJxb7KAZmWb4YRUfZ9IJJngJM	56
2060	ChIJxb7KAZmWb4YRUfZ9IJJngJM	57
2061	ChIJxb7KAZmWb4YRUfZ9IJJngJM	75
2062	ChIJxb7KAZmWb4YRUfZ9IJJngJM	109
2063	ChIJxb7KAZmWb4YRUfZ9IJJngJM	120
2064	ChIJxb7KAZmWb4YRUfZ9IJJngJM	106
2065	ChIJjc8OnyGUb4YRUf3KjZN6q2w	56
2066	ChIJjc8OnyGUb4YRUf3KjZN6q2w	57
2067	ChIJjc8OnyGUb4YRUf3KjZN6q2w	75
2068	ChIJjc8OnyGUb4YRUf3KjZN6q2w	109
2069	ChIJjc8OnyGUb4YRUf3KjZN6q2w	120
2070	ChIJjc8OnyGUb4YRUf3KjZN6q2w	106
2071	ChIJ14IuKzSUb4YRc089X1Sneeo	56
2072	ChIJ14IuKzSUb4YRc089X1Sneeo	57
2073	ChIJ14IuKzSUb4YRc089X1Sneeo	75
2074	ChIJ14IuKzSUb4YRc089X1Sneeo	109
2075	ChIJ14IuKzSUb4YRc089X1Sneeo	120
2076	ChIJ14IuKzSUb4YRc089X1Sneeo	106
2077	ChIJdUcMCriVb4YRGK-vT0BiDDI	56
2078	ChIJdUcMCriVb4YRGK-vT0BiDDI	57
2079	ChIJdUcMCriVb4YRGK-vT0BiDDI	75
2080	ChIJdUcMCriVb4YRGK-vT0BiDDI	109
2081	ChIJdUcMCriVb4YRGK-vT0BiDDI	120
2082	ChIJdUcMCriVb4YRGK-vT0BiDDI	106
2083	ChIJk1IxdDSUb4YRSpeMG1k345A	60
2084	ChIJk1IxdDSUb4YRSpeMG1k345A	57
2085	ChIJk1IxdDSUb4YRSpeMG1k345A	75
2086	ChIJk1IxdDSUb4YRSpeMG1k345A	109
2087	ChIJk1IxdDSUb4YRSpeMG1k345A	120
2088	ChIJk1IxdDSUb4YRSpeMG1k345A	106
2089	ChIJ0SsI14WWb4YRDR03As-Nv1s	75
2090	ChIJ0SsI14WWb4YRDR03As-Nv1s	109
2091	ChIJ0SsI14WWb4YRDR03As-Nv1s	120
2092	ChIJ0SsI14WWb4YRDR03As-Nv1s	106
2093	ChIJYwggssiWb4YRRIzK_XqyCgw	75
2094	ChIJYwggssiWb4YRRIzK_XqyCgw	109
2095	ChIJYwggssiWb4YRRIzK_XqyCgw	120
2096	ChIJYwggssiWb4YRRIzK_XqyCgw	106
2097	ChIJs2HUysuVb4YRw65GBZ2ATB4	75
2098	ChIJs2HUysuVb4YRw65GBZ2ATB4	109
2099	ChIJs2HUysuVb4YRw65GBZ2ATB4	120
2100	ChIJs2HUysuVb4YRw65GBZ2ATB4	106
2101	ChIJswWiJSyUb4YRub5R2KNE1ew	56
2102	ChIJswWiJSyUb4YRub5R2KNE1ew	75
2103	ChIJswWiJSyUb4YRub5R2KNE1ew	109
2104	ChIJswWiJSyUb4YRub5R2KNE1ew	120
2105	ChIJswWiJSyUb4YRub5R2KNE1ew	106
2106	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	75
2107	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	109
2108	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	120
2109	ChIJAf9QCmiUb4YRUrb_Ldxvfhw	106
2110	ChIJI6xOuzGUb4YR5OPFS4wcPNs	9
2111	ChIJI6xOuzGUb4YR5OPFS4wcPNs	75
2112	ChIJI6xOuzGUb4YR5OPFS4wcPNs	109
2113	ChIJI6xOuzGUb4YR5OPFS4wcPNs	120
2114	ChIJI6xOuzGUb4YR5OPFS4wcPNs	106
2115	ChIJXdR86YaWb4YRvtbeBjJxMrs	75
2116	ChIJXdR86YaWb4YRvtbeBjJxMrs	109
2117	ChIJXdR86YaWb4YRvtbeBjJxMrs	120
2118	ChIJXdR86YaWb4YRvtbeBjJxMrs	106
2119	ChIJS_VW-oaWb4YRQB0t-wz0o5U	75
2120	ChIJS_VW-oaWb4YRQB0t-wz0o5U	109
2121	ChIJS_VW-oaWb4YRQB0t-wz0o5U	120
2122	ChIJS_VW-oaWb4YRQB0t-wz0o5U	106
2123	ChIJeZTy_ZeWb4YREBgOViOQXzs	75
2124	ChIJeZTy_ZeWb4YREBgOViOQXzs	109
2125	ChIJeZTy_ZeWb4YREBgOViOQXzs	120
2126	ChIJeZTy_ZeWb4YREBgOViOQXzs	106
2127	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	57
2128	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	75
2129	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	109
2130	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	120
2131	ChIJVcvjN3yWb4YRsrLTAm7ZxJM	106
2132	ChIJD04fn4eWb4YRT0Oxo89QzfU	75
2133	ChIJD04fn4eWb4YRT0Oxo89QzfU	109
2134	ChIJD04fn4eWb4YRT0Oxo89QzfU	120
2135	ChIJD04fn4eWb4YRT0Oxo89QzfU	106
2136	ChIJq2xesH2Wb4YRv8pMHr4St30	57
2137	ChIJq2xesH2Wb4YRv8pMHr4St30	75
2138	ChIJq2xesH2Wb4YRv8pMHr4St30	109
2139	ChIJq2xesH2Wb4YRv8pMHr4St30	120
2140	ChIJq2xesH2Wb4YRv8pMHr4St30	106
2141	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	57
2142	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	75
2143	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	109
2144	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	120
2145	ChIJNXOrPDGUb4YR9c6ci7Cl9S8	106
2146	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	7
2147	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	15
2148	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	75
2149	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	109
2150	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	120
2151	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	85
2152	ChIJ2x2MeYaWb4YR3QZ0h0TFH0E	106
2153	ChIJndV26IWWb4YRGmIaF0RlrPQ	75
2154	ChIJndV26IWWb4YRGmIaF0RlrPQ	109
2155	ChIJndV26IWWb4YRGmIaF0RlrPQ	120
2156	ChIJndV26IWWb4YRGmIaF0RlrPQ	106
2157	ChIJuXRGUjSUb4YRvWXWF2L77s4	7
2158	ChIJuXRGUjSUb4YRvWXWF2L77s4	57
2159	ChIJuXRGUjSUb4YRvWXWF2L77s4	15
2160	ChIJuXRGUjSUb4YRvWXWF2L77s4	75
2161	ChIJuXRGUjSUb4YRvWXWF2L77s4	109
2162	ChIJuXRGUjSUb4YRvWXWF2L77s4	120
2163	ChIJuXRGUjSUb4YRvWXWF2L77s4	85
2164	ChIJuXRGUjSUb4YRvWXWF2L77s4	106
2165	ChIJsehxxk-Ub4YRGgtpi43GRH4	75
2166	ChIJsehxxk-Ub4YRGgtpi43GRH4	109
2167	ChIJsehxxk-Ub4YRGgtpi43GRH4	120
2168	ChIJsehxxk-Ub4YRGgtpi43GRH4	106
2169	ChIJdyKMnkS-b4YRC0eiAic03vE	26
2170	ChIJdyKMnkS-b4YRC0eiAic03vE	39
2171	ChIJdyKMnkS-b4YRC0eiAic03vE	57
2172	ChIJdyKMnkS-b4YRC0eiAic03vE	15
2173	ChIJdyKMnkS-b4YRC0eiAic03vE	75
2174	ChIJdyKMnkS-b4YRC0eiAic03vE	109
2175	ChIJdyKMnkS-b4YRC0eiAic03vE	120
2176	ChIJdyKMnkS-b4YRC0eiAic03vE	85
2177	ChIJdyKMnkS-b4YRC0eiAic03vE	106
2178	ChIJAXUCogCVb4YRJQ1kWlCrnuU	15
2179	ChIJAXUCogCVb4YRJQ1kWlCrnuU	75
2180	ChIJAXUCogCVb4YRJQ1kWlCrnuU	109
2181	ChIJAXUCogCVb4YRJQ1kWlCrnuU	120
2182	ChIJAXUCogCVb4YRJQ1kWlCrnuU	85
2183	ChIJAXUCogCVb4YRJQ1kWlCrnuU	106
2184	ChIJ4zabyTeUb4YREXF4OXzPe9Q	75
2185	ChIJ4zabyTeUb4YREXF4OXzPe9Q	109
2186	ChIJ4zabyTeUb4YREXF4OXzPe9Q	120
2187	ChIJ4zabyTeUb4YREXF4OXzPe9Q	106
2188	ChIJgx6U65iWb4YRqgVIsonZlmk	7
2189	ChIJgx6U65iWb4YRqgVIsonZlmk	15
2190	ChIJgx6U65iWb4YRqgVIsonZlmk	75
2191	ChIJgx6U65iWb4YRqgVIsonZlmk	109
2192	ChIJgx6U65iWb4YRqgVIsonZlmk	120
2193	ChIJgx6U65iWb4YRqgVIsonZlmk	85
2194	ChIJgx6U65iWb4YRqgVIsonZlmk	106
2195	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	9
2196	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	75
2197	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	109
2198	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	120
2199	ChIJ_eCXMsiVb4YRzgkx6Q7HfDc	106
2200	ChIJH26h0JmWb4YRtQoIK-GlHtI	75
2201	ChIJH26h0JmWb4YRtQoIK-GlHtI	109
2202	ChIJH26h0JmWb4YRtQoIK-GlHtI	120
2203	ChIJH26h0JmWb4YRtQoIK-GlHtI	106
2204	ChIJ7c8B88uQb4YREMxnqvLu40A	15
2205	ChIJ7c8B88uQb4YREMxnqvLu40A	75
2206	ChIJ7c8B88uQb4YREMxnqvLu40A	109
2207	ChIJ7c8B88uQb4YREMxnqvLu40A	120
2208	ChIJ7c8B88uQb4YREMxnqvLu40A	85
2209	ChIJ7c8B88uQb4YREMxnqvLu40A	106
2210	ChIJ0xiL5seVb4YRtaBIbhOVyZI	57
2211	ChIJ0xiL5seVb4YRtaBIbhOVyZI	75
2212	ChIJ0xiL5seVb4YRtaBIbhOVyZI	109
2213	ChIJ0xiL5seVb4YRtaBIbhOVyZI	120
2214	ChIJ0xiL5seVb4YRtaBIbhOVyZI	106
2215	ChIJCbDc9ceWb4YRkEzh6pdyeXo	75
2216	ChIJCbDc9ceWb4YRkEzh6pdyeXo	109
2217	ChIJCbDc9ceWb4YRkEzh6pdyeXo	120
2218	ChIJCbDc9ceWb4YRkEzh6pdyeXo	106
2219	ChIJhTNSdMeVb4YRFu3FscDysUQ	75
2220	ChIJhTNSdMeVb4YRFu3FscDysUQ	109
2221	ChIJhTNSdMeVb4YRFu3FscDysUQ	120
2222	ChIJhTNSdMeVb4YRFu3FscDysUQ	106
2223	ChIJl6lJsiaUb4YRN5hlh_bgxFA	75
2224	ChIJl6lJsiaUb4YRN5hlh_bgxFA	109
2225	ChIJl6lJsiaUb4YRN5hlh_bgxFA	120
2226	ChIJl6lJsiaUb4YRN5hlh_bgxFA	106
2227	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	75
2228	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	109
2229	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	120
2230	ChIJqyHeKiZ_ZYYROHiB0lKzlCc	106
2231	ChIJ_194WhqUb4YRmrvR_W6bi6E	75
2232	ChIJ_194WhqUb4YRmrvR_W6bi6E	109
2233	ChIJ_194WhqUb4YRmrvR_W6bi6E	120
2234	ChIJ_194WhqUb4YRmrvR_W6bi6E	106
2235	ChIJLea86cuQb4YRGIs4AHuhK0E	75
2236	ChIJLea86cuQb4YRGIs4AHuhK0E	109
2237	ChIJLea86cuQb4YRGIs4AHuhK0E	120
2238	ChIJLea86cuQb4YRGIs4AHuhK0E	106
2239	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	57
2240	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	75
2241	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	109
2242	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	112
2243	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	120
2244	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	85
2245	ChIJsaj_t7iVb4YR3Ql5cx8BqcI	106
2246	ChIJyboIxgCXb4YRu-SR5Q7NbTI	75
2247	ChIJyboIxgCXb4YRu-SR5Q7NbTI	109
2248	ChIJyboIxgCXb4YRu-SR5Q7NbTI	120
2249	ChIJyboIxgCXb4YRu-SR5Q7NbTI	106
2250	ChIJvSBS6YaWb4YRiJwA5fRfPFk	57
2251	ChIJvSBS6YaWb4YRiJwA5fRfPFk	75
2252	ChIJvSBS6YaWb4YRiJwA5fRfPFk	109
2253	ChIJvSBS6YaWb4YRiJwA5fRfPFk	120
2254	ChIJvSBS6YaWb4YRiJwA5fRfPFk	85
2255	ChIJvSBS6YaWb4YRiJwA5fRfPFk	106
2256	ChIJmReIURqUb4YRQetkuhNlmF8	26
2257	ChIJmReIURqUb4YRQetkuhNlmF8	39
2258	ChIJmReIURqUb4YRQetkuhNlmF8	57
2259	ChIJmReIURqUb4YRQetkuhNlmF8	15
2260	ChIJmReIURqUb4YRQetkuhNlmF8	75
2261	ChIJmReIURqUb4YRQetkuhNlmF8	109
2262	ChIJmReIURqUb4YRQetkuhNlmF8	120
2263	ChIJmReIURqUb4YRQetkuhNlmF8	85
2264	ChIJmReIURqUb4YRQetkuhNlmF8	106
2265	ChIJ20n_R5qWb4YRIEu0LhOAPAc	15
2266	ChIJ20n_R5qWb4YRIEu0LhOAPAc	75
2267	ChIJ20n_R5qWb4YRIEu0LhOAPAc	109
2268	ChIJ20n_R5qWb4YRIEu0LhOAPAc	120
2269	ChIJ20n_R5qWb4YRIEu0LhOAPAc	85
2270	ChIJ20n_R5qWb4YRIEu0LhOAPAc	106
2271	ChIJv2c5UWozCIcRHiF0aMkUXzs	57
2272	ChIJv2c5UWozCIcRHiF0aMkUXzs	75
2273	ChIJv2c5UWozCIcRHiF0aMkUXzs	109
2274	ChIJv2c5UWozCIcRHiF0aMkUXzs	120
2275	ChIJv2c5UWozCIcRHiF0aMkUXzs	106
2276	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	75
2277	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	109
2278	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	120
2279	ChIJEcPWHTeUb4YRIkvbqsKpEPQ	106
2280	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	75
2281	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	109
2282	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	120
2283	ChIJrY5mEuqVb4YRtQGWPzLEY0Y	106
2284	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	75
2285	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	109
2286	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	120
2287	ChIJcfsDx8qVb4YRHuJWvuhXkDQ	106
2288	ChIJKcL0gcmVb4YRDJ6xFV8zebU	75
2289	ChIJKcL0gcmVb4YRDJ6xFV8zebU	109
2290	ChIJKcL0gcmVb4YRDJ6xFV8zebU	120
2291	ChIJKcL0gcmVb4YRDJ6xFV8zebU	106
2292	ChIJl6lJsiaUb4YRA_mP2FxwZqE	75
2293	ChIJl6lJsiaUb4YRA_mP2FxwZqE	109
2294	ChIJl6lJsiaUb4YRA_mP2FxwZqE	120
2295	ChIJl6lJsiaUb4YRA_mP2FxwZqE	106
2296	ChIJNUdVcIaWb4YR3jbYDzozGxI	15
2297	ChIJNUdVcIaWb4YR3jbYDzozGxI	75
2298	ChIJNUdVcIaWb4YR3jbYDzozGxI	109
2299	ChIJNUdVcIaWb4YR3jbYDzozGxI	120
2300	ChIJNUdVcIaWb4YR3jbYDzozGxI	85
2301	ChIJNUdVcIaWb4YR3jbYDzozGxI	106
2302	ChIJi0xkOSGUb4YRe3vqR0xeDDY	75
2303	ChIJi0xkOSGUb4YRe3vqR0xeDDY	109
2304	ChIJi0xkOSGUb4YRe3vqR0xeDDY	120
2305	ChIJi0xkOSGUb4YRe3vqR0xeDDY	106
2306	ChIJkd-v_TSUb4YRqqfIrrbcMic	56
2307	ChIJkd-v_TSUb4YRqqfIrrbcMic	75
2308	ChIJkd-v_TSUb4YRqqfIrrbcMic	109
2309	ChIJkd-v_TSUb4YRqqfIrrbcMic	120
2310	ChIJkd-v_TSUb4YRqqfIrrbcMic	106
2311	ChIJmwgQwuGTb4YRuLFJCVlhOFk	75
2312	ChIJmwgQwuGTb4YRuLFJCVlhOFk	109
2313	ChIJmwgQwuGTb4YRuLFJCVlhOFk	120
2314	ChIJmwgQwuGTb4YRuLFJCVlhOFk	106
2315	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	7
2316	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	15
2317	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	75
2318	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	109
2319	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	120
2320	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	85
2321	ChIJqyHeKiZ_ZYYRIfBCR5XuQ3Q	106
2322	ChIJPSnKtDqUb4YR3KpckulBrt4	75
2323	ChIJPSnKtDqUb4YR3KpckulBrt4	109
2324	ChIJPSnKtDqUb4YR3KpckulBrt4	120
2325	ChIJPSnKtDqUb4YR3KpckulBrt4	106
2326	ChIJtVWPNhGUb4YRG6rudSb_0H8	56
2327	ChIJtVWPNhGUb4YRG6rudSb_0H8	57
2328	ChIJtVWPNhGUb4YRG6rudSb_0H8	75
2329	ChIJtVWPNhGUb4YRG6rudSb_0H8	109
2330	ChIJtVWPNhGUb4YRG6rudSb_0H8	120
2331	ChIJtVWPNhGUb4YRG6rudSb_0H8	106
2332	ChIJbQoKVjSUb4YRdIFnYzYTHQA	57
2333	ChIJbQoKVjSUb4YRdIFnYzYTHQA	75
2334	ChIJbQoKVjSUb4YRdIFnYzYTHQA	109
2335	ChIJbQoKVjSUb4YRdIFnYzYTHQA	120
2336	ChIJbQoKVjSUb4YRdIFnYzYTHQA	106
2337	ChIJf2fesraQb4YRcvMlT2Hu_Wo	57
2338	ChIJf2fesraQb4YRcvMlT2Hu_Wo	75
2339	ChIJf2fesraQb4YRcvMlT2Hu_Wo	109
2340	ChIJf2fesraQb4YRcvMlT2Hu_Wo	120
2341	ChIJf2fesraQb4YRcvMlT2Hu_Wo	106
2342	ChIJg2JKk66Qb4YR3GgJN8SGEAo	57
2343	ChIJg2JKk66Qb4YR3GgJN8SGEAo	75
2344	ChIJg2JKk66Qb4YR3GgJN8SGEAo	109
2345	ChIJg2JKk66Qb4YR3GgJN8SGEAo	120
2346	ChIJg2JKk66Qb4YR3GgJN8SGEAo	106
2347	ChIJk78v2tCRb4YRoBxBIj9xgp8	75
2348	ChIJk78v2tCRb4YRoBxBIj9xgp8	109
2349	ChIJk78v2tCRb4YRoBxBIj9xgp8	120
2350	ChIJk78v2tCRb4YRoBxBIj9xgp8	106
2351	ChIJz_BtIaGRb4YRpxW2KD5EEPI	75
2352	ChIJz_BtIaGRb4YRpxW2KD5EEPI	109
2353	ChIJz_BtIaGRb4YRpxW2KD5EEPI	120
2354	ChIJz_BtIaGRb4YRpxW2KD5EEPI	106
2355	ChIJH6WtLQKRb4YR4T0lGHiDzN0	75
2356	ChIJH6WtLQKRb4YR4T0lGHiDzN0	109
2357	ChIJH6WtLQKRb4YR4T0lGHiDzN0	120
2358	ChIJH6WtLQKRb4YR4T0lGHiDzN0	106
2359	ChIJgSOcabaQb4YRQGf1wkVLTDY	75
2360	ChIJgSOcabaQb4YRQGf1wkVLTDY	109
2361	ChIJgSOcabaQb4YRQGf1wkVLTDY	120
2362	ChIJgSOcabaQb4YRQGf1wkVLTDY	106
2363	ChIJa016G-aXb4YRuNxvsuJV9mE	75
2364	ChIJa016G-aXb4YRuNxvsuJV9mE	109
2365	ChIJa016G-aXb4YRuNxvsuJV9mE	120
2366	ChIJa016G-aXb4YRuNxvsuJV9mE	106
2367	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	75
2368	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	109
2369	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	120
2370	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	106
2371	ChIJhU2PsgmRb4YRo7KzW4vBrns	75
2372	ChIJhU2PsgmRb4YRo7KzW4vBrns	109
2373	ChIJhU2PsgmRb4YRo7KzW4vBrns	120
2374	ChIJhU2PsgmRb4YRo7KzW4vBrns	106
2375	ChIJizxzv7aQb4YRZNTtzIoQE2U	75
2376	ChIJizxzv7aQb4YRZNTtzIoQE2U	109
2377	ChIJizxzv7aQb4YRZNTtzIoQE2U	120
2378	ChIJizxzv7aQb4YRZNTtzIoQE2U	106
2379	ChIJd6wvtLaQb4YR31jmv_BgJBc	75
2380	ChIJd6wvtLaQb4YR31jmv_BgJBc	109
2381	ChIJd6wvtLaQb4YR31jmv_BgJBc	120
2382	ChIJd6wvtLaQb4YR31jmv_BgJBc	106
2383	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	75
2384	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	109
2385	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	120
2386	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	106
2387	ChIJX1vUimKRb4YReJfc86zPS1o	75
2388	ChIJX1vUimKRb4YReJfc86zPS1o	109
2389	ChIJX1vUimKRb4YReJfc86zPS1o	120
2390	ChIJX1vUimKRb4YReJfc86zPS1o	106
2391	ChIJD9lZA0qRb4YR0T5wf9EakC8	57
2392	ChIJD9lZA0qRb4YR0T5wf9EakC8	75
2393	ChIJD9lZA0qRb4YR0T5wf9EakC8	109
2394	ChIJD9lZA0qRb4YR0T5wf9EakC8	120
2395	ChIJD9lZA0qRb4YR0T5wf9EakC8	106
2396	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	75
2397	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	109
2398	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	120
2399	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	106
2400	ChIJEUheZR2Rb4YRxHn68M_1Z_A	7
2401	ChIJEUheZR2Rb4YRxHn68M_1Z_A	75
2402	ChIJEUheZR2Rb4YRxHn68M_1Z_A	109
2403	ChIJEUheZR2Rb4YRxHn68M_1Z_A	120
2404	ChIJEUheZR2Rb4YRxHn68M_1Z_A	85
2405	ChIJEUheZR2Rb4YRxHn68M_1Z_A	106
2406	ChIJ18X3SLqQb4YR11uyryZjjyE	75
2407	ChIJ18X3SLqQb4YR11uyryZjjyE	109
2408	ChIJ18X3SLqQb4YR11uyryZjjyE	120
2409	ChIJ18X3SLqQb4YR11uyryZjjyE	106
2410	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	75
2411	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	109
2412	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	120
2413	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	106
2414	ChIJB_U5yieXb4YRLQRgJM2CnO4	75
2415	ChIJB_U5yieXb4YRLQRgJM2CnO4	109
2416	ChIJB_U5yieXb4YRLQRgJM2CnO4	120
2417	ChIJB_U5yieXb4YRLQRgJM2CnO4	106
2418	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
2419	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
2420	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
2421	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
2422	ChIJdWc0XbuRb4YR0X5JGsEwHSA	75
2423	ChIJdWc0XbuRb4YR0X5JGsEwHSA	109
2424	ChIJdWc0XbuRb4YR0X5JGsEwHSA	120
2425	ChIJdWc0XbuRb4YR0X5JGsEwHSA	106
2426	ChIJG849GdOQb4YRoTVUDtLveVc	75
2427	ChIJG849GdOQb4YRoTVUDtLveVc	57
2428	ChIJG849GdOQb4YRoTVUDtLveVc	109
2429	ChIJG849GdOQb4YRoTVUDtLveVc	120
2430	ChIJG849GdOQb4YRoTVUDtLveVc	85
2431	ChIJG849GdOQb4YRoTVUDtLveVc	106
2432	ChIJcxWF0LiWb4YRvjW4vweCAzA	75
2433	ChIJcxWF0LiWb4YRvjW4vweCAzA	109
2434	ChIJcxWF0LiWb4YRvjW4vweCAzA	120
2435	ChIJcxWF0LiWb4YRvjW4vweCAzA	106
2436	ChIJBxJDE0eRb4YR8wedc3L27oY	57
2437	ChIJBxJDE0eRb4YR8wedc3L27oY	75
2438	ChIJBxJDE0eRb4YR8wedc3L27oY	109
2439	ChIJBxJDE0eRb4YR8wedc3L27oY	120
2440	ChIJBxJDE0eRb4YR8wedc3L27oY	106
2441	ChIJ8xNUitGWb4YRm5jeheZu4Nw	57
2442	ChIJ8xNUitGWb4YRm5jeheZu4Nw	75
2443	ChIJ8xNUitGWb4YRm5jeheZu4Nw	109
2444	ChIJ8xNUitGWb4YRm5jeheZu4Nw	120
2445	ChIJ8xNUitGWb4YRm5jeheZu4Nw	106
2446	ChIJAxhWaLiWb4YRRXqWxllpXTo	15
2447	ChIJAxhWaLiWb4YRRXqWxllpXTo	75
2448	ChIJAxhWaLiWb4YRRXqWxllpXTo	109
2449	ChIJAxhWaLiWb4YRRXqWxllpXTo	120
2450	ChIJAxhWaLiWb4YRRXqWxllpXTo	85
2451	ChIJAxhWaLiWb4YRRXqWxllpXTo	106
2452	ChIJiV6PmjiRb4YRalmz5uZ8008	75
2453	ChIJiV6PmjiRb4YRalmz5uZ8008	109
2454	ChIJiV6PmjiRb4YRalmz5uZ8008	120
2455	ChIJiV6PmjiRb4YRalmz5uZ8008	106
2456	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	75
2457	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	109
2458	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	120
2459	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	106
2460	ChIJQ5CBHM-Wb4YREDH33bUva4g	75
2461	ChIJQ5CBHM-Wb4YREDH33bUva4g	109
2462	ChIJQ5CBHM-Wb4YREDH33bUva4g	120
2463	ChIJQ5CBHM-Wb4YREDH33bUva4g	106
2464	ChIJX6f6ysiWb4YRbGsL2RZkj8A	75
2465	ChIJX6f6ysiWb4YRbGsL2RZkj8A	109
2466	ChIJX6f6ysiWb4YRbGsL2RZkj8A	120
2467	ChIJX6f6ysiWb4YRbGsL2RZkj8A	106
2468	ChIJA5HRjciWb4YR8Z5396h5gIk	75
2469	ChIJA5HRjciWb4YR8Z5396h5gIk	109
2470	ChIJA5HRjciWb4YR8Z5396h5gIk	120
2471	ChIJA5HRjciWb4YR8Z5396h5gIk	106
2472	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
2473	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
2474	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
2475	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
2476	ChIJvaSp7wOVb4YRa8mTHstAID0	75
2477	ChIJvaSp7wOVb4YRa8mTHstAID0	109
2478	ChIJvaSp7wOVb4YRa8mTHstAID0	120
2479	ChIJvaSp7wOVb4YRa8mTHstAID0	106
2480	ChIJtT2l4saWb4YRO8BkZ9Jme7I	57
2481	ChIJtT2l4saWb4YRO8BkZ9Jme7I	75
2482	ChIJtT2l4saWb4YRO8BkZ9Jme7I	109
2483	ChIJtT2l4saWb4YRO8BkZ9Jme7I	120
2484	ChIJtT2l4saWb4YRO8BkZ9Jme7I	106
2485	ChIJI9gqeriWb4YRsRpZRDbKTUc	75
2486	ChIJI9gqeriWb4YRsRpZRDbKTUc	109
2487	ChIJI9gqeriWb4YRsRpZRDbKTUc	120
2488	ChIJI9gqeriWb4YRsRpZRDbKTUc	106
2489	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	9
2490	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	75
2491	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	109
2492	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	120
2493	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	106
2494	ChIJZZdNTr6Wb4YReLa8XqQqdtI	9
2495	ChIJZZdNTr6Wb4YReLa8XqQqdtI	75
2496	ChIJZZdNTr6Wb4YReLa8XqQqdtI	109
2497	ChIJZZdNTr6Wb4YReLa8XqQqdtI	120
2498	ChIJZZdNTr6Wb4YReLa8XqQqdtI	106
2499	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
2500	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
2501	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
2502	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
2503	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
2504	ChIJmwgQwuGTb4YRT-EvolhZRGE	75
2505	ChIJmwgQwuGTb4YRT-EvolhZRGE	109
2506	ChIJmwgQwuGTb4YRT-EvolhZRGE	120
2507	ChIJmwgQwuGTb4YRT-EvolhZRGE	106
2508	ChIJCYEQO2GXb4YRO02qTd-9E-o	75
2509	ChIJCYEQO2GXb4YRO02qTd-9E-o	109
2510	ChIJCYEQO2GXb4YRO02qTd-9E-o	120
2511	ChIJCYEQO2GXb4YRO02qTd-9E-o	106
2512	ChIJw_7akseWb4YRfmj3u-LNKdI	15
2513	ChIJw_7akseWb4YRfmj3u-LNKdI	75
2514	ChIJw_7akseWb4YRfmj3u-LNKdI	109
2515	ChIJw_7akseWb4YRfmj3u-LNKdI	120
2516	ChIJw_7akseWb4YRfmj3u-LNKdI	85
2517	ChIJw_7akseWb4YRfmj3u-LNKdI	106
2518	ChIJ3SRVENOQb4YRbQiXBhmamtU	75
2519	ChIJ3SRVENOQb4YRbQiXBhmamtU	109
2520	ChIJ3SRVENOQb4YRbQiXBhmamtU	120
2521	ChIJ3SRVENOQb4YRbQiXBhmamtU	106
2522	ChIJUccl9NqWb4YRPT_vIYX-Fd0	75
2523	ChIJUccl9NqWb4YRPT_vIYX-Fd0	109
2524	ChIJUccl9NqWb4YRPT_vIYX-Fd0	120
2525	ChIJUccl9NqWb4YRPT_vIYX-Fd0	106
2526	ChIJaVaxNGyUb4YRNCEDffa2rOo	75
2527	ChIJaVaxNGyUb4YRNCEDffa2rOo	109
2528	ChIJaVaxNGyUb4YRNCEDffa2rOo	120
2529	ChIJaVaxNGyUb4YRNCEDffa2rOo	106
2530	ChIJcRdWaLiWb4YRzEiAlby_Mio	57
2531	ChIJcRdWaLiWb4YRzEiAlby_Mio	75
2532	ChIJcRdWaLiWb4YRzEiAlby_Mio	109
2533	ChIJcRdWaLiWb4YRzEiAlby_Mio	120
2534	ChIJcRdWaLiWb4YRzEiAlby_Mio	106
2535	ChIJGZHWMNKWb4YRugAsHtejycY	75
2536	ChIJGZHWMNKWb4YRugAsHtejycY	109
2537	ChIJGZHWMNKWb4YRugAsHtejycY	120
2538	ChIJGZHWMNKWb4YRugAsHtejycY	106
2539	ChIJ_____y-Wb4YRPAIFISDrRJg	75
2540	ChIJ_____y-Wb4YRPAIFISDrRJg	109
2541	ChIJ_____y-Wb4YRPAIFISDrRJg	120
2542	ChIJ_____y-Wb4YRPAIFISDrRJg	106
2543	ChIJNxjTEmmRb4YRmGAYKODhIGA	75
2544	ChIJNxjTEmmRb4YRmGAYKODhIGA	109
2545	ChIJNxjTEmmRb4YRmGAYKODhIGA	120
2546	ChIJNxjTEmmRb4YRmGAYKODhIGA	106
2547	ChIJP0DYrCaXb4YRqdQr9oY_RUY	75
2548	ChIJP0DYrCaXb4YRqdQr9oY_RUY	109
2549	ChIJP0DYrCaXb4YRqdQr9oY_RUY	120
2550	ChIJP0DYrCaXb4YRqdQr9oY_RUY	106
2551	ChIJHUFlaVWXb4YRlyl22Xn3qWU	15
2552	ChIJHUFlaVWXb4YRlyl22Xn3qWU	57
2553	ChIJHUFlaVWXb4YRlyl22Xn3qWU	75
2554	ChIJHUFlaVWXb4YRlyl22Xn3qWU	109
2555	ChIJHUFlaVWXb4YRlyl22Xn3qWU	120
2556	ChIJHUFlaVWXb4YRlyl22Xn3qWU	106
2557	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	75
2558	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	109
2559	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	120
2560	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	106
2561	ChIJOzQxmziRb4YRmnmlFo2O1v8	75
2562	ChIJOzQxmziRb4YRmnmlFo2O1v8	109
2563	ChIJOzQxmziRb4YRmnmlFo2O1v8	120
2564	ChIJOzQxmziRb4YRmnmlFo2O1v8	85
2565	ChIJOzQxmziRb4YRmnmlFo2O1v8	106
2566	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	75
2567	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	109
2568	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	120
2569	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	106
2570	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	75
2571	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	109
2572	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	120
2573	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	106
2574	ChIJ8QHUYEeRb4YRcmZrpgtaOus	75
2575	ChIJ8QHUYEeRb4YRcmZrpgtaOus	109
2576	ChIJ8QHUYEeRb4YRcmZrpgtaOus	120
2577	ChIJ8QHUYEeRb4YRcmZrpgtaOus	106
2578	ChIJJUXSq9GWb4YRakCZkD0BS28	75
2579	ChIJJUXSq9GWb4YRakCZkD0BS28	109
2580	ChIJJUXSq9GWb4YRakCZkD0BS28	120
2581	ChIJJUXSq9GWb4YRakCZkD0BS28	106
2582	ChIJG016XdyWb4YRNpafe40tQIU	57
2583	ChIJG016XdyWb4YRNpafe40tQIU	75
2584	ChIJG016XdyWb4YRNpafe40tQIU	109
2585	ChIJG016XdyWb4YRNpafe40tQIU	120
2586	ChIJG016XdyWb4YRNpafe40tQIU	106
2587	ChIJPVqURzSUb4YR8pxQeWuDw_4	75
2588	ChIJPVqURzSUb4YR8pxQeWuDw_4	109
2589	ChIJPVqURzSUb4YR8pxQeWuDw_4	120
2590	ChIJPVqURzSUb4YR8pxQeWuDw_4	106
2591	ChIJbe5_hhaXb4YRoyZAMwY4XtI	75
2592	ChIJbe5_hhaXb4YRoyZAMwY4XtI	109
2593	ChIJbe5_hhaXb4YRoyZAMwY4XtI	120
2594	ChIJbe5_hhaXb4YRoyZAMwY4XtI	106
2595	ChIJ1ao5QfaRb4YRT-cZcrTRik8	75
2596	ChIJ1ao5QfaRb4YRT-cZcrTRik8	109
2597	ChIJ1ao5QfaRb4YRT-cZcrTRik8	120
2598	ChIJ1ao5QfaRb4YRT-cZcrTRik8	106
2599	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	75
2600	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	109
2601	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	120
2602	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	106
2603	ChIJdWc0XbuRb4YR0X5JGsEwHSA	75
2604	ChIJdWc0XbuRb4YR0X5JGsEwHSA	109
2605	ChIJdWc0XbuRb4YR0X5JGsEwHSA	120
2606	ChIJdWc0XbuRb4YR0X5JGsEwHSA	106
2607	ChIJs_SbswOXb4YRryQah7A97k8	75
2608	ChIJs_SbswOXb4YRryQah7A97k8	109
2609	ChIJs_SbswOXb4YRryQah7A97k8	120
2610	ChIJs_SbswOXb4YRryQah7A97k8	106
2611	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
2612	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
2613	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
2614	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
2615	ChIJW80p12uXb4YRBPBfxHd-InU	75
2616	ChIJW80p12uXb4YRBPBfxHd-InU	109
2617	ChIJW80p12uXb4YRBPBfxHd-InU	120
2618	ChIJW80p12uXb4YRBPBfxHd-InU	106
2619	ChIJHZBzBtuWb4YRmx1jwOLx8HI	75
2620	ChIJHZBzBtuWb4YRmx1jwOLx8HI	109
2621	ChIJHZBzBtuWb4YRmx1jwOLx8HI	120
2622	ChIJHZBzBtuWb4YRmx1jwOLx8HI	106
2623	ChIJW7GQy-yXb4YRAHck2AeFQYw	75
2624	ChIJW7GQy-yXb4YRAHck2AeFQYw	109
2625	ChIJW7GQy-yXb4YRAHck2AeFQYw	120
2626	ChIJW7GQy-yXb4YRAHck2AeFQYw	106
2627	ChIJhZKgb-mWb4YRKew8ny4-roU	75
2628	ChIJhZKgb-mWb4YRKew8ny4-roU	109
2629	ChIJhZKgb-mWb4YRKew8ny4-roU	120
2630	ChIJhZKgb-mWb4YRKew8ny4-roU	106
2631	ChIJh28n56GXb4YRU-Igv8xvilo	75
2632	ChIJh28n56GXb4YRU-Igv8xvilo	109
2633	ChIJh28n56GXb4YRU-Igv8xvilo	120
2634	ChIJh28n56GXb4YRU-Igv8xvilo	106
2635	ChIJYZs6CtuWb4YRdgyUJCIkJkk	75
2636	ChIJYZs6CtuWb4YRdgyUJCIkJkk	57
2637	ChIJYZs6CtuWb4YRdgyUJCIkJkk	109
2638	ChIJYZs6CtuWb4YRdgyUJCIkJkk	120
2639	ChIJYZs6CtuWb4YRdgyUJCIkJkk	106
2640	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	75
2641	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	109
2642	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	120
2643	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	106
2644	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	75
2645	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	109
2646	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	120
2647	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	106
2648	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	75
2649	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	109
2650	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	120
2651	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	106
2652	ChIJjQLHB7mWb4YRO-Xuud8lfV0	75
2653	ChIJjQLHB7mWb4YRO-Xuud8lfV0	109
2654	ChIJjQLHB7mWb4YRO-Xuud8lfV0	120
2655	ChIJjQLHB7mWb4YRO-Xuud8lfV0	106
2656	ChIJCV6WzDyXb4YR29fDVODxUBI	75
2657	ChIJCV6WzDyXb4YR29fDVODxUBI	109
2658	ChIJCV6WzDyXb4YR29fDVODxUBI	120
2659	ChIJCV6WzDyXb4YR29fDVODxUBI	106
2660	ChIJBz11t7iWb4YRhDntrDN-L0s	9
2661	ChIJBz11t7iWb4YRhDntrDN-L0s	75
2662	ChIJBz11t7iWb4YRhDntrDN-L0s	109
2663	ChIJBz11t7iWb4YRhDntrDN-L0s	120
2664	ChIJBz11t7iWb4YRhDntrDN-L0s	106
2665	ChIJcYZO_aOWb4YRBw7DcQmH2iI	75
2666	ChIJcYZO_aOWb4YRBw7DcQmH2iI	109
2667	ChIJcYZO_aOWb4YRBw7DcQmH2iI	120
2668	ChIJcYZO_aOWb4YRBw7DcQmH2iI	106
2669	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	9
2670	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	75
2671	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	109
2672	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	120
2673	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	106
2674	ChIJ954b8nOXb4YRH65tGG_tGiA	9
2675	ChIJ954b8nOXb4YRH65tGG_tGiA	75
2676	ChIJ954b8nOXb4YRH65tGG_tGiA	109
2677	ChIJ954b8nOXb4YRH65tGG_tGiA	120
2678	ChIJ954b8nOXb4YRH65tGG_tGiA	106
2679	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	75
2680	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	109
2681	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	120
2682	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	106
2683	ChIJScs2242Xb4YRsi0dJGeDXGk	75
2684	ChIJScs2242Xb4YRsi0dJGeDXGk	109
2685	ChIJScs2242Xb4YRsi0dJGeDXGk	120
2686	ChIJScs2242Xb4YRsi0dJGeDXGk	106
2687	ChIJf2fesraQb4YRcvMlT2Hu_Wo	57
2688	ChIJf2fesraQb4YRcvMlT2Hu_Wo	75
2689	ChIJf2fesraQb4YRcvMlT2Hu_Wo	109
2690	ChIJf2fesraQb4YRcvMlT2Hu_Wo	120
2691	ChIJf2fesraQb4YRcvMlT2Hu_Wo	106
2692	ChIJg2JKk66Qb4YR3GgJN8SGEAo	57
2693	ChIJg2JKk66Qb4YR3GgJN8SGEAo	75
2694	ChIJg2JKk66Qb4YR3GgJN8SGEAo	109
2695	ChIJg2JKk66Qb4YR3GgJN8SGEAo	120
2696	ChIJg2JKk66Qb4YR3GgJN8SGEAo	106
2697	ChIJk78v2tCRb4YRoBxBIj9xgp8	75
2698	ChIJk78v2tCRb4YRoBxBIj9xgp8	109
2699	ChIJk78v2tCRb4YRoBxBIj9xgp8	120
2700	ChIJk78v2tCRb4YRoBxBIj9xgp8	106
2701	ChIJz_BtIaGRb4YRpxW2KD5EEPI	75
2702	ChIJz_BtIaGRb4YRpxW2KD5EEPI	109
2703	ChIJz_BtIaGRb4YRpxW2KD5EEPI	120
2704	ChIJz_BtIaGRb4YRpxW2KD5EEPI	106
2705	ChIJH6WtLQKRb4YR4T0lGHiDzN0	75
2706	ChIJH6WtLQKRb4YR4T0lGHiDzN0	109
2707	ChIJH6WtLQKRb4YR4T0lGHiDzN0	120
2708	ChIJH6WtLQKRb4YR4T0lGHiDzN0	106
2709	ChIJgSOcabaQb4YRQGf1wkVLTDY	75
2710	ChIJgSOcabaQb4YRQGf1wkVLTDY	109
2711	ChIJgSOcabaQb4YRQGf1wkVLTDY	120
2712	ChIJgSOcabaQb4YRQGf1wkVLTDY	106
2713	ChIJa016G-aXb4YRuNxvsuJV9mE	75
2714	ChIJa016G-aXb4YRuNxvsuJV9mE	109
2715	ChIJa016G-aXb4YRuNxvsuJV9mE	120
2716	ChIJa016G-aXb4YRuNxvsuJV9mE	106
2717	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	75
2718	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	109
2719	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	120
2720	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	106
2721	ChIJhU2PsgmRb4YRo7KzW4vBrns	75
2722	ChIJhU2PsgmRb4YRo7KzW4vBrns	109
2723	ChIJhU2PsgmRb4YRo7KzW4vBrns	120
2724	ChIJhU2PsgmRb4YRo7KzW4vBrns	106
2725	ChIJizxzv7aQb4YRZNTtzIoQE2U	75
2726	ChIJizxzv7aQb4YRZNTtzIoQE2U	109
2727	ChIJizxzv7aQb4YRZNTtzIoQE2U	120
2728	ChIJizxzv7aQb4YRZNTtzIoQE2U	106
2729	ChIJd6wvtLaQb4YR31jmv_BgJBc	75
2730	ChIJd6wvtLaQb4YR31jmv_BgJBc	109
2731	ChIJd6wvtLaQb4YR31jmv_BgJBc	120
2732	ChIJd6wvtLaQb4YR31jmv_BgJBc	106
2733	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	75
2734	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	109
2735	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	120
2736	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	106
2737	ChIJX1vUimKRb4YReJfc86zPS1o	75
2738	ChIJX1vUimKRb4YReJfc86zPS1o	109
2739	ChIJX1vUimKRb4YReJfc86zPS1o	120
2740	ChIJX1vUimKRb4YReJfc86zPS1o	106
2741	ChIJD9lZA0qRb4YR0T5wf9EakC8	57
2742	ChIJD9lZA0qRb4YR0T5wf9EakC8	75
2743	ChIJD9lZA0qRb4YR0T5wf9EakC8	109
2744	ChIJD9lZA0qRb4YR0T5wf9EakC8	120
2745	ChIJD9lZA0qRb4YR0T5wf9EakC8	106
2746	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	75
2747	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	109
2748	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	120
2749	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	106
2750	ChIJEUheZR2Rb4YRxHn68M_1Z_A	7
2751	ChIJEUheZR2Rb4YRxHn68M_1Z_A	75
2752	ChIJEUheZR2Rb4YRxHn68M_1Z_A	109
2753	ChIJEUheZR2Rb4YRxHn68M_1Z_A	120
2754	ChIJEUheZR2Rb4YRxHn68M_1Z_A	85
2755	ChIJEUheZR2Rb4YRxHn68M_1Z_A	106
2756	ChIJ18X3SLqQb4YR11uyryZjjyE	75
2757	ChIJ18X3SLqQb4YR11uyryZjjyE	109
2758	ChIJ18X3SLqQb4YR11uyryZjjyE	120
2759	ChIJ18X3SLqQb4YR11uyryZjjyE	106
2760	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	75
2761	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	109
2762	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	120
2763	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	106
2764	ChIJB_U5yieXb4YRLQRgJM2CnO4	75
2765	ChIJB_U5yieXb4YRLQRgJM2CnO4	109
2766	ChIJB_U5yieXb4YRLQRgJM2CnO4	120
2767	ChIJB_U5yieXb4YRLQRgJM2CnO4	106
2768	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
2769	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
2770	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
2771	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
2772	ChIJdWc0XbuRb4YR0X5JGsEwHSA	75
2773	ChIJdWc0XbuRb4YR0X5JGsEwHSA	109
2774	ChIJdWc0XbuRb4YR0X5JGsEwHSA	120
2775	ChIJdWc0XbuRb4YR0X5JGsEwHSA	106
2776	ChIJG849GdOQb4YRoTVUDtLveVc	75
2777	ChIJG849GdOQb4YRoTVUDtLveVc	57
2778	ChIJG849GdOQb4YRoTVUDtLveVc	109
2779	ChIJG849GdOQb4YRoTVUDtLveVc	120
2780	ChIJG849GdOQb4YRoTVUDtLveVc	85
2781	ChIJG849GdOQb4YRoTVUDtLveVc	106
2782	ChIJcxWF0LiWb4YRvjW4vweCAzA	75
2783	ChIJcxWF0LiWb4YRvjW4vweCAzA	109
2784	ChIJcxWF0LiWb4YRvjW4vweCAzA	120
2785	ChIJcxWF0LiWb4YRvjW4vweCAzA	106
2786	ChIJBxJDE0eRb4YR8wedc3L27oY	57
2787	ChIJBxJDE0eRb4YR8wedc3L27oY	75
2788	ChIJBxJDE0eRb4YR8wedc3L27oY	109
2789	ChIJBxJDE0eRb4YR8wedc3L27oY	120
2790	ChIJBxJDE0eRb4YR8wedc3L27oY	106
2791	ChIJ8xNUitGWb4YRm5jeheZu4Nw	57
2792	ChIJ8xNUitGWb4YRm5jeheZu4Nw	75
2793	ChIJ8xNUitGWb4YRm5jeheZu4Nw	109
2794	ChIJ8xNUitGWb4YRm5jeheZu4Nw	120
2795	ChIJ8xNUitGWb4YRm5jeheZu4Nw	106
2796	ChIJAxhWaLiWb4YRRXqWxllpXTo	15
2797	ChIJAxhWaLiWb4YRRXqWxllpXTo	75
2798	ChIJAxhWaLiWb4YRRXqWxllpXTo	109
2799	ChIJAxhWaLiWb4YRRXqWxllpXTo	120
2800	ChIJAxhWaLiWb4YRRXqWxllpXTo	85
2801	ChIJAxhWaLiWb4YRRXqWxllpXTo	106
2802	ChIJiV6PmjiRb4YRalmz5uZ8008	75
2803	ChIJiV6PmjiRb4YRalmz5uZ8008	109
2804	ChIJiV6PmjiRb4YRalmz5uZ8008	120
2805	ChIJiV6PmjiRb4YRalmz5uZ8008	106
2806	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	75
2807	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	109
2808	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	120
2809	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	106
2810	ChIJQ5CBHM-Wb4YREDH33bUva4g	75
2811	ChIJQ5CBHM-Wb4YREDH33bUva4g	109
2812	ChIJQ5CBHM-Wb4YREDH33bUva4g	120
2813	ChIJQ5CBHM-Wb4YREDH33bUva4g	106
2814	ChIJX6f6ysiWb4YRbGsL2RZkj8A	75
2815	ChIJX6f6ysiWb4YRbGsL2RZkj8A	109
2816	ChIJX6f6ysiWb4YRbGsL2RZkj8A	120
2817	ChIJX6f6ysiWb4YRbGsL2RZkj8A	106
2818	ChIJA5HRjciWb4YR8Z5396h5gIk	75
2819	ChIJA5HRjciWb4YR8Z5396h5gIk	109
2820	ChIJA5HRjciWb4YR8Z5396h5gIk	120
2821	ChIJA5HRjciWb4YR8Z5396h5gIk	106
2822	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
2823	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
2824	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
2825	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
2826	ChIJvaSp7wOVb4YRa8mTHstAID0	75
2827	ChIJvaSp7wOVb4YRa8mTHstAID0	109
2828	ChIJvaSp7wOVb4YRa8mTHstAID0	120
2829	ChIJvaSp7wOVb4YRa8mTHstAID0	106
2830	ChIJtT2l4saWb4YRO8BkZ9Jme7I	57
2831	ChIJtT2l4saWb4YRO8BkZ9Jme7I	75
2832	ChIJtT2l4saWb4YRO8BkZ9Jme7I	109
2833	ChIJtT2l4saWb4YRO8BkZ9Jme7I	120
2834	ChIJtT2l4saWb4YRO8BkZ9Jme7I	106
2835	ChIJI9gqeriWb4YRsRpZRDbKTUc	75
2836	ChIJI9gqeriWb4YRsRpZRDbKTUc	109
2837	ChIJI9gqeriWb4YRsRpZRDbKTUc	120
2838	ChIJI9gqeriWb4YRsRpZRDbKTUc	106
2839	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	9
2840	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	75
2841	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	109
2842	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	120
2843	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	106
2844	ChIJZZdNTr6Wb4YReLa8XqQqdtI	9
2845	ChIJZZdNTr6Wb4YReLa8XqQqdtI	75
2846	ChIJZZdNTr6Wb4YReLa8XqQqdtI	109
2847	ChIJZZdNTr6Wb4YReLa8XqQqdtI	120
2848	ChIJZZdNTr6Wb4YReLa8XqQqdtI	106
2849	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
2850	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
2851	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
2852	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
2853	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
2854	ChIJmwgQwuGTb4YRT-EvolhZRGE	75
2855	ChIJmwgQwuGTb4YRT-EvolhZRGE	109
2856	ChIJmwgQwuGTb4YRT-EvolhZRGE	120
2857	ChIJmwgQwuGTb4YRT-EvolhZRGE	106
2858	ChIJCYEQO2GXb4YRO02qTd-9E-o	75
2859	ChIJCYEQO2GXb4YRO02qTd-9E-o	109
2860	ChIJCYEQO2GXb4YRO02qTd-9E-o	120
2861	ChIJCYEQO2GXb4YRO02qTd-9E-o	106
2862	ChIJw_7akseWb4YRfmj3u-LNKdI	15
2863	ChIJw_7akseWb4YRfmj3u-LNKdI	75
2864	ChIJw_7akseWb4YRfmj3u-LNKdI	109
2865	ChIJw_7akseWb4YRfmj3u-LNKdI	120
2866	ChIJw_7akseWb4YRfmj3u-LNKdI	85
2867	ChIJw_7akseWb4YRfmj3u-LNKdI	106
2868	ChIJG849GdOQb4YRoTVUDtLveVc	75
2869	ChIJG849GdOQb4YRoTVUDtLveVc	57
2870	ChIJG849GdOQb4YRoTVUDtLveVc	109
2871	ChIJG849GdOQb4YRoTVUDtLveVc	120
2872	ChIJG849GdOQb4YRoTVUDtLveVc	85
2873	ChIJG849GdOQb4YRoTVUDtLveVc	106
2874	ChIJcxWF0LiWb4YRvjW4vweCAzA	75
2875	ChIJcxWF0LiWb4YRvjW4vweCAzA	109
2876	ChIJcxWF0LiWb4YRvjW4vweCAzA	120
2877	ChIJcxWF0LiWb4YRvjW4vweCAzA	106
2878	ChIJBxJDE0eRb4YR8wedc3L27oY	57
2879	ChIJBxJDE0eRb4YR8wedc3L27oY	75
2880	ChIJBxJDE0eRb4YR8wedc3L27oY	109
2881	ChIJBxJDE0eRb4YR8wedc3L27oY	120
2882	ChIJBxJDE0eRb4YR8wedc3L27oY	106
2883	ChIJ8xNUitGWb4YRm5jeheZu4Nw	57
2884	ChIJ8xNUitGWb4YRm5jeheZu4Nw	75
2885	ChIJ8xNUitGWb4YRm5jeheZu4Nw	109
2886	ChIJ8xNUitGWb4YRm5jeheZu4Nw	120
2887	ChIJ8xNUitGWb4YRm5jeheZu4Nw	106
2888	ChIJAxhWaLiWb4YRRXqWxllpXTo	15
2889	ChIJAxhWaLiWb4YRRXqWxllpXTo	75
2890	ChIJAxhWaLiWb4YRRXqWxllpXTo	109
2891	ChIJAxhWaLiWb4YRRXqWxllpXTo	120
2892	ChIJAxhWaLiWb4YRRXqWxllpXTo	85
2893	ChIJAxhWaLiWb4YRRXqWxllpXTo	106
2894	ChIJiV6PmjiRb4YRalmz5uZ8008	75
2895	ChIJiV6PmjiRb4YRalmz5uZ8008	109
2896	ChIJiV6PmjiRb4YRalmz5uZ8008	120
2897	ChIJiV6PmjiRb4YRalmz5uZ8008	106
2898	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	75
2899	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	109
2900	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	120
2901	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	106
2902	ChIJQ5CBHM-Wb4YREDH33bUva4g	75
2903	ChIJQ5CBHM-Wb4YREDH33bUva4g	109
2904	ChIJQ5CBHM-Wb4YREDH33bUva4g	120
2905	ChIJQ5CBHM-Wb4YREDH33bUva4g	106
2906	ChIJX6f6ysiWb4YRbGsL2RZkj8A	75
2907	ChIJX6f6ysiWb4YRbGsL2RZkj8A	109
2908	ChIJX6f6ysiWb4YRbGsL2RZkj8A	120
2909	ChIJX6f6ysiWb4YRbGsL2RZkj8A	106
2910	ChIJA5HRjciWb4YR8Z5396h5gIk	75
2911	ChIJA5HRjciWb4YR8Z5396h5gIk	109
2912	ChIJA5HRjciWb4YR8Z5396h5gIk	120
2913	ChIJA5HRjciWb4YR8Z5396h5gIk	106
2914	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
2915	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
2916	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
2917	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
2918	ChIJvaSp7wOVb4YRa8mTHstAID0	75
2919	ChIJvaSp7wOVb4YRa8mTHstAID0	109
2920	ChIJvaSp7wOVb4YRa8mTHstAID0	120
2921	ChIJvaSp7wOVb4YRa8mTHstAID0	106
2922	ChIJtT2l4saWb4YRO8BkZ9Jme7I	57
2923	ChIJtT2l4saWb4YRO8BkZ9Jme7I	75
2924	ChIJtT2l4saWb4YRO8BkZ9Jme7I	109
2925	ChIJtT2l4saWb4YRO8BkZ9Jme7I	120
2926	ChIJtT2l4saWb4YRO8BkZ9Jme7I	106
2927	ChIJI9gqeriWb4YRsRpZRDbKTUc	75
2928	ChIJI9gqeriWb4YRsRpZRDbKTUc	109
2929	ChIJI9gqeriWb4YRsRpZRDbKTUc	120
2930	ChIJI9gqeriWb4YRsRpZRDbKTUc	106
2931	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	9
2932	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	75
2933	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	109
2934	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	120
2935	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	106
2936	ChIJZZdNTr6Wb4YReLa8XqQqdtI	9
2937	ChIJZZdNTr6Wb4YReLa8XqQqdtI	75
2938	ChIJZZdNTr6Wb4YReLa8XqQqdtI	109
2939	ChIJZZdNTr6Wb4YReLa8XqQqdtI	120
2940	ChIJZZdNTr6Wb4YReLa8XqQqdtI	106
2941	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
2942	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
2943	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
2944	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
2945	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
2946	ChIJmwgQwuGTb4YRT-EvolhZRGE	75
2947	ChIJmwgQwuGTb4YRT-EvolhZRGE	109
2948	ChIJmwgQwuGTb4YRT-EvolhZRGE	120
2949	ChIJmwgQwuGTb4YRT-EvolhZRGE	106
2950	ChIJCYEQO2GXb4YRO02qTd-9E-o	75
2951	ChIJCYEQO2GXb4YRO02qTd-9E-o	109
2952	ChIJCYEQO2GXb4YRO02qTd-9E-o	120
2953	ChIJCYEQO2GXb4YRO02qTd-9E-o	106
2954	ChIJw_7akseWb4YRfmj3u-LNKdI	15
2955	ChIJw_7akseWb4YRfmj3u-LNKdI	75
2956	ChIJw_7akseWb4YRfmj3u-LNKdI	109
2957	ChIJw_7akseWb4YRfmj3u-LNKdI	120
2958	ChIJw_7akseWb4YRfmj3u-LNKdI	85
2959	ChIJw_7akseWb4YRfmj3u-LNKdI	106
2960	ChIJ3SRVENOQb4YRbQiXBhmamtU	75
2961	ChIJ3SRVENOQb4YRbQiXBhmamtU	109
2962	ChIJ3SRVENOQb4YRbQiXBhmamtU	120
2963	ChIJ3SRVENOQb4YRbQiXBhmamtU	106
2964	ChIJUccl9NqWb4YRPT_vIYX-Fd0	75
2965	ChIJUccl9NqWb4YRPT_vIYX-Fd0	109
2966	ChIJUccl9NqWb4YRPT_vIYX-Fd0	120
2967	ChIJUccl9NqWb4YRPT_vIYX-Fd0	106
2968	ChIJaVaxNGyUb4YRNCEDffa2rOo	75
2969	ChIJaVaxNGyUb4YRNCEDffa2rOo	109
2970	ChIJaVaxNGyUb4YRNCEDffa2rOo	120
2971	ChIJaVaxNGyUb4YRNCEDffa2rOo	106
2972	ChIJcRdWaLiWb4YRzEiAlby_Mio	57
2973	ChIJcRdWaLiWb4YRzEiAlby_Mio	75
2974	ChIJcRdWaLiWb4YRzEiAlby_Mio	109
2975	ChIJcRdWaLiWb4YRzEiAlby_Mio	120
2976	ChIJcRdWaLiWb4YRzEiAlby_Mio	106
2977	ChIJGZHWMNKWb4YRugAsHtejycY	75
2978	ChIJGZHWMNKWb4YRugAsHtejycY	109
2979	ChIJGZHWMNKWb4YRugAsHtejycY	120
2980	ChIJGZHWMNKWb4YRugAsHtejycY	106
2981	ChIJ_____y-Wb4YRPAIFISDrRJg	75
2982	ChIJ_____y-Wb4YRPAIFISDrRJg	109
2983	ChIJ_____y-Wb4YRPAIFISDrRJg	120
2984	ChIJ_____y-Wb4YRPAIFISDrRJg	106
2985	ChIJNxjTEmmRb4YRmGAYKODhIGA	75
2986	ChIJNxjTEmmRb4YRmGAYKODhIGA	109
2987	ChIJNxjTEmmRb4YRmGAYKODhIGA	120
2988	ChIJNxjTEmmRb4YRmGAYKODhIGA	106
2989	ChIJP0DYrCaXb4YRqdQr9oY_RUY	75
2990	ChIJP0DYrCaXb4YRqdQr9oY_RUY	109
2991	ChIJP0DYrCaXb4YRqdQr9oY_RUY	120
2992	ChIJP0DYrCaXb4YRqdQr9oY_RUY	106
2993	ChIJHUFlaVWXb4YRlyl22Xn3qWU	15
2994	ChIJHUFlaVWXb4YRlyl22Xn3qWU	57
2995	ChIJHUFlaVWXb4YRlyl22Xn3qWU	75
2996	ChIJHUFlaVWXb4YRlyl22Xn3qWU	109
2997	ChIJHUFlaVWXb4YRlyl22Xn3qWU	120
2998	ChIJHUFlaVWXb4YRlyl22Xn3qWU	106
2999	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	75
3000	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	109
3001	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	120
3002	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	106
3003	ChIJOzQxmziRb4YRmnmlFo2O1v8	75
3004	ChIJOzQxmziRb4YRmnmlFo2O1v8	109
3005	ChIJOzQxmziRb4YRmnmlFo2O1v8	120
3006	ChIJOzQxmziRb4YRmnmlFo2O1v8	85
3007	ChIJOzQxmziRb4YRmnmlFo2O1v8	106
3008	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	75
3009	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	109
3010	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	120
3011	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	106
3012	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	75
3013	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	109
3014	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	120
3015	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	106
3016	ChIJ8QHUYEeRb4YRcmZrpgtaOus	75
3017	ChIJ8QHUYEeRb4YRcmZrpgtaOus	109
3018	ChIJ8QHUYEeRb4YRcmZrpgtaOus	120
3019	ChIJ8QHUYEeRb4YRcmZrpgtaOus	106
3020	ChIJJUXSq9GWb4YRakCZkD0BS28	75
3021	ChIJJUXSq9GWb4YRakCZkD0BS28	109
3022	ChIJJUXSq9GWb4YRakCZkD0BS28	120
3023	ChIJJUXSq9GWb4YRakCZkD0BS28	106
3024	ChIJG016XdyWb4YRNpafe40tQIU	57
3025	ChIJG016XdyWb4YRNpafe40tQIU	75
3026	ChIJG016XdyWb4YRNpafe40tQIU	109
3027	ChIJG016XdyWb4YRNpafe40tQIU	120
3028	ChIJG016XdyWb4YRNpafe40tQIU	106
3029	ChIJPVqURzSUb4YR8pxQeWuDw_4	75
3030	ChIJPVqURzSUb4YR8pxQeWuDw_4	109
3031	ChIJPVqURzSUb4YR8pxQeWuDw_4	120
3032	ChIJPVqURzSUb4YR8pxQeWuDw_4	106
3033	ChIJbe5_hhaXb4YRoyZAMwY4XtI	75
3034	ChIJbe5_hhaXb4YRoyZAMwY4XtI	109
3035	ChIJbe5_hhaXb4YRoyZAMwY4XtI	120
3036	ChIJbe5_hhaXb4YRoyZAMwY4XtI	106
3037	ChIJ1ao5QfaRb4YRT-cZcrTRik8	75
3038	ChIJ1ao5QfaRb4YRT-cZcrTRik8	109
3039	ChIJ1ao5QfaRb4YRT-cZcrTRik8	120
3040	ChIJ1ao5QfaRb4YRT-cZcrTRik8	106
3041	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	75
3042	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	109
3043	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	120
3044	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	106
3045	ChIJf2fesraQb4YRcvMlT2Hu_Wo	57
3046	ChIJf2fesraQb4YRcvMlT2Hu_Wo	75
3047	ChIJf2fesraQb4YRcvMlT2Hu_Wo	109
3048	ChIJf2fesraQb4YRcvMlT2Hu_Wo	120
3049	ChIJf2fesraQb4YRcvMlT2Hu_Wo	106
3050	ChIJg2JKk66Qb4YR3GgJN8SGEAo	57
3051	ChIJg2JKk66Qb4YR3GgJN8SGEAo	75
3052	ChIJg2JKk66Qb4YR3GgJN8SGEAo	109
3053	ChIJg2JKk66Qb4YR3GgJN8SGEAo	120
3054	ChIJg2JKk66Qb4YR3GgJN8SGEAo	106
3055	ChIJk78v2tCRb4YRoBxBIj9xgp8	75
3056	ChIJk78v2tCRb4YRoBxBIj9xgp8	109
3057	ChIJk78v2tCRb4YRoBxBIj9xgp8	120
3058	ChIJk78v2tCRb4YRoBxBIj9xgp8	106
3059	ChIJz_BtIaGRb4YRpxW2KD5EEPI	75
3060	ChIJz_BtIaGRb4YRpxW2KD5EEPI	109
3061	ChIJz_BtIaGRb4YRpxW2KD5EEPI	120
3062	ChIJz_BtIaGRb4YRpxW2KD5EEPI	106
3063	ChIJH6WtLQKRb4YR4T0lGHiDzN0	75
3064	ChIJH6WtLQKRb4YR4T0lGHiDzN0	109
3065	ChIJH6WtLQKRb4YR4T0lGHiDzN0	120
3066	ChIJH6WtLQKRb4YR4T0lGHiDzN0	106
3067	ChIJgSOcabaQb4YRQGf1wkVLTDY	75
3068	ChIJgSOcabaQb4YRQGf1wkVLTDY	109
3069	ChIJgSOcabaQb4YRQGf1wkVLTDY	120
3070	ChIJgSOcabaQb4YRQGf1wkVLTDY	106
3071	ChIJa016G-aXb4YRuNxvsuJV9mE	75
3072	ChIJa016G-aXb4YRuNxvsuJV9mE	109
3073	ChIJa016G-aXb4YRuNxvsuJV9mE	120
3074	ChIJa016G-aXb4YRuNxvsuJV9mE	106
3075	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	75
3076	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	109
3077	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	120
3078	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	106
3079	ChIJhU2PsgmRb4YRo7KzW4vBrns	75
3080	ChIJhU2PsgmRb4YRo7KzW4vBrns	109
3081	ChIJhU2PsgmRb4YRo7KzW4vBrns	120
3082	ChIJhU2PsgmRb4YRo7KzW4vBrns	106
3083	ChIJizxzv7aQb4YRZNTtzIoQE2U	75
3084	ChIJizxzv7aQb4YRZNTtzIoQE2U	109
3085	ChIJizxzv7aQb4YRZNTtzIoQE2U	120
3086	ChIJizxzv7aQb4YRZNTtzIoQE2U	106
3087	ChIJd6wvtLaQb4YR31jmv_BgJBc	75
3088	ChIJd6wvtLaQb4YR31jmv_BgJBc	109
3089	ChIJd6wvtLaQb4YR31jmv_BgJBc	120
3090	ChIJd6wvtLaQb4YR31jmv_BgJBc	106
3091	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	75
3092	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	109
3093	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	120
3094	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	106
3095	ChIJX1vUimKRb4YReJfc86zPS1o	75
3096	ChIJX1vUimKRb4YReJfc86zPS1o	109
3097	ChIJX1vUimKRb4YReJfc86zPS1o	120
3098	ChIJX1vUimKRb4YReJfc86zPS1o	106
3099	ChIJD9lZA0qRb4YR0T5wf9EakC8	57
3100	ChIJD9lZA0qRb4YR0T5wf9EakC8	75
3101	ChIJD9lZA0qRb4YR0T5wf9EakC8	109
3102	ChIJD9lZA0qRb4YR0T5wf9EakC8	120
3103	ChIJD9lZA0qRb4YR0T5wf9EakC8	106
3104	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	75
3105	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	109
3106	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	120
3107	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	106
3108	ChIJEUheZR2Rb4YRxHn68M_1Z_A	7
3109	ChIJEUheZR2Rb4YRxHn68M_1Z_A	75
3110	ChIJEUheZR2Rb4YRxHn68M_1Z_A	109
3111	ChIJEUheZR2Rb4YRxHn68M_1Z_A	120
3112	ChIJEUheZR2Rb4YRxHn68M_1Z_A	85
3113	ChIJEUheZR2Rb4YRxHn68M_1Z_A	106
3114	ChIJ18X3SLqQb4YR11uyryZjjyE	75
3115	ChIJ18X3SLqQb4YR11uyryZjjyE	109
3116	ChIJ18X3SLqQb4YR11uyryZjjyE	120
3117	ChIJ18X3SLqQb4YR11uyryZjjyE	106
3118	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	75
3119	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	109
3120	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	120
3121	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	106
3122	ChIJB_U5yieXb4YRLQRgJM2CnO4	75
3123	ChIJB_U5yieXb4YRLQRgJM2CnO4	109
3124	ChIJB_U5yieXb4YRLQRgJM2CnO4	120
3125	ChIJB_U5yieXb4YRLQRgJM2CnO4	106
3126	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
3127	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
3128	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
3129	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
3130	ChIJdWc0XbuRb4YR0X5JGsEwHSA	75
3131	ChIJdWc0XbuRb4YR0X5JGsEwHSA	109
3132	ChIJdWc0XbuRb4YR0X5JGsEwHSA	120
3133	ChIJdWc0XbuRb4YR0X5JGsEwHSA	106
3134	ChIJkeJaBr8QBYgRVop65TGxzT0	57
3135	ChIJkeJaBr8QBYgRVop65TGxzT0	75
3136	ChIJkeJaBr8QBYgRVop65TGxzT0	109
3137	ChIJkeJaBr8QBYgRVop65TGxzT0	120
3138	ChIJkeJaBr8QBYgRVop65TGxzT0	106
3139	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
3140	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
3141	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
3142	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
3143	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
3144	ChIJrdpiPUoXBYgRmffumT1sEwU	75
3145	ChIJrdpiPUoXBYgRmffumT1sEwU	109
3146	ChIJrdpiPUoXBYgRmffumT1sEwU	120
3147	ChIJrdpiPUoXBYgRmffumT1sEwU	106
3148	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
3149	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
3150	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
3151	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
3152	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
3153	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
3154	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
3155	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
3156	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
3157	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
3158	ChIJaaA1QdsQBYgRkAoWKcpkNjk	13
3159	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
3160	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
3161	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
3162	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
3163	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
3164	ChIJ54nTyrgQBYgRD9qefHdRVns	75
3165	ChIJ54nTyrgQBYgRD9qefHdRVns	109
3166	ChIJ54nTyrgQBYgRD9qefHdRVns	120
3167	ChIJ54nTyrgQBYgRD9qefHdRVns	106
3168	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
3169	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
3170	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
3171	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
3172	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
3173	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
3174	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
3175	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
3176	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
3177	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
3178	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
3179	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
3180	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
3181	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
3182	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
3183	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
3184	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
3185	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
3186	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
3187	ChIJYxoPscYQBYgREnc48fDUaCQ	75
3188	ChIJYxoPscYQBYgREnc48fDUaCQ	109
3189	ChIJYxoPscYQBYgREnc48fDUaCQ	120
3190	ChIJYxoPscYQBYgREnc48fDUaCQ	106
3191	ChIJTccCecMQBYgREPD7rlez65I	75
3192	ChIJTccCecMQBYgREPD7rlez65I	109
3193	ChIJTccCecMQBYgREPD7rlez65I	120
3194	ChIJTccCecMQBYgREPD7rlez65I	106
3195	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
3196	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
3197	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
3198	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
3199	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
3200	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
3201	ChIJA82pmd0VBYgRSiwe3anpPvg	75
3202	ChIJA82pmd0VBYgRSiwe3anpPvg	109
3203	ChIJA82pmd0VBYgRSiwe3anpPvg	120
3204	ChIJA82pmd0VBYgRSiwe3anpPvg	106
3205	ChIJNejdd04XBYgRl9_Mc68IV9M	56
3206	ChIJNejdd04XBYgRl9_Mc68IV9M	57
3207	ChIJNejdd04XBYgRl9_Mc68IV9M	75
3208	ChIJNejdd04XBYgRl9_Mc68IV9M	109
3209	ChIJNejdd04XBYgRl9_Mc68IV9M	120
3210	ChIJNejdd04XBYgRl9_Mc68IV9M	106
3211	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
3212	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
3213	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
3214	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
3215	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
3216	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
3217	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
3218	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
3219	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
3220	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
3221	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
3222	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
3223	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
3224	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
3225	ChIJTURpSbkQBYgRzza-nRWLffQ	56
3226	ChIJTURpSbkQBYgRzza-nRWLffQ	57
3227	ChIJTURpSbkQBYgRzza-nRWLffQ	75
3228	ChIJTURpSbkQBYgRzza-nRWLffQ	109
3229	ChIJTURpSbkQBYgRzza-nRWLffQ	120
3230	ChIJTURpSbkQBYgRzza-nRWLffQ	106
3231	ChIJHaxi9rsQBYgRHe7WLuvhVa8	75
3232	ChIJHaxi9rsQBYgRHe7WLuvhVa8	109
3233	ChIJHaxi9rsQBYgRHe7WLuvhVa8	120
3234	ChIJHaxi9rsQBYgRHe7WLuvhVa8	106
3235	ChIJ6wcpabwQBYgRXFCpCsFnK7M	75
3236	ChIJ6wcpabwQBYgRXFCpCsFnK7M	57
3237	ChIJ6wcpabwQBYgRXFCpCsFnK7M	109
3238	ChIJ6wcpabwQBYgRXFCpCsFnK7M	120
3239	ChIJ6wcpabwQBYgRXFCpCsFnK7M	85
3240	ChIJ6wcpabwQBYgRXFCpCsFnK7M	106
3241	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	7
3242	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	15
3243	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	75
3244	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	109
3245	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	120
3246	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	85
3247	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	106
3248	ChIJR4_GSrkQBYgRlJHCR74rM-s	56
3249	ChIJR4_GSrkQBYgRlJHCR74rM-s	75
3250	ChIJR4_GSrkQBYgRlJHCR74rM-s	109
3251	ChIJR4_GSrkQBYgRlJHCR74rM-s	120
3252	ChIJR4_GSrkQBYgRlJHCR74rM-s	106
3253	ChIJEdXItMAQBYgRPJnU9byrpw8	56
3254	ChIJEdXItMAQBYgRPJnU9byrpw8	57
3255	ChIJEdXItMAQBYgRPJnU9byrpw8	75
3256	ChIJEdXItMAQBYgRPJnU9byrpw8	109
3257	ChIJEdXItMAQBYgRPJnU9byrpw8	120
3258	ChIJEdXItMAQBYgRPJnU9byrpw8	106
3259	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	75
3260	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	109
3261	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	120
3262	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	106
3263	ChIJMcyCKbkQBYgRZk8SOBfb_N0	57
3264	ChIJMcyCKbkQBYgRZk8SOBfb_N0	75
3265	ChIJMcyCKbkQBYgRZk8SOBfb_N0	109
3266	ChIJMcyCKbkQBYgRZk8SOBfb_N0	120
3267	ChIJMcyCKbkQBYgRZk8SOBfb_N0	106
3268	ChIJq-GWWMcQBYgR_0-FCZtqFYU	15
3269	ChIJq-GWWMcQBYgR_0-FCZtqFYU	75
3270	ChIJq-GWWMcQBYgR_0-FCZtqFYU	109
3271	ChIJq-GWWMcQBYgR_0-FCZtqFYU	120
3272	ChIJq-GWWMcQBYgR_0-FCZtqFYU	85
3273	ChIJq-GWWMcQBYgR_0-FCZtqFYU	106
3274	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	57
3275	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	75
3276	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	109
3277	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	120
3278	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	85
3279	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	106
3280	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	75
3281	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	109
3282	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	120
3283	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	106
3284	ChIJEz0Ez-gQBYgRC-n2GAZSdks	9
3285	ChIJEz0Ez-gQBYgRC-n2GAZSdks	75
3286	ChIJEz0Ez-gQBYgRC-n2GAZSdks	109
3287	ChIJEz0Ez-gQBYgRC-n2GAZSdks	120
3288	ChIJEz0Ez-gQBYgRC-n2GAZSdks	106
3289	ChIJfwaYn04XBYgRL-0IbL7HrYM	75
3290	ChIJfwaYn04XBYgRL-0IbL7HrYM	109
3291	ChIJfwaYn04XBYgRL-0IbL7HrYM	120
3292	ChIJfwaYn04XBYgRL-0IbL7HrYM	106
3293	ChIJ_28aTL8QBYgRV6uYmeqM88Y	15
3294	ChIJ_28aTL8QBYgRV6uYmeqM88Y	75
3295	ChIJ_28aTL8QBYgRV6uYmeqM88Y	109
3296	ChIJ_28aTL8QBYgRV6uYmeqM88Y	120
3297	ChIJ_28aTL8QBYgRV6uYmeqM88Y	85
3298	ChIJ_28aTL8QBYgRV6uYmeqM88Y	106
3299	ChIJedoQV9MRBYgRqrVWAkYdGzA	75
3300	ChIJedoQV9MRBYgRqrVWAkYdGzA	109
3301	ChIJedoQV9MRBYgRqrVWAkYdGzA	120
3302	ChIJedoQV9MRBYgRqrVWAkYdGzA	106
3303	ChIJYdnWeSURBYgRcdXRVUHG-JE	75
3304	ChIJYdnWeSURBYgRcdXRVUHG-JE	109
3305	ChIJYdnWeSURBYgRcdXRVUHG-JE	120
3306	ChIJYdnWeSURBYgRcdXRVUHG-JE	106
3307	ChIJMYup0f4RBYgR8pFl5Din6P4	75
3308	ChIJMYup0f4RBYgR8pFl5Din6P4	109
3309	ChIJMYup0f4RBYgR8pFl5Din6P4	120
3310	ChIJMYup0f4RBYgR8pFl5Din6P4	106
3311	ChIJC7G_WVERBYgRJeOlxyG8mgo	15
3312	ChIJC7G_WVERBYgRJeOlxyG8mgo	7
3313	ChIJC7G_WVERBYgRJeOlxyG8mgo	57
3314	ChIJC7G_WVERBYgRJeOlxyG8mgo	75
3315	ChIJC7G_WVERBYgRJeOlxyG8mgo	109
3316	ChIJC7G_WVERBYgRJeOlxyG8mgo	120
3317	ChIJC7G_WVERBYgRJeOlxyG8mgo	85
3318	ChIJC7G_WVERBYgRJeOlxyG8mgo	106
3319	ChIJtW0nBRMRBYgRe02OrUNLP78	75
3320	ChIJtW0nBRMRBYgRe02OrUNLP78	109
3321	ChIJtW0nBRMRBYgRe02OrUNLP78	120
3322	ChIJtW0nBRMRBYgRe02OrUNLP78	106
3323	ChIJUdrjn5MRBYgR403D5r4ZCk8	75
3324	ChIJUdrjn5MRBYgR403D5r4ZCk8	109
3325	ChIJUdrjn5MRBYgR403D5r4ZCk8	120
3326	ChIJUdrjn5MRBYgR403D5r4ZCk8	106
3327	ChIJHa7ysYQRBYgRcc-_lQRS248	75
3328	ChIJHa7ysYQRBYgRcc-_lQRS248	109
3329	ChIJHa7ysYQRBYgRcc-_lQRS248	120
3330	ChIJHa7ysYQRBYgRcc-_lQRS248	106
3331	ChIJj8s7AUoXBYgRaqwOZKNaRrs	140
3332	ChIJj8s7AUoXBYgRaqwOZKNaRrs	75
3333	ChIJj8s7AUoXBYgRaqwOZKNaRrs	109
3334	ChIJj8s7AUoXBYgRaqwOZKNaRrs	120
3335	ChIJj8s7AUoXBYgRaqwOZKNaRrs	85
3336	ChIJj8s7AUoXBYgRaqwOZKNaRrs	106
3337	ChIJye6xncMQBYgRI4YpStY3CwE	56
3338	ChIJye6xncMQBYgRI4YpStY3CwE	57
3339	ChIJye6xncMQBYgRI4YpStY3CwE	75
3340	ChIJye6xncMQBYgRI4YpStY3CwE	109
3341	ChIJye6xncMQBYgRI4YpStY3CwE	120
3342	ChIJye6xncMQBYgRI4YpStY3CwE	106
3343	ChIJUaLy-ScXBYgRuLBwoomy1NM	75
3344	ChIJUaLy-ScXBYgRuLBwoomy1NM	109
3345	ChIJUaLy-ScXBYgRuLBwoomy1NM	120
3346	ChIJUaLy-ScXBYgRuLBwoomy1NM	106
3347	ChIJFbOGt4ERBYgR99sTM0PWuB0	75
3348	ChIJFbOGt4ERBYgR99sTM0PWuB0	109
3349	ChIJFbOGt4ERBYgR99sTM0PWuB0	120
3350	ChIJFbOGt4ERBYgR99sTM0PWuB0	106
3351	ChIJCeJkWp4RBYgRTkY4wsoEhG4	75
3352	ChIJCeJkWp4RBYgRTkY4wsoEhG4	109
3353	ChIJCeJkWp4RBYgRTkY4wsoEhG4	120
3354	ChIJCeJkWp4RBYgRTkY4wsoEhG4	106
3355	ChIJ8yqmR2ERBYgR-jq7kJVOU08	75
3356	ChIJ8yqmR2ERBYgR-jq7kJVOU08	109
3357	ChIJ8yqmR2ERBYgR-jq7kJVOU08	120
3358	ChIJ8yqmR2ERBYgR-jq7kJVOU08	106
3359	ChIJr-42Tg0aBYgRdOvgnTS4IA8	56
3360	ChIJr-42Tg0aBYgRdOvgnTS4IA8	75
3361	ChIJr-42Tg0aBYgRdOvgnTS4IA8	109
3362	ChIJr-42Tg0aBYgRdOvgnTS4IA8	120
3363	ChIJr-42Tg0aBYgRdOvgnTS4IA8	106
3364	ChIJadNS2wMRBYgRuna7m-1TVyI	75
3365	ChIJadNS2wMRBYgRuna7m-1TVyI	109
3366	ChIJadNS2wMRBYgRuna7m-1TVyI	120
3367	ChIJadNS2wMRBYgRuna7m-1TVyI	106
3368	ChIJxajE_00XBYgR737ZZOJBDxo	75
3369	ChIJxajE_00XBYgR737ZZOJBDxo	109
3370	ChIJxajE_00XBYgR737ZZOJBDxo	120
3371	ChIJxajE_00XBYgR737ZZOJBDxo	106
3372	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	75
3373	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	109
3374	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	120
3375	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	106
3376	ChIJ9UGhX58QBYgRJROWYSS1i5E	9
3377	ChIJ9UGhX58QBYgRJROWYSS1i5E	75
3378	ChIJ9UGhX58QBYgRJROWYSS1i5E	109
3379	ChIJ9UGhX58QBYgRJROWYSS1i5E	120
3380	ChIJ9UGhX58QBYgRJROWYSS1i5E	106
3381	ChIJa51p_Q0XBYgRWL9FwsikTd0	75
3382	ChIJa51p_Q0XBYgRWL9FwsikTd0	109
3383	ChIJa51p_Q0XBYgRWL9FwsikTd0	120
3384	ChIJa51p_Q0XBYgRWL9FwsikTd0	106
3385	ChIJGa2eFzcXBYgRRTFlRlgCxpA	75
3386	ChIJGa2eFzcXBYgRRTFlRlgCxpA	109
3387	ChIJGa2eFzcXBYgRRTFlRlgCxpA	120
3388	ChIJGa2eFzcXBYgRRTFlRlgCxpA	106
3389	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	75
3390	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	109
3391	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	120
3392	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	106
3393	ChIJc3Ufpt4QBYgRBcWFtKy8g48	15
3394	ChIJc3Ufpt4QBYgRBcWFtKy8g48	75
3395	ChIJc3Ufpt4QBYgRBcWFtKy8g48	109
3396	ChIJc3Ufpt4QBYgRBcWFtKy8g48	120
3397	ChIJc3Ufpt4QBYgRBcWFtKy8g48	85
3398	ChIJc3Ufpt4QBYgRBcWFtKy8g48	106
3399	ChIJ1e7dJooQBYgR8eZbItGcIkw	75
3400	ChIJ1e7dJooQBYgR8eZbItGcIkw	109
3401	ChIJ1e7dJooQBYgR8eZbItGcIkw	120
3402	ChIJ1e7dJooQBYgR8eZbItGcIkw	106
3403	ChIJW9Mxr3wXBYgRd2jbhewjw9k	75
3404	ChIJW9Mxr3wXBYgRd2jbhewjw9k	109
3405	ChIJW9Mxr3wXBYgRd2jbhewjw9k	120
3406	ChIJW9Mxr3wXBYgRd2jbhewjw9k	106
3407	ChIJ57c441MXBYgR0hX7GHWn5vQ	75
3408	ChIJ57c441MXBYgR0hX7GHWn5vQ	109
3409	ChIJ57c441MXBYgR0hX7GHWn5vQ	120
3410	ChIJ57c441MXBYgR0hX7GHWn5vQ	106
3411	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	75
3412	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	109
3413	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	120
3414	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	106
3415	ChIJo7KvSi4bBYgRx5rM13umhOc	75
3416	ChIJo7KvSi4bBYgRx5rM13umhOc	109
3417	ChIJo7KvSi4bBYgRx5rM13umhOc	120
3418	ChIJo7KvSi4bBYgRx5rM13umhOc	106
3419	ChIJf2fesraQb4YRcvMlT2Hu_Wo	57
3420	ChIJf2fesraQb4YRcvMlT2Hu_Wo	75
3421	ChIJf2fesraQb4YRcvMlT2Hu_Wo	109
3422	ChIJf2fesraQb4YRcvMlT2Hu_Wo	120
3423	ChIJf2fesraQb4YRcvMlT2Hu_Wo	106
3424	ChIJg2JKk66Qb4YR3GgJN8SGEAo	57
3425	ChIJg2JKk66Qb4YR3GgJN8SGEAo	75
3426	ChIJg2JKk66Qb4YR3GgJN8SGEAo	109
3427	ChIJg2JKk66Qb4YR3GgJN8SGEAo	120
3428	ChIJg2JKk66Qb4YR3GgJN8SGEAo	106
3429	ChIJk78v2tCRb4YRoBxBIj9xgp8	75
3430	ChIJk78v2tCRb4YRoBxBIj9xgp8	109
3431	ChIJk78v2tCRb4YRoBxBIj9xgp8	120
3432	ChIJk78v2tCRb4YRoBxBIj9xgp8	106
3433	ChIJz_BtIaGRb4YRpxW2KD5EEPI	75
3434	ChIJz_BtIaGRb4YRpxW2KD5EEPI	109
3435	ChIJz_BtIaGRb4YRpxW2KD5EEPI	120
3436	ChIJz_BtIaGRb4YRpxW2KD5EEPI	106
3437	ChIJH6WtLQKRb4YR4T0lGHiDzN0	75
3438	ChIJH6WtLQKRb4YR4T0lGHiDzN0	109
3439	ChIJH6WtLQKRb4YR4T0lGHiDzN0	120
3440	ChIJH6WtLQKRb4YR4T0lGHiDzN0	106
3441	ChIJgSOcabaQb4YRQGf1wkVLTDY	75
3442	ChIJgSOcabaQb4YRQGf1wkVLTDY	109
3443	ChIJgSOcabaQb4YRQGf1wkVLTDY	120
3444	ChIJgSOcabaQb4YRQGf1wkVLTDY	106
3445	ChIJa016G-aXb4YRuNxvsuJV9mE	75
3446	ChIJa016G-aXb4YRuNxvsuJV9mE	109
3447	ChIJa016G-aXb4YRuNxvsuJV9mE	120
3448	ChIJa016G-aXb4YRuNxvsuJV9mE	106
3449	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	75
3450	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	109
3451	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	120
3452	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	106
3453	ChIJhU2PsgmRb4YRo7KzW4vBrns	75
3454	ChIJhU2PsgmRb4YRo7KzW4vBrns	109
3455	ChIJhU2PsgmRb4YRo7KzW4vBrns	120
3456	ChIJhU2PsgmRb4YRo7KzW4vBrns	106
3457	ChIJizxzv7aQb4YRZNTtzIoQE2U	75
3458	ChIJizxzv7aQb4YRZNTtzIoQE2U	109
3459	ChIJizxzv7aQb4YRZNTtzIoQE2U	120
3460	ChIJizxzv7aQb4YRZNTtzIoQE2U	106
3461	ChIJd6wvtLaQb4YR31jmv_BgJBc	75
3462	ChIJd6wvtLaQb4YR31jmv_BgJBc	109
3463	ChIJd6wvtLaQb4YR31jmv_BgJBc	120
3464	ChIJd6wvtLaQb4YR31jmv_BgJBc	106
3465	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	75
3466	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	109
3467	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	120
3468	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	106
3469	ChIJX1vUimKRb4YReJfc86zPS1o	75
3470	ChIJX1vUimKRb4YReJfc86zPS1o	109
3471	ChIJX1vUimKRb4YReJfc86zPS1o	120
3472	ChIJX1vUimKRb4YReJfc86zPS1o	106
3473	ChIJD9lZA0qRb4YR0T5wf9EakC8	57
3474	ChIJD9lZA0qRb4YR0T5wf9EakC8	75
3475	ChIJD9lZA0qRb4YR0T5wf9EakC8	109
3476	ChIJD9lZA0qRb4YR0T5wf9EakC8	120
3477	ChIJD9lZA0qRb4YR0T5wf9EakC8	106
3478	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	75
3479	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	109
3480	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	120
3481	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	106
3482	ChIJEUheZR2Rb4YRxHn68M_1Z_A	7
3483	ChIJEUheZR2Rb4YRxHn68M_1Z_A	75
3484	ChIJEUheZR2Rb4YRxHn68M_1Z_A	109
3485	ChIJEUheZR2Rb4YRxHn68M_1Z_A	120
3486	ChIJEUheZR2Rb4YRxHn68M_1Z_A	85
3487	ChIJEUheZR2Rb4YRxHn68M_1Z_A	106
3488	ChIJ18X3SLqQb4YR11uyryZjjyE	75
3489	ChIJ18X3SLqQb4YR11uyryZjjyE	109
3490	ChIJ18X3SLqQb4YR11uyryZjjyE	120
3491	ChIJ18X3SLqQb4YR11uyryZjjyE	106
3492	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	75
3493	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	109
3494	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	120
3495	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	106
3496	ChIJB_U5yieXb4YRLQRgJM2CnO4	75
3497	ChIJB_U5yieXb4YRLQRgJM2CnO4	109
3498	ChIJB_U5yieXb4YRLQRgJM2CnO4	120
3499	ChIJB_U5yieXb4YRLQRgJM2CnO4	106
3500	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
3501	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
3502	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
3503	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
3504	ChIJG849GdOQb4YRoTVUDtLveVc	75
3505	ChIJG849GdOQb4YRoTVUDtLveVc	57
3506	ChIJG849GdOQb4YRoTVUDtLveVc	109
3507	ChIJG849GdOQb4YRoTVUDtLveVc	120
3508	ChIJG849GdOQb4YRoTVUDtLveVc	85
3509	ChIJG849GdOQb4YRoTVUDtLveVc	106
3510	ChIJcxWF0LiWb4YRvjW4vweCAzA	75
3511	ChIJcxWF0LiWb4YRvjW4vweCAzA	109
3512	ChIJcxWF0LiWb4YRvjW4vweCAzA	120
3513	ChIJcxWF0LiWb4YRvjW4vweCAzA	106
3514	ChIJBxJDE0eRb4YR8wedc3L27oY	57
3515	ChIJBxJDE0eRb4YR8wedc3L27oY	75
3516	ChIJBxJDE0eRb4YR8wedc3L27oY	109
3517	ChIJBxJDE0eRb4YR8wedc3L27oY	120
3518	ChIJBxJDE0eRb4YR8wedc3L27oY	106
3519	ChIJ8xNUitGWb4YRm5jeheZu4Nw	57
3520	ChIJ8xNUitGWb4YRm5jeheZu4Nw	75
3521	ChIJ8xNUitGWb4YRm5jeheZu4Nw	109
3522	ChIJ8xNUitGWb4YRm5jeheZu4Nw	120
3523	ChIJ8xNUitGWb4YRm5jeheZu4Nw	106
3524	ChIJAxhWaLiWb4YRRXqWxllpXTo	15
3525	ChIJAxhWaLiWb4YRRXqWxllpXTo	75
3526	ChIJAxhWaLiWb4YRRXqWxllpXTo	109
3527	ChIJAxhWaLiWb4YRRXqWxllpXTo	120
3528	ChIJAxhWaLiWb4YRRXqWxllpXTo	85
3529	ChIJAxhWaLiWb4YRRXqWxllpXTo	106
3530	ChIJiV6PmjiRb4YRalmz5uZ8008	75
3531	ChIJiV6PmjiRb4YRalmz5uZ8008	109
3532	ChIJiV6PmjiRb4YRalmz5uZ8008	120
3533	ChIJiV6PmjiRb4YRalmz5uZ8008	106
3534	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	75
3535	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	109
3536	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	120
3537	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	106
3538	ChIJQ5CBHM-Wb4YREDH33bUva4g	75
3539	ChIJQ5CBHM-Wb4YREDH33bUva4g	109
3540	ChIJQ5CBHM-Wb4YREDH33bUva4g	120
3541	ChIJQ5CBHM-Wb4YREDH33bUva4g	106
3542	ChIJX6f6ysiWb4YRbGsL2RZkj8A	75
3543	ChIJX6f6ysiWb4YRbGsL2RZkj8A	109
3544	ChIJX6f6ysiWb4YRbGsL2RZkj8A	120
3545	ChIJX6f6ysiWb4YRbGsL2RZkj8A	106
3546	ChIJA5HRjciWb4YR8Z5396h5gIk	75
3547	ChIJA5HRjciWb4YR8Z5396h5gIk	109
3548	ChIJA5HRjciWb4YR8Z5396h5gIk	120
3549	ChIJA5HRjciWb4YR8Z5396h5gIk	106
3550	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
3551	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
3552	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
3553	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
3554	ChIJvaSp7wOVb4YRa8mTHstAID0	75
3555	ChIJvaSp7wOVb4YRa8mTHstAID0	109
3556	ChIJvaSp7wOVb4YRa8mTHstAID0	120
3557	ChIJvaSp7wOVb4YRa8mTHstAID0	106
3558	ChIJtT2l4saWb4YRO8BkZ9Jme7I	57
3559	ChIJtT2l4saWb4YRO8BkZ9Jme7I	75
3560	ChIJtT2l4saWb4YRO8BkZ9Jme7I	109
3561	ChIJtT2l4saWb4YRO8BkZ9Jme7I	120
3562	ChIJtT2l4saWb4YRO8BkZ9Jme7I	106
3563	ChIJI9gqeriWb4YRsRpZRDbKTUc	75
3564	ChIJI9gqeriWb4YRsRpZRDbKTUc	109
3565	ChIJI9gqeriWb4YRsRpZRDbKTUc	120
3566	ChIJI9gqeriWb4YRsRpZRDbKTUc	106
3567	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	9
3568	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	75
3569	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	109
3570	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	120
3571	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	106
3572	ChIJZZdNTr6Wb4YReLa8XqQqdtI	9
3573	ChIJZZdNTr6Wb4YReLa8XqQqdtI	75
3574	ChIJZZdNTr6Wb4YReLa8XqQqdtI	109
3575	ChIJZZdNTr6Wb4YReLa8XqQqdtI	120
3576	ChIJZZdNTr6Wb4YReLa8XqQqdtI	106
3577	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
3578	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
3579	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
3580	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
3581	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
3582	ChIJmwgQwuGTb4YRT-EvolhZRGE	75
3583	ChIJmwgQwuGTb4YRT-EvolhZRGE	109
3584	ChIJmwgQwuGTb4YRT-EvolhZRGE	120
3585	ChIJmwgQwuGTb4YRT-EvolhZRGE	106
3586	ChIJCYEQO2GXb4YRO02qTd-9E-o	75
3587	ChIJCYEQO2GXb4YRO02qTd-9E-o	109
3588	ChIJCYEQO2GXb4YRO02qTd-9E-o	120
3589	ChIJCYEQO2GXb4YRO02qTd-9E-o	106
3590	ChIJw_7akseWb4YRfmj3u-LNKdI	15
3591	ChIJw_7akseWb4YRfmj3u-LNKdI	75
3592	ChIJw_7akseWb4YRfmj3u-LNKdI	109
3593	ChIJw_7akseWb4YRfmj3u-LNKdI	120
3594	ChIJw_7akseWb4YRfmj3u-LNKdI	85
3595	ChIJw_7akseWb4YRfmj3u-LNKdI	106
3596	ChIJ3SRVENOQb4YRbQiXBhmamtU	75
3597	ChIJ3SRVENOQb4YRbQiXBhmamtU	109
3598	ChIJ3SRVENOQb4YRbQiXBhmamtU	120
3599	ChIJ3SRVENOQb4YRbQiXBhmamtU	106
3600	ChIJUccl9NqWb4YRPT_vIYX-Fd0	75
3601	ChIJUccl9NqWb4YRPT_vIYX-Fd0	109
3602	ChIJUccl9NqWb4YRPT_vIYX-Fd0	120
3603	ChIJUccl9NqWb4YRPT_vIYX-Fd0	106
3604	ChIJaVaxNGyUb4YRNCEDffa2rOo	75
3605	ChIJaVaxNGyUb4YRNCEDffa2rOo	109
3606	ChIJaVaxNGyUb4YRNCEDffa2rOo	120
3607	ChIJaVaxNGyUb4YRNCEDffa2rOo	106
3608	ChIJcRdWaLiWb4YRzEiAlby_Mio	57
3609	ChIJcRdWaLiWb4YRzEiAlby_Mio	75
3610	ChIJcRdWaLiWb4YRzEiAlby_Mio	109
3611	ChIJcRdWaLiWb4YRzEiAlby_Mio	120
3612	ChIJcRdWaLiWb4YRzEiAlby_Mio	106
3613	ChIJGZHWMNKWb4YRugAsHtejycY	75
3614	ChIJGZHWMNKWb4YRugAsHtejycY	109
3615	ChIJGZHWMNKWb4YRugAsHtejycY	120
3616	ChIJGZHWMNKWb4YRugAsHtejycY	106
3617	ChIJ_____y-Wb4YRPAIFISDrRJg	75
3618	ChIJ_____y-Wb4YRPAIFISDrRJg	109
3619	ChIJ_____y-Wb4YRPAIFISDrRJg	120
3620	ChIJ_____y-Wb4YRPAIFISDrRJg	106
3621	ChIJNxjTEmmRb4YRmGAYKODhIGA	75
3622	ChIJNxjTEmmRb4YRmGAYKODhIGA	109
3623	ChIJNxjTEmmRb4YRmGAYKODhIGA	120
3624	ChIJNxjTEmmRb4YRmGAYKODhIGA	106
3625	ChIJP0DYrCaXb4YRqdQr9oY_RUY	75
3626	ChIJP0DYrCaXb4YRqdQr9oY_RUY	109
3627	ChIJP0DYrCaXb4YRqdQr9oY_RUY	120
3628	ChIJP0DYrCaXb4YRqdQr9oY_RUY	106
3629	ChIJHUFlaVWXb4YRlyl22Xn3qWU	15
3630	ChIJHUFlaVWXb4YRlyl22Xn3qWU	57
3631	ChIJHUFlaVWXb4YRlyl22Xn3qWU	75
3632	ChIJHUFlaVWXb4YRlyl22Xn3qWU	109
3633	ChIJHUFlaVWXb4YRlyl22Xn3qWU	120
3634	ChIJHUFlaVWXb4YRlyl22Xn3qWU	106
3635	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	75
3636	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	109
3637	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	120
3638	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	106
3639	ChIJOzQxmziRb4YRmnmlFo2O1v8	75
3640	ChIJOzQxmziRb4YRmnmlFo2O1v8	109
3641	ChIJOzQxmziRb4YRmnmlFo2O1v8	120
3642	ChIJOzQxmziRb4YRmnmlFo2O1v8	85
3643	ChIJOzQxmziRb4YRmnmlFo2O1v8	106
3644	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	75
3645	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	109
3646	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	120
3647	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	106
3648	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	75
3649	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	109
3650	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	120
3651	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	106
3652	ChIJ8QHUYEeRb4YRcmZrpgtaOus	75
3653	ChIJ8QHUYEeRb4YRcmZrpgtaOus	109
3654	ChIJ8QHUYEeRb4YRcmZrpgtaOus	120
3655	ChIJ8QHUYEeRb4YRcmZrpgtaOus	106
3656	ChIJJUXSq9GWb4YRakCZkD0BS28	75
3657	ChIJJUXSq9GWb4YRakCZkD0BS28	109
3658	ChIJJUXSq9GWb4YRakCZkD0BS28	120
3659	ChIJJUXSq9GWb4YRakCZkD0BS28	106
3660	ChIJG016XdyWb4YRNpafe40tQIU	57
3661	ChIJG016XdyWb4YRNpafe40tQIU	75
3662	ChIJG016XdyWb4YRNpafe40tQIU	109
3663	ChIJG016XdyWb4YRNpafe40tQIU	120
3664	ChIJG016XdyWb4YRNpafe40tQIU	106
3665	ChIJPVqURzSUb4YR8pxQeWuDw_4	75
3666	ChIJPVqURzSUb4YR8pxQeWuDw_4	109
3667	ChIJPVqURzSUb4YR8pxQeWuDw_4	120
3668	ChIJPVqURzSUb4YR8pxQeWuDw_4	106
3669	ChIJbe5_hhaXb4YRoyZAMwY4XtI	75
3670	ChIJbe5_hhaXb4YRoyZAMwY4XtI	109
3671	ChIJbe5_hhaXb4YRoyZAMwY4XtI	120
3672	ChIJbe5_hhaXb4YRoyZAMwY4XtI	106
3673	ChIJ1ao5QfaRb4YRT-cZcrTRik8	75
3674	ChIJ1ao5QfaRb4YRT-cZcrTRik8	109
3675	ChIJ1ao5QfaRb4YRT-cZcrTRik8	120
3676	ChIJ1ao5QfaRb4YRT-cZcrTRik8	106
3677	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	75
3678	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	109
3679	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	120
3680	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	106
3681	ChIJdWc0XbuRb4YR0X5JGsEwHSA	75
3682	ChIJdWc0XbuRb4YR0X5JGsEwHSA	109
3683	ChIJdWc0XbuRb4YR0X5JGsEwHSA	120
3684	ChIJdWc0XbuRb4YR0X5JGsEwHSA	106
3685	ChIJs_SbswOXb4YRryQah7A97k8	75
3686	ChIJs_SbswOXb4YRryQah7A97k8	109
3687	ChIJs_SbswOXb4YRryQah7A97k8	120
3688	ChIJs_SbswOXb4YRryQah7A97k8	106
3689	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
3690	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
3691	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
3692	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
3693	ChIJW80p12uXb4YRBPBfxHd-InU	75
3694	ChIJW80p12uXb4YRBPBfxHd-InU	109
3695	ChIJW80p12uXb4YRBPBfxHd-InU	120
3696	ChIJW80p12uXb4YRBPBfxHd-InU	106
3697	ChIJHZBzBtuWb4YRmx1jwOLx8HI	75
3698	ChIJHZBzBtuWb4YRmx1jwOLx8HI	109
3699	ChIJHZBzBtuWb4YRmx1jwOLx8HI	120
3700	ChIJHZBzBtuWb4YRmx1jwOLx8HI	106
3701	ChIJW7GQy-yXb4YRAHck2AeFQYw	75
3702	ChIJW7GQy-yXb4YRAHck2AeFQYw	109
3703	ChIJW7GQy-yXb4YRAHck2AeFQYw	120
3704	ChIJW7GQy-yXb4YRAHck2AeFQYw	106
3705	ChIJhZKgb-mWb4YRKew8ny4-roU	75
3706	ChIJhZKgb-mWb4YRKew8ny4-roU	109
3707	ChIJhZKgb-mWb4YRKew8ny4-roU	120
3708	ChIJhZKgb-mWb4YRKew8ny4-roU	106
3709	ChIJh28n56GXb4YRU-Igv8xvilo	75
3710	ChIJh28n56GXb4YRU-Igv8xvilo	109
3711	ChIJh28n56GXb4YRU-Igv8xvilo	120
3712	ChIJh28n56GXb4YRU-Igv8xvilo	106
3713	ChIJYZs6CtuWb4YRdgyUJCIkJkk	75
3714	ChIJYZs6CtuWb4YRdgyUJCIkJkk	57
3715	ChIJYZs6CtuWb4YRdgyUJCIkJkk	109
3716	ChIJYZs6CtuWb4YRdgyUJCIkJkk	120
3717	ChIJYZs6CtuWb4YRdgyUJCIkJkk	106
3718	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	75
3719	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	109
3720	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	120
3721	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	106
3722	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	75
3723	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	109
3724	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	120
3725	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	106
3726	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	75
3727	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	109
3728	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	120
3729	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	106
3730	ChIJjQLHB7mWb4YRO-Xuud8lfV0	75
3731	ChIJjQLHB7mWb4YRO-Xuud8lfV0	109
3732	ChIJjQLHB7mWb4YRO-Xuud8lfV0	120
3733	ChIJjQLHB7mWb4YRO-Xuud8lfV0	106
3734	ChIJCV6WzDyXb4YR29fDVODxUBI	75
3735	ChIJCV6WzDyXb4YR29fDVODxUBI	109
3736	ChIJCV6WzDyXb4YR29fDVODxUBI	120
3737	ChIJCV6WzDyXb4YR29fDVODxUBI	106
3738	ChIJBz11t7iWb4YRhDntrDN-L0s	9
3739	ChIJBz11t7iWb4YRhDntrDN-L0s	75
3740	ChIJBz11t7iWb4YRhDntrDN-L0s	109
3741	ChIJBz11t7iWb4YRhDntrDN-L0s	120
3742	ChIJBz11t7iWb4YRhDntrDN-L0s	106
3743	ChIJcYZO_aOWb4YRBw7DcQmH2iI	75
3744	ChIJcYZO_aOWb4YRBw7DcQmH2iI	109
3745	ChIJcYZO_aOWb4YRBw7DcQmH2iI	120
3746	ChIJcYZO_aOWb4YRBw7DcQmH2iI	106
3747	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	9
3748	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	75
3749	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	109
3750	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	120
3751	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	106
3752	ChIJ954b8nOXb4YRH65tGG_tGiA	9
3753	ChIJ954b8nOXb4YRH65tGG_tGiA	75
3754	ChIJ954b8nOXb4YRH65tGG_tGiA	109
3755	ChIJ954b8nOXb4YRH65tGG_tGiA	120
3756	ChIJ954b8nOXb4YRH65tGG_tGiA	106
3757	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	75
3758	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	109
3759	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	120
3760	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	106
3761	ChIJScs2242Xb4YRsi0dJGeDXGk	75
3762	ChIJScs2242Xb4YRsi0dJGeDXGk	109
3763	ChIJScs2242Xb4YRsi0dJGeDXGk	120
3764	ChIJScs2242Xb4YRsi0dJGeDXGk	106
3765	ChIJkeJaBr8QBYgRVop65TGxzT0	57
3766	ChIJkeJaBr8QBYgRVop65TGxzT0	75
3767	ChIJkeJaBr8QBYgRVop65TGxzT0	109
3768	ChIJkeJaBr8QBYgRVop65TGxzT0	120
3769	ChIJkeJaBr8QBYgRVop65TGxzT0	106
3770	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
3771	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
3772	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
3773	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
3774	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
3775	ChIJrdpiPUoXBYgRmffumT1sEwU	75
3776	ChIJrdpiPUoXBYgRmffumT1sEwU	109
3777	ChIJrdpiPUoXBYgRmffumT1sEwU	120
3778	ChIJrdpiPUoXBYgRmffumT1sEwU	106
3779	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
3780	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
3781	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
3782	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
3783	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
3784	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
3785	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
3786	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
3787	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
3788	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
3789	ChIJaaA1QdsQBYgRkAoWKcpkNjk	13
3790	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
3791	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
3792	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
3793	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
3794	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
3795	ChIJ54nTyrgQBYgRD9qefHdRVns	75
3796	ChIJ54nTyrgQBYgRD9qefHdRVns	109
3797	ChIJ54nTyrgQBYgRD9qefHdRVns	120
3798	ChIJ54nTyrgQBYgRD9qefHdRVns	106
3799	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
3800	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
3801	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
3802	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
3803	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
3804	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
3805	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
3806	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
3807	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
3808	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
3809	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
3810	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
3811	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
3812	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
3813	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
3814	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
3815	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
3816	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
3817	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
3818	ChIJYxoPscYQBYgREnc48fDUaCQ	75
3819	ChIJYxoPscYQBYgREnc48fDUaCQ	109
3820	ChIJYxoPscYQBYgREnc48fDUaCQ	120
3821	ChIJYxoPscYQBYgREnc48fDUaCQ	106
3822	ChIJTccCecMQBYgREPD7rlez65I	75
3823	ChIJTccCecMQBYgREPD7rlez65I	109
3824	ChIJTccCecMQBYgREPD7rlez65I	120
3825	ChIJTccCecMQBYgREPD7rlez65I	106
3826	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
3827	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
3828	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
3829	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
3830	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
3831	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
3832	ChIJA82pmd0VBYgRSiwe3anpPvg	75
3833	ChIJA82pmd0VBYgRSiwe3anpPvg	109
3834	ChIJA82pmd0VBYgRSiwe3anpPvg	120
3835	ChIJA82pmd0VBYgRSiwe3anpPvg	106
3836	ChIJNejdd04XBYgRl9_Mc68IV9M	56
3837	ChIJNejdd04XBYgRl9_Mc68IV9M	57
3838	ChIJNejdd04XBYgRl9_Mc68IV9M	75
3839	ChIJNejdd04XBYgRl9_Mc68IV9M	109
3840	ChIJNejdd04XBYgRl9_Mc68IV9M	120
3841	ChIJNejdd04XBYgRl9_Mc68IV9M	106
3842	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
3843	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
3844	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
3845	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
3846	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
3847	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
3848	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
3849	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
3850	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
3851	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
3852	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
3853	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
3854	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
3855	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
3856	ChIJTURpSbkQBYgRzza-nRWLffQ	56
3857	ChIJTURpSbkQBYgRzza-nRWLffQ	57
3858	ChIJTURpSbkQBYgRzza-nRWLffQ	75
3859	ChIJTURpSbkQBYgRzza-nRWLffQ	109
3860	ChIJTURpSbkQBYgRzza-nRWLffQ	120
3861	ChIJTURpSbkQBYgRzza-nRWLffQ	106
3862	ChIJHaxi9rsQBYgRHe7WLuvhVa8	75
3863	ChIJHaxi9rsQBYgRHe7WLuvhVa8	109
3864	ChIJHaxi9rsQBYgRHe7WLuvhVa8	120
3865	ChIJHaxi9rsQBYgRHe7WLuvhVa8	106
3866	ChIJ6wcpabwQBYgRXFCpCsFnK7M	75
3867	ChIJ6wcpabwQBYgRXFCpCsFnK7M	57
3868	ChIJ6wcpabwQBYgRXFCpCsFnK7M	109
3869	ChIJ6wcpabwQBYgRXFCpCsFnK7M	120
3870	ChIJ6wcpabwQBYgRXFCpCsFnK7M	85
3871	ChIJ6wcpabwQBYgRXFCpCsFnK7M	106
3872	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	7
3873	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	15
3874	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	75
3875	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	109
3876	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	120
3877	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	85
3878	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	106
3879	ChIJR4_GSrkQBYgRlJHCR74rM-s	56
3880	ChIJR4_GSrkQBYgRlJHCR74rM-s	75
3881	ChIJR4_GSrkQBYgRlJHCR74rM-s	109
3882	ChIJR4_GSrkQBYgRlJHCR74rM-s	120
3883	ChIJR4_GSrkQBYgRlJHCR74rM-s	106
3884	ChIJEdXItMAQBYgRPJnU9byrpw8	56
3885	ChIJEdXItMAQBYgRPJnU9byrpw8	57
3886	ChIJEdXItMAQBYgRPJnU9byrpw8	75
3887	ChIJEdXItMAQBYgRPJnU9byrpw8	109
3888	ChIJEdXItMAQBYgRPJnU9byrpw8	120
3889	ChIJEdXItMAQBYgRPJnU9byrpw8	106
3890	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	75
3891	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	109
3892	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	120
3893	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	106
3894	ChIJMcyCKbkQBYgRZk8SOBfb_N0	57
3895	ChIJMcyCKbkQBYgRZk8SOBfb_N0	75
3896	ChIJMcyCKbkQBYgRZk8SOBfb_N0	109
3897	ChIJMcyCKbkQBYgRZk8SOBfb_N0	120
3898	ChIJMcyCKbkQBYgRZk8SOBfb_N0	106
3899	ChIJq-GWWMcQBYgR_0-FCZtqFYU	15
3900	ChIJq-GWWMcQBYgR_0-FCZtqFYU	75
3901	ChIJq-GWWMcQBYgR_0-FCZtqFYU	109
3902	ChIJq-GWWMcQBYgR_0-FCZtqFYU	120
3903	ChIJq-GWWMcQBYgR_0-FCZtqFYU	85
3904	ChIJq-GWWMcQBYgR_0-FCZtqFYU	106
3905	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	57
3906	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	75
3907	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	109
3908	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	120
3909	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	85
3910	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	106
3911	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	75
3912	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	109
3913	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	120
3914	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	106
3915	ChIJEz0Ez-gQBYgRC-n2GAZSdks	9
3916	ChIJEz0Ez-gQBYgRC-n2GAZSdks	75
3917	ChIJEz0Ez-gQBYgRC-n2GAZSdks	109
3918	ChIJEz0Ez-gQBYgRC-n2GAZSdks	120
3919	ChIJEz0Ez-gQBYgRC-n2GAZSdks	106
3920	ChIJfwaYn04XBYgRL-0IbL7HrYM	75
3921	ChIJfwaYn04XBYgRL-0IbL7HrYM	109
3922	ChIJfwaYn04XBYgRL-0IbL7HrYM	120
3923	ChIJfwaYn04XBYgRL-0IbL7HrYM	106
3924	ChIJ_28aTL8QBYgRV6uYmeqM88Y	15
3925	ChIJ_28aTL8QBYgRV6uYmeqM88Y	75
3926	ChIJ_28aTL8QBYgRV6uYmeqM88Y	109
3927	ChIJ_28aTL8QBYgRV6uYmeqM88Y	120
3928	ChIJ_28aTL8QBYgRV6uYmeqM88Y	85
3929	ChIJ_28aTL8QBYgRV6uYmeqM88Y	106
3930	ChIJedoQV9MRBYgRqrVWAkYdGzA	75
3931	ChIJedoQV9MRBYgRqrVWAkYdGzA	109
3932	ChIJedoQV9MRBYgRqrVWAkYdGzA	120
3933	ChIJedoQV9MRBYgRqrVWAkYdGzA	106
3934	ChIJYdnWeSURBYgRcdXRVUHG-JE	75
3935	ChIJYdnWeSURBYgRcdXRVUHG-JE	109
3936	ChIJYdnWeSURBYgRcdXRVUHG-JE	120
3937	ChIJYdnWeSURBYgRcdXRVUHG-JE	106
3938	ChIJMYup0f4RBYgR8pFl5Din6P4	75
3939	ChIJMYup0f4RBYgR8pFl5Din6P4	109
3940	ChIJMYup0f4RBYgR8pFl5Din6P4	120
3941	ChIJMYup0f4RBYgR8pFl5Din6P4	106
3942	ChIJC7G_WVERBYgRJeOlxyG8mgo	15
3943	ChIJC7G_WVERBYgRJeOlxyG8mgo	7
3944	ChIJC7G_WVERBYgRJeOlxyG8mgo	57
3945	ChIJC7G_WVERBYgRJeOlxyG8mgo	75
3946	ChIJC7G_WVERBYgRJeOlxyG8mgo	109
3947	ChIJC7G_WVERBYgRJeOlxyG8mgo	120
3948	ChIJC7G_WVERBYgRJeOlxyG8mgo	85
3949	ChIJC7G_WVERBYgRJeOlxyG8mgo	106
3950	ChIJtW0nBRMRBYgRe02OrUNLP78	75
3951	ChIJtW0nBRMRBYgRe02OrUNLP78	109
3952	ChIJtW0nBRMRBYgRe02OrUNLP78	120
3953	ChIJtW0nBRMRBYgRe02OrUNLP78	106
3954	ChIJUdrjn5MRBYgR403D5r4ZCk8	75
3955	ChIJUdrjn5MRBYgR403D5r4ZCk8	109
3956	ChIJUdrjn5MRBYgR403D5r4ZCk8	120
3957	ChIJUdrjn5MRBYgR403D5r4ZCk8	106
3958	ChIJHa7ysYQRBYgRcc-_lQRS248	75
3959	ChIJHa7ysYQRBYgRcc-_lQRS248	109
3960	ChIJHa7ysYQRBYgRcc-_lQRS248	120
3961	ChIJHa7ysYQRBYgRcc-_lQRS248	106
3962	ChIJj8s7AUoXBYgRaqwOZKNaRrs	140
3963	ChIJj8s7AUoXBYgRaqwOZKNaRrs	75
3964	ChIJj8s7AUoXBYgRaqwOZKNaRrs	109
3965	ChIJj8s7AUoXBYgRaqwOZKNaRrs	120
3966	ChIJj8s7AUoXBYgRaqwOZKNaRrs	85
3967	ChIJj8s7AUoXBYgRaqwOZKNaRrs	106
3968	ChIJye6xncMQBYgRI4YpStY3CwE	56
3969	ChIJye6xncMQBYgRI4YpStY3CwE	57
3970	ChIJye6xncMQBYgRI4YpStY3CwE	75
3971	ChIJye6xncMQBYgRI4YpStY3CwE	109
3972	ChIJye6xncMQBYgRI4YpStY3CwE	120
3973	ChIJye6xncMQBYgRI4YpStY3CwE	106
3974	ChIJUaLy-ScXBYgRuLBwoomy1NM	75
3975	ChIJUaLy-ScXBYgRuLBwoomy1NM	109
3976	ChIJUaLy-ScXBYgRuLBwoomy1NM	120
3977	ChIJUaLy-ScXBYgRuLBwoomy1NM	106
3978	ChIJFbOGt4ERBYgR99sTM0PWuB0	75
3979	ChIJFbOGt4ERBYgR99sTM0PWuB0	109
3980	ChIJFbOGt4ERBYgR99sTM0PWuB0	120
3981	ChIJFbOGt4ERBYgR99sTM0PWuB0	106
3982	ChIJCeJkWp4RBYgRTkY4wsoEhG4	75
3983	ChIJCeJkWp4RBYgRTkY4wsoEhG4	109
3984	ChIJCeJkWp4RBYgRTkY4wsoEhG4	120
3985	ChIJCeJkWp4RBYgRTkY4wsoEhG4	106
3986	ChIJ8yqmR2ERBYgR-jq7kJVOU08	75
3987	ChIJ8yqmR2ERBYgR-jq7kJVOU08	109
3988	ChIJ8yqmR2ERBYgR-jq7kJVOU08	120
3989	ChIJ8yqmR2ERBYgR-jq7kJVOU08	106
3990	ChIJr-42Tg0aBYgRdOvgnTS4IA8	56
3991	ChIJr-42Tg0aBYgRdOvgnTS4IA8	75
3992	ChIJr-42Tg0aBYgRdOvgnTS4IA8	109
3993	ChIJr-42Tg0aBYgRdOvgnTS4IA8	120
3994	ChIJr-42Tg0aBYgRdOvgnTS4IA8	106
3995	ChIJadNS2wMRBYgRuna7m-1TVyI	75
3996	ChIJadNS2wMRBYgRuna7m-1TVyI	109
3997	ChIJadNS2wMRBYgRuna7m-1TVyI	120
3998	ChIJadNS2wMRBYgRuna7m-1TVyI	106
3999	ChIJxajE_00XBYgR737ZZOJBDxo	75
4000	ChIJxajE_00XBYgR737ZZOJBDxo	109
4001	ChIJxajE_00XBYgR737ZZOJBDxo	120
4002	ChIJxajE_00XBYgR737ZZOJBDxo	106
4003	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	75
4004	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	109
4005	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	120
4006	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	106
4007	ChIJ9UGhX58QBYgRJROWYSS1i5E	9
4008	ChIJ9UGhX58QBYgRJROWYSS1i5E	75
4009	ChIJ9UGhX58QBYgRJROWYSS1i5E	109
4010	ChIJ9UGhX58QBYgRJROWYSS1i5E	120
4011	ChIJ9UGhX58QBYgRJROWYSS1i5E	106
4012	ChIJa51p_Q0XBYgRWL9FwsikTd0	75
4013	ChIJa51p_Q0XBYgRWL9FwsikTd0	109
4014	ChIJa51p_Q0XBYgRWL9FwsikTd0	120
4015	ChIJa51p_Q0XBYgRWL9FwsikTd0	106
4016	ChIJGa2eFzcXBYgRRTFlRlgCxpA	75
4017	ChIJGa2eFzcXBYgRRTFlRlgCxpA	109
4018	ChIJGa2eFzcXBYgRRTFlRlgCxpA	120
4019	ChIJGa2eFzcXBYgRRTFlRlgCxpA	106
4020	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	75
4021	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	109
4022	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	120
4023	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	106
4024	ChIJc3Ufpt4QBYgRBcWFtKy8g48	15
4025	ChIJc3Ufpt4QBYgRBcWFtKy8g48	75
4026	ChIJc3Ufpt4QBYgRBcWFtKy8g48	109
4027	ChIJc3Ufpt4QBYgRBcWFtKy8g48	120
4028	ChIJc3Ufpt4QBYgRBcWFtKy8g48	85
4029	ChIJc3Ufpt4QBYgRBcWFtKy8g48	106
4030	ChIJ1e7dJooQBYgR8eZbItGcIkw	75
4031	ChIJ1e7dJooQBYgR8eZbItGcIkw	109
4032	ChIJ1e7dJooQBYgR8eZbItGcIkw	120
4033	ChIJ1e7dJooQBYgR8eZbItGcIkw	106
4034	ChIJW9Mxr3wXBYgRd2jbhewjw9k	75
4035	ChIJW9Mxr3wXBYgRd2jbhewjw9k	109
4036	ChIJW9Mxr3wXBYgRd2jbhewjw9k	120
4037	ChIJW9Mxr3wXBYgRd2jbhewjw9k	106
4038	ChIJ57c441MXBYgR0hX7GHWn5vQ	75
4039	ChIJ57c441MXBYgR0hX7GHWn5vQ	109
4040	ChIJ57c441MXBYgR0hX7GHWn5vQ	120
4041	ChIJ57c441MXBYgR0hX7GHWn5vQ	106
4042	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	75
4043	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	109
4044	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	120
4045	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	106
4046	ChIJo7KvSi4bBYgRx5rM13umhOc	75
4047	ChIJo7KvSi4bBYgRx5rM13umhOc	109
4048	ChIJo7KvSi4bBYgRx5rM13umhOc	120
4049	ChIJo7KvSi4bBYgRx5rM13umhOc	106
4050	ChIJ7UgWk4vV2IgRhjETCc4raac	9
4051	ChIJ7UgWk4vV2IgRhjETCc4raac	75
4052	ChIJ7UgWk4vV2IgRhjETCc4raac	109
4053	ChIJ7UgWk4vV2IgRhjETCc4raac	120
4054	ChIJ7UgWk4vV2IgRhjETCc4raac	106
4055	ChIJTdZIeY3V2IgRcKBrPX5kPOU	75
4056	ChIJTdZIeY3V2IgRcKBrPX5kPOU	109
4057	ChIJTdZIeY3V2IgRcKBrPX5kPOU	120
4058	ChIJTdZIeY3V2IgRcKBrPX5kPOU	106
4059	ChIJi1HxdpPV2IgRLHatiayIb7w	57
4060	ChIJi1HxdpPV2IgRLHatiayIb7w	75
4061	ChIJi1HxdpPV2IgRLHatiayIb7w	109
4062	ChIJi1HxdpPV2IgRLHatiayIb7w	120
4063	ChIJi1HxdpPV2IgRLHatiayIb7w	106
4064	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	57
4065	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	75
4066	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	109
4067	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	120
4068	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	106
4069	ChIJCbVlQQnW2IgRjE5EAZAzq3U	75
4070	ChIJCbVlQQnW2IgRjE5EAZAzq3U	109
4071	ChIJCbVlQQnW2IgRjE5EAZAzq3U	120
4072	ChIJCbVlQQnW2IgRjE5EAZAzq3U	106
4073	ChIJDREnfIvV2IgRbnAeOnsGHso	75
4074	ChIJDREnfIvV2IgRbnAeOnsGHso	109
4075	ChIJDREnfIvV2IgRbnAeOnsGHso	120
4076	ChIJDREnfIvV2IgRbnAeOnsGHso	85
4077	ChIJDREnfIvV2IgRbnAeOnsGHso	106
4078	ChIJc7jrSXQq2YgR5UKnK3nlfJk	15
4079	ChIJc7jrSXQq2YgR5UKnK3nlfJk	75
4080	ChIJc7jrSXQq2YgR5UKnK3nlfJk	109
4081	ChIJc7jrSXQq2YgR5UKnK3nlfJk	120
4082	ChIJc7jrSXQq2YgR5UKnK3nlfJk	106
4083	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	56
4084	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	75
4085	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	109
4086	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	120
4087	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	106
4088	ChIJe2yVib_V2IgRszY_dJGATRk	56
4089	ChIJe2yVib_V2IgRszY_dJGATRk	57
4090	ChIJe2yVib_V2IgRszY_dJGATRk	75
4091	ChIJe2yVib_V2IgRszY_dJGATRk	109
4092	ChIJe2yVib_V2IgRszY_dJGATRk	120
4093	ChIJe2yVib_V2IgRszY_dJGATRk	106
4094	ChIJ-X6SAg_W2IgRLBhoBX5x180	15
4095	ChIJ-X6SAg_W2IgRLBhoBX5x180	75
4096	ChIJ-X6SAg_W2IgRLBhoBX5x180	109
4097	ChIJ-X6SAg_W2IgRLBhoBX5x180	120
4098	ChIJ-X6SAg_W2IgRLBhoBX5x180	85
4099	ChIJ-X6SAg_W2IgRLBhoBX5x180	106
4100	ChIJaynMrOvV2IgREqNCugwBQ40	57
4101	ChIJaynMrOvV2IgREqNCugwBQ40	75
4102	ChIJaynMrOvV2IgREqNCugwBQ40	109
4103	ChIJaynMrOvV2IgREqNCugwBQ40	120
4104	ChIJaynMrOvV2IgREqNCugwBQ40	106
4105	ChIJPcZOf43V2IgRngz1V_2dvKw	75
4106	ChIJPcZOf43V2IgRngz1V_2dvKw	109
4107	ChIJPcZOf43V2IgRngz1V_2dvKw	120
4108	ChIJPcZOf43V2IgRngz1V_2dvKw	106
4109	ChIJi-beQAnW2IgRdUZNRA5v6Kc	75
4110	ChIJi-beQAnW2IgRdUZNRA5v6Kc	109
4111	ChIJi-beQAnW2IgRdUZNRA5v6Kc	120
4112	ChIJi-beQAnW2IgRdUZNRA5v6Kc	106
4113	ChIJi-beQAnW2IgRxIQsYXaWLiw	56
4114	ChIJi-beQAnW2IgRxIQsYXaWLiw	57
4115	ChIJi-beQAnW2IgRxIQsYXaWLiw	75
4116	ChIJi-beQAnW2IgRxIQsYXaWLiw	109
4117	ChIJi-beQAnW2IgRxIQsYXaWLiw	120
4118	ChIJi-beQAnW2IgRxIQsYXaWLiw	106
4119	ChIJe7HA-QXW2IgRVtsvYijEiMY	75
4120	ChIJe7HA-QXW2IgRVtsvYijEiMY	109
4121	ChIJe7HA-QXW2IgRVtsvYijEiMY	120
4122	ChIJe7HA-QXW2IgRVtsvYijEiMY	85
4123	ChIJe7HA-QXW2IgRVtsvYijEiMY	106
4124	ChIJN2NpkwXW2IgR_ulVGz1WI0s	75
4125	ChIJN2NpkwXW2IgR_ulVGz1WI0s	109
4126	ChIJN2NpkwXW2IgR_ulVGz1WI0s	120
4127	ChIJN2NpkwXW2IgR_ulVGz1WI0s	106
4128	ChIJl9drkwXW2IgRtMPZwhfMoVE	57
4129	ChIJl9drkwXW2IgRtMPZwhfMoVE	75
4130	ChIJl9drkwXW2IgRtMPZwhfMoVE	109
4131	ChIJl9drkwXW2IgRtMPZwhfMoVE	120
4132	ChIJl9drkwXW2IgRtMPZwhfMoVE	106
4133	ChIJ72iVEA_W2IgRTiRYb5GEFk0	56
4134	ChIJ72iVEA_W2IgRTiRYb5GEFk0	57
4135	ChIJ72iVEA_W2IgRTiRYb5GEFk0	75
4136	ChIJ72iVEA_W2IgRTiRYb5GEFk0	109
4137	ChIJ72iVEA_W2IgRTiRYb5GEFk0	120
4138	ChIJ72iVEA_W2IgRTiRYb5GEFk0	85
4139	ChIJ72iVEA_W2IgRTiRYb5GEFk0	106
4140	ChIJq0JuNw_W2IgRLMNtj8Hv02o	75
4141	ChIJq0JuNw_W2IgRLMNtj8Hv02o	109
4142	ChIJq0JuNw_W2IgRLMNtj8Hv02o	120
4143	ChIJq0JuNw_W2IgRLMNtj8Hv02o	85
4144	ChIJq0JuNw_W2IgRLMNtj8Hv02o	106
4145	ChIJ74PxJw_W2IgRZUmm66qwTFE	75
4146	ChIJ74PxJw_W2IgRZUmm66qwTFE	109
4147	ChIJ74PxJw_W2IgRZUmm66qwTFE	120
4148	ChIJ74PxJw_W2IgRZUmm66qwTFE	106
4149	ChIJFebt3w7W2IgRKH8jAGrYQW4	75
4150	ChIJFebt3w7W2IgRKH8jAGrYQW4	57
4151	ChIJFebt3w7W2IgRKH8jAGrYQW4	109
4152	ChIJFebt3w7W2IgRKH8jAGrYQW4	120
4153	ChIJFebt3w7W2IgRKH8jAGrYQW4	106
4154	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	75
4155	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	9
4156	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	109
4157	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	120
4158	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	106
4159	ChIJU7m1cm0q2YgReBK7RL88u7M	75
4160	ChIJU7m1cm0q2YgReBK7RL88u7M	109
4161	ChIJU7m1cm0q2YgReBK7RL88u7M	120
4162	ChIJU7m1cm0q2YgReBK7RL88u7M	106
4163	ChIJqdT0hFjW2IgR17y7GrigELA	15
4164	ChIJqdT0hFjW2IgR17y7GrigELA	75
4165	ChIJqdT0hFjW2IgR17y7GrigELA	109
4166	ChIJqdT0hFjW2IgR17y7GrigELA	120
4167	ChIJqdT0hFjW2IgR17y7GrigELA	85
4168	ChIJqdT0hFjW2IgR17y7GrigELA	106
4169	ChIJiRR7vnUq2YgROTVUCdOJUsc	75
4170	ChIJiRR7vnUq2YgROTVUCdOJUsc	109
4171	ChIJiRR7vnUq2YgROTVUCdOJUsc	120
4172	ChIJiRR7vnUq2YgROTVUCdOJUsc	106
4173	ChIJLdlgugXW2IgReIHHdSlKRLs	75
4174	ChIJLdlgugXW2IgReIHHdSlKRLs	56
4175	ChIJLdlgugXW2IgReIHHdSlKRLs	57
4176	ChIJLdlgugXW2IgReIHHdSlKRLs	109
4177	ChIJLdlgugXW2IgReIHHdSlKRLs	120
4178	ChIJLdlgugXW2IgReIHHdSlKRLs	85
4179	ChIJLdlgugXW2IgReIHHdSlKRLs	106
4180	ChIJpwOBKAnW2IgRQuWyumFEfsU	75
4181	ChIJpwOBKAnW2IgRQuWyumFEfsU	109
4182	ChIJpwOBKAnW2IgRQuWyumFEfsU	120
4183	ChIJpwOBKAnW2IgRQuWyumFEfsU	106
4184	ChIJwzOCoJTV2IgRk-GphXCeKrA	75
4185	ChIJwzOCoJTV2IgRk-GphXCeKrA	109
4186	ChIJwzOCoJTV2IgRk-GphXCeKrA	120
4187	ChIJwzOCoJTV2IgRk-GphXCeKrA	106
4188	ChIJ8TS7kHMq2YgR7v-njghQypQ	15
4189	ChIJ8TS7kHMq2YgR7v-njghQypQ	75
4190	ChIJ8TS7kHMq2YgR7v-njghQypQ	109
4191	ChIJ8TS7kHMq2YgR7v-njghQypQ	120
4192	ChIJ8TS7kHMq2YgR7v-njghQypQ	85
4193	ChIJ8TS7kHMq2YgR7v-njghQypQ	106
4194	ChIJc6-wLJvV2IgRudt92qcukP0	75
4195	ChIJc6-wLJvV2IgRudt92qcukP0	109
4196	ChIJc6-wLJvV2IgRudt92qcukP0	120
4197	ChIJc6-wLJvV2IgRudt92qcukP0	106
4198	ChIJC-Fbv43V2IgRNHpVmGYsKT4	75
4199	ChIJC-Fbv43V2IgRNHpVmGYsKT4	109
4200	ChIJC-Fbv43V2IgRNHpVmGYsKT4	120
4201	ChIJC-Fbv43V2IgRNHpVmGYsKT4	106
4202	ChIJtYwCkHUq2YgRDEdcLbErCK8	75
4203	ChIJtYwCkHUq2YgRDEdcLbErCK8	109
4204	ChIJtYwCkHUq2YgRDEdcLbErCK8	120
4205	ChIJtYwCkHUq2YgRDEdcLbErCK8	106
4206	ChIJrX82LgnW2IgRgfJ6HcSGd7w	56
4207	ChIJrX82LgnW2IgRgfJ6HcSGd7w	75
4208	ChIJrX82LgnW2IgRgfJ6HcSGd7w	109
4209	ChIJrX82LgnW2IgRgfJ6HcSGd7w	120
4210	ChIJrX82LgnW2IgRgfJ6HcSGd7w	106
4211	ChIJG4OAecDV2IgRwoz1LJApSgY	15
4212	ChIJG4OAecDV2IgRwoz1LJApSgY	75
4213	ChIJG4OAecDV2IgRwoz1LJApSgY	109
4214	ChIJG4OAecDV2IgRwoz1LJApSgY	120
4215	ChIJG4OAecDV2IgRwoz1LJApSgY	85
4216	ChIJG4OAecDV2IgRwoz1LJApSgY	106
4217	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	57
4218	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	75
4219	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	109
4220	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	120
4221	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	106
4222	ChIJn40qX5PV2IgRxBCYETgpXZM	75
4223	ChIJn40qX5PV2IgRxBCYETgpXZM	109
4224	ChIJn40qX5PV2IgRxBCYETgpXZM	120
4225	ChIJn40qX5PV2IgRxBCYETgpXZM	106
4226	ChIJryPzK7zV2IgRuogP4yJsv6I	75
4227	ChIJryPzK7zV2IgRuogP4yJsv6I	57
4228	ChIJryPzK7zV2IgRuogP4yJsv6I	109
4229	ChIJryPzK7zV2IgRuogP4yJsv6I	120
4230	ChIJryPzK7zV2IgRuogP4yJsv6I	85
4231	ChIJryPzK7zV2IgRuogP4yJsv6I	106
4232	ChIJ23D4Z0XV2IgRK5AYV0LWhao	75
4233	ChIJ23D4Z0XV2IgRK5AYV0LWhao	109
4234	ChIJ23D4Z0XV2IgRK5AYV0LWhao	120
4235	ChIJ23D4Z0XV2IgRK5AYV0LWhao	106
4236	ChIJk7fgElnV2IgRM0ApZwNOPjk	56
4237	ChIJk7fgElnV2IgRM0ApZwNOPjk	57
4238	ChIJk7fgElnV2IgRM0ApZwNOPjk	75
4239	ChIJk7fgElnV2IgRM0ApZwNOPjk	109
4240	ChIJk7fgElnV2IgRM0ApZwNOPjk	120
4241	ChIJk7fgElnV2IgRM0ApZwNOPjk	106
4242	ChIJgcjyX_7V2IgRMJPqRjBX-cE	75
4243	ChIJgcjyX_7V2IgRMJPqRjBX-cE	109
4244	ChIJgcjyX_7V2IgRMJPqRjBX-cE	120
4245	ChIJgcjyX_7V2IgRMJPqRjBX-cE	106
4246	ChIJG849GdOQb4YRoTVUDtLveVc	75
4247	ChIJG849GdOQb4YRoTVUDtLveVc	57
4248	ChIJG849GdOQb4YRoTVUDtLveVc	109
4249	ChIJG849GdOQb4YRoTVUDtLveVc	120
4250	ChIJG849GdOQb4YRoTVUDtLveVc	85
4251	ChIJG849GdOQb4YRoTVUDtLveVc	106
4252	ChIJcxWF0LiWb4YRvjW4vweCAzA	75
4253	ChIJcxWF0LiWb4YRvjW4vweCAzA	109
4254	ChIJcxWF0LiWb4YRvjW4vweCAzA	120
4255	ChIJcxWF0LiWb4YRvjW4vweCAzA	106
4256	ChIJBxJDE0eRb4YR8wedc3L27oY	57
4257	ChIJBxJDE0eRb4YR8wedc3L27oY	75
4258	ChIJBxJDE0eRb4YR8wedc3L27oY	109
4259	ChIJBxJDE0eRb4YR8wedc3L27oY	120
4260	ChIJBxJDE0eRb4YR8wedc3L27oY	106
4261	ChIJ8xNUitGWb4YRm5jeheZu4Nw	57
4262	ChIJ8xNUitGWb4YRm5jeheZu4Nw	75
4263	ChIJ8xNUitGWb4YRm5jeheZu4Nw	109
4264	ChIJ8xNUitGWb4YRm5jeheZu4Nw	120
4265	ChIJ8xNUitGWb4YRm5jeheZu4Nw	106
4266	ChIJAxhWaLiWb4YRRXqWxllpXTo	15
4267	ChIJAxhWaLiWb4YRRXqWxllpXTo	75
4268	ChIJAxhWaLiWb4YRRXqWxllpXTo	109
4269	ChIJAxhWaLiWb4YRRXqWxllpXTo	120
4270	ChIJAxhWaLiWb4YRRXqWxllpXTo	85
4271	ChIJAxhWaLiWb4YRRXqWxllpXTo	106
4272	ChIJiV6PmjiRb4YRalmz5uZ8008	75
4273	ChIJiV6PmjiRb4YRalmz5uZ8008	109
4274	ChIJiV6PmjiRb4YRalmz5uZ8008	120
4275	ChIJiV6PmjiRb4YRalmz5uZ8008	106
4276	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	75
4277	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	109
4278	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	120
4279	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	106
4280	ChIJQ5CBHM-Wb4YREDH33bUva4g	75
4281	ChIJQ5CBHM-Wb4YREDH33bUva4g	109
4282	ChIJQ5CBHM-Wb4YREDH33bUva4g	120
4283	ChIJQ5CBHM-Wb4YREDH33bUva4g	106
4284	ChIJX6f6ysiWb4YRbGsL2RZkj8A	75
4285	ChIJX6f6ysiWb4YRbGsL2RZkj8A	109
4286	ChIJX6f6ysiWb4YRbGsL2RZkj8A	120
4287	ChIJX6f6ysiWb4YRbGsL2RZkj8A	106
4288	ChIJA5HRjciWb4YR8Z5396h5gIk	75
4289	ChIJA5HRjciWb4YR8Z5396h5gIk	109
4290	ChIJA5HRjciWb4YR8Z5396h5gIk	120
4291	ChIJA5HRjciWb4YR8Z5396h5gIk	106
4292	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
4293	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
4294	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
4295	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
4296	ChIJvaSp7wOVb4YRa8mTHstAID0	75
4297	ChIJvaSp7wOVb4YRa8mTHstAID0	109
4298	ChIJvaSp7wOVb4YRa8mTHstAID0	120
4299	ChIJvaSp7wOVb4YRa8mTHstAID0	106
4300	ChIJtT2l4saWb4YRO8BkZ9Jme7I	57
4301	ChIJtT2l4saWb4YRO8BkZ9Jme7I	75
4302	ChIJtT2l4saWb4YRO8BkZ9Jme7I	109
4303	ChIJtT2l4saWb4YRO8BkZ9Jme7I	120
4304	ChIJtT2l4saWb4YRO8BkZ9Jme7I	106
4305	ChIJI9gqeriWb4YRsRpZRDbKTUc	75
4306	ChIJI9gqeriWb4YRsRpZRDbKTUc	109
4307	ChIJI9gqeriWb4YRsRpZRDbKTUc	120
4308	ChIJI9gqeriWb4YRsRpZRDbKTUc	106
4309	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	9
4310	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	75
4311	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	109
4312	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	120
4313	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	106
4314	ChIJZZdNTr6Wb4YReLa8XqQqdtI	9
4315	ChIJZZdNTr6Wb4YReLa8XqQqdtI	75
4316	ChIJZZdNTr6Wb4YReLa8XqQqdtI	109
4317	ChIJZZdNTr6Wb4YReLa8XqQqdtI	120
4318	ChIJZZdNTr6Wb4YReLa8XqQqdtI	106
4319	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
4320	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
4321	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
4322	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
4323	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
4324	ChIJmwgQwuGTb4YRT-EvolhZRGE	75
4325	ChIJmwgQwuGTb4YRT-EvolhZRGE	109
4326	ChIJmwgQwuGTb4YRT-EvolhZRGE	120
4327	ChIJmwgQwuGTb4YRT-EvolhZRGE	106
4328	ChIJCYEQO2GXb4YRO02qTd-9E-o	75
4329	ChIJCYEQO2GXb4YRO02qTd-9E-o	109
4330	ChIJCYEQO2GXb4YRO02qTd-9E-o	120
4331	ChIJCYEQO2GXb4YRO02qTd-9E-o	106
4332	ChIJw_7akseWb4YRfmj3u-LNKdI	15
4333	ChIJw_7akseWb4YRfmj3u-LNKdI	75
4334	ChIJw_7akseWb4YRfmj3u-LNKdI	109
4335	ChIJw_7akseWb4YRfmj3u-LNKdI	120
4336	ChIJw_7akseWb4YRfmj3u-LNKdI	85
4337	ChIJw_7akseWb4YRfmj3u-LNKdI	106
4338	ChIJ3SRVENOQb4YRbQiXBhmamtU	75
4339	ChIJ3SRVENOQb4YRbQiXBhmamtU	109
4340	ChIJ3SRVENOQb4YRbQiXBhmamtU	120
4341	ChIJ3SRVENOQb4YRbQiXBhmamtU	106
4342	ChIJUccl9NqWb4YRPT_vIYX-Fd0	75
4343	ChIJUccl9NqWb4YRPT_vIYX-Fd0	109
4344	ChIJUccl9NqWb4YRPT_vIYX-Fd0	120
4345	ChIJUccl9NqWb4YRPT_vIYX-Fd0	106
4346	ChIJaVaxNGyUb4YRNCEDffa2rOo	75
4347	ChIJaVaxNGyUb4YRNCEDffa2rOo	109
4348	ChIJaVaxNGyUb4YRNCEDffa2rOo	120
4349	ChIJaVaxNGyUb4YRNCEDffa2rOo	106
4350	ChIJcRdWaLiWb4YRzEiAlby_Mio	57
4351	ChIJcRdWaLiWb4YRzEiAlby_Mio	75
4352	ChIJcRdWaLiWb4YRzEiAlby_Mio	109
4353	ChIJcRdWaLiWb4YRzEiAlby_Mio	120
4354	ChIJcRdWaLiWb4YRzEiAlby_Mio	106
4355	ChIJGZHWMNKWb4YRugAsHtejycY	75
4356	ChIJGZHWMNKWb4YRugAsHtejycY	109
4357	ChIJGZHWMNKWb4YRugAsHtejycY	120
4358	ChIJGZHWMNKWb4YRugAsHtejycY	106
4359	ChIJ_____y-Wb4YRPAIFISDrRJg	75
4360	ChIJ_____y-Wb4YRPAIFISDrRJg	109
4361	ChIJ_____y-Wb4YRPAIFISDrRJg	120
4362	ChIJ_____y-Wb4YRPAIFISDrRJg	106
4363	ChIJNxjTEmmRb4YRmGAYKODhIGA	75
4364	ChIJNxjTEmmRb4YRmGAYKODhIGA	109
4365	ChIJNxjTEmmRb4YRmGAYKODhIGA	120
4366	ChIJNxjTEmmRb4YRmGAYKODhIGA	106
4367	ChIJP0DYrCaXb4YRqdQr9oY_RUY	75
4368	ChIJP0DYrCaXb4YRqdQr9oY_RUY	109
4369	ChIJP0DYrCaXb4YRqdQr9oY_RUY	120
4370	ChIJP0DYrCaXb4YRqdQr9oY_RUY	106
4371	ChIJHUFlaVWXb4YRlyl22Xn3qWU	15
4372	ChIJHUFlaVWXb4YRlyl22Xn3qWU	57
4373	ChIJHUFlaVWXb4YRlyl22Xn3qWU	75
4374	ChIJHUFlaVWXb4YRlyl22Xn3qWU	109
4375	ChIJHUFlaVWXb4YRlyl22Xn3qWU	120
4376	ChIJHUFlaVWXb4YRlyl22Xn3qWU	106
4377	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	75
4378	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	109
4379	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	120
4380	ChIJg8VKZ86Wb4YR8hM-rnqSTeo	106
4381	ChIJOzQxmziRb4YRmnmlFo2O1v8	75
4382	ChIJOzQxmziRb4YRmnmlFo2O1v8	109
4383	ChIJOzQxmziRb4YRmnmlFo2O1v8	120
4384	ChIJOzQxmziRb4YRmnmlFo2O1v8	85
4385	ChIJOzQxmziRb4YRmnmlFo2O1v8	106
4386	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	75
4387	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	109
4388	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	120
4389	ChIJXX3eDNGWb4YR9w9gzTmU4Rg	106
4390	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	75
4391	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	109
4392	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	120
4393	ChIJZ4DNA0qXb4YRAjTnoOBTOAk	106
4394	ChIJ8QHUYEeRb4YRcmZrpgtaOus	75
4395	ChIJ8QHUYEeRb4YRcmZrpgtaOus	109
4396	ChIJ8QHUYEeRb4YRcmZrpgtaOus	120
4397	ChIJ8QHUYEeRb4YRcmZrpgtaOus	106
4398	ChIJJUXSq9GWb4YRakCZkD0BS28	75
4399	ChIJJUXSq9GWb4YRakCZkD0BS28	109
4400	ChIJJUXSq9GWb4YRakCZkD0BS28	120
4401	ChIJJUXSq9GWb4YRakCZkD0BS28	106
4402	ChIJG016XdyWb4YRNpafe40tQIU	57
4403	ChIJG016XdyWb4YRNpafe40tQIU	75
4404	ChIJG016XdyWb4YRNpafe40tQIU	109
4405	ChIJG016XdyWb4YRNpafe40tQIU	120
4406	ChIJG016XdyWb4YRNpafe40tQIU	106
4407	ChIJPVqURzSUb4YR8pxQeWuDw_4	75
4408	ChIJPVqURzSUb4YR8pxQeWuDw_4	109
4409	ChIJPVqURzSUb4YR8pxQeWuDw_4	120
4410	ChIJPVqURzSUb4YR8pxQeWuDw_4	106
4411	ChIJbe5_hhaXb4YRoyZAMwY4XtI	75
4412	ChIJbe5_hhaXb4YRoyZAMwY4XtI	109
4413	ChIJbe5_hhaXb4YRoyZAMwY4XtI	120
4414	ChIJbe5_hhaXb4YRoyZAMwY4XtI	106
4415	ChIJ1ao5QfaRb4YRT-cZcrTRik8	75
4416	ChIJ1ao5QfaRb4YRT-cZcrTRik8	109
4417	ChIJ1ao5QfaRb4YRT-cZcrTRik8	120
4418	ChIJ1ao5QfaRb4YRT-cZcrTRik8	106
4419	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	75
4420	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	109
4421	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	120
4422	ChIJ_5pu6UaRb4YRkIQHRAWKeDs	106
4423	ChIJdWc0XbuRb4YR0X5JGsEwHSA	75
4424	ChIJdWc0XbuRb4YR0X5JGsEwHSA	109
4425	ChIJdWc0XbuRb4YR0X5JGsEwHSA	120
4426	ChIJdWc0XbuRb4YR0X5JGsEwHSA	106
4427	ChIJs_SbswOXb4YRryQah7A97k8	75
4428	ChIJs_SbswOXb4YRryQah7A97k8	109
4429	ChIJs_SbswOXb4YRryQah7A97k8	120
4430	ChIJs_SbswOXb4YRryQah7A97k8	106
4431	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
4432	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
4433	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
4434	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
4435	ChIJW80p12uXb4YRBPBfxHd-InU	75
4436	ChIJW80p12uXb4YRBPBfxHd-InU	109
4437	ChIJW80p12uXb4YRBPBfxHd-InU	120
4438	ChIJW80p12uXb4YRBPBfxHd-InU	106
4439	ChIJHZBzBtuWb4YRmx1jwOLx8HI	75
4440	ChIJHZBzBtuWb4YRmx1jwOLx8HI	109
4441	ChIJHZBzBtuWb4YRmx1jwOLx8HI	120
4442	ChIJHZBzBtuWb4YRmx1jwOLx8HI	106
4443	ChIJW7GQy-yXb4YRAHck2AeFQYw	75
4444	ChIJW7GQy-yXb4YRAHck2AeFQYw	109
4445	ChIJW7GQy-yXb4YRAHck2AeFQYw	120
4446	ChIJW7GQy-yXb4YRAHck2AeFQYw	106
4447	ChIJhZKgb-mWb4YRKew8ny4-roU	75
4448	ChIJhZKgb-mWb4YRKew8ny4-roU	109
4449	ChIJhZKgb-mWb4YRKew8ny4-roU	120
4450	ChIJhZKgb-mWb4YRKew8ny4-roU	106
4451	ChIJh28n56GXb4YRU-Igv8xvilo	75
4452	ChIJh28n56GXb4YRU-Igv8xvilo	109
4453	ChIJh28n56GXb4YRU-Igv8xvilo	120
4454	ChIJh28n56GXb4YRU-Igv8xvilo	106
4455	ChIJYZs6CtuWb4YRdgyUJCIkJkk	75
4456	ChIJYZs6CtuWb4YRdgyUJCIkJkk	57
4457	ChIJYZs6CtuWb4YRdgyUJCIkJkk	109
4458	ChIJYZs6CtuWb4YRdgyUJCIkJkk	120
4459	ChIJYZs6CtuWb4YRdgyUJCIkJkk	106
4460	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	75
4461	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	109
4462	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	120
4463	ChIJZwOpzr6Xb4YRY-xKHj6U7ek	106
4464	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	75
4465	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	109
4466	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	120
4467	ChIJnTq6tu-Xb4YRzQCb0PQRbsA	106
4468	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	75
4469	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	109
4470	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	120
4471	ChIJ0z9jMHqRb4YRzQBJ0Yl8oXo	106
4472	ChIJjQLHB7mWb4YRO-Xuud8lfV0	75
4473	ChIJjQLHB7mWb4YRO-Xuud8lfV0	109
4474	ChIJjQLHB7mWb4YRO-Xuud8lfV0	120
4475	ChIJjQLHB7mWb4YRO-Xuud8lfV0	106
4476	ChIJCV6WzDyXb4YR29fDVODxUBI	75
4477	ChIJCV6WzDyXb4YR29fDVODxUBI	109
4478	ChIJCV6WzDyXb4YR29fDVODxUBI	120
4479	ChIJCV6WzDyXb4YR29fDVODxUBI	106
4480	ChIJBz11t7iWb4YRhDntrDN-L0s	9
4481	ChIJBz11t7iWb4YRhDntrDN-L0s	75
4482	ChIJBz11t7iWb4YRhDntrDN-L0s	109
4483	ChIJBz11t7iWb4YRhDntrDN-L0s	120
4484	ChIJBz11t7iWb4YRhDntrDN-L0s	106
4485	ChIJcYZO_aOWb4YRBw7DcQmH2iI	75
4486	ChIJcYZO_aOWb4YRBw7DcQmH2iI	109
4487	ChIJcYZO_aOWb4YRBw7DcQmH2iI	120
4488	ChIJcYZO_aOWb4YRBw7DcQmH2iI	106
4489	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	9
4490	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	75
4491	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	109
4492	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	120
4493	ChIJ-yYZNr-Wb4YRncRiPkISf4Q	106
4494	ChIJ954b8nOXb4YRH65tGG_tGiA	9
4495	ChIJ954b8nOXb4YRH65tGG_tGiA	75
4496	ChIJ954b8nOXb4YRH65tGG_tGiA	109
4497	ChIJ954b8nOXb4YRH65tGG_tGiA	120
4498	ChIJ954b8nOXb4YRH65tGG_tGiA	106
4499	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	75
4500	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	109
4501	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	120
4502	ChIJ00vDdS6Xb4YRqHsZKiMfm6E	106
4503	ChIJScs2242Xb4YRsi0dJGeDXGk	75
4504	ChIJScs2242Xb4YRsi0dJGeDXGk	109
4505	ChIJScs2242Xb4YRsi0dJGeDXGk	120
4506	ChIJScs2242Xb4YRsi0dJGeDXGk	106
4507	ChIJkeJaBr8QBYgRVop65TGxzT0	57
4508	ChIJkeJaBr8QBYgRVop65TGxzT0	75
4509	ChIJkeJaBr8QBYgRVop65TGxzT0	109
4510	ChIJkeJaBr8QBYgRVop65TGxzT0	120
4511	ChIJkeJaBr8QBYgRVop65TGxzT0	106
4512	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
4513	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
4514	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
4515	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
4516	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
4517	ChIJrdpiPUoXBYgRmffumT1sEwU	75
4518	ChIJrdpiPUoXBYgRmffumT1sEwU	109
4519	ChIJrdpiPUoXBYgRmffumT1sEwU	120
4520	ChIJrdpiPUoXBYgRmffumT1sEwU	106
4521	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
4522	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
4523	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
4524	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
4525	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
4526	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
4527	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
4528	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
4529	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
4530	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
4531	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
4532	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
4533	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
4534	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
4535	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
4536	ChIJ54nTyrgQBYgRD9qefHdRVns	75
4537	ChIJ54nTyrgQBYgRD9qefHdRVns	109
4538	ChIJ54nTyrgQBYgRD9qefHdRVns	120
4539	ChIJ54nTyrgQBYgRD9qefHdRVns	106
4540	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
4541	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
4542	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
4543	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
4544	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
4545	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
4546	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
4547	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
4548	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
4549	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
4550	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
4551	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
4552	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
4553	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
4554	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
4555	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
4556	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
4557	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
4558	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
4559	ChIJYxoPscYQBYgREnc48fDUaCQ	75
4560	ChIJYxoPscYQBYgREnc48fDUaCQ	109
4561	ChIJYxoPscYQBYgREnc48fDUaCQ	120
4562	ChIJYxoPscYQBYgREnc48fDUaCQ	106
4563	ChIJTccCecMQBYgREPD7rlez65I	75
4564	ChIJTccCecMQBYgREPD7rlez65I	109
4565	ChIJTccCecMQBYgREPD7rlez65I	120
4566	ChIJTccCecMQBYgREPD7rlez65I	106
4567	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
4568	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
4569	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
4570	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
4571	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
4572	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
4573	ChIJA82pmd0VBYgRSiwe3anpPvg	75
4574	ChIJA82pmd0VBYgRSiwe3anpPvg	109
4575	ChIJA82pmd0VBYgRSiwe3anpPvg	120
4576	ChIJA82pmd0VBYgRSiwe3anpPvg	106
4577	ChIJNejdd04XBYgRl9_Mc68IV9M	56
4578	ChIJNejdd04XBYgRl9_Mc68IV9M	57
4579	ChIJNejdd04XBYgRl9_Mc68IV9M	75
4580	ChIJNejdd04XBYgRl9_Mc68IV9M	109
4581	ChIJNejdd04XBYgRl9_Mc68IV9M	120
4582	ChIJNejdd04XBYgRl9_Mc68IV9M	106
4583	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
4584	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
4585	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
4586	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
4587	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
4588	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
4589	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
4590	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
4591	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
4592	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
4593	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
4594	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
4595	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
4596	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
4597	ChIJTURpSbkQBYgRzza-nRWLffQ	56
4598	ChIJTURpSbkQBYgRzza-nRWLffQ	57
4599	ChIJTURpSbkQBYgRzza-nRWLffQ	75
4600	ChIJTURpSbkQBYgRzza-nRWLffQ	109
4601	ChIJTURpSbkQBYgRzza-nRWLffQ	120
4602	ChIJTURpSbkQBYgRzza-nRWLffQ	106
4603	ChIJHaxi9rsQBYgRHe7WLuvhVa8	75
4604	ChIJHaxi9rsQBYgRHe7WLuvhVa8	109
4605	ChIJHaxi9rsQBYgRHe7WLuvhVa8	120
4606	ChIJHaxi9rsQBYgRHe7WLuvhVa8	106
4607	ChIJ6wcpabwQBYgRXFCpCsFnK7M	75
4608	ChIJ6wcpabwQBYgRXFCpCsFnK7M	57
4609	ChIJ6wcpabwQBYgRXFCpCsFnK7M	109
4610	ChIJ6wcpabwQBYgRXFCpCsFnK7M	120
4611	ChIJ6wcpabwQBYgRXFCpCsFnK7M	85
4612	ChIJ6wcpabwQBYgRXFCpCsFnK7M	106
4613	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	7
4614	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	15
4615	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	75
4616	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	109
4617	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	120
4618	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	85
4619	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	106
4620	ChIJR4_GSrkQBYgRlJHCR74rM-s	56
4621	ChIJR4_GSrkQBYgRlJHCR74rM-s	75
4622	ChIJR4_GSrkQBYgRlJHCR74rM-s	109
4623	ChIJR4_GSrkQBYgRlJHCR74rM-s	120
4624	ChIJR4_GSrkQBYgRlJHCR74rM-s	106
4625	ChIJEdXItMAQBYgRPJnU9byrpw8	56
4626	ChIJEdXItMAQBYgRPJnU9byrpw8	57
4627	ChIJEdXItMAQBYgRPJnU9byrpw8	75
4628	ChIJEdXItMAQBYgRPJnU9byrpw8	109
4629	ChIJEdXItMAQBYgRPJnU9byrpw8	120
4630	ChIJEdXItMAQBYgRPJnU9byrpw8	106
4631	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	75
4632	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	109
4633	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	120
4634	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	106
4635	ChIJMcyCKbkQBYgRZk8SOBfb_N0	57
4636	ChIJMcyCKbkQBYgRZk8SOBfb_N0	75
4637	ChIJMcyCKbkQBYgRZk8SOBfb_N0	109
4638	ChIJMcyCKbkQBYgRZk8SOBfb_N0	120
4639	ChIJMcyCKbkQBYgRZk8SOBfb_N0	106
4640	ChIJq-GWWMcQBYgR_0-FCZtqFYU	15
4641	ChIJq-GWWMcQBYgR_0-FCZtqFYU	75
4642	ChIJq-GWWMcQBYgR_0-FCZtqFYU	109
4643	ChIJq-GWWMcQBYgR_0-FCZtqFYU	120
4644	ChIJq-GWWMcQBYgR_0-FCZtqFYU	85
4645	ChIJq-GWWMcQBYgR_0-FCZtqFYU	106
4646	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	57
4647	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	75
4648	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	109
4649	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	120
4650	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	85
4651	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	106
4652	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	75
4653	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	109
4654	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	120
4655	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	106
4656	ChIJEz0Ez-gQBYgRC-n2GAZSdks	9
4657	ChIJEz0Ez-gQBYgRC-n2GAZSdks	75
4658	ChIJEz0Ez-gQBYgRC-n2GAZSdks	109
4659	ChIJEz0Ez-gQBYgRC-n2GAZSdks	120
4660	ChIJEz0Ez-gQBYgRC-n2GAZSdks	106
4661	ChIJfwaYn04XBYgRL-0IbL7HrYM	75
4662	ChIJfwaYn04XBYgRL-0IbL7HrYM	109
4663	ChIJfwaYn04XBYgRL-0IbL7HrYM	120
4664	ChIJfwaYn04XBYgRL-0IbL7HrYM	106
4665	ChIJ_28aTL8QBYgRV6uYmeqM88Y	15
4666	ChIJ_28aTL8QBYgRV6uYmeqM88Y	75
4667	ChIJ_28aTL8QBYgRV6uYmeqM88Y	109
4668	ChIJ_28aTL8QBYgRV6uYmeqM88Y	120
4669	ChIJ_28aTL8QBYgRV6uYmeqM88Y	85
4670	ChIJ_28aTL8QBYgRV6uYmeqM88Y	106
4671	ChIJedoQV9MRBYgRqrVWAkYdGzA	75
4672	ChIJedoQV9MRBYgRqrVWAkYdGzA	109
4673	ChIJedoQV9MRBYgRqrVWAkYdGzA	120
4674	ChIJedoQV9MRBYgRqrVWAkYdGzA	106
4675	ChIJYdnWeSURBYgRcdXRVUHG-JE	75
4676	ChIJYdnWeSURBYgRcdXRVUHG-JE	109
4677	ChIJYdnWeSURBYgRcdXRVUHG-JE	120
4678	ChIJYdnWeSURBYgRcdXRVUHG-JE	106
4679	ChIJMYup0f4RBYgR8pFl5Din6P4	75
4680	ChIJMYup0f4RBYgR8pFl5Din6P4	109
4681	ChIJMYup0f4RBYgR8pFl5Din6P4	120
4682	ChIJMYup0f4RBYgR8pFl5Din6P4	106
4683	ChIJC7G_WVERBYgRJeOlxyG8mgo	15
4684	ChIJC7G_WVERBYgRJeOlxyG8mgo	7
4685	ChIJC7G_WVERBYgRJeOlxyG8mgo	57
4686	ChIJC7G_WVERBYgRJeOlxyG8mgo	75
4687	ChIJC7G_WVERBYgRJeOlxyG8mgo	109
4688	ChIJC7G_WVERBYgRJeOlxyG8mgo	120
4689	ChIJC7G_WVERBYgRJeOlxyG8mgo	85
4690	ChIJC7G_WVERBYgRJeOlxyG8mgo	106
4691	ChIJtW0nBRMRBYgRe02OrUNLP78	75
4692	ChIJtW0nBRMRBYgRe02OrUNLP78	109
4693	ChIJtW0nBRMRBYgRe02OrUNLP78	120
4694	ChIJtW0nBRMRBYgRe02OrUNLP78	106
4695	ChIJUdrjn5MRBYgR403D5r4ZCk8	75
4696	ChIJUdrjn5MRBYgR403D5r4ZCk8	109
4697	ChIJUdrjn5MRBYgR403D5r4ZCk8	120
4698	ChIJUdrjn5MRBYgR403D5r4ZCk8	106
4699	ChIJHa7ysYQRBYgRcc-_lQRS248	75
4700	ChIJHa7ysYQRBYgRcc-_lQRS248	109
4701	ChIJHa7ysYQRBYgRcc-_lQRS248	120
4702	ChIJHa7ysYQRBYgRcc-_lQRS248	106
4703	ChIJj8s7AUoXBYgRaqwOZKNaRrs	140
4704	ChIJj8s7AUoXBYgRaqwOZKNaRrs	75
4705	ChIJj8s7AUoXBYgRaqwOZKNaRrs	109
4706	ChIJj8s7AUoXBYgRaqwOZKNaRrs	120
4707	ChIJj8s7AUoXBYgRaqwOZKNaRrs	85
4708	ChIJj8s7AUoXBYgRaqwOZKNaRrs	106
4709	ChIJye6xncMQBYgRI4YpStY3CwE	56
4710	ChIJye6xncMQBYgRI4YpStY3CwE	57
4711	ChIJye6xncMQBYgRI4YpStY3CwE	75
4712	ChIJye6xncMQBYgRI4YpStY3CwE	109
4713	ChIJye6xncMQBYgRI4YpStY3CwE	120
4714	ChIJye6xncMQBYgRI4YpStY3CwE	106
4715	ChIJUaLy-ScXBYgRuLBwoomy1NM	75
4716	ChIJUaLy-ScXBYgRuLBwoomy1NM	109
4717	ChIJUaLy-ScXBYgRuLBwoomy1NM	120
4718	ChIJUaLy-ScXBYgRuLBwoomy1NM	106
4719	ChIJFbOGt4ERBYgR99sTM0PWuB0	75
4720	ChIJFbOGt4ERBYgR99sTM0PWuB0	109
4721	ChIJFbOGt4ERBYgR99sTM0PWuB0	120
4722	ChIJFbOGt4ERBYgR99sTM0PWuB0	106
4723	ChIJCeJkWp4RBYgRTkY4wsoEhG4	75
4724	ChIJCeJkWp4RBYgRTkY4wsoEhG4	109
4725	ChIJCeJkWp4RBYgRTkY4wsoEhG4	120
4726	ChIJCeJkWp4RBYgRTkY4wsoEhG4	106
4727	ChIJ8yqmR2ERBYgR-jq7kJVOU08	75
4728	ChIJ8yqmR2ERBYgR-jq7kJVOU08	109
4729	ChIJ8yqmR2ERBYgR-jq7kJVOU08	120
4730	ChIJ8yqmR2ERBYgR-jq7kJVOU08	106
4731	ChIJr-42Tg0aBYgRdOvgnTS4IA8	56
4732	ChIJr-42Tg0aBYgRdOvgnTS4IA8	75
4733	ChIJr-42Tg0aBYgRdOvgnTS4IA8	109
4734	ChIJr-42Tg0aBYgRdOvgnTS4IA8	120
4735	ChIJr-42Tg0aBYgRdOvgnTS4IA8	106
4736	ChIJadNS2wMRBYgRuna7m-1TVyI	75
4737	ChIJadNS2wMRBYgRuna7m-1TVyI	109
4738	ChIJadNS2wMRBYgRuna7m-1TVyI	120
4739	ChIJadNS2wMRBYgRuna7m-1TVyI	106
4740	ChIJxajE_00XBYgR737ZZOJBDxo	75
4741	ChIJxajE_00XBYgR737ZZOJBDxo	109
4742	ChIJxajE_00XBYgR737ZZOJBDxo	120
4743	ChIJxajE_00XBYgR737ZZOJBDxo	106
4744	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	75
4745	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	109
4746	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	120
4747	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	106
4748	ChIJ9UGhX58QBYgRJROWYSS1i5E	9
4749	ChIJ9UGhX58QBYgRJROWYSS1i5E	75
4750	ChIJ9UGhX58QBYgRJROWYSS1i5E	109
4751	ChIJ9UGhX58QBYgRJROWYSS1i5E	120
4752	ChIJ9UGhX58QBYgRJROWYSS1i5E	106
4753	ChIJa51p_Q0XBYgRWL9FwsikTd0	75
4754	ChIJa51p_Q0XBYgRWL9FwsikTd0	109
4755	ChIJa51p_Q0XBYgRWL9FwsikTd0	120
4756	ChIJa51p_Q0XBYgRWL9FwsikTd0	106
4757	ChIJGa2eFzcXBYgRRTFlRlgCxpA	75
4758	ChIJGa2eFzcXBYgRRTFlRlgCxpA	109
4759	ChIJGa2eFzcXBYgRRTFlRlgCxpA	120
4760	ChIJGa2eFzcXBYgRRTFlRlgCxpA	106
4761	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	75
4762	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	109
4763	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	120
4764	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	106
4765	ChIJc3Ufpt4QBYgRBcWFtKy8g48	15
4766	ChIJc3Ufpt4QBYgRBcWFtKy8g48	75
4767	ChIJc3Ufpt4QBYgRBcWFtKy8g48	109
4768	ChIJc3Ufpt4QBYgRBcWFtKy8g48	120
4769	ChIJc3Ufpt4QBYgRBcWFtKy8g48	85
4770	ChIJc3Ufpt4QBYgRBcWFtKy8g48	106
4771	ChIJ1e7dJooQBYgR8eZbItGcIkw	75
4772	ChIJ1e7dJooQBYgR8eZbItGcIkw	109
4773	ChIJ1e7dJooQBYgR8eZbItGcIkw	120
4774	ChIJ1e7dJooQBYgR8eZbItGcIkw	106
4775	ChIJW9Mxr3wXBYgRd2jbhewjw9k	75
4776	ChIJW9Mxr3wXBYgRd2jbhewjw9k	109
4777	ChIJW9Mxr3wXBYgRd2jbhewjw9k	120
4778	ChIJW9Mxr3wXBYgRd2jbhewjw9k	106
4779	ChIJ57c441MXBYgR0hX7GHWn5vQ	75
4780	ChIJ57c441MXBYgR0hX7GHWn5vQ	109
4781	ChIJ57c441MXBYgR0hX7GHWn5vQ	120
4782	ChIJ57c441MXBYgR0hX7GHWn5vQ	106
4783	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	75
4784	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	109
4785	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	120
4786	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	106
4787	ChIJo7KvSi4bBYgRx5rM13umhOc	75
4788	ChIJo7KvSi4bBYgRx5rM13umhOc	109
4789	ChIJo7KvSi4bBYgRx5rM13umhOc	120
4790	ChIJo7KvSi4bBYgRx5rM13umhOc	106
4791	ChIJ7UgWk4vV2IgRhjETCc4raac	9
4792	ChIJ7UgWk4vV2IgRhjETCc4raac	75
4793	ChIJ7UgWk4vV2IgRhjETCc4raac	109
4794	ChIJ7UgWk4vV2IgRhjETCc4raac	120
4795	ChIJ7UgWk4vV2IgRhjETCc4raac	106
4796	ChIJTdZIeY3V2IgRcKBrPX5kPOU	75
4797	ChIJTdZIeY3V2IgRcKBrPX5kPOU	109
4798	ChIJTdZIeY3V2IgRcKBrPX5kPOU	120
4799	ChIJTdZIeY3V2IgRcKBrPX5kPOU	106
4800	ChIJi1HxdpPV2IgRLHatiayIb7w	57
4801	ChIJi1HxdpPV2IgRLHatiayIb7w	75
4802	ChIJi1HxdpPV2IgRLHatiayIb7w	109
4803	ChIJi1HxdpPV2IgRLHatiayIb7w	120
4804	ChIJi1HxdpPV2IgRLHatiayIb7w	106
4805	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	57
4806	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	75
4807	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	109
4808	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	120
4809	ChIJWx3ZKwnW2IgRlOlNLHcAkSQ	106
4810	ChIJCbVlQQnW2IgRjE5EAZAzq3U	75
4811	ChIJCbVlQQnW2IgRjE5EAZAzq3U	109
4812	ChIJCbVlQQnW2IgRjE5EAZAzq3U	120
4813	ChIJCbVlQQnW2IgRjE5EAZAzq3U	106
4814	ChIJDREnfIvV2IgRbnAeOnsGHso	75
4815	ChIJDREnfIvV2IgRbnAeOnsGHso	109
4816	ChIJDREnfIvV2IgRbnAeOnsGHso	120
4817	ChIJDREnfIvV2IgRbnAeOnsGHso	85
4818	ChIJDREnfIvV2IgRbnAeOnsGHso	106
4819	ChIJc7jrSXQq2YgR5UKnK3nlfJk	15
4820	ChIJc7jrSXQq2YgR5UKnK3nlfJk	75
4821	ChIJc7jrSXQq2YgR5UKnK3nlfJk	109
4822	ChIJc7jrSXQq2YgR5UKnK3nlfJk	120
4823	ChIJc7jrSXQq2YgR5UKnK3nlfJk	106
4824	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	56
4825	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	75
4826	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	109
4827	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	120
4828	ChIJU7m1cm0q2YgRT_TQXvwSuxQ	106
4829	ChIJe2yVib_V2IgRszY_dJGATRk	56
4830	ChIJe2yVib_V2IgRszY_dJGATRk	57
4831	ChIJe2yVib_V2IgRszY_dJGATRk	75
4832	ChIJe2yVib_V2IgRszY_dJGATRk	109
4833	ChIJe2yVib_V2IgRszY_dJGATRk	120
4834	ChIJe2yVib_V2IgRszY_dJGATRk	106
4835	ChIJ-X6SAg_W2IgRLBhoBX5x180	15
4836	ChIJ-X6SAg_W2IgRLBhoBX5x180	75
4837	ChIJ-X6SAg_W2IgRLBhoBX5x180	109
4838	ChIJ-X6SAg_W2IgRLBhoBX5x180	120
4839	ChIJ-X6SAg_W2IgRLBhoBX5x180	85
4840	ChIJ-X6SAg_W2IgRLBhoBX5x180	106
4841	ChIJaynMrOvV2IgREqNCugwBQ40	57
4842	ChIJaynMrOvV2IgREqNCugwBQ40	75
4843	ChIJaynMrOvV2IgREqNCugwBQ40	109
4844	ChIJaynMrOvV2IgREqNCugwBQ40	120
4845	ChIJaynMrOvV2IgREqNCugwBQ40	106
4846	ChIJPcZOf43V2IgRngz1V_2dvKw	75
4847	ChIJPcZOf43V2IgRngz1V_2dvKw	109
4848	ChIJPcZOf43V2IgRngz1V_2dvKw	120
4849	ChIJPcZOf43V2IgRngz1V_2dvKw	106
4850	ChIJi-beQAnW2IgRdUZNRA5v6Kc	75
4851	ChIJi-beQAnW2IgRdUZNRA5v6Kc	109
4852	ChIJi-beQAnW2IgRdUZNRA5v6Kc	120
4853	ChIJi-beQAnW2IgRdUZNRA5v6Kc	106
4854	ChIJi-beQAnW2IgRxIQsYXaWLiw	56
4855	ChIJi-beQAnW2IgRxIQsYXaWLiw	57
4856	ChIJi-beQAnW2IgRxIQsYXaWLiw	75
4857	ChIJi-beQAnW2IgRxIQsYXaWLiw	109
4858	ChIJi-beQAnW2IgRxIQsYXaWLiw	120
4859	ChIJi-beQAnW2IgRxIQsYXaWLiw	106
4860	ChIJe7HA-QXW2IgRVtsvYijEiMY	75
4861	ChIJe7HA-QXW2IgRVtsvYijEiMY	109
4862	ChIJe7HA-QXW2IgRVtsvYijEiMY	120
4863	ChIJe7HA-QXW2IgRVtsvYijEiMY	85
4864	ChIJe7HA-QXW2IgRVtsvYijEiMY	106
4865	ChIJN2NpkwXW2IgR_ulVGz1WI0s	75
4866	ChIJN2NpkwXW2IgR_ulVGz1WI0s	109
4867	ChIJN2NpkwXW2IgR_ulVGz1WI0s	120
4868	ChIJN2NpkwXW2IgR_ulVGz1WI0s	106
4869	ChIJl9drkwXW2IgRtMPZwhfMoVE	57
4870	ChIJl9drkwXW2IgRtMPZwhfMoVE	75
4871	ChIJl9drkwXW2IgRtMPZwhfMoVE	109
4872	ChIJl9drkwXW2IgRtMPZwhfMoVE	120
4873	ChIJl9drkwXW2IgRtMPZwhfMoVE	106
4874	ChIJ72iVEA_W2IgRTiRYb5GEFk0	56
4875	ChIJ72iVEA_W2IgRTiRYb5GEFk0	57
4876	ChIJ72iVEA_W2IgRTiRYb5GEFk0	75
4877	ChIJ72iVEA_W2IgRTiRYb5GEFk0	109
4878	ChIJ72iVEA_W2IgRTiRYb5GEFk0	120
4879	ChIJ72iVEA_W2IgRTiRYb5GEFk0	85
4880	ChIJ72iVEA_W2IgRTiRYb5GEFk0	106
4881	ChIJq0JuNw_W2IgRLMNtj8Hv02o	75
4882	ChIJq0JuNw_W2IgRLMNtj8Hv02o	109
4883	ChIJq0JuNw_W2IgRLMNtj8Hv02o	120
4884	ChIJq0JuNw_W2IgRLMNtj8Hv02o	85
4885	ChIJq0JuNw_W2IgRLMNtj8Hv02o	106
4886	ChIJ74PxJw_W2IgRZUmm66qwTFE	75
4887	ChIJ74PxJw_W2IgRZUmm66qwTFE	109
4888	ChIJ74PxJw_W2IgRZUmm66qwTFE	120
4889	ChIJ74PxJw_W2IgRZUmm66qwTFE	106
4890	ChIJFebt3w7W2IgRKH8jAGrYQW4	75
4891	ChIJFebt3w7W2IgRKH8jAGrYQW4	57
4892	ChIJFebt3w7W2IgRKH8jAGrYQW4	109
4893	ChIJFebt3w7W2IgRKH8jAGrYQW4	120
4894	ChIJFebt3w7W2IgRKH8jAGrYQW4	106
4895	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	75
4896	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	9
4897	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	109
4898	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	120
4899	ChIJTZIyYQXW2IgR8HD1nuGZtYQ	106
4900	ChIJU7m1cm0q2YgReBK7RL88u7M	75
4901	ChIJU7m1cm0q2YgReBK7RL88u7M	109
4902	ChIJU7m1cm0q2YgReBK7RL88u7M	120
4903	ChIJU7m1cm0q2YgReBK7RL88u7M	106
4904	ChIJqdT0hFjW2IgR17y7GrigELA	15
4905	ChIJqdT0hFjW2IgR17y7GrigELA	75
4906	ChIJqdT0hFjW2IgR17y7GrigELA	109
4907	ChIJqdT0hFjW2IgR17y7GrigELA	120
4908	ChIJqdT0hFjW2IgR17y7GrigELA	85
4909	ChIJqdT0hFjW2IgR17y7GrigELA	106
4910	ChIJiRR7vnUq2YgROTVUCdOJUsc	75
4911	ChIJiRR7vnUq2YgROTVUCdOJUsc	109
4912	ChIJiRR7vnUq2YgROTVUCdOJUsc	120
4913	ChIJiRR7vnUq2YgROTVUCdOJUsc	106
4914	ChIJLdlgugXW2IgReIHHdSlKRLs	75
4915	ChIJLdlgugXW2IgReIHHdSlKRLs	56
4916	ChIJLdlgugXW2IgReIHHdSlKRLs	57
4917	ChIJLdlgugXW2IgReIHHdSlKRLs	109
4918	ChIJLdlgugXW2IgReIHHdSlKRLs	120
4919	ChIJLdlgugXW2IgReIHHdSlKRLs	85
4920	ChIJLdlgugXW2IgReIHHdSlKRLs	106
4921	ChIJpwOBKAnW2IgRQuWyumFEfsU	75
4922	ChIJpwOBKAnW2IgRQuWyumFEfsU	109
4923	ChIJpwOBKAnW2IgRQuWyumFEfsU	120
4924	ChIJpwOBKAnW2IgRQuWyumFEfsU	106
4925	ChIJwzOCoJTV2IgRk-GphXCeKrA	75
4926	ChIJwzOCoJTV2IgRk-GphXCeKrA	109
4927	ChIJwzOCoJTV2IgRk-GphXCeKrA	120
4928	ChIJwzOCoJTV2IgRk-GphXCeKrA	106
4929	ChIJ8TS7kHMq2YgR7v-njghQypQ	15
4930	ChIJ8TS7kHMq2YgR7v-njghQypQ	75
4931	ChIJ8TS7kHMq2YgR7v-njghQypQ	109
4932	ChIJ8TS7kHMq2YgR7v-njghQypQ	120
4933	ChIJ8TS7kHMq2YgR7v-njghQypQ	85
4934	ChIJ8TS7kHMq2YgR7v-njghQypQ	106
4935	ChIJc6-wLJvV2IgRudt92qcukP0	75
4936	ChIJc6-wLJvV2IgRudt92qcukP0	109
4937	ChIJc6-wLJvV2IgRudt92qcukP0	120
4938	ChIJc6-wLJvV2IgRudt92qcukP0	106
4939	ChIJC-Fbv43V2IgRNHpVmGYsKT4	75
4940	ChIJC-Fbv43V2IgRNHpVmGYsKT4	109
4941	ChIJC-Fbv43V2IgRNHpVmGYsKT4	120
4942	ChIJC-Fbv43V2IgRNHpVmGYsKT4	106
4943	ChIJtYwCkHUq2YgRDEdcLbErCK8	75
4944	ChIJtYwCkHUq2YgRDEdcLbErCK8	109
4945	ChIJtYwCkHUq2YgRDEdcLbErCK8	120
4946	ChIJtYwCkHUq2YgRDEdcLbErCK8	106
4947	ChIJrX82LgnW2IgRgfJ6HcSGd7w	56
4948	ChIJrX82LgnW2IgRgfJ6HcSGd7w	75
4949	ChIJrX82LgnW2IgRgfJ6HcSGd7w	109
4950	ChIJrX82LgnW2IgRgfJ6HcSGd7w	120
4951	ChIJrX82LgnW2IgRgfJ6HcSGd7w	106
4952	ChIJG4OAecDV2IgRwoz1LJApSgY	15
4953	ChIJG4OAecDV2IgRwoz1LJApSgY	75
4954	ChIJG4OAecDV2IgRwoz1LJApSgY	109
4955	ChIJG4OAecDV2IgRwoz1LJApSgY	120
4956	ChIJG4OAecDV2IgRwoz1LJApSgY	85
4957	ChIJG4OAecDV2IgRwoz1LJApSgY	106
4958	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	57
4959	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	75
4960	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	109
4961	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	120
4962	ChIJ75ToUnIq2YgRZ5jlM2jRRDE	106
4963	ChIJn40qX5PV2IgRxBCYETgpXZM	75
4964	ChIJn40qX5PV2IgRxBCYETgpXZM	109
4965	ChIJn40qX5PV2IgRxBCYETgpXZM	120
4966	ChIJn40qX5PV2IgRxBCYETgpXZM	106
4967	ChIJryPzK7zV2IgRuogP4yJsv6I	75
4968	ChIJryPzK7zV2IgRuogP4yJsv6I	57
4969	ChIJryPzK7zV2IgRuogP4yJsv6I	109
4970	ChIJryPzK7zV2IgRuogP4yJsv6I	120
4971	ChIJryPzK7zV2IgRuogP4yJsv6I	85
4972	ChIJryPzK7zV2IgRuogP4yJsv6I	106
4973	ChIJ23D4Z0XV2IgRK5AYV0LWhao	75
4974	ChIJ23D4Z0XV2IgRK5AYV0LWhao	109
4975	ChIJ23D4Z0XV2IgRK5AYV0LWhao	120
4976	ChIJ23D4Z0XV2IgRK5AYV0LWhao	106
4977	ChIJk7fgElnV2IgRM0ApZwNOPjk	56
4978	ChIJk7fgElnV2IgRM0ApZwNOPjk	57
4979	ChIJk7fgElnV2IgRM0ApZwNOPjk	75
4980	ChIJk7fgElnV2IgRM0ApZwNOPjk	109
4981	ChIJk7fgElnV2IgRM0ApZwNOPjk	120
4982	ChIJk7fgElnV2IgRM0ApZwNOPjk	106
4983	ChIJgcjyX_7V2IgRMJPqRjBX-cE	75
4984	ChIJgcjyX_7V2IgRMJPqRjBX-cE	109
4985	ChIJgcjyX_7V2IgRMJPqRjBX-cE	120
4986	ChIJgcjyX_7V2IgRMJPqRjBX-cE	106
4987	ChIJ2UktWhPV2IgRHy9ARaaDlvQ	75
4988	ChIJ2UktWhPV2IgRHy9ARaaDlvQ	109
4989	ChIJ2UktWhPV2IgRHy9ARaaDlvQ	120
4990	ChIJ2UktWhPV2IgRHy9ARaaDlvQ	106
4991	ChIJBckvMV3V2IgR0YsoKSa2Jkw	75
4992	ChIJBckvMV3V2IgR0YsoKSa2Jkw	109
4993	ChIJBckvMV3V2IgR0YsoKSa2Jkw	120
4994	ChIJBckvMV3V2IgR0YsoKSa2Jkw	106
4995	ChIJCb4lir_V2IgRol00HLyaYA4	57
4996	ChIJCb4lir_V2IgRol00HLyaYA4	75
4997	ChIJCb4lir_V2IgRol00HLyaYA4	109
4998	ChIJCb4lir_V2IgRol00HLyaYA4	120
4999	ChIJCb4lir_V2IgRol00HLyaYA4	106
5000	ChIJuwzEiL_V2IgRlQZDQOUtSUU	75
5001	ChIJuwzEiL_V2IgRlQZDQOUtSUU	109
5002	ChIJuwzEiL_V2IgRlQZDQOUtSUU	120
5003	ChIJuwzEiL_V2IgRlQZDQOUtSUU	106
5004	ChIJI9y2NenV2IgRSdWYWuahVeg	75
5005	ChIJI9y2NenV2IgRSdWYWuahVeg	109
5006	ChIJI9y2NenV2IgRSdWYWuahVeg	120
5007	ChIJI9y2NenV2IgRSdWYWuahVeg	106
5008	ChIJr1XhgcDV2IgRl0fm0_tSkTo	7
5009	ChIJr1XhgcDV2IgRl0fm0_tSkTo	57
5010	ChIJr1XhgcDV2IgRl0fm0_tSkTo	15
5011	ChIJr1XhgcDV2IgRl0fm0_tSkTo	75
5012	ChIJr1XhgcDV2IgRl0fm0_tSkTo	109
5013	ChIJr1XhgcDV2IgRl0fm0_tSkTo	120
5014	ChIJr1XhgcDV2IgRl0fm0_tSkTo	85
5015	ChIJr1XhgcDV2IgRl0fm0_tSkTo	106
5016	ChIJzbh8D1LV2IgRdrbVv1xQy2Y	75
5017	ChIJzbh8D1LV2IgRdrbVv1xQy2Y	109
5018	ChIJzbh8D1LV2IgRdrbVv1xQy2Y	120
5019	ChIJzbh8D1LV2IgRdrbVv1xQy2Y	106
5020	ChIJDXVdeb_V2IgR1vI-RUZ5tYc	75
5021	ChIJDXVdeb_V2IgR1vI-RUZ5tYc	109
5022	ChIJDXVdeb_V2IgR1vI-RUZ5tYc	120
5023	ChIJDXVdeb_V2IgR1vI-RUZ5tYc	106
5024	ChIJ2dr5CwzW2IgRtm2QZsnJeJw	75
5025	ChIJ2dr5CwzW2IgRtm2QZsnJeJw	109
5026	ChIJ2dr5CwzW2IgRtm2QZsnJeJw	120
5027	ChIJ2dr5CwzW2IgRtm2QZsnJeJw	106
5028	ChIJZ2gaSnQq2YgRAkd4lLR4EMw	56
5029	ChIJZ2gaSnQq2YgRAkd4lLR4EMw	57
5030	ChIJZ2gaSnQq2YgRAkd4lLR4EMw	75
5031	ChIJZ2gaSnQq2YgRAkd4lLR4EMw	109
5032	ChIJZ2gaSnQq2YgRAkd4lLR4EMw	120
5033	ChIJZ2gaSnQq2YgRAkd4lLR4EMw	106
5034	ChIJ6xmeHXQq2YgR6M4TLsRknxc	57
5035	ChIJ6xmeHXQq2YgR6M4TLsRknxc	75
5036	ChIJ6xmeHXQq2YgR6M4TLsRknxc	109
5037	ChIJ6xmeHXQq2YgR6M4TLsRknxc	120
5038	ChIJ6xmeHXQq2YgR6M4TLsRknxc	106
5039	ChIJJfoq-nEq2YgRztxlnukltD0	7
5040	ChIJJfoq-nEq2YgRztxlnukltD0	57
5041	ChIJJfoq-nEq2YgRztxlnukltD0	15
5042	ChIJJfoq-nEq2YgRztxlnukltD0	75
5043	ChIJJfoq-nEq2YgRztxlnukltD0	109
5044	ChIJJfoq-nEq2YgRztxlnukltD0	120
5045	ChIJJfoq-nEq2YgRztxlnukltD0	85
5046	ChIJJfoq-nEq2YgRztxlnukltD0	106
5047	ChIJO2E6FtbX2IgRQlpZcDzRpVE	7
5048	ChIJO2E6FtbX2IgRQlpZcDzRpVE	15
5049	ChIJO2E6FtbX2IgRQlpZcDzRpVE	75
5050	ChIJO2E6FtbX2IgRQlpZcDzRpVE	109
5051	ChIJO2E6FtbX2IgRQlpZcDzRpVE	120
5052	ChIJO2E6FtbX2IgRQlpZcDzRpVE	85
5053	ChIJO2E6FtbX2IgRQlpZcDzRpVE	106
5054	ChIJ7edaOk3X2IgRfMoYGpNlmXo	75
5055	ChIJ7edaOk3X2IgRfMoYGpNlmXo	109
5056	ChIJ7edaOk3X2IgRfMoYGpNlmXo	120
5057	ChIJ7edaOk3X2IgRfMoYGpNlmXo	106
5058	ChIJdcCjrbTX2IgR3AtNxNAlh5A	75
5059	ChIJdcCjrbTX2IgR3AtNxNAlh5A	109
5060	ChIJdcCjrbTX2IgR3AtNxNAlh5A	120
5061	ChIJdcCjrbTX2IgR3AtNxNAlh5A	106
5062	ChIJmbfVtQ7X2IgR47rv1AnWS1E	75
5063	ChIJmbfVtQ7X2IgR47rv1AnWS1E	109
5064	ChIJmbfVtQ7X2IgR47rv1AnWS1E	120
5065	ChIJmbfVtQ7X2IgR47rv1AnWS1E	106
5066	ChIJw1sL08bX2IgRyAemk4ZNSYo	75
5067	ChIJw1sL08bX2IgRyAemk4ZNSYo	109
5068	ChIJw1sL08bX2IgRyAemk4ZNSYo	120
5069	ChIJw1sL08bX2IgRyAemk4ZNSYo	106
5070	ChIJ9-ymsBjX2IgRkHB8DIVJn2s	75
5071	ChIJ9-ymsBjX2IgRkHB8DIVJn2s	109
5072	ChIJ9-ymsBjX2IgRkHB8DIVJn2s	120
5073	ChIJ9-ymsBjX2IgRkHB8DIVJn2s	106
5074	ChIJx_syOgzW2IgRAu911S2UowM	75
5075	ChIJx_syOgzW2IgRAu911S2UowM	109
5076	ChIJx_syOgzW2IgRAu911S2UowM	120
5077	ChIJx_syOgzW2IgRAu911S2UowM	106
5078	ChIJ68KDXLzV2IgRMjl4bMTPBD4	75
5079	ChIJ68KDXLzV2IgRMjl4bMTPBD4	109
5080	ChIJ68KDXLzV2IgRMjl4bMTPBD4	120
5081	ChIJ68KDXLzV2IgRMjl4bMTPBD4	106
5082	ChIJf2fesraQb4YRcvMlT2Hu_Wo	57
5083	ChIJf2fesraQb4YRcvMlT2Hu_Wo	75
5084	ChIJf2fesraQb4YRcvMlT2Hu_Wo	109
5085	ChIJf2fesraQb4YRcvMlT2Hu_Wo	120
5086	ChIJf2fesraQb4YRcvMlT2Hu_Wo	106
5087	ChIJg2JKk66Qb4YR3GgJN8SGEAo	57
5088	ChIJg2JKk66Qb4YR3GgJN8SGEAo	75
5089	ChIJg2JKk66Qb4YR3GgJN8SGEAo	109
5090	ChIJg2JKk66Qb4YR3GgJN8SGEAo	120
5091	ChIJg2JKk66Qb4YR3GgJN8SGEAo	106
5092	ChIJk78v2tCRb4YRoBxBIj9xgp8	75
5093	ChIJk78v2tCRb4YRoBxBIj9xgp8	109
5094	ChIJk78v2tCRb4YRoBxBIj9xgp8	120
5095	ChIJk78v2tCRb4YRoBxBIj9xgp8	106
5096	ChIJz_BtIaGRb4YRpxW2KD5EEPI	75
5097	ChIJz_BtIaGRb4YRpxW2KD5EEPI	109
5098	ChIJz_BtIaGRb4YRpxW2KD5EEPI	120
5099	ChIJz_BtIaGRb4YRpxW2KD5EEPI	106
5100	ChIJH6WtLQKRb4YR4T0lGHiDzN0	75
5101	ChIJH6WtLQKRb4YR4T0lGHiDzN0	109
5102	ChIJH6WtLQKRb4YR4T0lGHiDzN0	120
5103	ChIJH6WtLQKRb4YR4T0lGHiDzN0	106
5104	ChIJgSOcabaQb4YRQGf1wkVLTDY	75
5105	ChIJgSOcabaQb4YRQGf1wkVLTDY	109
5106	ChIJgSOcabaQb4YRQGf1wkVLTDY	120
5107	ChIJgSOcabaQb4YRQGf1wkVLTDY	106
5108	ChIJa016G-aXb4YRuNxvsuJV9mE	75
5109	ChIJa016G-aXb4YRuNxvsuJV9mE	109
5110	ChIJa016G-aXb4YRuNxvsuJV9mE	120
5111	ChIJa016G-aXb4YRuNxvsuJV9mE	106
5112	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	75
5113	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	109
5114	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	120
5115	ChIJwRZ4l7aQb4YRkjA1VaeQWRU	106
5116	ChIJhU2PsgmRb4YRo7KzW4vBrns	75
5117	ChIJhU2PsgmRb4YRo7KzW4vBrns	109
5118	ChIJhU2PsgmRb4YRo7KzW4vBrns	120
5119	ChIJhU2PsgmRb4YRo7KzW4vBrns	106
5120	ChIJizxzv7aQb4YRZNTtzIoQE2U	75
5121	ChIJizxzv7aQb4YRZNTtzIoQE2U	109
5122	ChIJizxzv7aQb4YRZNTtzIoQE2U	120
5123	ChIJizxzv7aQb4YRZNTtzIoQE2U	106
5124	ChIJd6wvtLaQb4YR31jmv_BgJBc	75
5125	ChIJd6wvtLaQb4YR31jmv_BgJBc	109
5126	ChIJd6wvtLaQb4YR31jmv_BgJBc	120
5127	ChIJd6wvtLaQb4YR31jmv_BgJBc	106
5128	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	75
5129	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	109
5130	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	120
5131	ChIJCTU2TQ-Rb4YRJVKNxjO2r40	106
5132	ChIJX1vUimKRb4YReJfc86zPS1o	75
5133	ChIJX1vUimKRb4YReJfc86zPS1o	109
5134	ChIJX1vUimKRb4YReJfc86zPS1o	120
5135	ChIJX1vUimKRb4YReJfc86zPS1o	106
5136	ChIJD9lZA0qRb4YR0T5wf9EakC8	57
5137	ChIJD9lZA0qRb4YR0T5wf9EakC8	75
5138	ChIJD9lZA0qRb4YR0T5wf9EakC8	109
5139	ChIJD9lZA0qRb4YR0T5wf9EakC8	120
5140	ChIJD9lZA0qRb4YR0T5wf9EakC8	106
5141	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	75
5142	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	109
5143	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	120
5144	ChIJDfzlbLqQb4YRPbbA9SQ6L2c	106
5145	ChIJEUheZR2Rb4YRxHn68M_1Z_A	7
5146	ChIJEUheZR2Rb4YRxHn68M_1Z_A	75
5147	ChIJEUheZR2Rb4YRxHn68M_1Z_A	109
5148	ChIJEUheZR2Rb4YRxHn68M_1Z_A	120
5149	ChIJEUheZR2Rb4YRxHn68M_1Z_A	85
5150	ChIJEUheZR2Rb4YRxHn68M_1Z_A	106
5151	ChIJ18X3SLqQb4YR11uyryZjjyE	75
5152	ChIJ18X3SLqQb4YR11uyryZjjyE	109
5153	ChIJ18X3SLqQb4YR11uyryZjjyE	120
5154	ChIJ18X3SLqQb4YR11uyryZjjyE	106
5155	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	75
5156	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	109
5157	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	120
5158	ChIJ7ZABLbiRb4YR_He0Tqb_DU4	106
5159	ChIJB_U5yieXb4YRLQRgJM2CnO4	75
5160	ChIJB_U5yieXb4YRLQRgJM2CnO4	109
5161	ChIJB_U5yieXb4YRLQRgJM2CnO4	120
5162	ChIJB_U5yieXb4YRLQRgJM2CnO4	106
5163	ChIJL8DTW6qXb4YRov-D2kzkU5Q	75
5164	ChIJL8DTW6qXb4YRov-D2kzkU5Q	109
5165	ChIJL8DTW6qXb4YRov-D2kzkU5Q	120
5166	ChIJL8DTW6qXb4YRov-D2kzkU5Q	106
5167	ChIJdWc0XbuRb4YR0X5JGsEwHSA	75
5168	ChIJdWc0XbuRb4YR0X5JGsEwHSA	109
5169	ChIJdWc0XbuRb4YR0X5JGsEwHSA	120
5170	ChIJdWc0XbuRb4YR0X5JGsEwHSA	106
5171	ChIJG849GdOQb4YRoTVUDtLveVc	75
5172	ChIJG849GdOQb4YRoTVUDtLveVc	57
5173	ChIJG849GdOQb4YRoTVUDtLveVc	109
5174	ChIJG849GdOQb4YRoTVUDtLveVc	120
5175	ChIJG849GdOQb4YRoTVUDtLveVc	85
5176	ChIJG849GdOQb4YRoTVUDtLveVc	106
5177	ChIJcxWF0LiWb4YRvjW4vweCAzA	75
5178	ChIJcxWF0LiWb4YRvjW4vweCAzA	109
5179	ChIJcxWF0LiWb4YRvjW4vweCAzA	120
5180	ChIJcxWF0LiWb4YRvjW4vweCAzA	106
5181	ChIJBxJDE0eRb4YR8wedc3L27oY	57
5182	ChIJBxJDE0eRb4YR8wedc3L27oY	75
5183	ChIJBxJDE0eRb4YR8wedc3L27oY	109
5184	ChIJBxJDE0eRb4YR8wedc3L27oY	120
5185	ChIJBxJDE0eRb4YR8wedc3L27oY	106
5186	ChIJ8xNUitGWb4YRm5jeheZu4Nw	57
5187	ChIJ8xNUitGWb4YRm5jeheZu4Nw	75
5188	ChIJ8xNUitGWb4YRm5jeheZu4Nw	109
5189	ChIJ8xNUitGWb4YRm5jeheZu4Nw	120
5190	ChIJ8xNUitGWb4YRm5jeheZu4Nw	106
5191	ChIJAxhWaLiWb4YRRXqWxllpXTo	15
5192	ChIJAxhWaLiWb4YRRXqWxllpXTo	75
5193	ChIJAxhWaLiWb4YRRXqWxllpXTo	109
5194	ChIJAxhWaLiWb4YRRXqWxllpXTo	120
5195	ChIJAxhWaLiWb4YRRXqWxllpXTo	85
5196	ChIJAxhWaLiWb4YRRXqWxllpXTo	106
5197	ChIJiV6PmjiRb4YRalmz5uZ8008	75
5198	ChIJiV6PmjiRb4YRalmz5uZ8008	109
5199	ChIJiV6PmjiRb4YRalmz5uZ8008	120
5200	ChIJiV6PmjiRb4YRalmz5uZ8008	106
5201	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	75
5202	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	109
5203	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	120
5204	ChIJ2buVOMqVb4YR5NhdEMs-I_Y	106
5205	ChIJQ5CBHM-Wb4YREDH33bUva4g	75
5206	ChIJQ5CBHM-Wb4YREDH33bUva4g	109
5207	ChIJQ5CBHM-Wb4YREDH33bUva4g	120
5208	ChIJQ5CBHM-Wb4YREDH33bUva4g	106
5209	ChIJX6f6ysiWb4YRbGsL2RZkj8A	75
5210	ChIJX6f6ysiWb4YRbGsL2RZkj8A	109
5211	ChIJX6f6ysiWb4YRbGsL2RZkj8A	120
5212	ChIJX6f6ysiWb4YRbGsL2RZkj8A	106
5213	ChIJA5HRjciWb4YR8Z5396h5gIk	75
5214	ChIJA5HRjciWb4YR8Z5396h5gIk	109
5215	ChIJA5HRjciWb4YR8Z5396h5gIk	120
5216	ChIJA5HRjciWb4YR8Z5396h5gIk	106
5217	ChIJi15wp9uWb4YRmEkTRBzn9aE	75
5218	ChIJi15wp9uWb4YRmEkTRBzn9aE	109
5219	ChIJi15wp9uWb4YRmEkTRBzn9aE	120
5220	ChIJi15wp9uWb4YRmEkTRBzn9aE	106
5221	ChIJvaSp7wOVb4YRa8mTHstAID0	75
5222	ChIJvaSp7wOVb4YRa8mTHstAID0	109
5223	ChIJvaSp7wOVb4YRa8mTHstAID0	120
5224	ChIJvaSp7wOVb4YRa8mTHstAID0	106
5225	ChIJtT2l4saWb4YRO8BkZ9Jme7I	57
5226	ChIJtT2l4saWb4YRO8BkZ9Jme7I	75
5227	ChIJtT2l4saWb4YRO8BkZ9Jme7I	109
5228	ChIJtT2l4saWb4YRO8BkZ9Jme7I	120
5229	ChIJtT2l4saWb4YRO8BkZ9Jme7I	106
5230	ChIJI9gqeriWb4YRsRpZRDbKTUc	75
5231	ChIJI9gqeriWb4YRsRpZRDbKTUc	109
5232	ChIJI9gqeriWb4YRsRpZRDbKTUc	120
5233	ChIJI9gqeriWb4YRsRpZRDbKTUc	106
5234	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	9
5235	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	75
5236	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	109
5237	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	120
5238	ChIJRwoN_r6Wb4YRSbUuJ86YM-Y	106
5239	ChIJZZdNTr6Wb4YReLa8XqQqdtI	9
5240	ChIJZZdNTr6Wb4YReLa8XqQqdtI	75
5241	ChIJZZdNTr6Wb4YReLa8XqQqdtI	109
5242	ChIJZZdNTr6Wb4YReLa8XqQqdtI	120
5243	ChIJZZdNTr6Wb4YReLa8XqQqdtI	106
5244	ChIJk5U9lZiWb4YRNzTWfh3WQMc	57
5245	ChIJk5U9lZiWb4YRNzTWfh3WQMc	75
5246	ChIJk5U9lZiWb4YRNzTWfh3WQMc	109
5247	ChIJk5U9lZiWb4YRNzTWfh3WQMc	120
5248	ChIJk5U9lZiWb4YRNzTWfh3WQMc	106
5249	ChIJmwgQwuGTb4YRT-EvolhZRGE	75
5250	ChIJmwgQwuGTb4YRT-EvolhZRGE	109
5251	ChIJmwgQwuGTb4YRT-EvolhZRGE	120
5252	ChIJmwgQwuGTb4YRT-EvolhZRGE	106
5253	ChIJCYEQO2GXb4YRO02qTd-9E-o	75
5254	ChIJCYEQO2GXb4YRO02qTd-9E-o	109
5255	ChIJCYEQO2GXb4YRO02qTd-9E-o	120
5256	ChIJCYEQO2GXb4YRO02qTd-9E-o	106
5257	ChIJw_7akseWb4YRfmj3u-LNKdI	15
5258	ChIJw_7akseWb4YRfmj3u-LNKdI	75
5259	ChIJw_7akseWb4YRfmj3u-LNKdI	109
5260	ChIJw_7akseWb4YRfmj3u-LNKdI	120
5261	ChIJw_7akseWb4YRfmj3u-LNKdI	85
5262	ChIJw_7akseWb4YRfmj3u-LNKdI	106
5263	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	9
5264	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	75
5265	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	109
5266	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	120
5267	ChIJrRT8_Cq0RIYRw5JlWkpX0aY	106
5268	ChIJfUOjp9i1RIYRRODubsPMQKs	75
5269	ChIJfUOjp9i1RIYRRODubsPMQKs	109
5270	ChIJfUOjp9i1RIYRRODubsPMQKs	120
5271	ChIJfUOjp9i1RIYRRODubsPMQKs	106
5272	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	57
5273	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	75
5274	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	109
5275	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	120
5276	ChIJu2qx9Ea2RIYRXjHlzMRMUdI	106
5277	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	57
5278	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	75
5279	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	109
5280	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	120
5281	ChIJfUOjp9i1RIYRrV1Gy-SJZVc	106
5282	ChIJi4dkYX62RIYRmPx-8zo1uBU	75
5283	ChIJi4dkYX62RIYRmPx-8zo1uBU	109
5284	ChIJi4dkYX62RIYRmPx-8zo1uBU	120
5285	ChIJi4dkYX62RIYRmPx-8zo1uBU	106
5286	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	57
5287	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	75
5288	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	109
5289	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	120
5290	ChIJfUOjp9i1RIYRZ6CjEGpsHP4	106
5291	ChIJN5T3EtW1RIYRjs_1F_HgjO0	75
5292	ChIJN5T3EtW1RIYRjs_1F_HgjO0	55
5293	ChIJN5T3EtW1RIYRjs_1F_HgjO0	9
5294	ChIJN5T3EtW1RIYRjs_1F_HgjO0	109
5295	ChIJN5T3EtW1RIYRjs_1F_HgjO0	120
5296	ChIJN5T3EtW1RIYRjs_1F_HgjO0	106
5297	ChIJfUOjp9i1RIYRTxFXyNhFLyA	75
5298	ChIJfUOjp9i1RIYRTxFXyNhFLyA	109
5299	ChIJfUOjp9i1RIYRTxFXyNhFLyA	120
5300	ChIJfUOjp9i1RIYRTxFXyNhFLyA	106
5301	ChIJcyktFKm1RIYRhoAuiJG50Zk	9
5302	ChIJcyktFKm1RIYRhoAuiJG50Zk	75
5303	ChIJcyktFKm1RIYRhoAuiJG50Zk	109
5304	ChIJcyktFKm1RIYRhoAuiJG50Zk	120
5305	ChIJcyktFKm1RIYRhoAuiJG50Zk	106
5306	ChIJz9bESdK1RIYR48vQlkchtqY	9
5307	ChIJz9bESdK1RIYR48vQlkchtqY	75
5308	ChIJz9bESdK1RIYR48vQlkchtqY	109
5309	ChIJz9bESdK1RIYR48vQlkchtqY	120
5310	ChIJz9bESdK1RIYR48vQlkchtqY	106
5311	ChIJ85wOns61RIYRZvO4l2_VRAU	56
5312	ChIJ85wOns61RIYRZvO4l2_VRAU	57
5313	ChIJ85wOns61RIYRZvO4l2_VRAU	75
5314	ChIJ85wOns61RIYRZvO4l2_VRAU	109
5315	ChIJ85wOns61RIYRZvO4l2_VRAU	120
5316	ChIJ85wOns61RIYRZvO4l2_VRAU	106
5317	ChIJNZ3dGXa2RIYRUlGO68eWJWA	56
5318	ChIJNZ3dGXa2RIYRUlGO68eWJWA	57
5319	ChIJNZ3dGXa2RIYRUlGO68eWJWA	75
5320	ChIJNZ3dGXa2RIYRUlGO68eWJWA	109
5321	ChIJNZ3dGXa2RIYRUlGO68eWJWA	120
5322	ChIJNZ3dGXa2RIYRUlGO68eWJWA	106
5323	ChIJQ1asA9a1RIYRwTo5i529--U	15
5324	ChIJQ1asA9a1RIYRwTo5i529--U	75
5325	ChIJQ1asA9a1RIYRwTo5i529--U	109
5326	ChIJQ1asA9a1RIYRwTo5i529--U	120
5327	ChIJQ1asA9a1RIYRwTo5i529--U	106
5328	ChIJW_40QHa2RIYRAGV1pOsbRGc	9
5329	ChIJW_40QHa2RIYRAGV1pOsbRGc	75
5330	ChIJW_40QHa2RIYRAGV1pOsbRGc	109
5331	ChIJW_40QHa2RIYRAGV1pOsbRGc	120
5332	ChIJW_40QHa2RIYRAGV1pOsbRGc	106
5333	ChIJx7P8DHa2RIYR5UAu_my5E4g	15
5334	ChIJx7P8DHa2RIYR5UAu_my5E4g	75
5335	ChIJx7P8DHa2RIYR5UAu_my5E4g	109
5336	ChIJx7P8DHa2RIYR5UAu_my5E4g	120
5337	ChIJx7P8DHa2RIYR5UAu_my5E4g	85
5338	ChIJx7P8DHa2RIYR5UAu_my5E4g	106
5339	ChIJz39IldS1RIYRKb1xMktUKX4	75
5340	ChIJz39IldS1RIYRKb1xMktUKX4	109
5341	ChIJz39IldS1RIYRKb1xMktUKX4	120
5342	ChIJz39IldS1RIYRKb1xMktUKX4	106
5343	ChIJBxYt6nW2RIYRcS6WMMGoXDs	75
5344	ChIJBxYt6nW2RIYRcS6WMMGoXDs	109
5345	ChIJBxYt6nW2RIYRcS6WMMGoXDs	120
5346	ChIJBxYt6nW2RIYRcS6WMMGoXDs	106
5347	ChIJF042qxK2RIYRUfIPrXib42s	75
5348	ChIJF042qxK2RIYRUfIPrXib42s	109
5349	ChIJF042qxK2RIYRUfIPrXib42s	120
5350	ChIJF042qxK2RIYRUfIPrXib42s	106
5351	ChIJ53aopN-1RIYRNxZKMt-TZEc	56
5352	ChIJ53aopN-1RIYRNxZKMt-TZEc	57
5353	ChIJ53aopN-1RIYRNxZKMt-TZEc	75
5354	ChIJ53aopN-1RIYRNxZKMt-TZEc	109
5355	ChIJ53aopN-1RIYRNxZKMt-TZEc	120
5356	ChIJ53aopN-1RIYRNxZKMt-TZEc	106
5357	ChIJgcqMjEa2RIYRjSGM55ShqDw	39
5358	ChIJgcqMjEa2RIYRjSGM55ShqDw	6
5359	ChIJgcqMjEa2RIYRjSGM55ShqDw	26
5360	ChIJgcqMjEa2RIYRjSGM55ShqDw	107
5361	ChIJgcqMjEa2RIYRjSGM55ShqDw	75
5362	ChIJgcqMjEa2RIYRjSGM55ShqDw	109
5363	ChIJgcqMjEa2RIYRjSGM55ShqDw	120
5364	ChIJgcqMjEa2RIYRjSGM55ShqDw	85
5365	ChIJgcqMjEa2RIYRjSGM55ShqDw	106
5366	ChIJkeJaBr8QBYgRVop65TGxzT0	57
5367	ChIJkeJaBr8QBYgRVop65TGxzT0	75
5368	ChIJkeJaBr8QBYgRVop65TGxzT0	109
5369	ChIJkeJaBr8QBYgRVop65TGxzT0	120
5370	ChIJkeJaBr8QBYgRVop65TGxzT0	106
5371	ChIJf0lTeLwQBYgRGsEoC7rcTNY	75
5372	ChIJf0lTeLwQBYgRGsEoC7rcTNY	109
5373	ChIJf0lTeLwQBYgRGsEoC7rcTNY	120
5374	ChIJf0lTeLwQBYgRGsEoC7rcTNY	85
5375	ChIJf0lTeLwQBYgRGsEoC7rcTNY	106
5376	ChIJrdpiPUoXBYgRmffumT1sEwU	75
5377	ChIJrdpiPUoXBYgRmffumT1sEwU	109
5378	ChIJrdpiPUoXBYgRmffumT1sEwU	120
5379	ChIJrdpiPUoXBYgRmffumT1sEwU	106
5380	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	75
5381	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	109
5382	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	120
5383	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	106
5384	ChIJrdpiPUoXBYgRAUrzgzQjBy8	140
5385	ChIJrdpiPUoXBYgRAUrzgzQjBy8	75
5386	ChIJrdpiPUoXBYgRAUrzgzQjBy8	109
5387	ChIJrdpiPUoXBYgRAUrzgzQjBy8	120
5388	ChIJrdpiPUoXBYgRAUrzgzQjBy8	85
5389	ChIJrdpiPUoXBYgRAUrzgzQjBy8	106
5390	ChIJaaA1QdsQBYgRkAoWKcpkNjk	9
5391	ChIJaaA1QdsQBYgRkAoWKcpkNjk	75
5392	ChIJaaA1QdsQBYgRkAoWKcpkNjk	109
5393	ChIJaaA1QdsQBYgRkAoWKcpkNjk	120
5394	ChIJaaA1QdsQBYgRkAoWKcpkNjk	106
5395	ChIJ54nTyrgQBYgRD9qefHdRVns	75
5396	ChIJ54nTyrgQBYgRD9qefHdRVns	109
5397	ChIJ54nTyrgQBYgRD9qefHdRVns	120
5398	ChIJ54nTyrgQBYgRD9qefHdRVns	106
5399	ChIJVY4sYb8QBYgRDda9Qc_nvSs	75
5400	ChIJVY4sYb8QBYgRDda9Qc_nvSs	109
5401	ChIJVY4sYb8QBYgRDda9Qc_nvSs	120
5402	ChIJVY4sYb8QBYgRDda9Qc_nvSs	106
5403	ChIJKeSeycYQBYgRdgtNp4VKsnE	57
5404	ChIJKeSeycYQBYgRdgtNp4VKsnE	9
5405	ChIJKeSeycYQBYgRdgtNp4VKsnE	75
5406	ChIJKeSeycYQBYgRdgtNp4VKsnE	109
5407	ChIJKeSeycYQBYgRdgtNp4VKsnE	120
5408	ChIJKeSeycYQBYgRdgtNp4VKsnE	106
5409	ChIJ1538A7wQBYgRWHKD_9_TxXw	57
5410	ChIJ1538A7wQBYgRWHKD_9_TxXw	75
5411	ChIJ1538A7wQBYgRWHKD_9_TxXw	109
5412	ChIJ1538A7wQBYgRWHKD_9_TxXw	120
5413	ChIJ1538A7wQBYgRWHKD_9_TxXw	106
5414	ChIJg0FlNrkQBYgRYLB6z9JcNhU	75
5415	ChIJg0FlNrkQBYgRYLB6z9JcNhU	109
5416	ChIJg0FlNrkQBYgRYLB6z9JcNhU	120
5417	ChIJg0FlNrkQBYgRYLB6z9JcNhU	106
5418	ChIJYxoPscYQBYgREnc48fDUaCQ	75
5419	ChIJYxoPscYQBYgREnc48fDUaCQ	109
5420	ChIJYxoPscYQBYgREnc48fDUaCQ	120
5421	ChIJYxoPscYQBYgREnc48fDUaCQ	106
5422	ChIJTccCecMQBYgREPD7rlez65I	75
5423	ChIJTccCecMQBYgREPD7rlez65I	109
5424	ChIJTccCecMQBYgREPD7rlez65I	120
5425	ChIJTccCecMQBYgREPD7rlez65I	106
5426	ChIJgzpDHkwXBYgRwzQGGLr9__g	57
5427	ChIJgzpDHkwXBYgRwzQGGLr9__g	75
5428	ChIJgzpDHkwXBYgRwzQGGLr9__g	109
5429	ChIJgzpDHkwXBYgRwzQGGLr9__g	120
5430	ChIJgzpDHkwXBYgRwzQGGLr9__g	85
5431	ChIJgzpDHkwXBYgRwzQGGLr9__g	106
5432	ChIJA82pmd0VBYgRSiwe3anpPvg	75
5433	ChIJA82pmd0VBYgRSiwe3anpPvg	109
5434	ChIJA82pmd0VBYgRSiwe3anpPvg	120
5435	ChIJA82pmd0VBYgRSiwe3anpPvg	106
5436	ChIJNejdd04XBYgRl9_Mc68IV9M	56
5437	ChIJNejdd04XBYgRl9_Mc68IV9M	57
5438	ChIJNejdd04XBYgRl9_Mc68IV9M	75
5439	ChIJNejdd04XBYgRl9_Mc68IV9M	109
5440	ChIJNejdd04XBYgRl9_Mc68IV9M	120
5441	ChIJNejdd04XBYgRl9_Mc68IV9M	106
5442	ChIJI4YYpMYQBYgR22Y7NIJD9IY	75
5443	ChIJI4YYpMYQBYgR22Y7NIJD9IY	109
5444	ChIJI4YYpMYQBYgR22Y7NIJD9IY	120
5445	ChIJI4YYpMYQBYgR22Y7NIJD9IY	106
5446	ChIJz9z3CukQBYgRw7qRVtLHuD4	56
5447	ChIJz9z3CukQBYgRw7qRVtLHuD4	57
5448	ChIJz9z3CukQBYgRw7qRVtLHuD4	75
5449	ChIJz9z3CukQBYgRw7qRVtLHuD4	109
5450	ChIJz9z3CukQBYgRw7qRVtLHuD4	120
5451	ChIJz9z3CukQBYgRw7qRVtLHuD4	106
5452	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	75
5453	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	109
5454	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	120
5455	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	106
5456	ChIJTURpSbkQBYgRzza-nRWLffQ	56
5457	ChIJTURpSbkQBYgRzza-nRWLffQ	57
5458	ChIJTURpSbkQBYgRzza-nRWLffQ	75
5459	ChIJTURpSbkQBYgRzza-nRWLffQ	109
5460	ChIJTURpSbkQBYgRzza-nRWLffQ	120
5461	ChIJTURpSbkQBYgRzza-nRWLffQ	106
5462	ChIJHaxi9rsQBYgRHe7WLuvhVa8	75
5463	ChIJHaxi9rsQBYgRHe7WLuvhVa8	109
5464	ChIJHaxi9rsQBYgRHe7WLuvhVa8	120
5465	ChIJHaxi9rsQBYgRHe7WLuvhVa8	106
5466	ChIJ6wcpabwQBYgRXFCpCsFnK7M	75
5467	ChIJ6wcpabwQBYgRXFCpCsFnK7M	57
5468	ChIJ6wcpabwQBYgRXFCpCsFnK7M	109
5469	ChIJ6wcpabwQBYgRXFCpCsFnK7M	120
5470	ChIJ6wcpabwQBYgRXFCpCsFnK7M	85
5471	ChIJ6wcpabwQBYgRXFCpCsFnK7M	106
5472	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	7
5473	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	15
5474	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	75
5475	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	109
5476	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	120
5477	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	85
5478	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	106
5479	ChIJR4_GSrkQBYgRlJHCR74rM-s	56
5480	ChIJR4_GSrkQBYgRlJHCR74rM-s	75
5481	ChIJR4_GSrkQBYgRlJHCR74rM-s	109
5482	ChIJR4_GSrkQBYgRlJHCR74rM-s	120
5483	ChIJR4_GSrkQBYgRlJHCR74rM-s	106
5484	ChIJEdXItMAQBYgRPJnU9byrpw8	56
5485	ChIJEdXItMAQBYgRPJnU9byrpw8	57
5486	ChIJEdXItMAQBYgRPJnU9byrpw8	75
5487	ChIJEdXItMAQBYgRPJnU9byrpw8	109
5488	ChIJEdXItMAQBYgRPJnU9byrpw8	120
5489	ChIJEdXItMAQBYgRPJnU9byrpw8	106
5490	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	75
5491	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	109
5492	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	120
5493	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	106
5494	ChIJMcyCKbkQBYgRZk8SOBfb_N0	57
5495	ChIJMcyCKbkQBYgRZk8SOBfb_N0	75
5496	ChIJMcyCKbkQBYgRZk8SOBfb_N0	109
5497	ChIJMcyCKbkQBYgRZk8SOBfb_N0	120
5498	ChIJMcyCKbkQBYgRZk8SOBfb_N0	106
5499	ChIJq-GWWMcQBYgR_0-FCZtqFYU	15
5500	ChIJq-GWWMcQBYgR_0-FCZtqFYU	75
5501	ChIJq-GWWMcQBYgR_0-FCZtqFYU	109
5502	ChIJq-GWWMcQBYgR_0-FCZtqFYU	120
5503	ChIJq-GWWMcQBYgR_0-FCZtqFYU	85
5504	ChIJq-GWWMcQBYgR_0-FCZtqFYU	106
5505	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	57
5506	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	75
5507	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	109
5508	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	120
5509	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	85
5510	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	106
5511	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	75
5512	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	109
5513	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	120
5514	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	106
5515	ChIJEz0Ez-gQBYgRC-n2GAZSdks	9
5516	ChIJEz0Ez-gQBYgRC-n2GAZSdks	75
5517	ChIJEz0Ez-gQBYgRC-n2GAZSdks	109
5518	ChIJEz0Ez-gQBYgRC-n2GAZSdks	120
5519	ChIJEz0Ez-gQBYgRC-n2GAZSdks	106
5520	ChIJfwaYn04XBYgRL-0IbL7HrYM	75
5521	ChIJfwaYn04XBYgRL-0IbL7HrYM	109
5522	ChIJfwaYn04XBYgRL-0IbL7HrYM	120
5523	ChIJfwaYn04XBYgRL-0IbL7HrYM	106
5524	ChIJ_28aTL8QBYgRV6uYmeqM88Y	15
5525	ChIJ_28aTL8QBYgRV6uYmeqM88Y	75
5526	ChIJ_28aTL8QBYgRV6uYmeqM88Y	109
5527	ChIJ_28aTL8QBYgRV6uYmeqM88Y	120
5528	ChIJ_28aTL8QBYgRV6uYmeqM88Y	85
5529	ChIJ_28aTL8QBYgRV6uYmeqM88Y	106
5530	ChIJedoQV9MRBYgRqrVWAkYdGzA	75
5531	ChIJedoQV9MRBYgRqrVWAkYdGzA	109
5532	ChIJedoQV9MRBYgRqrVWAkYdGzA	120
5533	ChIJedoQV9MRBYgRqrVWAkYdGzA	106
5534	ChIJYdnWeSURBYgRcdXRVUHG-JE	75
5535	ChIJYdnWeSURBYgRcdXRVUHG-JE	109
5536	ChIJYdnWeSURBYgRcdXRVUHG-JE	120
5537	ChIJYdnWeSURBYgRcdXRVUHG-JE	106
5538	ChIJMYup0f4RBYgR8pFl5Din6P4	75
5539	ChIJMYup0f4RBYgR8pFl5Din6P4	109
5540	ChIJMYup0f4RBYgR8pFl5Din6P4	120
5541	ChIJMYup0f4RBYgR8pFl5Din6P4	106
5542	ChIJC7G_WVERBYgRJeOlxyG8mgo	15
5543	ChIJC7G_WVERBYgRJeOlxyG8mgo	7
5544	ChIJC7G_WVERBYgRJeOlxyG8mgo	57
5545	ChIJC7G_WVERBYgRJeOlxyG8mgo	75
5546	ChIJC7G_WVERBYgRJeOlxyG8mgo	109
5547	ChIJC7G_WVERBYgRJeOlxyG8mgo	120
5548	ChIJC7G_WVERBYgRJeOlxyG8mgo	85
5549	ChIJC7G_WVERBYgRJeOlxyG8mgo	106
5550	ChIJtW0nBRMRBYgRe02OrUNLP78	75
5551	ChIJtW0nBRMRBYgRe02OrUNLP78	109
5552	ChIJtW0nBRMRBYgRe02OrUNLP78	120
5553	ChIJtW0nBRMRBYgRe02OrUNLP78	106
5554	ChIJUdrjn5MRBYgR403D5r4ZCk8	75
5555	ChIJUdrjn5MRBYgR403D5r4ZCk8	109
5556	ChIJUdrjn5MRBYgR403D5r4ZCk8	120
5557	ChIJUdrjn5MRBYgR403D5r4ZCk8	106
5558	ChIJHa7ysYQRBYgRcc-_lQRS248	75
5559	ChIJHa7ysYQRBYgRcc-_lQRS248	109
5560	ChIJHa7ysYQRBYgRcc-_lQRS248	120
5561	ChIJHa7ysYQRBYgRcc-_lQRS248	106
5562	ChIJj8s7AUoXBYgRaqwOZKNaRrs	140
5563	ChIJj8s7AUoXBYgRaqwOZKNaRrs	75
5564	ChIJj8s7AUoXBYgRaqwOZKNaRrs	109
5565	ChIJj8s7AUoXBYgRaqwOZKNaRrs	120
5566	ChIJj8s7AUoXBYgRaqwOZKNaRrs	85
5567	ChIJj8s7AUoXBYgRaqwOZKNaRrs	106
5568	ChIJye6xncMQBYgRI4YpStY3CwE	56
5569	ChIJye6xncMQBYgRI4YpStY3CwE	57
5570	ChIJye6xncMQBYgRI4YpStY3CwE	75
5571	ChIJye6xncMQBYgRI4YpStY3CwE	109
5572	ChIJye6xncMQBYgRI4YpStY3CwE	120
5573	ChIJye6xncMQBYgRI4YpStY3CwE	106
5574	ChIJUaLy-ScXBYgRuLBwoomy1NM	75
5575	ChIJUaLy-ScXBYgRuLBwoomy1NM	109
5576	ChIJUaLy-ScXBYgRuLBwoomy1NM	120
5577	ChIJUaLy-ScXBYgRuLBwoomy1NM	106
5578	ChIJFbOGt4ERBYgR99sTM0PWuB0	75
5579	ChIJFbOGt4ERBYgR99sTM0PWuB0	109
5580	ChIJFbOGt4ERBYgR99sTM0PWuB0	120
5581	ChIJFbOGt4ERBYgR99sTM0PWuB0	106
5582	ChIJCeJkWp4RBYgRTkY4wsoEhG4	75
5583	ChIJCeJkWp4RBYgRTkY4wsoEhG4	109
5584	ChIJCeJkWp4RBYgRTkY4wsoEhG4	120
5585	ChIJCeJkWp4RBYgRTkY4wsoEhG4	106
5586	ChIJ8yqmR2ERBYgR-jq7kJVOU08	75
5587	ChIJ8yqmR2ERBYgR-jq7kJVOU08	109
5588	ChIJ8yqmR2ERBYgR-jq7kJVOU08	120
5589	ChIJ8yqmR2ERBYgR-jq7kJVOU08	106
5590	ChIJr-42Tg0aBYgRdOvgnTS4IA8	56
5591	ChIJr-42Tg0aBYgRdOvgnTS4IA8	75
5592	ChIJr-42Tg0aBYgRdOvgnTS4IA8	109
5593	ChIJr-42Tg0aBYgRdOvgnTS4IA8	120
5594	ChIJr-42Tg0aBYgRdOvgnTS4IA8	106
5595	ChIJadNS2wMRBYgRuna7m-1TVyI	75
5596	ChIJadNS2wMRBYgRuna7m-1TVyI	109
5597	ChIJadNS2wMRBYgRuna7m-1TVyI	120
5598	ChIJadNS2wMRBYgRuna7m-1TVyI	106
5599	ChIJxajE_00XBYgR737ZZOJBDxo	75
5600	ChIJxajE_00XBYgR737ZZOJBDxo	109
5601	ChIJxajE_00XBYgR737ZZOJBDxo	120
5602	ChIJxajE_00XBYgR737ZZOJBDxo	106
5603	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	75
5604	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	109
5605	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	120
5606	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	106
5607	ChIJ9UGhX58QBYgRJROWYSS1i5E	9
5608	ChIJ9UGhX58QBYgRJROWYSS1i5E	75
5609	ChIJ9UGhX58QBYgRJROWYSS1i5E	109
5610	ChIJ9UGhX58QBYgRJROWYSS1i5E	120
5611	ChIJ9UGhX58QBYgRJROWYSS1i5E	106
5612	ChIJa51p_Q0XBYgRWL9FwsikTd0	75
5613	ChIJa51p_Q0XBYgRWL9FwsikTd0	109
5614	ChIJa51p_Q0XBYgRWL9FwsikTd0	120
5615	ChIJa51p_Q0XBYgRWL9FwsikTd0	106
5616	ChIJGa2eFzcXBYgRRTFlRlgCxpA	75
5617	ChIJGa2eFzcXBYgRRTFlRlgCxpA	109
5618	ChIJGa2eFzcXBYgRRTFlRlgCxpA	120
5619	ChIJGa2eFzcXBYgRRTFlRlgCxpA	106
5620	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	75
5621	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	109
5622	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	120
5623	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	106
5624	ChIJc3Ufpt4QBYgRBcWFtKy8g48	15
5625	ChIJc3Ufpt4QBYgRBcWFtKy8g48	75
5626	ChIJc3Ufpt4QBYgRBcWFtKy8g48	109
5627	ChIJc3Ufpt4QBYgRBcWFtKy8g48	120
5628	ChIJc3Ufpt4QBYgRBcWFtKy8g48	85
5629	ChIJc3Ufpt4QBYgRBcWFtKy8g48	106
5630	ChIJ1e7dJooQBYgR8eZbItGcIkw	75
5631	ChIJ1e7dJooQBYgR8eZbItGcIkw	109
5632	ChIJ1e7dJooQBYgR8eZbItGcIkw	120
5633	ChIJ1e7dJooQBYgR8eZbItGcIkw	106
5634	ChIJW9Mxr3wXBYgRd2jbhewjw9k	75
5635	ChIJW9Mxr3wXBYgRd2jbhewjw9k	109
5636	ChIJW9Mxr3wXBYgRd2jbhewjw9k	120
5637	ChIJW9Mxr3wXBYgRd2jbhewjw9k	106
5638	ChIJ57c441MXBYgR0hX7GHWn5vQ	75
5639	ChIJ57c441MXBYgR0hX7GHWn5vQ	109
5640	ChIJ57c441MXBYgR0hX7GHWn5vQ	120
5641	ChIJ57c441MXBYgR0hX7GHWn5vQ	106
5642	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	75
5643	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	109
5644	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	120
5645	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	106
5646	ChIJo7KvSi4bBYgRx5rM13umhOc	75
5647	ChIJo7KvSi4bBYgRx5rM13umhOc	109
5648	ChIJo7KvSi4bBYgRx5rM13umhOc	120
5649	ChIJo7KvSi4bBYgRx5rM13umhOc	106
\.


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.places (id, place_id, name, lat, lng, price_level, overall_rating, ratings_count, link) FROM stdin;
1	ChIJkeJaBr8QBYgRVop65TGxzT0	Subway	42.98364160000001	-87.95065939999999	1	3.1	48	\N
2	ChIJf0lTeLwQBYgRGsEoC7rcTNY	Leon's Frozen Custard	42.9877857	-87.9487149	1	4.7	4323	\N
3	ChIJrdpiPUoXBYgRmffumT1sEwU	Bombay Sweets	42.9827713	-87.9294121	1	3.9	640	\N
4	ChIJjRE5U7kQBYgRVAg1eI7X3ZI	Chipotle Mexican Grill	42.98651089999999	-87.9478438	1	3.9	953	\N
5	ChIJrdpiPUoXBYgRAUrzgzQjBy8	Best Food Store	42.982527	-87.9294204	\N	4.3	443	\N
6	ChIJaaA1QdsQBYgRkAoWKcpkNjk	JB's On 41	42.97118750000001	-87.9477539	\N	4.4	1300	\N
7	ChIJ54nTyrgQBYgRD9qefHdRVns	Royal India Milwaukee	42.98289	-87.94797799999999	2	4	533	\N
8	ChIJVY4sYb8QBYgRDda9Qc_nvSs	Omega Restaurant	42.9815714	-87.949016	2	4.1	2167	\N
9	ChIJKeSeycYQBYgRdgtNp4VKsnE	Buffalo Wild Wings	42.9784044	-87.9472274	2	3.4	1492	\N
10	ChIJ1538A7wQBYgRWHKD_9_TxXw	Subway	42.98681959999999	-87.9485691	1	4.1	199	\N
11	ChIJg0FlNrkQBYgRYLB6z9JcNhU	Papa John's Pizza	42.9852438	-87.9477378	1	2.7	285	\N
12	ChIJYxoPscYQBYgREnc48fDUaCQ	Wong's Wok	42.97763699999999	-87.94775399999999	2	3.8	314	\N
13	ChIJTccCecMQBYgREPD7rlez65I	The King Crab Shack	42.9741987	-87.9490167	2	3.9	641	\N
14	ChIJgzpDHkwXBYgRwzQGGLr9__g	LA MICHOACANA PLUS	42.9872339	-87.92869019999999	1	4.1	173	\N
15	ChIJA82pmd0VBYgRSiwe3anpPvg	Emerald City Catering/The Enchanted Forest Event Venue	42.97960499999999	-87.929301	\N	4.4	122	\N
16	ChIJNejdd04XBYgRl9_Mc68IV9M	Golden Chicken	42.98934949999999	-87.9285556	2	4.1	174	\N
17	ChIJI4YYpMYQBYgR22Y7NIJD9IY	New China Buffet	42.9772239	-87.947036	1	3.8	1357	\N
18	ChIJz9z3CukQBYgRw7qRVtLHuD4	Pizza Hut	42.9796398	-87.9501124	1	3	351	\N
19	ChIJZ1RJ88MQBYgRt-Hczp7RGtc	Denny's	42.975721	-87.9488598	1	3.6	1675	\N
20	ChIJTURpSbkQBYgRzza-nRWLffQ	Ned's Pizza	42.9855441	-87.9477349	1	4.5	1479	\N
21	ChIJHaxi9rsQBYgRHe7WLuvhVa8	Mazos Hamburgers	42.987465	-87.9479186	1	4.6	548	\N
22	ChIJ6wcpabwQBYgRXFCpCsFnK7M	Noodles and Company	42.98822909999999	-87.9492341	1	4	642	\N
23	ChIJ0RPgCrwQBYgRkFWvZP-KTdw	Einstein Bros. Bagels	42.98818989999999	-87.9487967	1	4	489	\N
24	ChIJR4_GSrkQBYgRlJHCR74rM-s	No. 1 Chinese Restaurant	42.98530520000001	-87.9477225	1	3.2	189	\N
25	ChIJEdXItMAQBYgRPJnU9byrpw8	Jimmy John's	42.9786515	-87.9472466	1	3.3	128	\N
26	ChIJ9R1Qs8AQBYgRoQqYYsAh0pc	Panda Express	42.9790187	-87.9476103	1	3.6	305	\N
27	ChIJMcyCKbkQBYgRZk8SOBfb_N0	Taco Bell	42.9845117	-87.9478718	1	3.6	1394	\N
28	ChIJq-GWWMcQBYgR_0-FCZtqFYU	McDonald's	42.981616	-87.947344	1	3.5	1486	\N
29	ChIJ9Vt9iLsQBYgRdggjoFo0aNQ	Cousins Subs	42.988316	-87.94776	1	3.8	676	\N
30	ChIJZZ-8NrkQBYgRgYjAqi5dbwA	Charleys Cheesesteaks	42.985043	-87.947734	1	4.4	641	\N
31	ChIJEz0Ez-gQBYgRC-n2GAZSdks	Grainger's Pub & Grill	42.9737504	-87.9577704	2	4.1	404	\N
32	ChIJfwaYn04XBYgRL-0IbL7HrYM	JC King's Tortas LLC	42.98749999999999	-87.9286111	1	4.2	441	\N
33	ChIJ_28aTL8QBYgRV6uYmeqM88Y	Starbucks	42.982721	-87.948809	2	4.1	478	\N
34	ChIJedoQV9MRBYgRqrVWAkYdGzA	Burger King	42.98612900000001	-87.94868509999999	1	3.4	455	\N
35	ChIJYdnWeSURBYgRcdXRVUHG-JE	Zebbs	42.9809175	-87.9489134	\N	4.2	526	\N
36	ChIJMYup0f4RBYgR8pFl5Din6P4	Mad Chicken	42.9883719	-87.9492899	\N	4.5	108	\N
37	ChIJC7G_WVERBYgRJeOlxyG8mgo	Panera Bread	42.98041	-87.94888	2	3	127	\N
38	ChIJtW0nBRMRBYgRe02OrUNLP78	Farmer's Fridge	42.98957799999999	-87.950789	\N	3.7	3	\N
39	ChIJUdrjn5MRBYgR403D5r4ZCk8	Starbucks	42.9901501	-87.9509516	\N	\N	\N	\N
40	ChIJHa7ysYQRBYgRcc-_lQRS248	Asadero Fiesta Garibaldi	42.988589	-87.9382681	\N	5	1	\N
41	ChIJj8s7AUoXBYgRaqwOZKNaRrs	Tortilleria El Sol	42.9815943	-87.9288103	\N	4.4	53	\N
42	ChIJye6xncMQBYgRI4YpStY3CwE	Little Caesars Pizza	42.974559	-87.949049	1	3.1	574	\N
43	ChIJUaLy-ScXBYgRuLBwoomy1NM	Ricanmex frappes & Grill	42.9880812	-87.9332822	1	4.4	107	\N
44	ChIJFbOGt4ERBYgR99sTM0PWuB0	O Yeah Chicken And More	42.975596	-87.95585299999999	1	4.6	192	\N
45	ChIJCeJkWp4RBYgRTkY4wsoEhG4	AsianRican Foods	42.9756163	-87.9558986	\N	4.7	14	\N
46	ChIJ8yqmR2ERBYgR-jq7kJVOU08	Halal Investments LLC	42.9756163	-87.9558986	\N	\N	\N	\N
47	ChIJr-42Tg0aBYgRdOvgnTS4IA8	Jo Jo's Fried Chicken	42.97938610000001	-87.9291858	1	4.5	185	\N
48	ChIJadNS2wMRBYgRuna7m-1TVyI	El Jimador Mexican Restaurant & Bar	42.9948927	-87.95746799999999	1	4.4	173	\N
49	ChIJxajE_00XBYgR737ZZOJBDxo	El Tucanazo Taqueria And Seafood	42.98519530000001	-87.9290473	1	4.2	407	\N
50	ChIJ3Si5-VEXBYgR4FmdOccLHjQ	Taqueria Arandas	42.99158419999999	-87.92846850000001	1	4.4	586	\N
51	ChIJ9UGhX58QBYgRJROWYSS1i5E	Brew City Tap	42.997475	-87.9531964	1	4.3	110	\N
52	ChIJa51p_Q0XBYgRWL9FwsikTd0	Camacho‘s Family Restaurant	42.979441	-87.92938699999999	2	4.6	53	\N
53	ChIJGa2eFzcXBYgRRTFlRlgCxpA	Karina's Pizza	42.9907781	-87.92861429999999	1	4.2	82	\N
54	ChIJQbd8e1MXBYgRj0RK6Kdpj5U	La Lunchera Restaurante & Taqueria	42.991055	-87.928381	\N	5	4	\N
55	ChIJc3Ufpt4QBYgRBcWFtKy8g48	McDonald's	42.9670141	-87.94927469999999	1	3.4	1503	\N
56	ChIJ1e7dJooQBYgR8eZbItGcIkw	Burger King	42.9867459	-87.9710068	1	2.8	666	\N
57	ChIJW9Mxr3wXBYgRd2jbhewjw9k	Taqueria Mis Tacos	42.9977104	-87.9331237	\N	5	3	\N
58	ChIJ57c441MXBYgR0hX7GHWn5vQ	Taqueria Arandas Food Truck	42.9953002	-87.9293594	\N	4.5	115	\N
59	ChIJ54Zk8tMXBYgRt7OpAql4Q0Q	Taqueria La Sierrita	42.9957813	-87.9288301	\N	4.5	137	\N
60	ChIJo7KvSi4bBYgRx5rM13umhOc	Fidencio's Pizza Restaurant	43.00216	-87.9478209	\N	4.6	54	\N
\.


--
-- Data for Name: population_data; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.population_data (fips_code, object_id, county_code, name, state, population, population_density, date_created) FROM stdin;
1	161526	1001	Autauga County	Alabama	55200	35.8534189940189	2020/04/01 20:53:36
2	161527	1003	Baldwin County	Alabama	208107	50.5415035640023	2020/04/01 20:53:36
3	161528	1005	Barbour County	Alabama	25782	11.247981205619	2020/04/01 20:53:36
4	161529	1007	Bibb County	Alabama	22527	13.9731140005546	2020/04/01 20:53:36
5	161530	1009	Blount County	Alabama	57645	34.5158164233531	2020/04/01 20:53:36
6	161531	1011	Bullock County	Alabama	10352	6.41761954967603	2020/04/01 20:53:36
7	161532	1013	Butler County	Alabama	20025	9.95277078503475	2020/04/01 20:53:36
8	161533	1015	Calhoun County	Alabama	115098	73.3486880019654	2020/04/01 20:53:36
9	161534	1017	Chambers County	Alabama	33826	21.8926380821564	2020/04/01 20:53:36
10	161535	1019	Cherokee County	Alabama	25853	18.0333282957246	2020/04/01 20:53:36
11	161536	1021	Chilton County	Alabama	43930	24.4806693894376	2020/04/01 20:53:36
12	161537	1023	Choctaw County	Alabama	13075	5.52650860439243	2020/04/01 20:53:36
13	161538	1025	Clarke County	Alabama	24387	7.60313165232808	2020/04/01 20:53:36
14	161539	1027	Clay County	Alabama	13378	8.55233134503563	2020/04/01 20:53:36
15	161540	1029	Cleburne County	Alabama	14938	10.2973539136845	2020/04/01 20:53:36
16	161541	1031	Coffee County	Alabama	51288	29.1646729138119	2020/04/01 20:53:36
17	161542	1033	Colbert County	Alabama	54495	35.4969499814872	2020/04/01 20:53:36
18	161543	1035	Conecuh County	Alabama	12514	5.68299517064302	2020/04/01 20:53:36
19	161544	1037	Coosa County	Alabama	10855	6.43888528179168	2020/04/01 20:53:36
20	161545	1039	Covington County	Alabama	37351	13.9937034591157	2020/04/01 20:53:36
21	161546	1041	Crenshaw County	Alabama	13865	8.79227330633629	2020/04/01 20:53:36
22	161547	1043	Cullman County	Alabama	82313	43.252675634723	2020/04/01 20:53:36
23	161548	1045	Dale County	Alabama	49255	33.893125488288	2020/04/01 20:53:36
24	161549	1047	Dallas County	Alabama	40029	15.7910333786488	2020/04/01 20:53:36
25	161550	1049	DeKalb County	Alabama	71200	35.3757798349071	2020/04/01 20:53:36
26	161551	1051	Elmore County	Alabama	81212	50.7014402097701	2020/04/01 20:53:36
27	161552	1053	Escambia County	Alabama	37328	15.247648981167	2020/04/01 20:53:36
28	161553	1055	Etowah County	Alabama	102939	74.2505481228132	2020/04/01 20:53:36
29	161554	1057	Fayette County	Alabama	16585	10.201801349626	2020/04/01 20:53:36
30	161555	1059	Franklin County	Alabama	31542	19.2113561545785	2020/04/01 20:53:36
31	161556	1061	Geneva County	Alabama	26491	17.8043158513833	2020/04/01 20:53:36
32	161557	1063	Greene County	Alabama	8426	5.02810013073651	2020/04/01 20:53:36
33	161558	1065	Hale County	Alabama	14887	8.92555700068266	2020/04/01 20:53:36
34	161559	1067	Henry County	Alabama	17124	11.7696657362901	2020/04/01 20:53:36
35	161560	1069	Houston County	Alabama	104352	69.4820926648789	2020/04/01 20:53:36
36	161561	1071	Jackson County	Alabama	52094	18.6584828351285	2020/04/01 20:53:36
37	161562	1073	Jefferson County	Alabama	659892	229.251338127605	2020/04/01 20:53:36
38	161563	1075	Lamar County	Alabama	13933	8.89409702789082	2020/04/01 20:53:36
39	161564	1077	Lauderdale County	Alabama	92585	53.5128223620641	2020/04/01 20:53:36
40	161565	1079	Lawrence County	Alabama	33171	18.5430504610001	2020/04/01 20:53:36
41	161566	1081	Lee County	Alabama	159287	101.227864438246	2020/04/01 20:53:36
42	161567	1083	Limestone County	Alabama	93052	64.1614968844402	2020/04/01 20:53:36
43	161568	1085	Lowndes County	Alabama	10236	5.52043597931141	2020/04/01 20:53:36
44	161569	1087	Macon County	Alabama	19054	12.0835405513515	2020/04/01 20:53:36
45	161570	1089	Madison County	Alabama	357560	172.227500046414	2020/04/01 20:53:36
46	161572	1091	Marengo County	Alabama	19538	7.72210160787143	2020/04/01 20:53:36
47	161573	1093	Marion County	Alabama	29965	15.5852067273234	2020/04/01 20:53:36
48	161574	1095	Marshall County	Alabama	95145	64.921822989232	2020/04/01 20:53:36
49	161575	1097	Mobile County	Alabama	414659	130.229928949949	2020/04/01 20:53:36
50	161576	1099	Monroe County	Alabama	21512	8.09796562551444	2020/04/01 20:53:36
51	161577	1101	Montgomery County	Alabama	226941	111.578217285862	2020/04/01 20:53:36
52	161578	1103	Morgan County	Alabama	119122	79.3822306638455	2020/04/01 20:53:36
53	161579	1105	Perry County	Alabama	9486	5.08932713103056	2020/04/01 20:53:36
54	161580	1107	Pickens County	Alabama	20298	8.89134644415793	2020/04/01 20:53:36
55	161581	1109	Pike County	Alabama	33403	19.1899851374734	2020/04/01 20:53:36
56	161582	1111	Randolph County	Alabama	22574	15.013142302193	2020/04/01 20:53:36
57	161583	1113	Russell County	Alabama	58213	35.05587425982	2020/04/01 20:53:36
58	164997	1115	St. Clair County	Alabama	87306	53.3705840032232	2020/04/01 20:53:36
59	161584	1117	Shelby County	Alabama	211261	103.859038845622	2020/04/01 20:53:36
60	161585	1119	Sumter County	Alabama	12985	5.5470144040799	2020/04/01 20:53:36
61	161586	1121	Talladega County	Alabama	80565	42.219157364741	2020/04/01 20:53:36
62	161587	1123	Tallapoosa County	Alabama	40636	21.8969584604702	2020/04/01 20:53:36
63	161588	1125	Tuscaloosa County	Alabama	206213	60.2784113409828	2020/04/01 20:53:36
64	161589	1127	Walker County	Alabama	64493	31.480176797023	2020/04/01 20:53:36
65	161590	1129	Washington County	Alabama	16643	5.94877180648605	2020/04/01 20:53:36
66	161591	1131	Wilcox County	Alabama	10809	4.69736954024345	2020/04/01 20:53:36
67	161592	1133	Winston County	Alabama	23875	15.038338282957	2020/04/01 20:53:36
68	1419964	2013	Aleutians East Borough	Alaska	3425	0.18931798413723	2020/04/01 20:53:36
69	1419965	2016	Aleutians West Census Area	Alaska	5750	0.505471803211635	2020/04/01 20:53:36
70	1416061	2020	Anchorage Municipality	Alaska	296112	67.0002918813575	2020/04/01 20:53:36
71	1419966	2050	Bethel Census Area	Alaska	18040	0.171435928666343	2020/04/01 20:53:36
72	1419967	2060	Bristol Bay Borough	Alaska	890	0.712955928457051	2020/04/01 20:53:36
73	1419988	2068	Denali Borough	Alaska	2232	0.0681951983542993	2020/04/01 20:53:36
74	1419968	2070	Dillingham Census Area	Alaska	4975	0.104785321760152	2020/04/01 20:53:36
75	1419969	2090	Fairbanks North Star Borough	Alaska	99653	5.24949098254823	2020/04/01 20:53:36
76	1419970	2100	Haines Borough	Alaska	2518	0.415544893969977	2020/04/01 20:53:36
77	2371430	2105	Hoonah-Angoon Census Area	Alaska	2132	0.125547899224925	2020/04/01 20:53:36
78	1419971	2110	Juneau City and Borough	Alaska	32330	4.61661018835993	2020/04/01 20:53:36
79	1419972	2122	Kenai Peninsula Borough	Alaska	58220	1.40288530686126	2020/04/01 20:53:36
80	1419973	2130	Ketchikan Gateway Borough	Alaska	13804	1.0973632644438	2020/04/01 20:53:36
81	1419974	2150	Kodiak Island Borough	Alaska	13649	0.796616253836105	2020/04/01 20:53:36
82	1419985	2158	Kusilvak Census Area	Alaska	8198	0.185386083250832	2020/04/01 20:53:36
83	1419975	2164	Lake and Peninsula Borough	Alaska	1375	0.0222154125511112	2020/04/01 20:53:36
84	1419976	2170	Matanuska-Susitna Borough	Alaska	103464	1.61641230138181	2020/04/01 20:53:36
85	1419977	2180	Nome Census Area	Alaska	9925	0.166814790483156	2020/04/01 20:53:36
86	1419978	2185	North Slope Borough	Alaska	9797	0.0425856311115024	2020/04/01 20:53:36
87	1419979	2188	Northwest Arctic Borough	Alaska	7734	0.0837655920658693	2020/04/01 20:53:36
88	2516404	2195	Petersburg Borough	Alaska	3255	0.433274537534888	2020/04/01 20:53:36
89	1419980	2198	Prince of Wales-Hyder Census Area	Alaska	6474	0.474963699740084	2020/04/01 20:53:36
90	1419981	2220	Sitka City and Borough	Alaska	8738	1.17552014159081	2020/04/01 20:53:36
91	2339479	2230	Skagway Municipality	Alaska	1061	0.944050024664486	2020/04/01 20:53:36
92	1419983	2240	Southeast Fairbanks Census Area	Alaska	6876	0.106951726969006	2020/04/01 20:53:36
93	1419984	2261	Valdez-Cordova Census Area	Alaska	9301	0.104936772956997	2020/04/01 20:53:36
94	2516402	2275	Wrangell City and Borough	Alaska	2484	0.375226755408205	2020/04/01 20:53:36
95	1419986	2282	Yakutat City and Borough	Alaska	689	0.0348963251396459	2020/04/01 20:53:36
96	1419987	2290	Yukon-Koyukuk Census Area	Alaska	5415	0.0143620751775343	2020/04/01 20:53:36
97	25441	4001	Apache County	Arizona	71522	2.4661635471983	2020/04/01 20:53:36
98	25442	4003	Cochise County	Arizona	126279	7.9091600308276	2020/04/01 20:53:36
99	25443	4005	Coconino County	Arizona	140217	2.9077305777695	2020/04/01 20:53:36
100	40471	4007	Gila County	Arizona	53400	4.33330667751936	2020/04/01 20:53:36
101	25444	4009	Graham County	Arizona	37879	3.16377107795328	2020/04/01 20:53:36
102	42807	4011	Greenlee County	Arizona	9504	1.99216003069318	2020/04/01 20:53:36
103	43540	4012	La Paz County	Arizona	20701	1.77630223819669	2020/04/01 20:53:36
104	37026	4013	Maricopa County	Arizona	4253913	178.541173990963	2020/04/01 20:53:36
105	25445	4015	Mohave County	Arizona	206064	5.97711349615256	2020/04/01 20:53:36
106	42808	4017	Navajo County	Arizona	108705	4.21826164424761	2020/04/01 20:53:36
107	25446	4019	Pima County	Arizona	1019722	42.8548311026477	2020/04/01 20:53:36
108	25447	4021	Pinal County	Arizona	419721	30.2012780665733	2020/04/01 20:53:36
109	40472	4023	Santa Cruz County	Arizona	46584	14.5410811200168	2020/04/01 20:53:36
110	42809	4025	Yavapai County	Arizona	224645	10.677147061634	2020/04/01 20:53:36
111	23901	4027	Yuma County	Arizona	207829	14.5527021726827	2020/04/01 20:53:36
112	63755	5001	Arkansas County	Arkansas	18124	7.07723545354986	2020/04/01 20:53:36
113	63756	5003	Ashley County	Arkansas	20537	8.56899957694753	2020/04/01 20:53:36
114	69895	5005	Baxter County	Arkansas	41219	28.7152710674774	2020/04/01 20:53:36
115	69896	5007	Benton County	Arkansas	258980	117.977455778265	2020/04/01 20:53:36
116	69897	5009	Boone County	Arkansas	37288	24.4020453612755	2020/04/01 20:53:36
117	63757	5011	Bradley County	Arkansas	10948	6.51079736886142	2020/04/01 20:53:36
118	63758	5013	Calhoun County	Arkansas	5202	3.19537992240791	2020/04/01 20:53:36
119	66975	5015	Carroll County	Arkansas	27887	17.0918030867579	2020/04/01 20:53:36
120	69160	5017	Chicot County	Arkansas	10826	6.48720533961788	2020/04/01 20:53:36
121	66845	5019	Clark County	Arkansas	22385	9.97935794884845	2020/04/01 20:53:36
122	63759	5021	Clay County	Arkansas	15061	9.09362902300879	2020/04/01 20:53:36
123	66983	5023	Cleburne County	Arkansas	25230	17.5920794960845	2020/04/01 20:53:36
124	63760	5025	Cleveland County	Arkansas	8226	5.31308376264506	2020/04/01 20:53:36
125	63761	5027	Columbia County	Arkansas	23892	12.0430090148183	2020/04/01 20:53:36
126	66846	5029	Conway County	Arkansas	20906	14.6161703137298	2020/04/01 20:53:36
127	66847	5031	Craighead County	Arkansas	105701	57.701239773158	2020/04/01 20:53:36
128	69161	5033	Crawford County	Arkansas	62472	40.7996871120115	2020/04/01 20:53:36
129	69162	5035	Crittenden County	Arkansas	49013	31.0060680601584	2020/04/01 20:53:36
130	66848	5037	Cross County	Arkansas	16998	10.6475618813098	2020/04/01 20:53:36
131	66849	5039	Dallas County	Arkansas	7432	4.2996258215917	2020/04/01 20:53:36
132	66850	5041	Desha County	Arkansas	11887	5.97498329534256	2020/04/01 20:53:36
133	66851	5043	Drew County	Arkansas	18502	8.62389556526047	2020/04/01 20:53:36
134	66852	5045	Faulkner County	Arkansas	122416	72.9467914658334	2020/04/01 20:53:36
135	66853	5047	Franklin County	Arkansas	17780	11.2751845642444	2020/04/01 20:53:36
136	66854	5049	Fulton County	Arkansas	12139	7.58160811844068	2020/04/01 20:53:36
137	66855	5051	Garland County	Arkansas	98296	55.9998517852055	2020/04/01 20:53:36
138	66856	5053	Grant County	Arkansas	18086	11.0524158192483	2020/04/01 20:53:36
139	66857	5055	Greene County	Arkansas	44623	29.8241054091558	2020/04/01 20:53:36
140	66858	5057	Hempstead County	Arkansas	22018	11.6851730245058	2020/04/01 20:53:36
141	66859	5059	Hot Spring County	Arkansas	33520	21.0370307484283	2020/04/01 20:53:36
142	66872	5061	Howard County	Arkansas	13389	8.78324092031978	2020/04/01 20:53:36
143	69163	5063	Independence County	Arkansas	37264	18.8332181709132	2020/04/01 20:53:36
144	66860	5065	Izard County	Arkansas	13559	9.01718938852684	2020/04/01 20:53:36
145	66861	5067	Jackson County	Arkansas	17225	10.4911935334858	2020/04/01 20:53:36
146	66862	5069	Jefferson County	Arkansas	70424	31.2545147992963	2020/04/01 20:53:36
147	66863	5071	Johnson County	Arkansas	26291	15.3829203617191	2020/04/01 20:53:36
148	66864	5073	Lafayette County	Arkansas	6915	5.05379689323219	2020/04/01 20:53:36
149	66865	5075	Lawrence County	Arkansas	16669	10.9528948256261	2020/04/01 20:53:36
150	66866	5077	Lee County	Arkansas	9398	6.02134153344286	2020/04/01 20:53:36
151	66873	5079	Lincoln County	Arkansas	13695	9.41600591939292	2020/04/01 20:53:36
152	66874	5081	Little River County	Arkansas	12417	9.0075425884187	2020/04/01 20:53:36
153	82850	5083	Logan County	Arkansas	21757	11.8629638442172	2020/04/01 20:53:36
154	69164	5085	Lonoke County	Arkansas	72206	36.1639717692876	2020/04/01 20:53:36
155	69165	5087	Madison County	Arkansas	16076	7.44015438511027	2020/04/01 20:53:36
156	69898	5089	Marion County	Arkansas	16438	10.6318471099612	2020/04/01 20:53:36
157	69166	5091	Miller County	Arkansas	43759	27.0012527090477	2020/04/01 20:53:36
158	69899	5093	Mississippi County	Arkansas	42831	18.3628578105964	2020/04/01 20:53:36
159	69167	5095	Monroe County	Arkansas	7249	4.60991267149704	2020/04/01 20:53:36
160	69168	5097	Montgomery County	Arkansas	8993	4.45236901326667	2020/04/01 20:53:36
161	69169	5099	Nevada County	Arkansas	8440	5.27436382601417	2020/04/01 20:53:36
162	69900	5101	Newton County	Arkansas	7848	3.69118925414889	2020/04/01 20:53:36
163	69170	5103	Ouachita County	Arkansas	24106	12.7014153173494	2020/04/01 20:53:36
164	69171	5105	Perry County	Arkansas	10322	7.22554351013243	2020/04/01 20:53:36
165	69172	5107	Phillips County	Arkansas	19034	10.564647735084	2020/04/01 20:53:36
166	69173	5109	Pike County	Arkansas	10808	6.94773718149417	2020/04/01 20:53:36
167	69174	5111	Poinsett County	Arkansas	24054	12.2465242873351	2020/04/01 20:53:36
168	69175	5113	Polk County	Arkansas	20163	9.07677870323286	2020/04/01 20:53:36
169	69901	5115	Pope County	Arkansas	63644	30.2430486280974	2020/04/01 20:53:36
170	69176	5117	Prairie County	Arkansas	8244	4.91293433526316	2020/04/01 20:53:36
171	69177	5119	Pulaski County	Arkansas	393463	200.176589143304	2020/04/01 20:53:36
172	69178	5121	Randolph County	Arkansas	17603	10.4205924256624	2020/04/01 20:53:36
173	83331	5123	St. Francis County	Arkansas	26294	15.992627689366	2020/04/01 20:53:36
174	67102	5125	Saline County	Arkansas	118009	62.9724850422285	2020/04/01 20:53:36
175	69179	5127	Scott County	Arkansas	10442	4.51826611649416	2020/04/01 20:53:36
176	69180	5129	Searcy County	Arkansas	7923	4.59257233092457	2020/04/01 20:53:36
177	69181	5131	Sebastian County	Arkansas	127461	92.5238426086721	2020/04/01 20:53:36
178	69182	5133	Sevier County	Arkansas	17193	11.7464133536446	2020/04/01 20:53:36
179	69183	5135	Sharp County	Arkansas	17043	10.8868904747869	2020/04/01 20:53:36
180	69902	5137	Stone County	Arkansas	12446	7.92446396870105	2020/04/01 20:53:36
181	69903	5139	Union County	Arkansas	39732	14.7617220923788	2020/04/01 20:53:36
182	69904	5141	Van Buren County	Arkansas	16684	9.07626814122767	2020/04/01 20:53:36
183	69905	5143	Washington County	Arkansas	228529	93.666958051026	2020/04/01 20:53:36
184	69906	5145	White County	Arkansas	78804	29.3951316053397	2020/04/01 20:53:36
185	69907	5147	Woodruff County	Arkansas	6660	4.38237679654509	2020/04/01 20:53:36
186	69908	5149	Yell County	Arkansas	21573	8.95499844667949	2020/04/01 20:53:36
187	1675839	6001	Alameda County	California	1643700	860.757074949889	2020/04/01 20:53:36
188	1675840	6003	Alpine County	California	1146	0.599280665532869	2020/04/01 20:53:36
189	1675841	6005	Amador County	California	37829	24.5653452622911	2020/04/01 20:53:36
190	1675842	6007	Butte County	California	227075	53.5751590644998	2020/04/01 20:53:36
191	1675885	6009	Calaveras County	California	45235	17.1226058066131	2020/04/01 20:53:36
192	1675902	6011	Colusa County	California	21464	7.20188011858262	2020/04/01 20:53:36
193	1675903	6013	Contra Costa County	California	1133247	610.18029042211	2020/04/01 20:53:36
194	1682074	6015	Del Norte County	California	27424	10.5229311101377	2020/04/01 20:53:36
195	277273	6017	El Dorado County	California	186661	42.1995800073241	2020/04/01 20:53:36
196	277274	6019	Fresno County	California	978130	63.385677357634	2020/04/01 20:53:36
197	277275	6021	Glenn County	California	27897	8.19738055888046	2020/04/01 20:53:36
198	1681908	6023	Humboldt County	California	135768	14.691077966102	2020/04/01 20:53:36
199	277277	6025	Imperial County	California	180216	16.6599907311579	2020/04/01 20:53:36
200	1804637	6027	Inyo County	California	18085	0.685856010703446	2020/04/01 20:53:36
201	2054176	6029	Kern County	California	883053	41.9254523115261	2020/04/01 20:53:36
202	277280	6031	Kings County	California	150075	41.6772679528691	2020/04/01 20:53:36
203	277281	6033	Lake County	California	64148	19.7113764136146	2020/04/01 20:53:36
204	1693324	6035	Lassen County	California	31185	2.65142146128389	2020/04/01 20:53:36
205	277283	6037	Los Angeles County	California	10098052	960.742777931457	2020/04/01 20:53:36
206	277284	6039	Madera County	California	155013	28.0078977064307	2020/04/01 20:53:36
207	277285	6041	Marin County	California	260295	193.100506119398	2020/04/01 20:53:36
208	277286	6043	Mariposa County	California	17540	4.67425188076992	2020/04/01 20:53:36
209	277287	6045	Mendocino County	California	87422	9.62646104875624	2020/04/01 20:53:36
210	277288	6047	Merced County	California	269075	53.6722217568114	2020/04/01 20:53:36
211	277289	6049	Modoc County	California	8938	0.881376108971028	2020/04/01 20:53:36
212	277290	6051	Mono County	California	14174	1.79489551715331	2020/04/01 20:53:36
213	277291	6053	Monterey County	California	433212	50.96841445171	2020/04/01 20:53:36
214	277292	6055	Napa County	California	140530	72.5086277243729	2020/04/01 20:53:36
215	1682927	6057	Nevada County	California	99092	39.9469911989279	2020/04/01 20:53:36
216	277294	6059	Orange County	California	3164182	1541.02666980495	2020/04/01 20:53:36
217	277295	6061	Placer County	California	380077	104.292831368025	2020/04/01 20:53:36
218	277296	6063	Plumas County	California	18699	2.82786846414243	2020/04/01 20:53:36
219	277297	6065	Riverside County	California	2383286	127.688110556421	2020/04/01 20:53:36
220	277298	6067	Sacramento County	California	1510023	603.890619071814	2020/04/01 20:53:36
221	277299	6069	San Benito County	California	59416	16.5200880730115	2020/04/01 20:53:36
222	277300	6071	San Bernardino County	California	2135413	41.1012855543107	2020/04/01 20:53:36
223	277301	6073	San Diego County	California	3302833	302.994150305114	2020/04/01 20:53:36
224	277302	6075	San Francisco County	California	870044	7168.19047136798	2020/04/01 20:53:36
225	277303	6077	San Joaquin County	California	732212	203.038981826007	2020/04/01 20:53:36
226	277304	6079	San Luis Obispo County	California	281455	32.9240586038183	2020/04/01 20:53:36
227	277305	6081	San Mateo County	California	765935	659.174654397823	2020/04/01 20:53:36
228	277306	6083	Santa Barbara County	California	443738	62.6396741228866	2020/04/01 20:53:36
229	277307	6085	Santa Clara County	California	1922200	574.838369914046	2020/04/01 20:53:36
230	277308	6087	Santa Cruz County	California	273765	237.4646580113	2020/04/01 20:53:36
231	1682610	6089	Shasta County	California	179085	18.3146641718097	2020/04/01 20:53:36
232	277310	6091	Sierra County	California	2930	1.18686208307387	2020/04/01 20:53:36
233	277311	6093	Siskiyou County	California	43540	2.67741844120691	2020/04/01 20:53:36
234	277312	6095	Solano County	California	438530	206.044405695356	2020/04/01 20:53:36
235	1657246	6097	Sonoma County	California	501317	122.826924488507	2020/04/01 20:53:36
236	277314	6099	Stanislaus County	California	539301	139.186562675731	2020/04/01 20:53:36
237	277315	6101	Sutter County	California	95872	61.434887291893	2020/04/01 20:53:36
238	1692767	6103	Tehama County	California	63373	8.29681881417861	2020/04/01 20:53:36
239	277317	6105	Trinity County	California	12862	1.56200946498919	2020/04/01 20:53:36
240	277318	6107	Tulare County	California	460477	36.8526563166655	2020/04/01 20:53:36
241	277319	6109	Tuolumne County	California	53932	9.37608758713074	2020/04/01 20:53:36
242	277320	6111	Ventura County	California	848112	177.727919348574	2020/04/01 20:53:36
243	277321	6113	Yolo County	California	214977	81.7980055842152	2020/04/01 20:53:36
244	277322	6115	Yuba County	California	75493	46.119104087607	2020/04/01 20:53:36
245	198116	8001	Adams County	Colorado	497115	164.575308235169	2020/04/01 20:53:36
246	198117	8003	Alamosa County	Colorado	16444	8.78669511017409	2020/04/01 20:53:36
247	198118	8005	Arapahoe County	Colorado	636671	308.071715415546	2020/04/01 20:53:36
248	198119	8007	Archuleta County	Colorado	12908	3.69147125917798	2020/04/01 20:53:36
249	198120	8009	Baca County	Colorado	3563	0.538428945812222	2020/04/01 20:53:36
250	198121	8011	Bent County	Colorado	5809	1.48254766278441	2020/04/01 20:53:36
251	198122	8013	Boulder County	Colorado	321030	170.643529909384	2020/04/01 20:53:36
252	1945881	8014	Broomfield County	Colorado	66120	773.525167574892	2020/04/01 20:53:36
253	198123	8015	Chaffee County	Colorado	19164	7.30136222312035	2020/04/01 20:53:36
254	198124	8017	Cheyenne County	Colorado	2039	0.442710948941876	2020/04/01 20:53:36
255	198125	8019	Clear Creek County	Colorado	9379	9.16310080562258	2020/04/01 20:53:36
256	198126	8021	Conejos County	Colorado	8142	2.44178525659461	2020/04/01 20:53:36
257	198127	8023	Costilla County	Colorado	3687	1.15963368911054	2020/04/01 20:53:36
258	198128	8025	Crowley County	Colorado	5630	2.76057813517921	2020/04/01 20:53:36
259	198129	8027	Custer County	Colorado	4640	2.42546915025166	2020/04/01 20:53:36
260	198130	8029	Delta County	Colorado	30346	10.2586286729205	2020/04/01 20:53:36
261	198131	8031	Denver County	Colorado	693417	1746.53366714867	2020/04/01 20:53:36
262	198132	8033	Dolores County	Colorado	1841	0.666073672479796	2020/04/01 20:53:36
263	198133	8035	Douglas County	Colorado	328614	151.000972693866	2020/04/01 20:53:36
264	198134	8037	Eagle County	Colorado	54357	12.4593103420182	2020/04/01 20:53:36
265	198136	8039	Elbert County	Colorado	25162	5.24903393675943	2020/04/01 20:53:36
266	198135	8041	El Paso County	Colorado	688153	124.925568993339	2020/04/01 20:53:36
267	198137	8043	Fremont County	Colorado	47002	11.8373137641951	2020/04/01 20:53:36
268	198138	8045	Garfield County	Colorado	58538	7.6679579582708	2020/04/01 20:53:36
269	198139	8047	Gilpin County	Colorado	5924	15.2590354959424	2020/04/01 20:53:36
270	198140	8049	Grand County	Colorado	15066	3.15039299270629	2020/04/01 20:53:36
271	198141	8051	Gunnison County	Colorado	16537	1.97119246338176	2020/04/01 20:53:36
272	198142	8053	Hinsdale County	Colorado	878	0.303426738221774	2020/04/01 20:53:36
273	198143	8055	Huerfano County	Colorado	6583	1.5975222719315	2020/04/01 20:53:36
274	198144	8057	Jackson County	Colorado	1296	0.310082693508281	2020/04/01 20:53:36
275	198145	8059	Jefferson County	Colorado	570427	288.167016396746	2020/04/01 20:53:36
276	198146	8061	Kiowa County	Colorado	1449	0.316472036724453	2020/04/01 20:53:36
277	198147	8063	Kit Carson County	Colorado	7635	1.36424502329567	2020/04/01 20:53:36
278	198149	8065	Lake County	Colorado	7585	7.76979788292112	2020/04/01 20:53:36
279	198148	8067	La Plata County	Colorado	55101	12.5901343204326	2020/04/01 20:53:36
280	198150	8069	Larimer County	Colorado	338161	50.2990608716236	2020/04/01 20:53:36
281	198151	8071	Las Animas County	Colorado	14179	1.14699636757317	2020/04/01 20:53:36
282	198152	8073	Lincoln County	Colorado	5548	0.83101679674741	2020/04/01 20:53:36
283	198153	8075	Logan County	Colorado	21689	4.55464865144205	2020/04/01 20:53:36
284	198154	8077	Mesa County	Colorado	149998	17.39732685219	2020/04/01 20:53:36
285	198155	8079	Mineral County	Colorado	823	0.362841330466255	2020/04/01 20:53:36
286	198156	8081	Moffat County	Colorado	13060	1.06308992422275	2020/04/01 20:53:36
287	198157	8083	Montezuma County	Colorado	25909	4.92947296820681	2020/04/01 20:53:36
288	198158	8085	Montrose County	Colorado	41268	7.11023991899686	2020/04/01 20:53:36
289	198159	8087	Morgan County	Colorado	28257	8.52027689338592	2020/04/01 20:53:36
290	198160	8089	Otero County	Colorado	18325	5.60667698473707	2020/04/01 20:53:36
291	198161	8091	Ouray County	Colorado	4722	3.3663183939861	2020/04/01 20:53:36
292	198162	8093	Park County	Colorado	17392	3.06079632299723	2020/04/01 20:53:36
293	198163	8095	Phillips County	Colorado	4318	2.42349411979253	2020/04/01 20:53:36
294	198164	8097	Pitkin County	Colorado	17909	7.12340999435082	2020/04/01 20:53:36
295	198165	8099	Prowers County	Colorado	12052	2.84015614595943	2020/04/01 20:53:36
296	198166	8101	Pueblo County	Colorado	164685	26.6484169021727	2020/04/01 20:53:36
297	198167	8103	Rio Blanco County	Colorado	6465	0.774968454942006	2020/04/01 20:53:36
298	198168	8105	Rio Grande County	Colorado	11351	4.80576248204254	2020/04/01 20:53:36
299	198169	8107	Routt County	Colorado	24874	4.06597174669611	2020/04/01 20:53:36
300	198170	8109	Saguache County	Colorado	6468	0.788151149688548	2020/04/01 20:53:36
301	198171	8111	San Juan County	Colorado	544	0.542015887968249	2020/04/01 20:53:36
302	198172	8113	San Miguel County	Colorado	7968	2.39092161374022	2020/04/01 20:53:36
303	198173	8115	Sedgwick County	Colorado	2350	1.65560682558928	2020/04/01 20:53:36
304	198174	8117	Summit County	Colorado	30429	19.3127569068634	2020/04/01 20:53:36
305	198175	8119	Teller County	Colorado	24113	16.7134038838229	2020/04/01 20:53:36
306	198176	8121	Washington County	Colorado	4840	0.742125633265348	2020/04/01 20:53:36
307	198177	8123	Weld County	Colorado	295123	28.5867637840316	2020/04/01 20:53:36
308	198178	8125	Yuma County	Colorado	10069	1.64425030940475	2020/04/01 20:53:36
309	212794	9001	Fairfield County	Connecticut	944348	583.416530368637	2020/04/01 20:53:36
310	212338	9003	Hartford County	Connecticut	894730	470.033815038414	2020/04/01 20:53:36
311	212796	9005	Litchfield County	Connecticut	183031	76.7709821644689	2020/04/01 20:53:36
312	212797	9007	Middlesex County	Connecticut	163368	170.798815273811	2020/04/01 20:53:36
313	212798	9009	New Haven County	Connecticut	859339	548.856987196354	2020/04/01 20:53:36
314	212799	9011	New London County	Connecticut	268881	156.079636094414	2020/04/01 20:53:36
315	212668	9013	Tolland County	Connecticut	151269	142.329636078855	2020/04/01 20:53:36
316	212801	9015	Windham County	Connecticut	116538	87.722911731784	2020/04/01 20:53:36
317	217271	10001	Kent County	Delaware	174822	115.224293104264	2020/04/01 20:53:36
318	217270	10003	New Castle County	Delaware	555133	502.769618629628	2020/04/01 20:53:36
319	217269	10005	Sussex County	Delaware	219540	90.5489983667487	2020/04/01 20:53:36
320	1702382	11001	District of Columbia	District of Columbia	684498	4322.95256868476	2020/04/01 20:53:36
321	308548	12001	Alachua County	Florida	263148	116.11221044694	2020/04/01 20:53:36
322	306920	12003	Baker County	Florida	27785	18.3309927280302	2020/04/01 20:53:36
323	295738	12005	Bay County	Florida	182482	92.8857425187264	2020/04/01 20:53:36
324	303634	12007	Bradford County	Florida	26979	35.4351752844965	2020/04/01 20:53:36
325	295749	12009	Brevard County	Florida	576808	219.376463402181	2020/04/01 20:53:36
326	295753	12011	Broward County	Florida	1909151	612.687716792382	2020/04/01 20:53:36
327	306919	12013	Calhoun County	Florida	14444	9.82992818888334	2020/04/01 20:53:36
328	295742	12015	Charlotte County	Florida	176954	100.3107252744	2020/04/01 20:53:36
329	295752	12017	Citrus County	Florida	143087	94.9392779360695	2020/04/01 20:53:36
330	295726	12019	Clay County	Florida	207291	132.338017071032	2020/04/01 20:53:36
331	295754	12021	Collier County	Florida	363922	70.3852284247344	2020/04/01 20:53:36
332	306909	12023	Columbia County	Florida	69105	33.4544255734035	2020/04/01 20:53:36
333	294452	12027	DeSoto County	Florida	36399	22.0730089619394	2020/04/01 20:53:36
334	295725	12029	Dixie County	Florida	16437	9.00059326213749	2020/04/01 20:53:36
335	293656	12031	Duval County	Florida	924229	467.728698551137	2020/04/01 20:53:36
336	295737	12033	Escambia County	Florida	311522	183.081899788008	2020/04/01 20:53:36
337	308547	12035	Flagler County	Florida	107139	85.26646661771	2020/04/01 20:53:36
338	306911	12037	Franklin County	Florida	11736	8.31215404368312	2020/04/01 20:53:36
339	306918	12039	Gadsden County	Florida	46017	34.4130956542606	2020/04/01 20:53:36
340	303633	12041	Gilchrist County	Florida	17615	19.448926186859	2020/04/01 20:53:36
341	295743	12043	Glades County	Florida	13363	6.39644347212249	2020/04/01 20:53:36
342	306917	12045	Gulf County	Florida	16055	11.2010012488157	2020/04/01 20:53:36
343	295736	12047	Hamilton County	Florida	14269	10.7230118532973	2020/04/01 20:53:36
344	295746	12049	Hardee County	Florida	27228	16.4885295462253	2020/04/01 20:53:36
345	307626	12051	Hendry County	Florida	40127	13.3996999978578	2020/04/01 20:53:36
346	295751	12053	Hernando County	Florida	182696	149.202304427534	2020/04/01 20:53:36
347	295756	12055	Highlands County	Florida	102101	38.7514063752471	2020/04/01 20:53:36
348	295757	12057	Hillsborough County	Florida	1378883	521.006609769935	2020/04/01 20:53:36
349	295735	12059	Holmes County	Florida	19430	15.6664122190294	2020/04/01 20:53:36
350	307624	12061	Indian River County	Florida	150984	115.944983887054	2020/04/01 20:53:36
351	295734	12063	Jackson County	Florida	48472	20.3829482396152	2020/04/01 20:53:36
352	295733	12065	Jefferson County	Florida	14105	9.1057985960448	2020/04/01 20:53:36
353	295732	12067	Lafayette County	Florida	8744	6.21318745940191	2020/04/01 20:53:36
354	308551	12069	Lake County	Florida	335362	136.198886060663	2020/04/01 20:53:36
355	295758	12071	Lee County	Florida	718679	354.83076867816	2020/04/01 20:53:36
356	306916	12073	Leon County	Florida	288102	166.813926365297	2020/04/01 20:53:36
357	295724	12075	Levy County	Florida	39961	13.7976823582596	2020/04/01 20:53:36
358	308549	12077	Liberty County	Florida	8365	3.86534980170615	2020/04/01 20:53:36
359	295731	12079	Madison County	Florida	18474	10.2405680669381	2020/04/01 20:53:36
360	295744	12081	Manatee County	Florida	373853	194.239008473812	2020/04/01 20:53:36
361	306922	12083	Marion County	Florida	348371	84.6803073111943	2020/04/01 20:53:36
362	308550	12085	Martin County	Florida	157581	111.88677417727	2020/04/01 20:53:36
363	295755	12086	Miami-Dade County	Florida	2715516	552.18707080322	2020/04/01 20:53:36
364	295759	12087	Monroe County	Florida	76325	29.9780680807413	2020/04/01 20:53:36
365	295730	12089	Nassau County	Florida	80578	47.9609640013056	2020/04/01 20:53:36
366	306915	12091	Okaloosa County	Florida	200737	83.3178027745842	2020/04/01 20:53:36
367	295760	12093	Okeechobee County	Florida	40572	20.3743403689294	2020/04/01 20:53:36
368	295750	12095	Orange County	Florida	1321194	565.200717904169	2020/04/01 20:53:36
369	295748	12097	Osceola County	Florida	338619	98.4713680128207	2020/04/01 20:53:36
370	295761	12099	Palm Beach County	Florida	1446277	284.088504026507	2020/04/01 20:53:36
371	295739	12101	Pasco County	Florida	510593	264.027551864764	2020/04/01 20:53:36
372	295745	12103	Pinellas County	Florida	957875	1351.00989532327	2020/04/01 20:53:36
373	295747	12105	Polk County	Florida	668671	143.657352265679	2020/04/01 20:53:36
374	306910	12107	Putnam County	Florida	72766	38.5992312765178	2020/04/01 20:53:36
375	308371	12109	St. Johns County	Florida	235503	151.366952953632	2020/04/01 20:53:36
376	308372	12111	St. Lucie County	Florida	305591	206.388959617123	2020/04/01 20:53:36
377	306914	12113	Santa Rosa County	Florida	170442	65.0033215643945	2020/04/01 20:53:36
378	295741	12115	Sarasota County	Florida	412144	285.758092060701	2020/04/01 20:53:36
379	303665	12117	Seminole County	Florida	455086	567.903065071748	2020/04/01 20:53:36
380	295740	12119	Sumter County	Florida	120999	83.8573171646801	2020/04/01 20:53:36
381	295729	12121	Suwannee County	Florida	43924	24.6301590185062	2020/04/01 20:53:36
382	295728	12123	Taylor County	Florida	22098	8.17783965465098	2020/04/01 20:53:36
383	306913	12125	Union County	Florida	15239	24.1579476962471	2020/04/01 20:53:36
384	306921	12127	Volusia County	Florida	527634	184.991514788623	2020/04/01 20:53:36
385	306912	12129	Wakulla County	Florida	31877	20.2958573030993	2020/04/01 20:53:36
386	295727	12131	Walton County	Florida	65858	24.5031144322366	2020/04/01 20:53:36
387	295762	12133	Washington County	Florida	24566	16.2226218764404	2020/04/01 20:53:36
388	349113	13001	Appling County	Georgia	18454	14.0182875557395	2020/04/01 20:53:36
389	345784	13003	Atkinson County	Georgia	8265	9.31124089772971	2020/04/01 20:53:36
390	344784	13005	Bacon County	Georgia	11228	15.2600776819772	2020/04/01 20:53:36
391	342832	13007	Baker County	Georgia	3189	3.60068267453104	2020/04/01 20:53:36
392	345255	13009	Baldwin County	Georgia	45286	67.5882661922328	2020/04/01 20:53:36
393	349230	13011	Banks County	Georgia	18510	30.7975218952869	2020/04/01 20:53:36
394	356976	13013	Barrow County	Georgia	76887	184.344920218884	2020/04/01 20:53:36
395	351604	13015	Bartow County	Georgia	103620	87.0643139398608	2020/04/01 20:53:36
396	351606	13017	Ben Hill County	Georgia	17154	26.4798479280579	2020/04/01 20:53:36
397	326638	13019	Berrien County	Georgia	19025	16.2019706578266	2020/04/01 20:53:36
398	1672039	13021	Bibb County	Georgia	153490	237.623066850275	2020/04/01 20:53:36
399	347451	13023	Bleckley County	Georgia	12775	22.8491903321887	2020/04/01 20:53:36
400	351605	13025	Brantley County	Georgia	18561	16.1766057739402	2020/04/01 20:53:36
401	345518	13027	Brooks County	Georgia	15622	12.2323171507994	2020/04/01 20:53:36
402	350496	13029	Bryan County	Georgia	35885	31.6655471305199	2020/04/01 20:53:36
403	350302	13031	Bulloch County	Georgia	74782	42.7156701559742	2020/04/01 20:53:36
404	347944	13033	Burke County	Georgia	22550	10.5274926916547	2020/04/01 20:53:36
405	352295	13035	Butts County	Georgia	23750	49.9206754161867	2020/04/01 20:53:36
406	344074	13037	Calhoun County	Georgia	6428	8.85165962738022	2020/04/01 20:53:36
407	1671316	13039	Camden County	Georgia	52714	32.2908812569128	2020/04/01 20:53:36
408	342852	13043	Candler County	Georgia	10827	17.1987992686963	2020/04/01 20:53:36
409	326650	13045	Carroll County	Georgia	116022	89.7672468336575	2020/04/01 20:53:36
410	353230	13047	Catoosa County	Georgia	66299	157.855196006551	2020/04/01 20:53:36
411	357747	13049	Charlton County	Georgia	12983	6.42590548774051	2020/04/01 20:53:36
412	1694477	13051	Chatham County	Georgia	287049	255.886183169301	2020/04/01 20:53:36
413	351012	13053	Chattahoochee County	Georgia	10767	16.7130724648367	2020/04/01 20:53:36
414	352213	13055	Chattooga County	Georgia	24817	30.5811718001163	2020/04/01 20:53:36
415	1685718	13057	Cherokee County	Georgia	241910	221.813708813594	2020/04/01 20:53:36
416	1672699	13059	Clarke County	Georgia	124602	403.537333348598	2020/04/01 20:53:36
417	344805	13061	Clay County	Georgia	3001	5.92972984026365	2020/04/01 20:53:36
418	1672399	13063	Clayton County	Georgia	278666	759.45246482218	2020/04/01 20:53:36
419	351285	13065	Clinch County	Georgia	6743	3.19447925159291	2020/04/01 20:53:36
420	1686112	13067	Cobb County	Georgia	745057	846.689777438231	2020/04/01 20:53:36
421	347456	13069	Coffee County	Georgia	42961	28.0050693992946	2020/04/01 20:53:36
422	343936	13071	Colquitt County	Georgia	45606	32.1897996301434	2020/04/01 20:53:36
423	348865	13073	Columbia County	Georgia	147295	196.055278614709	2020/04/01 20:53:36
424	343878	13075	Cook County	Georgia	17184	29.0644541396056	2020/04/01 20:53:36
425	326666	13077	Coweta County	Georgia	140516	123.042865187318	2020/04/01 20:53:36
426	342918	13079	Crawford County	Georgia	12344	14.6686600722919	2020/04/01 20:53:36
427	351607	13081	Crisp County	Georgia	22846	32.3511107884024	2020/04/01 20:53:36
428	347465	13083	Dade County	Georgia	16227	36.0115590913012	2020/04/01 20:53:36
429	351312	13085	Dawson County	Georgia	23861	43.6980839621772	2020/04/01 20:53:36
430	352234	13087	Decatur County	Georgia	26833	17.34890995922	2020/04/01 20:53:36
431	1687424	13089	DeKalb County	Georgia	743187	1071.7920829819	2020/04/01 20:53:36
432	348116	13091	Dodge County	Georgia	20919	16.285499626474	2020/04/01 20:53:36
433	351608	13093	Dooly County	Georgia	13905	13.6737975647166	2020/04/01 20:53:36
434	351259	13095	Dougherty County	Georgia	91049	106.967538551712	2020/04/01 20:53:36
435	1686467	13097	Douglas County	Georgia	141840	273.692076766622	2020/04/01 20:53:36
436	345041	13099	Early County	Georgia	10348	7.79436025159484	2020/04/01 20:53:36
437	348092	13101	Echols County	Georgia	3994	3.66809197234582	2020/04/01 20:53:36
438	350219	13103	Effingham County	Georgia	58689	47.3273150187712	2020/04/01 20:53:36
439	347828	13105	Elbert County	Georgia	19212	21.127442362084	2020/04/01 20:53:36
440	347508	13107	Emanuel County	Georgia	22499	12.7641427625123	2020/04/01 20:53:36
441	345923	13109	Evans County	Georgia	10727	22.6453774279428	2020/04/01 20:53:36
442	351094	13111	Fannin County	Georgia	24925	24.8652643850687	2020/04/01 20:53:36
443	1687740	13113	Fayette County	Georgia	111369	221.224786181653	2020/04/01 20:53:36
444	353665	13115	Floyd County	Georgia	96824	73.3273790003088	2020/04/01 20:53:36
445	1673358	13117	Forsyth County	Georgia	219880	378.06996339422	2020/04/01 20:53:36
446	349324	13119	Franklin County	Georgia	22514	33.2339917840713	2020/04/01 20:53:36
447	1694833	13121	Fulton County	Georgia	1021902	749.058521812008	2020/04/01 20:53:36
448	351260	13123	Gilmer County	Georgia	29922	27.1060380844981	2020/04/01 20:53:36
449	345642	13125	Glascock County	Georgia	3009	8.08220814930149	2020/04/01 20:53:36
450	1671513	13127	Glynn County	Georgia	83974	77.2791669718452	2020/04/01 20:53:36
451	356672	13129	Gordon County	Georgia	56790	61.6211808728284	2020/04/01 20:53:36
452	351261	13131	Grady County	Georgia	24926	21.1748315418802	2020/04/01 20:53:36
453	348672	13133	Greene County	Georgia	16976	16.9081669198182	2020/04/01 20:53:36
454	1688166	13135	Gwinnett County	Georgia	902298	809.14340930423	2020/04/01 20:53:36
455	351383	13137	Habersham County	Georgia	44289	61.7715786661054	2020/04/01 20:53:36
456	1686953	13139	Hall County	Georgia	195961	192.529352773057	2020/04/01 20:53:36
457	348209	13141	Hancock County	Georgia	8535	6.99556886816091	2020/04/01 20:53:36
458	350637	13143	Haralson County	Georgia	28956	39.6220831044731	2020/04/01 20:53:36
459	326700	13145	Harris County	Georgia	33590	27.9599960296639	2020/04/01 20:53:36
460	1687995	13147	Hart County	Georgia	25631	42.5786685588378	2020/04/01 20:53:36
461	347067	13149	Heard County	Georgia	11677	15.2313863595342	2020/04/01 20:53:36
462	1671894	13151	Henry County	Georgia	221307	268.154557420516	2020/04/01 20:53:36
463	1671693	13153	Houston County	Georgia	151682	155.733710394501	2020/04/01 20:53:36
464	352302	13155	Irwin County	Georgia	9268	10.0981130506659	2020/04/01 20:53:36
465	349570	13157	Jackson County	Georgia	65755	74.74438403913	2020/04/01 20:53:36
466	346144	13159	Jasper County	Georgia	13784	14.4460272949658	2020/04/01 20:53:36
467	1687999	13161	Jeff Davis County	Georgia	14991	17.4909177350825	2020/04/01 20:53:36
468	345714	13163	Jefferson County	Georgia	15772	11.5650796520333	2020/04/01 20:53:36
469	342985	13165	Jenkins County	Georgia	8827	9.81249512390582	2020/04/01 20:53:36
470	346664	13167	Johnson County	Georgia	9730	12.3978226217626	2020/04/01 20:53:36
471	345367	13169	Jones County	Georgia	28548	27.980103507957	2020/04/01 20:53:36
472	326713	13171	Lamar County	Georgia	18513	38.9530507356868	2020/04/01 20:53:36
473	348102	13173	Lanier County	Georgia	10366	20.3643706911349	2020/04/01 20:53:36
474	346568	13175	Laurens County	Georgia	47418	22.6783854994221	2020/04/01 20:53:36
475	343390	13177	Lee County	Georgia	29348	31.8400917253285	2020/04/01 20:53:36
476	357095	13179	Liberty County	Georgia	62108	46.4305982337152	2020/04/01 20:53:36
477	1688000	13181	Lincoln County	Georgia	7799	14.3131175098983	2020/04/01 20:53:36
478	326719	13183	Long County	Georgia	18156	17.5079687631685	2020/04/01 20:53:36
479	326720	13185	Lowndes County	Georgia	114582	88.9872835213199	2020/04/01 20:53:36
480	357196	13187	Lumpkin County	Georgia	31951	43.6002753447929	2020/04/01 20:53:36
481	348794	13189	McDuffie County	Georgia	21498	32.2381968767698	2020/04/01 20:53:36
482	356886	13191	McIntosh County	Georgia	14120	12.638723370644	2020/04/01 20:53:36
483	346957	13193	Macon County	Georgia	13480	12.9901425180433	2020/04/01 20:53:36
484	1688004	13195	Madison County	Georgia	28900	39.5226853225484	2020/04/01 20:53:36
485	344107	13197	Marion County	Georgia	8484	8.94956109960987	2020/04/01 20:53:36
486	346892	13199	Meriwether County	Georgia	21113	16.2637569502872	2020/04/01 20:53:36
487	344088	13201	Miller County	Georgia	5836	7.97843486474542	2020/04/01 20:53:36
488	343645	13205	Mitchell County	Georgia	22432	16.9108827335968	2020/04/01 20:53:36
489	343073	13207	Monroe County	Georgia	27010	26.3288092260678	2020/04/01 20:53:36
490	352276	13209	Montgomery County	Georgia	9036	14.4677144370338	2020/04/01 20:53:36
491	346008	13211	Morgan County	Georgia	18235	20.2662264192495	2020/04/01 20:53:36
492	1688005	13213	Murray County	Georgia	39557	44.3347249881379	2020/04/01 20:53:36
493	357428	13215	Muscogee County	Georgia	196670	350.83935993336	2020/04/01 20:53:36
494	1673547	13217	Newton County	Georgia	106497	150.205820987053	2020/04/01 20:53:36
495	356774	13219	Oconee County	Georgia	37017	77.5367108320662	2020/04/01 20:53:36
496	351262	13221	Oglethorpe County	Georgia	14784	13.0007360813809	2020/04/01 20:53:36
497	349912	13223	Paulding County	Georgia	155840	192.672920342044	2020/04/01 20:53:36
498	343153	13225	Peach County	Georgia	26966	69.2877925634388	2020/04/01 20:53:36
499	1673011	13227	Pickens County	Georgia	30832	51.2987815940398	2020/04/01 20:53:36
500	349086	13229	Pierce County	Georgia	19164	21.7338300364069	2020/04/01 20:53:36
501	346482	13231	Pike County	Georgia	18082	32.3089279847486	2020/04/01 20:53:36
502	343585	13233	Polk County	Georgia	41621	51.783386822014	2020/04/01 20:53:36
503	347593	13235	Pulaski County	Georgia	11295	17.4957879800467	2020/04/01 20:53:36
504	347246	13237	Putnam County	Georgia	21503	24.0870117181559	2020/04/01 20:53:36
505	350547	13239	Quitman County	Georgia	2276	5.81052366867161	2020/04/01 20:53:36
506	351489	13241	Rabun County	Georgia	16457	17.1666898234954	2020/04/01 20:53:36
507	352242	13243	Randolph County	Georgia	7087	6.3897145528507	2020/04/01 20:53:36
508	358024	13245	Richmond County	Georgia	201463	239.843615243626	2020/04/01 20:53:36
509	357592	13247	Rockdale County	Georgia	89011	264.746008548895	2020/04/01 20:53:36
510	344129	13249	Schley County	Georgia	5211	12.0544856644984	2020/04/01 20:53:36
511	350204	13251	Screven County	Georgia	13990	8.36452157406791	2020/04/01 20:53:36
512	351263	13253	Seminole County	Georgia	8437	13.7139019080113	2020/04/01 20:53:36
513	353055	13255	Spalding County	Georgia	64719	127.501094158326	2020/04/01 20:53:36
514	350028	13257	Stephens County	Georgia	25676	55.3365768406495	2020/04/01 20:53:36
515	347360	13259	Stewart County	Georgia	6042	5.08520343786853	2020/04/01 20:53:36
516	343504	13261	Sumter County	Georgia	30352	24.2693664142709	2020/04/01 20:53:36
517	326757	13263	Talbot County	Georgia	6378	6.29203325212707	2020/04/01 20:53:36
518	347654	13265	Taliaferro County	Georgia	1665	3.3033680027129	2020/04/01 20:53:36
519	347445	13267	Tattnall County	Georgia	25353	20.3586474670844	2020/04/01 20:53:36
520	344156	13269	Taylor County	Georgia	8193	8.39780335235246	2020/04/01 20:53:36
521	356958	13271	Telfair County	Georgia	16115	14.2280591829732	2020/04/01 20:53:36
522	352238	13273	Terrell County	Georgia	8859	10.187914747764	2020/04/01 20:53:36
523	343835	13275	Thomas County	Georgia	44730	31.7114458016362	2020/04/01 20:53:36
524	344090	13277	Tift County	Georgia	40510	59.9498072865275	2020/04/01 20:53:36
525	345220	13279	Toombs County	Georgia	27048	28.6897125699805	2020/04/01 20:53:36
526	351252	13281	Towns County	Georgia	11417	26.4810090551737	2020/04/01 20:53:36
527	347505	13283	Treutlen County	Georgia	6777	13.1202602551629	2020/04/01 20:53:36
528	1673298	13285	Troup County	Georgia	69774	65.0710264419763	2020/04/01 20:53:36
529	343238	13287	Turner County	Georgia	7962	10.7707809475258	2020/04/01 20:53:36
530	345456	13289	Twiggs County	Georgia	8284	8.90295789330266	2020/04/01 20:53:36
531	353193	13291	Union County	Georgia	22775	27.3016935167964	2020/04/01 20:53:36
532	346759	13293	Upson County	Georgia	26216	31.2924161159643	2020/04/01 20:53:36
533	354216	13295	Walker County	Georgia	68824	59.5288518853342	2020/04/01 20:53:36
534	351264	13297	Walton County	Georgia	90132	106.491044834715	2020/04/01 20:53:36
535	357722	13299	Ware County	Georgia	35599	15.2861084393389	2020/04/01 20:53:36
536	347777	13301	Warren County	Georgia	5346	7.25881737107015	2020/04/01 20:53:36
537	348428	13303	Washington County	Georgia	20461	11.6431527692914	2020/04/01 20:53:36
538	350608	13305	Wayne County	Georgia	29767	17.9037743492414	2020/04/01 20:53:36
539	352287	13307	Webster County	Georgia	2613	4.8189795426296	2020/04/01 20:53:36
540	351278	13309	Wheeler County	Georgia	7939	10.373514697162	2020/04/01 20:53:36
541	326781	13311	White County	Georgia	28928	46.3944843552893	2020/04/01 20:53:36
542	353513	13313	Whitfield County	Georgia	103849	138.054912277575	2020/04/01 20:53:36
543	345499	13315	Wilcox County	Georgia	8846	9.04013343016203	2020/04/01 20:53:36
544	351265	13317	Wilkes County	Georgia	9884	8.12828005530707	2020/04/01 20:53:36
545	346824	13319	Wilkinson County	Georgia	9078	7.80258967487176	2020/04/01 20:53:36
546	343365	13321	Worth County	Georgia	20656	13.9743409343339	2020/04/01 20:53:36
547	365280	15001	Hawaii County	Hawaii	197658	18.9443032718452	2020/04/01 20:53:36
548	365281	15003	Honolulu County	Hawaii	987638	634.951785126835	2020/04/01 20:53:36
549	1702380	15005	Kalawao County	Hawaii	75	2.41486762516734	2020/04/01 20:53:36
550	365282	15007	Kauai County	Hawaii	71377	44.4580138369705	2020/04/01 20:53:36
551	365283	15009	Maui County	Hawaii	165281	54.9407690337212	2020/04/01 20:53:36
552	395066	16001	Ada County	Idaho	446052	163.707537284	2020/04/01 20:53:36
553	395067	16003	Adams County	Idaho	4019	1.13864015268626	2020/04/01 20:53:36
554	395091	16005	Bannock County	Idaho	85065	29.5228912014428	2020/04/01 20:53:36
555	395090	16007	Bear Lake County	Idaho	5962	2.35920437177174	2020/04/01 20:53:36
556	395190	16009	Benewah County	Idaho	9086	4.51535940799831	2020/04/01 20:53:36
557	400593	16011	Bingham County	Idaho	45551	8.39976894677316	2020/04/01 20:53:36
558	395696	16013	Blaine County	Idaho	21994	3.21939897204532	2020/04/01 20:53:36
559	395157	16015	Boise County	Idaho	7163	1.45594566535497	2020/04/01 20:53:36
560	395158	16017	Bonner County	Idaho	42711	9.51459656421995	2020/04/01 20:53:36
561	395407	16019	Bonneville County	Idaho	112397	23.2567733570853	2020/04/01 20:53:36
562	395159	16021	Boundary County	Idaho	11549	3.51474434109841	2020/04/01 20:53:36
563	401703	16023	Butte County	Idaho	2602	0.449203570399456	2020/04/01 20:53:36
564	399408	16025	Camas County	Idaho	886	0.318446854840014	2020/04/01 20:53:36
565	399406	16027	Canyon County	Idaho	212230	139.584871920623	2020/04/01 20:53:36
566	395406	16029	Caribou County	Idaho	6918	1.51403709653206	2020/04/01 20:53:36
567	395698	16031	Cassia County	Idaho	23615	3.55385559289911	2020/04/01 20:53:36
568	399755	16033	Clark County	Idaho	1077	0.235846759431298	2020/04/01 20:53:36
569	395697	16035	Clearwater County	Idaho	8640	1.35754877852589	2020/04/01 20:53:36
570	399758	16037	Custer County	Idaho	4141	0.324825617302637	2020/04/01 20:53:36
571	400252	16039	Elmore County	Idaho	26433	3.31888684072303	2020/04/01 20:53:36
572	395585	16041	Franklin County	Idaho	13279	7.73288722379344	2020/04/01 20:53:36
573	395408	16043	Fremont County	Idaho	12965	2.68558104570415	2020/04/01 20:53:36
574	395442	16045	Gem County	Idaho	17052	11.7616501189543	2020/04/01 20:53:36
575	395441	16047	Gooding County	Idaho	15169	8.03046003838446	2020/04/01 20:53:36
576	395699	16049	Idaho County	Idaho	16337	0.744058926767492	2020/04/01 20:53:36
577	399751	16051	Jefferson County	Idaho	27969	9.87390716241396	2020/04/01 20:53:36
578	395662	16053	Jerome County	Idaho	23431	15.1417438278563	2020/04/01 20:53:36
579	395661	16055	Kootenai County	Idaho	153605	47.9142107312898	2020/04/01 20:53:36
580	395613	16057	Latah County	Idaho	39239	14.0819088304005	2020/04/01 20:53:36
581	399754	16059	Lemhi County	Idaho	7798	0.659734273004483	2020/04/01 20:53:36
582	395622	16061	Lewis County	Idaho	3845	3.1004515049236	2020/04/01 20:53:36
583	395624	16063	Lincoln County	Idaho	5321	1.71009803602199	2020/04/01 20:53:36
584	394803	16065	Madison County	Idaho	38705	31.8455797839537	2020/04/01 20:53:36
585	394807	16067	Minidoka County	Idaho	20615	10.514582258192	2020/04/01 20:53:36
586	399394	16069	Nez Perce County	Idaho	40155	18.2760330655698	2020/04/01 20:53:36
587	399759	16071	Oneida County	Idaho	4326	1.39311591006602	2020/04/01 20:53:36
588	399760	16073	Owyhee County	Idaho	11455	0.576771201812182	2020/04/01 20:53:36
589	394896	16075	Payette County	Idaho	23041	21.8637227697716	2020/04/01 20:53:36
590	394951	16077	Power County	Idaho	7713	2.12134991040186	2020/04/01 20:53:36
591	1702379	16079	Shoshone County	Idaho	12526	1.83372653814181	2020/04/01 20:53:36
592	399297	16081	Teton County	Idaho	11080	9.52593881759456	2020/04/01 20:53:36
593	399334	16083	Twin Falls County	Idaho	83666	16.8098065446671	2020/04/01 20:53:36
594	399756	16085	Valley County	Idaho	10401	1.09569475023583	2020/04/01 20:53:36
595	399757	16087	Washington County	Idaho	10025	2.66418957752018	2020/04/01 20:53:36
596	424202	17001	Adams County	Illinois	66427	29.992259037991	2020/04/01 20:53:36
597	424203	17003	Alexander County	Illinois	6532	10.708250297672	2020/04/01 20:53:36
598	424204	17005	Bond County	Illinois	16712	16.9652347662018	2020/04/01 20:53:36
599	424205	17007	Boone County	Illinois	53606	73.7185219480631	2020/04/01 20:53:36
600	424206	17009	Brown County	Illinois	6675	8.43117635603494	2020/04/01 20:53:36
601	424207	17011	Bureau County	Illinois	33381	14.8299589799585	2020/04/01 20:53:36
602	424208	17013	Calhoun County	Illinois	4858	7.38968423293635	2020/04/01 20:53:36
603	424209	17015	Carroll County	Illinois	14562	12.6334193121584	2020/04/01 20:53:36
604	424210	17017	Cass County	Illinois	12665	13.0138879156302	2020/04/01 20:53:36
605	424211	17019	Champaign County	Illinois	209448	81.1842559295884	2020/04/01 20:53:36
606	424212	17021	Christian County	Illinois	33231	18.0841514650946	2020/04/01 20:53:36
607	424213	17023	Clark County	Illinois	15836	12.1937788018156	2020/04/01 20:53:36
608	424214	17025	Clay County	Illinois	13338	10.9975484825272	2020/04/01 20:53:36
609	424215	17027	Clinton County	Illinois	37628	30.6500709397065	2020/04/01 20:53:36
610	424216	17029	Coles County	Illinois	51736	39.299357270087	2020/04/01 20:53:36
611	1784766	17031	Cook County	Illinois	5223719	2134.42072675723	2020/04/01 20:53:36
612	424218	17033	Crawford County	Illinois	19088	16.6133746343266	2020/04/01 20:53:36
613	424219	17035	Cumberland County	Illinois	10865	12.1270760458959	2020/04/01 20:53:36
614	422190	17037	DeKalb County	Illinois	104200	63.7241048515223	2020/04/01 20:53:36
615	426598	17039	De Witt County	Illinois	16042	15.5799801144212	2020/04/01 20:53:36
616	424222	17041	Douglas County	Illinois	19714	18.2679699564377	2020/04/01 20:53:36
617	422191	17043	DuPage County	Illinois	931743	1097.70680051702	2020/04/01 20:53:36
618	424224	17045	Edgar County	Illinois	17539	10.8630299616172	2020/04/01 20:53:36
619	424225	17047	Edwards County	Illinois	6507	11.2956593634926	2020/04/01 20:53:36
620	424226	17049	Effingham County	Illinois	34174	27.5603368670926	2020/04/01 20:53:36
621	424227	17051	Fayette County	Illinois	21724	11.706532832048	2020/04/01 20:53:36
622	424228	17053	Ford County	Illinois	13398	10.6528625244633	2020/04/01 20:53:36
623	424229	17055	Franklin County	Illinois	39127	36.943680045731	2020/04/01 20:53:36
624	424230	17057	Fulton County	Illinois	35418	15.7963952424465	2020/04/01 20:53:36
625	424231	17059	Gallatin County	Illinois	5157	6.16467697662848	2020/04/01 20:53:36
626	424232	17061	Greene County	Illinois	13218	9.39836155301362	2020/04/01 20:53:36
627	424233	17063	Grundy County	Illinois	50509	46.644806962227	2020/04/01 20:53:36
628	424234	17065	Hamilton County	Illinois	8221	7.30303389348068	2020/04/01 20:53:36
629	424235	17067	Hancock County	Illinois	18112	8.8105296870163	2020/04/01 20:53:36
630	424236	17069	Hardin County	Illinois	4009	8.72183743656334	2020/04/01 20:53:36
631	424237	17071	Henderson County	Illinois	6884	7.01690704691921	2020/04/01 20:53:36
632	424238	17073	Henry County	Illinois	49464	23.2055542691182	2020/04/01 20:53:36
633	424239	17075	Iroquois County	Illinois	28169	9.73335895913311	2020/04/01 20:53:36
634	424240	17077	Jackson County	Illinois	58551	38.7052838172043	2020/04/01 20:53:36
635	424241	17079	Jasper County	Illinois	9598	7.49232853627384	2020/04/01 20:53:36
636	424242	17081	Jefferson County	Illinois	38169	25.7999936808976	2020/04/01 20:53:36
637	424243	17083	Jersey County	Illinois	22069	23.0739793725671	2020/04/01 20:53:36
638	424244	17085	Jo Daviess County	Illinois	21834	14.029076058801	2020/04/01 20:53:36
639	424245	17087	Johnson County	Illinois	12602	14.1474274563546	2020/04/01 20:53:36
640	424246	17089	Kane County	Illinois	530839	394.636502174836	2020/04/01 20:53:36
641	424247	17091	Kankakee County	Illinois	111061	63.3866019091016	2020/04/01 20:53:36
642	424248	17093	Kendall County	Illinois	124626	150.248105765446	2020/04/01 20:53:36
643	424249	17095	Knox County	Illinois	50999	27.4842876292983	2020/04/01 20:53:36
644	1784796	17097	Lake County	Illinois	703619	611.94739324599	2020/04/01 20:53:36
645	422247	17099	LaSalle County	Illinois	110401	37.5498747058932	2020/04/01 20:53:36
646	424252	17101	Lawrence County	Illinois	16189	16.7946684109801	2020/04/01 20:53:36
647	424253	17103	Lee County	Illinois	34527	18.3914861112112	2020/04/01 20:53:36
648	424254	17105	Livingston County	Illinois	36324	13.4384974362298	2020/04/01 20:53:36
649	424255	17107	Logan County	Illinois	29207	18.2453036402897	2020/04/01 20:53:36
650	1784729	17109	McDonough County	Illinois	30875	20.2252309493411	2020/04/01 20:53:36
651	1784815	17111	McHenry County	Illinois	307789	196.944784398385	2020/04/01 20:53:36
652	1784833	17113	McLean County	Illinois	173219	56.5232912237484	2020/04/01 20:53:36
653	424256	17115	Macon County	Illinois	106512	70.8340270018603	2020/04/01 20:53:36
654	424257	17117	Macoupin County	Illinois	45719	20.4563674135153	2020/04/01 20:53:36
655	424258	17119	Madison County	Illinois	265670	143.252360427733	2020/04/01 20:53:36
656	424259	17121	Marion County	Illinois	38084	25.6865926944956	2020/04/01 20:53:36
657	424260	17123	Marshall County	Illinois	11794	11.7720236213709	2020/04/01 20:53:36
658	424261	17125	Mason County	Illinois	13778	9.86400599177725	2020/04/01 20:53:36
659	1784730	17127	Massac County	Illinois	14430	23.4866643696286	2020/04/01 20:53:36
660	424266	17129	Menard County	Illinois	12367	15.1855196218911	2020/04/01 20:53:36
661	1784750	17131	Mercer County	Illinois	15693	10.7967149338464	2020/04/01 20:53:36
662	1784865	17133	Monroe County	Illinois	33936	34.007125494887	2020/04/01 20:53:36
663	1784866	17135	Montgomery County	Illinois	29009	15.9175833505193	2020/04/01 20:53:36
664	424270	17137	Morgan County	Illinois	34426	23.3684917153687	2020/04/01 20:53:36
665	1784885	17139	Moultrie County	Illinois	14703	16.8975955304236	2020/04/01 20:53:36
666	1784894	17141	Ogle County	Illinois	51328	26.1245481041169	2020/04/01 20:53:36
667	1784920	17143	Peoria County	Illinois	184463	115.120101251918	2020/04/01 20:53:36
668	1784940	17145	Perry County	Illinois	21384	18.6897279380511	2020/04/01 20:53:36
669	424275	17147	Piatt County	Illinois	16427	14.4425944925032	2020/04/01 20:53:36
670	1784941	17149	Pike County	Illinois	15754	7.31612607292227	2020/04/01 20:53:36
671	424277	17151	Pope County	Illinois	4249	4.44870380408097	2020/04/01 20:53:36
672	1784966	17153	Pulaski County	Illinois	5611	10.8764030964637	2020/04/01 20:53:36
673	424279	17155	Putnam County	Illinois	5746	13.857164372232	2020/04/01 20:53:36
674	1784967	17157	Randolph County	Illinois	32546	21.8420673609505	2020/04/01 20:53:36
675	424281	17159	Richland County	Illinois	15881	17.0298772967262	2020/04/01 20:53:36
676	424282	17161	Rock Island County	Illinois	145275	131.237789380647	2020/04/01 20:53:36
677	1784987	17163	St. Clair County	Illinois	263463	154.658989300115	2020/04/01 20:53:36
678	424283	17165	Saline County	Illinois	24231	24.627372211606	2020/04/01 20:53:36
679	1785010	17167	Sangamon County	Illinois	197661	87.8931876588475	2020/04/01 20:53:36
680	1785037	17169	Schuyler County	Illinois	7064	6.23746272420665	2020/04/01 20:53:36
681	424286	17171	Scott County	Illinois	5047	7.76627348400422	2020/04/01 20:53:36
682	1785051	17173	Shelby County	Illinois	21832	11.1130166715407	2020/04/01 20:53:36
683	424288	17175	Stark County	Illinois	5500	7.3728071363025	2020/04/01 20:53:36
684	1785076	17177	Stephenson County	Illinois	45433	31.0712553084227	2020/04/01 20:53:36
685	1785094	17179	Tazewell County	Illinois	133852	79.9487732470222	2020/04/01 20:53:36
686	1785113	17181	Union County	Illinois	17127	15.9937451616224	2020/04/01 20:53:36
687	1785114	17183	Vermilion County	Illinois	78407	33.7008241863712	2020/04/01 20:53:36
688	424293	17185	Wabash County	Illinois	11573	20.0133439009369	2020/04/01 20:53:36
689	1785134	17187	Warren County	Illinois	17338	12.3424277458846	2020/04/01 20:53:36
690	1785150	17189	Washington County	Illinois	14155	9.71477017487838	2020/04/01 20:53:36
691	424296	17191	Wayne County	Illinois	16487	8.91696104446628	2020/04/01 20:53:36
692	424297	17193	White County	Illinois	14025	10.9442759358029	2020/04/01 20:53:36
693	1785167	17195	Whiteside County	Illinois	56396	31.8233340577022	2020/04/01 20:53:36
694	1785190	17197	Will County	Illinois	688697	318.115481553711	2020/04/01 20:53:36
695	1785215	17199	Williamson County	Illinois	67299	61.8407442097412	2020/04/01 20:53:36
696	1785216	17201	Winnebago County	Illinois	286174	215.292372803479	2020/04/01 20:53:36
697	1785231	17203	Woodford County	Illinois	38817	28.3968766382412	2020/04/01 20:53:36
698	450401	18001	Adams County	Indiana	35195	40.0817935078245	2020/04/01 20:53:36
699	450402	18003	Allen County	Indiana	370016	217.343035466382	2020/04/01 20:53:36
700	451683	18005	Bartholomew County	Indiana	81893	77.7046393588471	2020/04/01 20:53:36
701	450403	18007	Benton County	Indiana	8667	8.23376832419108	2020/04/01 20:53:36
702	450404	18009	Blackford County	Indiana	12129	28.3679848498261	2020/04/01 20:53:36
703	450405	18011	Boone County	Indiana	64321	58.7225711654915	2020/04/01 20:53:36
704	451684	18013	Brown County	Indiana	15034	18.6054257465812	2020/04/01 20:53:36
705	450406	18015	Carroll County	Indiana	19994	20.7394885479893	2020/04/01 20:53:36
706	450339	18017	Cass County	Indiana	38084	35.6766533810759	2020/04/01 20:53:36
707	450340	18019	Clark County	Indiana	115702	119.815757947664	2020/04/01 20:53:36
708	450341	18021	Clay County	Indiana	26268	28.3609923403684	2020/04/01 20:53:36
709	450342	18023	Clinton County	Indiana	32301	30.7886840105202	2020/04/01 20:53:36
710	451674	18025	Crawford County	Indiana	10581	13.3677004729411	2020/04/01 20:53:36
711	450343	18027	Daviess County	Indiana	32937	29.6096348696466	2020/04/01 20:53:36
712	450344	18029	Dearborn County	Indiana	49501	62.6477787741583	2020/04/01 20:53:36
713	450345	18031	Decatur County	Indiana	26552	27.5165631273764	2020/04/01 20:53:36
714	450346	18033	DeKalb County	Indiana	42704	45.4427452328457	2020/04/01 20:53:36
715	450347	18035	Delaware County	Indiana	115616	113.846581852486	2020/04/01 20:53:36
716	451675	18037	Dubois County	Indiana	42418	38.3311164683004	2020/04/01 20:53:36
717	450348	18039	Elkhart County	Indiana	203604	169.726019204145	2020/04/01 20:53:36
718	450349	18041	Fayette County	Indiana	23259	41.7650117712456	2020/04/01 20:53:36
719	450350	18043	Floyd County	Indiana	76809	200.426784398873	2020/04/01 20:53:36
720	450351	18045	Fountain County	Indiana	16486	16.087524125236	2020/04/01 20:53:36
721	450352	18047	Franklin County	Indiana	22842	22.9413168607139	2020/04/01 20:53:36
722	450353	18049	Fulton County	Indiana	20212	21.183333099407	2020/04/01 20:53:36
723	450354	18051	Gibson County	Indiana	33596	26.6123794404594	2020/04/01 20:53:36
724	450355	18053	Grant County	Indiana	66944	62.4207862143067	2020/04/01 20:53:36
725	451676	18055	Greene County	Indiana	32295	22.9860282286875	2020/04/01 20:53:36
726	450356	18057	Hamilton County	Indiana	316095	309.500404319081	2020/04/01 20:53:36
727	450357	18059	Hancock County	Indiana	73830	93.170275197192	2020/04/01 20:53:36
728	451677	18061	Harrison County	Indiana	39712	31.6458159226527	2020/04/01 20:53:36
729	450358	18063	Hendricks County	Indiana	160940	152.716323851747	2020/04/01 20:53:36
730	450359	18065	Henry County	Indiana	48483	47.7685905387439	2020/04/01 20:53:36
731	450360	18067	Howard County	Indiana	82387	108.565802123117	2020/04/01 20:53:36
732	450361	18069	Huntington County	Indiana	36378	36.7062623792634	2020/04/01 20:53:36
733	451678	18071	Jackson County	Indiana	43938	33.2655178500052	2020/04/01 20:53:36
734	450494	18073	Jasper County	Indiana	33449	23.0774883795146	2020/04/01 20:53:36
735	450362	18075	Jay County	Indiana	20993	21.1131316500016	2020/04/01 20:53:36
736	450363	18077	Jefferson County	Indiana	32237	34.5137346784585	2020/04/01 20:53:36
737	450364	18079	Jennings County	Indiana	27727	28.427324537504	2020/04/01 20:53:36
738	450365	18081	Johnson County	Indiana	151564	182.619134583122	2020/04/01 20:53:36
739	450366	18083	Knox County	Indiana	37409	27.9900386259091	2020/04/01 20:53:36
740	450367	18085	Kosciusko County	Indiana	78806	57.2546548893179	2020/04/01 20:53:36
741	450368	18087	LaGrange County	Indiana	38942	39.6059424543699	2020/04/01 20:53:36
742	450495	18089	Lake County	Indiana	486849	376.835148662182	2020/04/01 20:53:36
743	450507	18091	LaPorte County	Indiana	110552	71.346686349193	2020/04/01 20:53:36
744	451703	18093	Lawrence County	Indiana	45619	39.2129001090914	2020/04/01 20:53:36
745	450370	18095	Madison County	Indiana	129505	110.643625808457	2020/04/01 20:53:36
746	450371	18097	Marion County	Indiana	944523	919.884200648008	2020/04/01 20:53:36
747	450372	18099	Marshall County	Indiana	46595	40.5537139611712	2020/04/01 20:53:36
748	451679	18101	Martin County	Indiana	10210	11.740818251777	2020/04/01 20:53:36
749	450373	18103	Miami County	Indiana	35901	37.078350762766	2020/04/01 20:53:36
750	451680	18105	Monroe County	Indiana	145403	142.299873628478	2020/04/01 20:53:36
751	450374	18107	Montgomery County	Indiana	38276	29.2847088444447	2020/04/01 20:53:36
752	450375	18109	Morgan County	Indiana	69727	66.6649050490764	2020/04/01 20:53:36
753	450376	18111	Newton County	Indiana	14018	13.4718533940364	2020/04/01 20:53:36
754	450377	18113	Noble County	Indiana	47451	44.5938131633206	2020/04/01 20:53:36
755	450378	18115	Ohio County	Indiana	5887	26.3840981592787	2020/04/01 20:53:36
756	451681	18117	Orange County	Indiana	19547	18.9446640493838	2020/04/01 20:53:36
757	450379	18119	Owen County	Indiana	20878	20.9216928004794	2020/04/01 20:53:36
758	450380	18121	Parke County	Indiana	16996	14.7560217989227	2020/04/01 20:53:36
759	451682	18123	Perry County	Indiana	19141	19.3597764117262	2020/04/01 20:53:36
760	450381	18125	Pike County	Indiana	12411	14.3342902165995	2020/04/01 20:53:36
761	450382	18127	Porter County	Indiana	168041	155.192116695222	2020/04/01 20:53:36
762	450383	18129	Posey County	Indiana	25589	24.1344788440355	2020/04/01 20:53:36
763	446852	18131	Pulaski County	Indiana	12660	11.2714848222811	2020/04/01 20:53:36
764	450384	18133	Putnam County	Indiana	37559	30.1779091675579	2020/04/01 20:53:36
765	446853	18135	Randolph County	Indiana	25076	21.4021733562232	2020/04/01 20:53:36
766	450385	18137	Ripley County	Indiana	28425	24.5840645470896	2020/04/01 20:53:36
767	446854	18139	Rush County	Indiana	16704	15.8026873132006	2020/04/01 20:53:36
768	452855	18141	St. Joseph County	Indiana	269240	227.030765044037	2020/04/01 20:53:36
769	450386	18143	Scott County	Indiana	23743	48.1479334558368	2020/04/01 20:53:36
770	450387	18145	Shelby County	Indiana	44399	41.6959742046215	2020/04/01 20:53:36
771	450388	18147	Spencer County	Indiana	20526	19.9742372432059	2020/04/01 20:53:36
772	450389	18149	Starke County	Indiana	22941	28.6519025444046	2020/04/01 20:53:36
773	450390	18151	Steuben County	Indiana	34474	43.107086252543	2020/04/01 20:53:36
774	450391	18153	Sullivan County	Indiana	20792	17.9524461218918	2020/04/01 20:53:36
775	450392	18155	Switzerland County	Indiana	10628	18.5963583501036	2020/04/01 20:53:36
776	450393	18157	Tippecanoe County	Indiana	189294	146.493851975113	2020/04/01 20:53:36
777	450394	18159	Tipton County	Indiana	15218	22.5519474618048	2020/04/01 20:53:36
778	450395	18161	Union County	Indiana	7153	17.1337285211568	2020/04/01 20:53:36
779	450396	18163	Vanderburgh County	Indiana	181313	299.58893000951	2020/04/01 20:53:36
780	450397	18165	Vermillion County	Indiana	15560	23.3888121117394	2020/04/01 20:53:36
781	450398	18167	Vigo County	Indiana	107693	103.036694991018	2020/04/01 20:53:36
782	450399	18169	Wabash County	Indiana	31631	29.6043214855643	2020/04/01 20:53:36
783	450400	18171	Warren County	Indiana	8247	8.73119778455623	2020/04/01 20:53:36
784	450335	18173	Warrick County	Indiana	61928	62.1352390414225	2020/04/01 20:53:36
785	451665	18175	Washington County	Indiana	27827	20.9154301736736	2020/04/01 20:53:36
786	450336	18177	Wayne County	Indiana	66613	64.0193741330359	2020/04/01 20:53:36
787	450337	18179	Wells County	Indiana	27947	29.3147906682794	2020/04/01 20:53:36
788	450338	18181	White County	Indiana	24217	18.5106626289579	2020/04/01 20:53:36
789	450369	18183	Whitley County	Indiana	33649	38.7147213683532	2020/04/01 20:53:36
790	465190	19001	Adair County	Iowa	7124	4.83178224385313	2020/04/01 20:53:36
791	465191	19003	Adams County	Iowa	3726	3.39750766351348	2020/04/01 20:53:36
792	465192	19005	Allamakee County	Iowa	13880	8.38612095893759	2020/04/01 20:53:36
793	465193	19007	Appanoose County	Iowa	12510	9.7128923298377	2020/04/01 20:53:36
794	465194	19009	Audubon County	Iowa	5637	4.91342644155863	2020/04/01 20:53:36
795	465195	19011	Benton County	Iowa	25626	13.8168174824738	2020/04/01 20:53:36
796	465196	19013	Black Hawk County	Iowa	133009	90.754180345967	2020/04/01 20:53:36
797	465197	19015	Boone County	Iowa	26399	17.8331978543286	2020/04/01 20:53:36
798	465198	19017	Bremer County	Iowa	24782	21.9720869788195	2020/04/01 20:53:36
799	465199	19019	Buchanan County	Iowa	21125	14.2824693086874	2020/04/01 20:53:36
800	465200	19021	Buena Vista County	Iowa	20260	13.6066130723848	2020/04/01 20:53:36
801	465201	19023	Butler County	Iowa	14735	9.80663615581125	2020/04/01 20:53:36
802	465202	19025	Calhoun County	Iowa	9780	6.62648939419904	2020/04/01 20:53:36
803	465203	19027	Carroll County	Iowa	20344	13.7940845234753	2020/04/01 20:53:36
804	465204	19029	Cass County	Iowa	13191	9.02613748329192	2020/04/01 20:53:36
805	465205	19031	Cedar County	Iowa	18445	12.290122078339	2020/04/01 20:53:36
806	465206	19033	Cerro Gordo County	Iowa	42984	29.2032627979919	2020/04/01 20:53:36
807	465207	19035	Cherokee County	Iowa	11468	7.67510675584601	2020/04/01 20:53:36
808	465208	19037	Chickasaw County	Iowa	12099	9.26259449419624	2020/04/01 20:53:36
809	465209	19039	Clarke County	Iowa	9282	8.31187035936578	2020/04/01 20:53:36
810	465625	19041	Clay County	Iowa	16313	11.1037790713866	2020/04/01 20:53:36
811	465210	19043	Clayton County	Iowa	17672	8.76458618246136	2020/04/01 20:53:36
812	465211	19045	Clinton County	Iowa	47218	26.2348655598265	2020/04/01 20:53:36
813	465212	19047	Crawford County	Iowa	17132	9.26182770429734	2020/04/01 20:53:36
814	465213	19049	Dallas County	Iowa	84002	55.1287859287828	2020/04/01 20:53:36
815	465214	19051	Davis County	Iowa	8885	6.83113722702071	2020/04/01 20:53:36
816	465215	19053	Decatur County	Iowa	8044	5.83927927224874	2020/04/01 20:53:36
817	465216	19055	Delaware County	Iowa	17258	11.5346372253096	2020/04/01 20:53:36
818	465217	19057	Des Moines County	Iowa	39600	36.7425207502342	2020/04/01 20:53:36
819	465218	19059	Dickinson County	Iowa	17056	17.3062085599077	2020/04/01 20:53:36
820	465219	19061	Dubuque County	Iowa	96802	61.4425506828954	2020/04/01 20:53:36
821	465220	19063	Emmet County	Iowa	9551	9.31506351619574	2020/04/01 20:53:36
822	465221	19065	Fayette County	Iowa	19929	10.5286183601125	2020/04/01 20:53:36
823	465222	19067	Floyd County	Iowa	15858	12.230155667007	2020/04/01 20:53:36
824	465223	19069	Franklin County	Iowa	10245	6.79691675084483	2020/04/01 20:53:36
825	465224	19071	Fremont County	Iowa	6968	5.26317473075789	2020/04/01 20:53:36
826	465225	19073	Greene County	Iowa	9003	6.10247440960604	2020/04/01 20:53:36
827	465226	19075	Grundy County	Iowa	12341	9.49455380092066	2020/04/01 20:53:36
828	465227	19077	Guthrie County	Iowa	10674	6.9778441335265	2020/04/01 20:53:36
829	465228	19079	Hamilton County	Iowa	15110	10.1152484277232	2020/04/01 20:53:36
830	465229	19081	Hancock County	Iowa	10888	7.3622533305269	2020/04/01 20:53:36
831	465230	19083	Hardin County	Iowa	17127	11.6154228902874	2020/04/01 20:53:36
832	465231	19085	Harrison County	Iowa	14143	7.83626121606234	2020/04/01 20:53:36
833	465232	19087	Henry County	Iowa	19926	17.7151542422633	2020/04/01 20:53:36
834	465233	19089	Howard County	Iowa	9264	7.55811254182793	2020/04/01 20:53:36
835	465234	19091	Humboldt County	Iowa	9566	8.50299955175699	2020/04/01 20:53:36
836	465235	19093	Ida County	Iowa	6916	6.18826150518318	2020/04/01 20:53:36
837	465236	19095	Iowa County	Iowa	16207	10.670139728788	2020/04/01 20:53:36
838	465237	19097	Jackson County	Iowa	19395	11.7736543595863	2020/04/01 20:53:36
839	465238	19099	Jasper County	Iowa	36891	19.500879000892	2020/04/01 20:53:36
840	465239	19101	Jefferson County	Iowa	18077	16.0257120044677	2020/04/01 20:53:36
841	465240	19103	Johnson County	Iowa	147001	92.590888455936	2020/04/01 20:53:36
842	465241	19105	Jones County	Iowa	20568	13.7960833386247	2020/04/01 20:53:36
843	465242	19107	Keokuk County	Iowa	10200	6.79974369499432	2020/04/01 20:53:36
844	465243	19109	Kossuth County	Iowa	15075	5.98365825658782	2020/04/01 20:53:36
845	465244	19111	Lee County	Iowa	34541	25.7682400801855	2020/04/01 20:53:36
846	465245	19113	Linn County	Iowa	222121	119.596562572926	2020/04/01 20:53:36
847	465246	19115	Louisa County	Iowa	11223	10.7852897988053	2020/04/01 20:53:36
848	465247	19117	Lucas County	Iowa	8597	7.70853268413016	2020/04/01 20:53:36
849	465248	19119	Lyon County	Iowa	11769	7.73255243940423	2020/04/01 20:53:36
850	465249	19121	Madison County	Iowa	15890	10.9360004626623	2020/04/01 20:53:36
851	465250	19123	Mahaska County	Iowa	22208	15.0203460319657	2020/04/01 20:53:36
852	465251	19125	Marion County	Iowa	33207	23.1227087140469	2020/04/01 20:53:36
853	465252	19127	Marshall County	Iowa	40271	27.1591921063279	2020/04/01 20:53:36
854	465253	19129	Mills County	Iowa	14957	13.2018143933957	2020/04/01 20:53:36
855	465254	19131	Mitchell County	Iowa	10631	8.74944109971845	2020/04/01 20:53:36
856	465255	19133	Monona County	Iowa	8796	4.89308780326811	2020/04/01 20:53:36
857	465256	19135	Monroe County	Iowa	7863	6.99978151832899	2020/04/01 20:53:36
858	465257	19137	Montgomery County	Iowa	10155	9.2452174856387	2020/04/01 20:53:36
859	465258	19139	Muscatine County	Iowa	42950	37.9089723982371	2020/04/01 20:53:36
860	465259	19141	O'Brien County	Iowa	13911	9.37301552370676	2020/04/01 20:53:36
861	465260	19143	Osceola County	Iowa	6115	5.92198008840868	2020/04/01 20:53:36
862	465261	19145	Page County	Iowa	15363	11.0884354382736	2020/04/01 20:53:36
863	465262	19147	Palo Alto County	Iowa	9055	6.20039152250726	2020/04/01 20:53:36
864	465263	19149	Plymouth County	Iowa	25039	11.2045597276882	2020/04/01 20:53:36
865	465264	19151	Pocahontas County	Iowa	6898	4.61390133825479	2020/04/01 20:53:36
866	465265	19153	Polk County	Iowa	474274	320.017403423495	2020/04/01 20:53:36
867	465266	19155	Pottawattamie County	Iowa	93503	37.9810442048628	2020/04/01 20:53:36
868	465267	19157	Poweshiek County	Iowa	18605	12.2809725834815	2020/04/01 20:53:36
869	465268	19159	Ringgold County	Iowa	4984	3.59354222062633	2020/04/01 20:53:36
870	465269	19161	Sac County	Iowa	9868	6.62593076483295	2020/04/01 20:53:36
871	465270	19163	Scott County	Iowa	172288	145.21451535463	2020/04/01 20:53:36
872	465271	19165	Shelby County	Iowa	11694	7.64258506064829	2020/04/01 20:53:36
873	465272	19167	Sioux County	Iowa	34825	17.5098108878228	2020/04/01 20:53:36
874	465273	19169	Story County	Iowa	96922	65.3423343665248	2020/04/01 20:53:36
875	465274	19171	Tama County	Iowa	17136	9.17634325343163	2020/04/01 20:53:36
876	465275	19173	Taylor County	Iowa	6201	4.50124493394083	2020/04/01 20:53:36
877	465276	19175	Union County	Iowa	12453	11.3494291125968	2020/04/01 20:53:36
878	465277	19177	Van Buren County	Iowa	7223	5.75241608344477	2020/04/01 20:53:36
879	465278	19179	Wapello County	Iowa	35315	31.5748574435868	2020/04/01 20:53:36
880	465279	19181	Warren County	Iowa	49361	33.4452871311609	2020/04/01 20:53:36
881	465280	19183	Washington County	Iowa	22143	15.0303826427319	2020/04/01 20:53:36
882	465281	19185	Wayne County	Iowa	6413	4.71192865193374	2020/04/01 20:53:36
883	465282	19187	Webster County	Iowa	36757	19.8292364762502	2020/04/01 20:53:36
884	465283	19189	Winnebago County	Iowa	10571	10.1912540225567	2020/04/01 20:53:36
885	465284	19191	Winneshiek County	Iowa	20401	11.4184703260696	2020/04/01 20:53:36
886	465285	19193	Woodbury County	Iowa	102398	45.2929973090812	2020/04/01 20:53:36
887	465286	19195	Worth County	Iowa	7489	7.22656774865337	2020/04/01 20:53:36
888	465287	19197	Wright County	Iowa	12804	8.51743704659603	2020/04/01 20:53:36
889	484970	20001	Allen County	Kansas	12630	9.74714692327418	2020/04/01 20:53:36
890	484971	20003	Anderson County	Kansas	7852	5.23021204625156	2020/04/01 20:53:36
891	484972	20005	Atchison County	Kansas	16363	14.6525157326742	2020/04/01 20:53:36
892	484973	20007	Barber County	Kansas	4733	1.61138031858438	2020/04/01 20:53:36
893	484974	20009	Barton County	Kansas	26791	11.5542921973368	2020/04/01 20:53:36
894	484975	20011	Bourbon County	Kansas	14702	8.93270576913352	2020/04/01 20:53:36
895	484976	20013	Brown County	Kansas	9664	6.53613304678648	2020/04/01 20:53:36
896	484977	20015	Butler County	Kansas	66468	17.9506584880174	2020/04/01 20:53:36
897	484978	20017	Chase County	Kansas	2645	1.32104561926481	2020/04/01 20:53:36
898	484979	20019	Chautauqua County	Kansas	3367	2.03481714887133	2020/04/01 20:53:36
899	484980	20021	Cherokee County	Kansas	20331	13.3599158092552	2020/04/01 20:53:36
900	484981	20023	Cheyenne County	Kansas	2677	1.01343859670053	2020/04/01 20:53:36
901	484982	20025	Clark County	Kansas	2053	0.813294674589136	2020/04/01 20:53:36
902	484983	20027	Clay County	Kansas	8142	4.87161536512345	2020/04/01 20:53:36
903	484984	20029	Cloud County	Kansas	9060	4.8900899655111	2020/04/01 20:53:36
904	484985	20031	Coffey County	Kansas	8296	5.10955763067403	2020/04/01 20:53:36
905	484986	20033	Comanche County	Kansas	1780	0.871830565407287	2020/04/01 20:53:36
906	484987	20035	Cowley County	Kansas	35591	12.206891233193	2020/04/01 20:53:36
907	484988	20037	Crawford County	Kansas	39108	25.6026488447598	2020/04/01 20:53:36
908	484989	20039	Decatur County	Kansas	2881	1.24492301941377	2020/04/01 20:53:36
909	484990	20041	Dickinson County	Kansas	19004	8.66222252534227	2020/04/01 20:53:36
910	484991	20043	Doniphan County	Kansas	7736	7.59096927897445	2020/04/01 20:53:36
911	484992	20045	Douglas County	Kansas	119319	101.083324883461	2020/04/01 20:53:36
912	484993	20047	Edwards County	Kansas	2925	1.81598147963621	2020/04/01 20:53:36
913	484994	20049	Elk County	Kansas	2562	1.53538511000672	2020/04/01 20:53:36
914	484995	20051	Ellis County	Kansas	28878	12.3899378381013	2020/04/01 20:53:36
915	484996	20053	Ellsworth County	Kansas	6293	3.3955077566193	2020/04/01 20:53:36
916	485326	20055	Finney County	Kansas	36957	10.9594513824314	2020/04/01 20:53:36
917	484997	20057	Ford County	Kansas	34484	12.1230093195356	2020/04/01 20:53:36
918	484998	20059	Franklin County	Kansas	25563	17.2623192219016	2020/04/01 20:53:36
919	484999	20061	Geary County	Kansas	34895	35.0255658525957	2020/04/01 20:53:36
920	485000	20063	Gove County	Kansas	2619	0.943579106344349	2020/04/01 20:53:36
921	481811	20065	Graham County	Kansas	2545	1.09360114918754	2020/04/01 20:53:36
922	485099	20067	Grant County	Kansas	7616	5.11571493272863	2020/04/01 20:53:36
923	485001	20069	Gray County	Kansas	6037	2.68268644780795	2020/04/01 20:53:36
924	485002	20071	Greeley County	Kansas	1200	0.595220999168286	2020/04/01 20:53:36
925	485003	20073	Greenwood County	Kansas	6156	2.07892651048582	2020/04/01 20:53:36
926	485327	20075	Hamilton County	Kansas	2616	1.0135770003025	2020/04/01 20:53:36
927	485004	20077	Harper County	Kansas	5673	2.73359339156183	2020/04/01 20:53:36
928	485005	20079	Harvey County	Kansas	34555	24.71813981353	2020/04/01 20:53:36
929	485328	20081	Haskell County	Kansas	4047	2.70562972249843	2020/04/01 20:53:36
930	485006	20083	Hodgeman County	Kansas	1842	0.826984606480699	2020/04/01 20:53:36
931	485007	20085	Jackson County	Kansas	13318	7.8359597982384	2020/04/01 20:53:36
932	485008	20087	Jefferson County	Kansas	18888	13.6933040726874	2020/04/01 20:53:36
933	485009	20089	Jewell County	Kansas	2916	1.23726375288756	2020/04/01 20:53:36
934	485010	20091	Johnson County	Kansas	585502	477.318848192482	2020/04/01 20:53:36
935	485011	20093	Kearny County	Kansas	3932	1.74391529668929	2020/04/01 20:53:36
936	485012	20095	Kingman County	Kansas	7470	3.34063751278237	2020/04/01 20:53:36
937	485013	20097	Kiowa County	Kansas	2526	1.34962732670101	2020/04/01 20:53:36
938	485014	20099	Labette County	Kansas	20367	12.1844231560916	2020/04/01 20:53:36
939	485015	20101	Lane County	Kansas	1642	0.883707806058962	2020/04/01 20:53:36
940	485016	20103	Leavenworth County	Kansas	80042	66.6897964386489	2020/04/01 20:53:36
941	485017	20105	Lincoln County	Kansas	3097	1.66217024836679	2020/04/01 20:53:36
942	485018	20107	Linn County	Kansas	9635	6.2619312252529	2020/04/01 20:53:36
943	485019	20109	Logan County	Kansas	2810	1.01114063925249	2020/04/01 20:53:36
944	485020	20111	Lyon County	Kansas	33299	15.1704872860152	2020/04/01 20:53:36
945	485021	20113	McPherson County	Kansas	28630	12.3058109770328	2020/04/01 20:53:36
946	485022	20115	Marion County	Kansas	12032	4.91960919040011	2020/04/01 20:53:36
947	485023	20117	Marshall County	Kansas	9798	4.20254952724026	2020/04/01 20:53:36
948	485024	20119	Meade County	Kansas	4261	1.68204734283425	2020/04/01 20:53:36
949	485025	20121	Miami County	Kansas	33127	22.2102422659261	2020/04/01 20:53:36
950	485026	20123	Mitchell County	Kansas	6222	3.42313339895894	2020/04/01 20:53:36
951	485027	20125	Montgomery County	Kansas	32970	19.7792301007933	2020/04/01 20:53:36
952	485028	20127	Morris County	Kansas	5566	3.09062667418257	2020/04/01 20:53:36
953	485135	20129	Morton County	Kansas	2838	1.50159177299391	2020/04/01 20:53:36
954	485029	20131	Nemaha County	Kansas	10104	5.43773105018929	2020/04/01 20:53:36
955	485030	20133	Neosho County	Kansas	16125	10.8944519129037	2020/04/01 20:53:36
956	485031	20135	Ness County	Kansas	2955	1.06158933956512	2020/04/01 20:53:36
957	485032	20137	Norton County	Kansas	5486	2.41235882470837	2020/04/01 20:53:36
958	485033	20139	Osage County	Kansas	15882	8.69173394331611	2020/04/01 20:53:36
959	485034	20141	Osborne County	Kansas	3603	1.55865734173011	2020/04/01 20:53:36
960	485035	20143	Ottawa County	Kansas	5902	3.16175775079681	2020/04/01 20:53:36
961	485036	20145	Pawnee County	Kansas	6709	3.43429296723633	2020/04/01 20:53:36
962	485037	20147	Phillips County	Kansas	5408	2.35704771577976	2020/04/01 20:53:36
963	485038	20149	Pottawatomie County	Kansas	23545	10.812243475735	2020/04/01 20:53:36
964	485039	20151	Pratt County	Kansas	9582	5.03324783241464	2020/04/01 20:53:36
965	485040	20153	Rawlins County	Kansas	2509	0.905849519953531	2020/04/01 20:53:36
966	485041	20155	Reno County	Kansas	63101	19.4050244581896	2020/04/01 20:53:36
967	485042	20157	Republic County	Kansas	4686	2.52206882748328	2020/04/01 20:53:36
968	485043	20159	Rice County	Kansas	9762	5.18996967703595	2020/04/01 20:53:36
969	485044	20161	Riley County	Kansas	75296	47.680796943284	2020/04/01 20:53:36
970	485045	20163	Rooks County	Kansas	5118	2.21899052184776	2020/04/01 20:53:36
971	485358	20165	Rush County	Kansas	3102	1.66864125596861	2020/04/01 20:53:36
972	485046	20167	Russell County	Kansas	6977	3.03955358710342	2020/04/01 20:53:36
973	485047	20169	Saline County	Kansas	54977	29.4716768693891	2020/04/01 20:53:36
974	485048	20171	Scott County	Kansas	4949	2.66284740419781	2020/04/01 20:53:36
975	485049	20173	Sedgwick County	Kansas	512064	198.207877639299	2020/04/01 20:53:36
976	485050	20175	Seward County	Kansas	22692	13.6971636244105	2020/04/01 20:53:36
977	485051	20177	Shawnee County	Kansas	178284	126.533523076934	2020/04/01 20:53:36
978	485052	20179	Sheridan County	Kansas	2506	1.0799311483303	2020/04/01 20:53:36
979	485053	20181	Sherman County	Kansas	5966	2.18119871340674	2020/04/01 20:53:36
980	484969	20183	Smith County	Kansas	3663	1.57939548946793	2020/04/01 20:53:36
981	485054	20185	Stafford County	Kansas	4214	2.05421714117207	2020/04/01 20:53:36
982	485055	20187	Stanton County	Kansas	2063	1.17075990643205	2020/04/01 20:53:36
983	485056	20189	Stevens County	Kansas	5686	3.0186945844376	2020/04/01 20:53:36
984	481812	20191	Sumner County	Kansas	23208	7.58324916121726	2020/04/01 20:53:36
985	485057	20193	Thomas County	Kansas	7824	2.81092525942016	2020/04/01 20:53:36
986	485058	20195	Trego County	Kansas	2858	1.24059819677802	2020/04/01 20:53:36
987	485059	20197	Wabaunsee County	Kansas	6888	3.34804362177117	2020/04/01 20:53:36
988	485060	20199	Wallace County	Kansas	1575	0.665582497153661	2020/04/01 20:53:36
989	485061	20201	Washington County	Kansas	5525	2.3841187331001	2020/04/01 20:53:36
990	485062	20203	Wichita County	Kansas	2143	1.15148305076834	2020/04/01 20:53:36
991	485063	20205	Wilson County	Kansas	8780	5.94294394225124	2020/04/01 20:53:36
992	485064	20207	Woodson County	Kansas	3170	2.45861397261375	2020/04/01 20:53:36
993	485065	20209	Wyandotte County	Kansas	164345	418.452206181267	2020/04/01 20:53:36
994	516847	21001	Adair County	Kentucky	19241	18.3301557189265	2020/04/01 20:53:36
995	516848	21003	Allen County	Kentucky	20794	23.3158910793338	2020/04/01 20:53:36
996	516849	21005	Anderson County	Kentucky	22214	42.4342560153605	2020/04/01 20:53:36
997	516850	21007	Ballard County	Kentucky	8090	12.6527349721817	2020/04/01 20:53:36
998	516851	21009	Barren County	Kentucky	43680	34.5887888008192	2020/04/01 20:53:36
999	516852	21011	Bath County	Kentucky	12268	16.98977355367	2020/04/01 20:53:36
1000	516853	21013	Bell County	Kentucky	27188	29.2354651341373	2020/04/01 20:53:36
1001	516854	21015	Boone County	Kentucky	129095	202.383414580174	2020/04/01 20:53:36
1002	516855	21017	Bourbon County	Kentucky	20144	26.8429420354317	2020/04/01 20:53:36
1003	516856	21019	Boyd County	Kentucky	48091	116.146655605343	2020/04/01 20:53:36
1004	516857	21021	Boyle County	Kentucky	29913	64.0392868490134	2020/04/01 20:53:36
1005	516858	21023	Bracken County	Kentucky	8306	15.8199425563525	2020/04/01 20:53:36
1006	516859	21025	Breathitt County	Kentucky	13116	10.2842139115176	2020/04/01 20:53:36
1007	516860	21027	Breckinridge County	Kentucky	20080	13.6062685575392	2020/04/01 20:53:36
1008	516861	21029	Bullitt County	Kentucky	79466	103.295592680736	2020/04/01 20:53:36
1009	516862	21031	Butler County	Kentucky	12745	11.5488616060125	2020/04/01 20:53:36
1010	516863	21033	Caldwell County	Kentucky	12727	14.251927288452	2020/04/01 20:53:36
1011	516864	21035	Calloway County	Kentucky	38776	38.883962683329	2020/04/01 20:53:36
1012	516865	21037	Campbell County	Kentucky	92267	235.395228977241	2020/04/01 20:53:36
1013	516866	21039	Carlisle County	Kentucky	4841	9.86655893794688	2020/04/01 20:53:36
1014	516867	21041	Carroll County	Kentucky	10711	32.1655648681905	2020/04/01 20:53:36
1015	516868	21043	Carter County	Kentucky	27290	25.7310298246622	2020/04/01 20:53:36
1016	516869	21045	Casey County	Kentucky	15796	13.7288192212056	2020/04/01 20:53:36
1017	516870	21047	Christian County	Kentucky	72263	38.8857619329321	2020/04/01 20:53:36
1018	516871	21049	Clark County	Kentucky	35872	54.8555372194201	2020/04/01 20:53:36
1019	516872	21051	Clay County	Kentucky	20621	16.965420724227	2020/04/01 20:53:36
1020	516873	21053	Clinton County	Kentucky	10211	19.9872695323561	2020/04/01 20:53:36
1021	516874	21055	Crittenden County	Kentucky	9083	9.74256772351863	2020/04/01 20:53:36
1022	516875	21057	Cumberland County	Kentucky	6713	8.49259642061692	2020/04/01 20:53:36
1023	516876	21059	Daviess County	Kentucky	99937	84.1767681336379	2020/04/01 20:53:36
1024	516877	21061	Edmonson County	Kentucky	12122	15.4525045817658	2020/04/01 20:53:36
1025	516878	21063	Elliott County	Kentucky	7517	12.3862528359341	2020/04/01 20:53:36
1026	516879	21065	Estill County	Kentucky	14313	21.8349095032016	2020/04/01 20:53:36
1027	516880	21067	Fayette County	Kentucky	318734	433.878381178407	2020/04/01 20:53:36
1028	516881	21069	Fleming County	Kentucky	14479	16.039176382322	2020/04/01 20:53:36
1029	516882	21071	Floyd County	Kentucky	36926	36.2516441246173	2020/04/01 20:53:36
1030	516883	21073	Franklin County	Kentucky	50296	93.4339070998677	2020/04/01 20:53:36
1031	516884	21075	Fulton County	Kentucky	6210	11.6431816162584	2020/04/01 20:53:36
1032	516885	21077	Gallatin County	Kentucky	8703	34.1694936527447	2020/04/01 20:53:36
1033	516886	21079	Garrard County	Kentucky	17328	29.0761374953558	2020/04/01 20:53:36
1034	516887	21081	Grant County	Kentucky	24915	37.288833013127	2020/04/01 20:53:36
1035	516888	21083	Graves County	Kentucky	37294	26.0971848260521	2020/04/01 20:53:36
1036	516889	21085	Grayson County	Kentucky	26178	20.2176855612379	2020/04/01 20:53:36
1037	516890	21087	Green County	Kentucky	11023	14.8785837646395	2020/04/01 20:53:36
1038	516891	21089	Greenup County	Kentucky	35765	40.0884032404975	2020/04/01 20:53:36
1039	516892	21091	Hancock County	Kentucky	8719	17.9376682425317	2020/04/01 20:53:36
1040	516893	21093	Hardin County	Kentucky	108095	66.9497234122945	2020/04/01 20:53:36
1041	516894	21095	Harlan County	Kentucky	27134	22.4899194182806	2020/04/01 20:53:36
1042	516895	21097	Harrison County	Kentucky	18668	23.5230933003778	2020/04/01 20:53:36
1043	516896	21099	Hart County	Kentucky	18627	17.4323598887199	2020/04/01 20:53:36
1044	516897	21101	Henderson County	Kentucky	46137	40.8107923467656	2020/04/01 20:53:36
1045	516898	21103	Henry County	Kentucky	15814	21.3270322773359	2020/04/01 20:53:36
1046	516899	21105	Hickman County	Kentucky	4568	7.27982079223083	2020/04/01 20:53:36
1047	516900	21107	Hopkins County	Kentucky	45664	32.5255137918243	2020/04/01 20:53:36
1048	516901	21109	Jackson County	Kentucky	13373	14.957753373048	2020/04/01 20:53:36
1049	516902	21111	Jefferson County	Kentucky	767154	778.069834259078	2020/04/01 20:53:36
1050	516903	21113	Jessamine County	Kentucky	52422	117.563045229402	2020/04/01 20:53:36
1051	516904	21115	Johnson County	Kentucky	22843	33.6676530941681	2020/04/01 20:53:36
1052	516905	21117	Kenton County	Kentucky	164688	396.718193740676	2020/04/01 20:53:36
1053	516906	21119	Knott County	Kentucky	15513	17.0392433853639	2020/04/01 20:53:36
1054	516907	21121	Knox County	Kentucky	31467	31.4505470237311	2020/04/01 20:53:36
1055	516908	21123	Larue County	Kentucky	14156	20.8969752651305	2020/04/01 20:53:36
1056	516909	21125	Laurel County	Kentucky	60180	53.5398723319592	2020/04/01 20:53:36
1057	516910	21127	Lawrence County	Kentucky	15783	14.662930866886	2020/04/01 20:53:36
1058	516911	21129	Lee County	Kentucky	6751	12.4800792673409	2020/04/01 20:53:36
1059	516912	21131	Leslie County	Kentucky	10472	10.0866294582477	2020/04/01 20:53:36
1060	516913	21133	Letcher County	Kentucky	22676	25.9084534235737	2020/04/01 20:53:36
1061	516914	21135	Lewis County	Kentucky	13490	10.7872650896404	2020/04/01 20:53:36
1062	516915	21137	Lincoln County	Kentucky	24458	28.3715726947623	2020/04/01 20:53:36
1063	516916	21139	Livingston County	Kentucky	9263	11.4217130810064	2020/04/01 20:53:36
1064	516917	21141	Logan County	Kentucky	26849	18.7725838618478	2020/04/01 20:53:36
1065	516918	21143	Lyon County	Kentucky	8186	14.7802120982103	2020/04/01 20:53:36
1066	516925	21145	McCracken County	Kentucky	65284	101.334205822025	2020/04/01 20:53:36
1067	516926	21147	McCreary County	Kentucky	17635	15.9532595602685	2020/04/01 20:53:36
1068	516927	21149	McLean County	Kentucky	9331	14.2667497984006	2020/04/01 20:53:36
1069	516919	21151	Madison County	Kentucky	89700	79.189239694072	2020/04/01 20:53:36
1070	516920	21153	Magoffin County	Kentucky	12666	15.8549605533125	2020/04/01 20:53:36
1071	516921	21155	Marion County	Kentucky	19232	21.6463542386185	2020/04/01 20:53:36
1072	516922	21157	Marshall County	Kentucky	31166	39.9422460190598	2020/04/01 20:53:36
1073	516923	21159	Martin County	Kentucky	11919	20.0417414708539	2020/04/01 20:53:36
1074	516924	21161	Mason County	Kentucky	17153	27.5805373719674	2020/04/01 20:53:36
1075	516928	21163	Meade County	Kentucky	28326	35.808290151124	2020/04/01 20:53:36
1076	516929	21165	Menifee County	Kentucky	6405	12.1471728246097	2020/04/01 20:53:36
1077	516930	21167	Mercer County	Kentucky	21516	33.3547334219045	2020/04/01 20:53:36
1078	516931	21169	Metcalfe County	Kentucky	10004	13.335425927019	2020/04/01 20:53:36
1079	516932	21171	Monroe County	Kentucky	10634	12.463362195229	2020/04/01 20:53:36
1080	516933	21173	Montgomery County	Kentucky	27759	54.3088093631197	2020/04/01 20:53:36
1081	516934	21175	Morgan County	Kentucky	13285	13.4584223366695	2020/04/01 20:53:36
1082	516935	21177	Muhlenberg County	Kentucky	31081	25.6771961246678	2020/04/01 20:53:36
1083	516936	21179	Nelson County	Kentucky	45388	41.9732665377766	2020/04/01 20:53:36
1084	516937	21181	Nicholas County	Kentucky	7100	14.0464609447056	2020/04/01 20:53:36
1085	516938	21183	Ohio County	Kentucky	24071	15.8251491570273	2020/04/01 20:53:36
1086	516939	21185	Oldham County	Kentucky	65374	134.806345572691	2020/04/01 20:53:36
1087	516940	21187	Owen County	Kentucky	10741	11.8115349374025	2020/04/01 20:53:36
1088	516941	21189	Owsley County	Kentucky	4463	8.72902344082527	2020/04/01 20:53:36
1089	516942	21191	Pendleton County	Kentucky	14520	20.2274497035269	2020/04/01 20:53:36
1090	516943	21193	Perry County	Kentucky	26917	30.5941811085979	2020/04/01 20:53:36
1091	516944	21195	Pike County	Kentucky	60483	29.6831331644756	2020/04/01 20:53:36
1092	516945	21197	Powell County	Kentucky	12321	26.5791671538669	2020/04/01 20:53:36
1093	516946	21199	Pulaski County	Kentucky	64145	37.6156289892021	2020/04/01 20:53:36
1094	516947	21201	Robertson County	Kentucky	2143	8.28068634857138	2020/04/01 20:53:36
1095	516948	21203	Rockcastle County	Kentucky	16827	20.5243896291141	2020/04/01 20:53:36
1096	516949	21205	Rowan County	Kentucky	24499	33.8024501915536	2020/04/01 20:53:36
1097	516950	21207	Russell County	Kentucky	17760	27.0294748250203	2020/04/01 20:53:36
1098	516951	21209	Scott County	Kentucky	53517	73.3342474501108	2020/04/01 20:53:36
1099	516952	21211	Shelby County	Kentucky	46786	47.5673555574588	2020/04/01 20:53:36
1100	516953	21213	Simpson County	Kentucky	18063	29.7779797156616	2020/04/01 20:53:36
1101	516954	21215	Spencer County	Kentucky	18246	37.7289685307359	2020/04/01 20:53:36
1102	516955	21217	Taylor County	Kentucky	25500	36.9623660248854	2020/04/01 20:53:36
1103	516956	21219	Todd County	Kentucky	12350	12.7325253602651	2020/04/01 20:53:36
1104	516957	21221	Trigg County	Kentucky	14344	12.54244908343	2020/04/01 20:53:36
1105	516958	21223	Trimble County	Kentucky	8637	21.9901669353085	2020/04/01 20:53:36
1106	516959	21225	Union County	Kentucky	14802	16.669054092183	2020/04/01 20:53:36
1107	516960	21227	Warren County	Kentucky	126427	90.1081890403736	2020/04/01 20:53:36
1108	516961	21229	Washington County	Kentucky	12019	15.6261652139458	2020/04/01 20:53:36
1109	516962	21231	Wayne County	Kentucky	20609	17.3667840419363	2020/04/01 20:53:36
1110	516963	21233	Webster County	Kentucky	13155	15.2941624267743	2020/04/01 20:53:36
1111	516964	21235	Whitley County	Kentucky	36089	31.8251761072959	2020/04/01 20:53:36
1112	516965	21237	Wolfe County	Kentucky	7223	12.5525900387438	2020/04/01 20:53:36
1113	516966	21239	Woodford County	Kentucky	26097	53.0011451106891	2020/04/01 20:53:36
1114	558389	22001	Acadia Parish	Louisiana	62568	36.8723621120073	2020/04/01 20:53:36
1115	558397	22003	Allen Parish	Louisiana	25661	13.0055296536035	2020/04/01 20:53:36
1116	558403	22005	Ascension Parish	Louisiana	121176	161.302195918225	2020/04/01 20:53:36
1117	558414	22007	Assumption Parish	Louisiana	22714	25.8987724052573	2020/04/01 20:53:36
1118	558424	22009	Avoyelles Parish	Louisiana	40882	18.9711161031043	2020/04/01 20:53:36
1119	558436	22011	Beauregard Parish	Louisiana	36769	12.2663294677861	2020/04/01 20:53:36
1120	558445	22013	Bienville Parish	Louisiana	13668	6.50483155929996	2020/04/01 20:53:36
1121	558453	22015	Bossier Parish	Louisiana	126131	57.9544990461596	2020/04/01 20:53:36
1122	558458	22017	Caddo Parish	Louisiana	248361	109.114144755348	2020/04/01 20:53:36
1123	558468	22019	Calcasieu Parish	Louisiana	200182	72.621532652941	2020/04/01 20:53:36
1124	558477	22021	Caldwell Parish	Louisiana	9996	7.28979896941947	2020/04/01 20:53:36
1125	558488	22023	Cameron Parish	Louisiana	6868	2.06382836543176	2020/04/01 20:53:36
1126	558495	22025	Catahoula Parish	Louisiana	9893	5.39485888303945	2020/04/01 20:53:36
1127	558505	22027	Claiborne Parish	Louisiana	16153	8.26187424603205	2020/04/01 20:53:36
1128	558515	22029	Concordia Parish	Louisiana	20021	11.0909081886532	2020/04/01 20:53:36
1129	558521	22031	De Soto Parish	Louisiana	27216	11.9900855262149	2020/04/01 20:53:36
1130	558530	22033	East Baton Rouge Parish	Louisiana	444094	376.564373498784	2020/04/01 20:53:36
1131	558534	22035	East Carroll Parish	Louisiana	7225	6.63070010956982	2020/04/01 20:53:36
1132	558542	22037	East Feliciana Parish	Louisiana	19499	16.6046834416139	2020/04/01 20:53:36
1133	558551	22039	Evangeline Parish	Louisiana	33636	19.6064470444248	2020/04/01 20:53:36
1134	558557	22041	Franklin Parish	Louisiana	20322	12.5625307043903	2020/04/01 20:53:36
1135	558567	22043	Grant Parish	Louisiana	22348	13.4187583692172	2020/04/01 20:53:36
1136	558576	22045	Iberia Parish	Louisiana	72691	48.8877894402647	2020/04/01 20:53:36
1137	558582	22047	Iberville Parish	Louisiana	32956	20.5686574715065	2020/04/01 20:53:36
1138	558592	22049	Jackson Parish	Louisiana	15926	10.8031775079532	2020/04/01 20:53:36
1139	558027	22051	Jefferson Parish	Louisiana	435300	568.460879162843	2020/04/01 20:53:36
1140	558039	22053	Jefferson Davis Parish	Louisiana	31467	18.6523574583118	2020/04/01 20:53:36
1141	558059	22055	Lafayette Parish	Louisiana	240091	344.938330874951	2020/04/01 20:53:36
1142	558065	22057	Lafourche Parish	Louisiana	98214	35.4943687035167	2020/04/01 20:53:36
1143	558049	22059	LaSalle Parish	Louisiana	14949	9.2396098853138	2020/04/01 20:53:36
1144	558077	22061	Lincoln Parish	Louisiana	47356	38.7590134236723	2020/04/01 20:53:36
1145	558083	22063	Livingston Parish	Louisiana	138111	82.2700866847613	2020/04/01 20:53:36
1146	558088	22065	Madison Parish	Louisiana	11472	7.09374046776692	2020/04/01 20:53:36
1147	558097	22067	Morehouse Parish	Louisiana	25992	12.6244615229661	2020/04/01 20:53:36
1148	558108	22069	Natchitoches Parish	Louisiana	38963	12.0130975747708	2020/04/01 20:53:36
1149	558113	22071	Orleans Parish	Louisiana	389648	887.944212780045	2020/04/01 20:53:36
1150	558114	22073	Ouachita Parish	Louisiana	156075	98.7241213360117	2020/04/01 20:53:36
1151	558125	22075	Plaquemines Parish	Louisiana	23373	11.5646885514706	2020/04/01 20:53:36
1152	559449	22077	Pointe Coupee Parish	Louisiana	22158	15.3534766850039	2020/04/01 20:53:36
1153	559460	22079	Rapides Parish	Louisiana	131546	38.4673873512845	2020/04/01 20:53:36
1154	559472	22081	Red River Parish	Louisiana	8618	8.55178364188231	2020/04/01 20:53:36
1155	559481	22083	Richland Parish	Louisiana	20474	14.2246818865344	2020/04/01 20:53:36
1156	559489	22085	Sabine Parish	Louisiana	24088	10.7313583695063	2020/04/01 20:53:36
1157	1629542	22087	St. Bernard Parish	Louisiana	45694	46.7337409135876	2020/04/01 20:53:36
1158	1629449	22089	St. Charles Parish	Louisiana	52724	73.2935338860763	2020/04/01 20:53:36
1159	1629457	22091	St. Helena Parish	Louisiana	10411	9.84238026899209	2020/04/01 20:53:36
1160	1629464	22093	St. James Parish	Louisiana	21357	34.1387423585591	2020/04/01 20:53:36
1161	1629472	22095	St. John the Baptist Parish	Louisiana	43446	78.2689358576126	2020/04/01 20:53:36
1162	1629479	22097	St. Landry Parish	Louisiana	83449	34.8732524683111	2020/04/01 20:53:36
1163	1629486	22099	St. Martin Parish	Louisiana	53752	28.1515199185348	2020/04/01 20:53:36
1164	1629492	22101	St. Mary Parish	Louisiana	51734	35.9526120500067	2020/04/01 20:53:36
1165	1629503	22103	St. Tammany Parish	Louisiana	252093	115.020659493155	2020/04/01 20:53:36
1166	559500	22105	Tangipahoa Parish	Louisiana	130504	63.6763882338832	2020/04/01 20:53:36
1167	559509	22107	Tensas Parish	Louisiana	4666	2.9887179905581	2020/04/01 20:53:36
1168	559517	22109	Terrebonne Parish	Louisiana	112587	35.3465091279679	2020/04/01 20:53:36
1169	559528	22111	Union Parish	Louisiana	22475	9.8949534919179	2020/04/01 20:53:36
1170	559538	22113	Vermilion Parish	Louisiana	59867	19.7021339394862	2020/04/01 20:53:36
1171	559548	22115	Vernon Parish	Louisiana	51007	14.8306747263427	2020/04/01 20:53:36
1172	559557	22117	Washington Parish	Louisiana	46457	26.7906651779675	2020/04/01 20:53:36
1173	559567	22119	Webster Parish	Louisiana	39631	25.7957709764375	2020/04/01 20:53:36
1174	559570	22121	West Baton Rouge Parish	Louisiana	25860	51.8970845813326	2020/04/01 20:53:36
1175	559578	22123	West Carroll Parish	Louisiana	11180	12.0024223250088	2020/04/01 20:53:36
1176	559584	22125	West Feliciana Parish	Louisiana	15377	14.7206089591876	2020/04/01 20:53:36
1177	559594	22127	Winn Parish	Louisiana	14494	5.89016517081369	2020/04/01 20:53:36
1178	581286	23001	Androscoggin County	Maine	107444	88.6533676559814	2020/04/01 20:53:36
1179	581287	23003	Aroostook County	Maine	68269	3.95110093156248	2020/04/01 20:53:36
1180	581288	23005	Cumberland County	Maine	290944	134.420011706799	2020/04/01 20:53:36
1181	581289	23007	Franklin County	Maine	30019	6.82985840873306	2020/04/01 20:53:36
1182	581290	23009	Hancock County	Maine	54541	13.2682748856057	2020/04/01 20:53:36
1183	581291	23011	Kennebec County	Maine	121545	54.0985038055428	2020/04/01 20:53:36
1184	581292	23013	Knox County	Maine	39823	42.1102304750872	2020/04/01 20:53:36
1185	581293	23015	Lincoln County	Maine	34067	28.8534916982215	2020/04/01 20:53:36
1186	581294	23017	Oxford County	Maine	57325	10.6567678206907	2020/04/01 20:53:36
1187	581295	23019	Penobscot County	Maine	151748	17.2466611770463	2020/04/01 20:53:36
1188	581296	23021	Piscataquis County	Maine	16887	1.64606394775223	2020/04/01 20:53:36
1189	581297	23023	Sagadahoc County	Maine	35277	53.6302174387811	2020/04/01 20:53:36
1190	581298	23025	Somerset County	Maine	50710	4.98916124298803	2020/04/01 20:53:36
1191	581299	23027	Waldo County	Maine	39418	20.8492965884332	2020/04/01 20:53:36
1192	581300	23029	Washington County	Maine	31694	4.77506785609243	2020/04/01 20:53:36
1193	581301	23031	York County	Maine	203102	79.1261164004109	2020/04/01 20:53:36
1194	1713506	24001	Allegany County	Maryland	71977	65.8251230849643	2020/04/01 20:53:36
1195	1710958	24003	Anne Arundel County	Maryland	567696	528.43972176545	2020/04/01 20:53:36
1196	1695314	24005	Baltimore County	Maryland	827625	534.041378368073	2020/04/01 20:53:36
1197	1676636	24009	Calvert County	Maryland	91082	164.955174180291	2020/04/01 20:53:36
1198	595737	24011	Caroline County	Maryland	32875	39.7352872991748	2020/04/01 20:53:36
1199	1696228	24013	Carroll County	Maryland	167522	144.4971046665	2020/04/01 20:53:36
1200	596115	24015	Cecil County	Maryland	102517	114.306903828916	2020/04/01 20:53:36
1201	1676992	24017	Charles County	Maryland	157671	132.977226509494	2020/04/01 20:53:36
1202	596495	24019	Dorchester County	Maryland	32261	23.0345110668948	2020/04/01 20:53:36
1203	1711211	24021	Frederick County	Maryland	248472	145.25379141511	2020/04/01 20:53:36
1204	1711058	24023	Garrett County	Maryland	29376	17.4742474557044	2020/04/01 20:53:36
1205	1698178	24025	Harford County	Maryland	251025	221.727144317162	2020/04/01 20:53:36
1206	1709077	24027	Howard County	Maryland	315327	485.160324903297	2020/04/01 20:53:36
1207	593907	24029	Kent County	Maryland	19593	27.3066913979002	2020/04/01 20:53:36
1208	1712500	24031	Montgomery County	Maryland	1040133	814.474796216959	2020/04/01 20:53:36
1209	1714670	24033	Prince George's County	Maryland	906202	724.925816501816	2020/04/01 20:53:36
1210	596089	24035	Queen Anne's County	Maryland	49355	51.2696369578568	2020/04/01 20:53:36
1211	1697853	24037	St. Mary's County	Maryland	111531	120.055163825169	2020/04/01 20:53:36
1212	596907	24039	Somerset County	Maryland	25737	31.0778796533919	2020/04/01 20:53:36
1213	592947	24041	Talbot County	Maryland	37211	53.497654388579	2020/04/01 20:53:36
1214	1714220	24043	Washington County	Maryland	149811	126.357557546089	2020/04/01 20:53:36
1215	1668606	24045	Wicomico County	Maryland	102172	105.360062744984	2020/04/01 20:53:36
1216	1668802	24047	Worcester County	Maryland	51564	42.5143221771827	2020/04/01 20:53:36
1217	1702381	24510	Baltimore city	Maryland	614700	2932.04076142432	2020/04/01 20:53:36
1218	606927	25001	Barnstable County	Massachusetts	213690	209.284881815058	2020/04/01 20:53:36
1219	606928	25003	Berkshire County	Massachusetts	127328	53.0401638584485	2020/04/01 20:53:36
1220	606929	25005	Bristol County	Massachusetts	558905	390.150502794615	2020/04/01 20:53:36
1221	606930	25007	Dukes County	Massachusetts	17313	64.7697871961762	2020/04/01 20:53:36
1222	606931	25009	Essex County	Massachusetts	781024	612.326436201255	2020/04/01 20:53:36
1223	606932	25011	Franklin County	Massachusetts	70935	39.1694219034028	2020/04/01 20:53:36
1224	606933	25013	Hampden County	Massachusetts	469116	293.565060335531	2020/04/01 20:53:36
1225	606934	25015	Hampshire County	Massachusetts	161159	118.019676045242	2020/04/01 20:53:36
1226	606935	25017	Middlesex County	Massachusetts	1595192	753.089533320006	2020/04/01 20:53:36
1227	606936	25019	Nantucket County	Massachusetts	11101	92.9035115811747	2020/04/01 20:53:36
1228	606937	25021	Norfolk County	Massachusetts	698249	680.629713527744	2020/04/01 20:53:36
1229	606938	25023	Plymouth County	Massachusetts	512135	300.082707595443	2020/04/01 20:53:36
1230	606939	25025	Suffolk County	Massachusetts	791766	5248.51983296846	2020/04/01 20:53:36
1231	606940	25027	Worcester County	Massachusetts	822280	210.16397012476	2020/04/01 20:53:36
1232	1622943	26001	Alcona County	Michigan	10364	5.9312698527926	2020/04/01 20:53:36
1233	1622944	26003	Alger County	Michigan	9194	3.87944692521868	2020/04/01 20:53:36
1234	1622945	26005	Allegan County	Michigan	115250	53.9210296442049	2020/04/01 20:53:36
1235	1622946	26007	Alpena County	Michigan	28612	19.3177634104714	2020/04/01 20:53:36
1236	1622947	26009	Antrim County	Michigan	23177	18.8125146896422	2020/04/01 20:53:36
1237	1622948	26011	Arenac County	Michigan	15165	16.1222753163353	2020/04/01 20:53:36
1238	1622949	26013	Baraga County	Michigan	8507	3.65591525564887	2020/04/01 20:53:36
1239	1622950	26015	Barry County	Michigan	60057	41.9243590908106	2020/04/01 20:53:36
1240	1622951	26017	Bay County	Michigan	104786	91.4844133123066	2020/04/01 20:53:36
1241	1622952	26019	Benzie County	Michigan	17552	21.1976980043916	2020/04/01 20:53:36
1242	1622953	26021	Berrien County	Michigan	154807	105.272530777834	2020/04/01 20:53:36
1243	1622954	26023	Branch County	Michigan	43584	33.229536269714	2020/04/01 20:53:36
1244	1622955	26025	Calhoun County	Michigan	134473	73.5147252427968	2020/04/01 20:53:36
1245	1622956	26027	Cass County	Michigan	51460	40.5398857771623	2020/04/01 20:53:36
1246	1622957	26029	Charlevoix County	Michigan	26219	24.3153784658332	2020/04/01 20:53:36
1247	1622958	26031	Cheboygan County	Michigan	25458	13.7421273077033	2020/04/01 20:53:36
1248	1622959	26033	Chippewa County	Michigan	37834	9.37293543780067	2020/04/01 20:53:36
1249	1622960	26035	Clare County	Michigan	30616	20.9454711517696	2020/04/01 20:53:36
1250	1622961	26037	Clinton County	Michigan	77896	53.0982086269298	2020/04/01 20:53:36
1251	1622962	26039	Crawford County	Michigan	13836	9.60116203871735	2020/04/01 20:53:36
1252	1622963	26041	Delta County	Michigan	36190	11.9315382066062	2020/04/01 20:53:36
1253	1622964	26043	Dickinson County	Michigan	25570	12.9741294904056	2020/04/01 20:53:36
1254	1622965	26045	Eaton County	Michigan	109155	73.269869420923	2020/04/01 20:53:36
1255	1622966	26047	Emmet County	Michigan	33039	27.2853645387632	2020/04/01 20:53:36
1256	1622967	26049	Genesee County	Michigan	409361	248.138524479207	2020/04/01 20:53:36
1257	1622968	26051	Gladwin County	Michigan	25289	19.4587581470104	2020/04/01 20:53:36
1258	1622969	26053	Gogebic County	Michigan	15414	5.39986088054022	2020/04/01 20:53:36
1259	1622970	26055	Grand Traverse County	Michigan	91746	76.2876267904394	2020/04/01 20:53:36
1260	1622971	26057	Gratiot County	Michigan	41067	27.8969021685374	2020/04/01 20:53:36
1261	1622972	26059	Hillsdale County	Michigan	45830	29.5828744919013	2020/04/01 20:53:36
1262	1622973	26061	Houghton County	Michigan	36360	13.9120672712886	2020/04/01 20:53:36
1263	1622974	26063	Huron County	Michigan	31543	14.5671910836676	2020/04/01 20:53:36
1264	1622975	26065	Ingham County	Michigan	289564	201.035246541188	2020/04/01 20:53:36
1265	1622976	26067	Ionia County	Michigan	64176	43.3707215498873	2020/04/01 20:53:36
1266	1622977	26069	Iosco County	Michigan	25247	17.7523772348844	2020/04/01 20:53:36
1267	1622978	26071	Iron County	Michigan	11212	3.71268201702155	2020/04/01 20:53:36
1268	1622979	26073	Isabella County	Michigan	70775	47.7151144990259	2020/04/01 20:53:36
1269	1622980	26075	Jackson County	Michigan	158913	87.417531936469	2020/04/01 20:53:36
1270	1622981	26077	Kalamazoo County	Michigan	261573	179.676476297872	2020/04/01 20:53:36
1271	1622982	26079	Kalkaska County	Michigan	17463	12.0456985369594	2020/04/01 20:53:36
1272	1622983	26081	Kent County	Michigan	643140	292.810575287583	2020/04/01 20:53:36
1273	1622984	26083	Keweenaw County	Michigan	2130	1.52264314362296	2020/04/01 20:53:36
1274	1622985	26085	Lake County	Michigan	11763	8.00192219191265	2020/04/01 20:53:36
1275	1622986	26087	Lapeer County	Michigan	88202	52.8318746769519	2020/04/01 20:53:36
1276	1622987	26089	Leelanau County	Michigan	21639	24.063564293742	2020/04/01 20:53:36
1277	1622988	26091	Lenawee County	Michigan	98474	50.7194930986914	2020/04/01 20:53:36
1278	1622989	26093	Livingston County	Michigan	188482	128.746261369795	2020/04/01 20:53:36
1279	1622990	26095	Luce County	Michigan	6364	2.7329801564001	2020/04/01 20:53:36
1280	1622991	26097	Mackinac County	Michigan	10817	4.08710386177503	2020/04/01 20:53:36
1281	1622992	26099	Macomb County	Michigan	868704	699.863588296273	2020/04/01 20:53:36
1282	1622993	26101	Manistee County	Michigan	24444	17.4026153482459	2020/04/01 20:53:36
1283	1622994	26103	Marquette County	Michigan	66939	14.2867478905631	2020/04/01 20:53:36
1284	1622995	26105	Mason County	Michigan	28884	22.5309176879047	2020/04/01 20:53:36
1285	1622996	26107	Mecosta County	Michigan	43264	30.0915382032582	2020/04/01 20:53:36
1286	1622997	26109	Menominee County	Michigan	23234	8.59228634626999	2020/04/01 20:53:36
1287	1622998	26111	Midland County	Michigan	83389	62.3649377461934	2020/04/01 20:53:36
1288	1622999	26113	Missaukee County	Michigan	15006	10.2584531055017	2020/04/01 20:53:36
1289	1623000	26115	Monroe County	Michigan	149699	105.214324109839	2020/04/01 20:53:36
1290	1623001	26117	Montcalm County	Michigan	63209	34.601082494666	2020/04/01 20:53:36
1291	1623002	26119	Montmorency County	Michigan	9261	6.54080377104677	2020/04/01 20:53:36
1292	1623003	26121	Muskegon County	Michigan	173043	132.593461059484	2020/04/01 20:53:36
1293	1623004	26123	Newaygo County	Michigan	48142	22.1573482263851	2020/04/01 20:53:36
1294	1623005	26125	Oakland County	Michigan	1250843	556.779856652962	2020/04/01 20:53:36
1295	1623006	26127	Oceana County	Michigan	26417	18.9551922159816	2020/04/01 20:53:36
1296	1623007	26129	Ogemaw County	Michigan	20928	14.3394850740654	2020/04/01 20:53:36
1297	1623008	26131	Ontonagon County	Michigan	5968	1.75766376944038	2020/04/01 20:53:36
1298	1623009	26133	Osceola County	Michigan	23232	15.8399170096348	2020/04/01 20:53:36
1299	1623010	26135	Oscoda County	Michigan	8277	5.64948975357258	2020/04/01 20:53:36
1300	1623011	26137	Otsego County	Michigan	24397	18.2897871982097	2020/04/01 20:53:36
1301	1623012	26139	Ottawa County	Michigan	284034	194.610161958705	2020/04/01 20:53:36
1302	1623013	26141	Presque Isle County	Michigan	12797	7.50086457326053	2020/04/01 20:53:36
1303	1623014	26143	Roscommon County	Michigan	23877	17.7322941186596	2020/04/01 20:53:36
1304	1623015	26145	Saginaw County	Michigan	192778	92.9859007490757	2020/04/01 20:53:36
1305	1625033	26147	St. Clair County	Michigan	159566	85.4121095962139	2020/04/01 20:53:36
1306	1625034	26149	St. Joseph County	Michigan	60897	46.9689870712998	2020/04/01 20:53:36
1307	1623016	26151	Sanilac County	Michigan	41376	16.5965684869053	2020/04/01 20:53:36
1308	1623017	26153	Schoolcraft County	Michigan	8069	2.65852149538412	2020/04/01 20:53:36
1309	1623018	26155	Shiawassee County	Michigan	68493	49.8066302827947	2020/04/01 20:53:36
1310	1623019	26157	Tuscola County	Michigan	53250	25.5559258661205	2020/04/01 20:53:36
1311	1623020	26159	Van Buren County	Michigan	75272	47.816576982835	2020/04/01 20:53:36
1312	1623021	26161	Washtenaw County	Michigan	365961	200.147034273147	2020/04/01 20:53:36
1313	1623022	26163	Wayne County	Michigan	1761382	1111.24397371973	2020/04/01 20:53:36
1314	1623023	26165	Wexford County	Michigan	33111	22.6299619987434	2020/04/01 20:53:36
1315	663198	27001	Aitkin County	Minnesota	15834	3.35577468125594	2020/04/01 20:53:36
1316	659447	27003	Anoka County	Minnesota	347431	317.892594920879	2020/04/01 20:53:36
1317	659448	27005	Becker County	Minnesota	33773	9.91557781396003	2020/04/01 20:53:36
1318	659449	27007	Beltrami County	Minnesota	46117	7.10897123199923	2020/04/01 20:53:36
1319	659450	27009	Benton County	Minnesota	39779	37.6166677346898	2020/04/01 20:53:36
1320	659451	27011	Big Stone County	Minnesota	5016	3.87977137973776	2020/04/01 20:53:36
1321	659452	27013	Blue Earth County	Minnesota	66322	34.244241587739	2020/04/01 20:53:36
1322	659453	27015	Brown County	Minnesota	25211	15.9290390909683	2020/04/01 20:53:36
1323	659454	27017	Carlton County	Minnesota	35540	15.9317401410893	2020/04/01 20:53:36
1324	659455	27019	Carver County	Minnesota	100416	109.460627916026	2020/04/01 20:53:36
1325	659456	27021	Cass County	Minnesota	29022	5.5432126481401	2020/04/01 20:53:36
1326	659457	27023	Chippewa County	Minnesota	12010	7.97972460544534	2020/04/01 20:53:36
1327	659458	27025	Chisago County	Minnesota	54727	50.9278996405748	2020/04/01 20:53:36
1328	659459	27027	Clay County	Minnesota	62801	23.1990454770267	2020/04/01 20:53:36
1329	659460	27029	Clearwater County	Minnesota	8812	3.40665479963699	2020/04/01 20:53:36
1330	659461	27031	Cook County	Minnesota	5311	1.41188074685143	2020/04/01 20:53:36
1331	659462	27033	Cottonwood County	Minnesota	11372	6.86083375196214	2020/04/01 20:53:36
1332	659463	27035	Crow Wing County	Minnesota	63855	24.6949530066956	2020/04/01 20:53:36
1333	659464	27037	Dakota County	Minnesota	418201	287.086261144252	2020/04/01 20:53:36
1334	659465	27039	Dodge County	Minnesota	20582	18.0904903307604	2020/04/01 20:53:36
1335	659466	27041	Douglas County	Minnesota	37203	22.5584307423478	2020/04/01 20:53:36
1336	659467	27043	Faribault County	Minnesota	13896	7.53044567151137	2020/04/01 20:53:36
1337	659468	27045	Fillmore County	Minnesota	20888	9.36368028056348	2020/04/01 20:53:36
1338	659469	27047	Freeborn County	Minnesota	30526	16.6642661174271	2020/04/01 20:53:36
1339	659470	27049	Goodhue County	Minnesota	46217	23.5766027557256	2020/04/01 20:53:36
1340	659471	27051	Grant County	Minnesota	5938	4.18526828881064	2020/04/01 20:53:36
1341	659472	27053	Hennepin County	Minnesota	1235478	861.285007801729	2020/04/01 20:53:36
1342	659473	27055	Houston County	Minnesota	18663	13.0530021091792	2020/04/01 20:53:36
1343	659474	27057	Hubbard County	Minnesota	20862	8.69850643104635	2020/04/01 20:53:36
1344	659475	27059	Isanti County	Minnesota	38974	34.5338418775747	2020/04/01 20:53:36
1345	659476	27061	Itasca County	Minnesota	45203	6.54326994178345	2020/04/01 20:53:36
1346	659477	27063	Jackson County	Minnesota	10047	5.51823936125963	2020/04/01 20:53:36
1347	659478	27065	Kanabec County	Minnesota	16004	11.8460391110941	2020/04/01 20:53:36
1348	659479	27067	Kandiyohi County	Minnesota	42658	20.655284769341	2020/04/01 20:53:36
1349	659480	27069	Kittson County	Minnesota	4337	1.52393839769303	2020/04/01 20:53:36
1350	659481	27071	Koochiching County	Minnesota	12644	1.57266233354039	2020/04/01 20:53:36
1351	659482	27073	Lac qui Parle County	Minnesota	6773	3.41829955714973	2020/04/01 20:53:36
1352	659484	27075	Lake County	Minnesota	10569	1.93466071696851	2020/04/01 20:53:36
1353	659483	27077	Lake of the Woods County	Minnesota	3809	1.13313776698312	2020/04/01 20:53:36
1354	659485	27079	Le Sueur County	Minnesota	27983	24.0807232105093	2020/04/01 20:53:36
1355	659486	27081	Lincoln County	Minnesota	5707	4.1049942086746	2020/04/01 20:53:36
1356	659487	27083	Lyon County	Minnesota	25839	13.9646482888375	2020/04/01 20:53:36
1357	659491	27085	McLeod County	Minnesota	35825	28.1434691540873	2020/04/01 20:53:36
1358	659488	27087	Mahnomen County	Minnesota	5506	3.81072853839715	2020/04/01 20:53:36
1359	659489	27089	Marshall County	Minnesota	9392	2.04290071223293	2020/04/01 20:53:36
1360	659490	27091	Martin County	Minnesota	19964	10.8210181728853	2020/04/01 20:53:36
1361	659492	27093	Meeker County	Minnesota	23079	14.6543651681196	2020/04/01 20:53:36
1362	659493	27095	Mille Lacs County	Minnesota	25728	17.3554637244115	2020/04/01 20:53:36
1363	659494	27097	Morrison County	Minnesota	32949	11.3072127670083	2020/04/01 20:53:36
1364	659495	27099	Mower County	Minnesota	39602	21.4955796920245	2020/04/01 20:53:36
1365	659496	27101	Murray County	Minnesota	8353	4.57682632561572	2020/04/01 20:53:36
1366	659497	27103	Nicollet County	Minnesota	33783	29.0736891062961	2020/04/01 20:53:36
1367	659498	27105	Nobles County	Minnesota	21839	11.7915755425184	2020/04/01 20:53:36
1368	659499	27107	Norman County	Minnesota	6559	2.9015540306226	2020/04/01 20:53:36
1369	659500	27109	Olmsted County	Minnesota	153065	90.4328724869858	2020/04/01 20:53:36
1370	659501	27111	Otter Tail County	Minnesota	57992	11.3552531594646	2020/04/01 20:53:36
1371	659502	27113	Pennington County	Minnesota	14184	8.88204931571274	2020/04/01 20:53:36
1372	659503	27115	Pine County	Minnesota	29129	7.96914881578951	2020/04/01 20:53:36
1373	659504	27117	Pipestone County	Minnesota	9185	7.62564603875476	2020/04/01 20:53:36
1374	659505	27119	Polk County	Minnesota	31591	6.18818067058906	2020/04/01 20:53:36
1375	659506	27121	Pope County	Minnesota	10980	6.33168841796356	2020/04/01 20:53:36
1376	659507	27123	Ramsey County	Minnesota	541493	1373.48668948003	2020/04/01 20:53:36
1377	659508	27125	Red Lake County	Minnesota	4008	3.57879726665573	2020/04/01 20:53:36
1378	659509	27127	Redwood County	Minnesota	15331	6.73744008723931	2020/04/01 20:53:36
1379	659510	27129	Renville County	Minnesota	14721	5.78259087840044	2020/04/01 20:53:36
1380	659511	27131	Rice County	Minnesota	65765	51.2102658834513	2020/04/01 20:53:36
1381	659512	27133	Rock County	Minnesota	9413	7.53304708261264	2020/04/01 20:53:36
1382	659513	27135	Roseau County	Minnesota	15462	3.57133624327637	2020/04/01 20:53:36
1383	662850	27137	St. Louis County	Minnesota	200080	12.3646114504415	2020/04/01 20:53:36
1384	659514	27139	Scott County	Minnesota	143372	155.385852169749	2020/04/01 20:53:36
1385	659515	27141	Sherburne County	Minnesota	93231	83.1506191730218	2020/04/01 20:53:36
1386	659516	27143	Sibley County	Minnesota	14912	9.77788650197724	2020/04/01 20:53:36
1387	659517	27145	Stearns County	Minnesota	156819	45.0906361077148	2020/04/01 20:53:36
1388	659518	27147	Steele County	Minnesota	36676	32.9590235430063	2020/04/01 20:53:36
1389	659519	27149	Stevens County	Minnesota	9784	6.70254310186663	2020/04/01 20:53:36
1390	659520	27151	Swift County	Minnesota	9411	4.89678992276453	2020/04/01 20:53:36
1391	659521	27153	Todd County	Minnesota	24440	9.98591971836268	2020/04/01 20:53:36
1392	659522	27155	Traverse County	Minnesota	3337	2.24514089226252	2020/04/01 20:53:36
1393	659523	27157	Wabasha County	Minnesota	21500	15.873592045148	2020/04/01 20:53:36
1394	659524	27159	Wadena County	Minnesota	13646	9.82468480654778	2020/04/01 20:53:36
1395	659525	27161	Waseca County	Minnesota	18809	17.1535908769826	2020/04/01 20:53:36
1396	659526	27163	Washington County	Minnesota	253317	254.433333118759	2020/04/01 20:53:36
1397	659527	27165	Watonwan County	Minnesota	10973	9.7405618873084	2020/04/01 20:53:36
1398	659528	27167	Wilkin County	Minnesota	6343	3.26104857150055	2020/04/01 20:53:36
1399	659529	27169	Winona County	Minnesota	50847	31.3553294053441	2020/04/01 20:53:36
1400	659530	27171	Wright County	Minnesota	132745	77.5247368692197	2020/04/01 20:53:36
1401	659531	27173	Yellow Medicine County	Minnesota	9868	5.01916785515268	2020/04/01 20:53:36
1402	695726	28001	Adams County	Mississippi	31547	26.3448360714935	2020/04/01 20:53:36
1403	711755	28003	Alcorn County	Mississippi	37180	35.8842061373607	2020/04/01 20:53:36
1404	695727	28005	Amite County	Mississippi	12468	6.59350817495355	2020/04/01 20:53:36
1405	695728	28007	Attala County	Mississippi	18581	9.76134176582837	2020/04/01 20:53:36
1406	695729	28009	Benton County	Mississippi	8253	7.83662888883593	2020/04/01 20:53:36
1407	695730	28011	Bolivar County	Mississippi	32592	14.3542847108247	2020/04/01 20:53:36
1408	695731	28013	Calhoun County	Mississippi	14571	9.59111735125637	2020/04/01 20:53:36
1409	695732	28015	Carroll County	Mississippi	10129	6.22456022879746	2020/04/01 20:53:36
1410	695733	28017	Chickasaw County	Mississippi	17279	13.2955346697121	2020/04/01 20:53:36
1411	695734	28019	Choctaw County	Mississippi	8321	7.68241742057477	2020/04/01 20:53:36
1412	695735	28021	Claiborne County	Mississippi	9120	7.22433449202919	2020/04/01 20:53:36
1413	695736	28023	Clarke County	Mississippi	15928	8.89247572919536	2020/04/01 20:53:36
1414	695737	28025	Clay County	Mississippi	19808	18.650441545814	2020/04/01 20:53:36
1415	695738	28027	Coahoma County	Mississippi	23802	16.633830203238	2020/04/01 20:53:36
1416	695739	28029	Copiah County	Mississippi	28721	14.2666342563733	2020/04/01 20:53:36
1417	695740	28031	Covington County	Mississippi	19091	17.8123420418307	2020/04/01 20:53:36
1418	695741	28033	DeSoto County	Mississippi	176132	142.771871645678	2020/04/01 20:53:36
1419	695742	28035	Forrest County	Mississippi	75517	62.5636429335016	2020/04/01 20:53:36
1420	695743	28037	Franklin County	Mississippi	7757	5.31061743528365	2020/04/01 20:53:36
1421	695744	28039	George County	Mississippi	23710	19.1237863104343	2020/04/01 20:53:36
1422	695745	28041	Greene County	Mississippi	13714	7.42912218997096	2020/04/01 20:53:36
1423	695746	28043	Grenada County	Mississippi	21278	19.4623374427885	2020/04/01 20:53:36
1424	711756	28045	Hancock County	Mississippi	46653	38.0046385975804	2020/04/01 20:53:36
1425	695747	28047	Harrison County	Mississippi	202626	136.381847942863	2020/04/01 20:53:36
1426	695748	28049	Hinds County	Mississippi	241774	107.326458837202	2020/04/01 20:53:36
1427	695749	28051	Holmes County	Mississippi	18075	9.22298894455853	2020/04/01 20:53:36
1428	695750	28053	Humphreys County	Mississippi	8539	7.87768938748075	2020/04/01 20:53:36
1429	695751	28055	Issaquena County	Mississippi	1328	1.24137336302149	2020/04/01 20:53:36
1430	695752	28057	Itawamba County	Mississippi	23480	17.0153185760814	2020/04/01 20:53:36
1431	695753	28059	Jackson County	Mississippi	142014	75.8607419423292	2020/04/01 20:53:36
1432	695754	28061	Jasper County	Mississippi	16529	9.4373156284519	2020/04/01 20:53:36
1433	695755	28063	Jefferson County	Mississippi	7346	5.45513727003777	2020/04/01 20:53:36
1434	695756	28065	Jefferson Davis County	Mississippi	11495	10.8661610061697	2020/04/01 20:53:36
1435	695757	28067	Jones County	Mississippi	68454	38.0394248803715	2020/04/01 20:53:36
1436	695758	28069	Kemper County	Mississippi	10107	5.09321919229063	2020/04/01 20:53:36
1437	695759	28071	Lafayette County	Mississippi	53459	32.6750410410868	2020/04/01 20:53:36
1438	695760	28073	Lamar County	Mississippi	61223	47.5931985475159	2020/04/01 20:53:36
1439	695761	28075	Lauderdale County	Mississippi	77323	42.4278506369558	2020/04/01 20:53:36
1440	695762	28077	Lawrence County	Mississippi	12630	11.3227883634533	2020/04/01 20:53:36
1441	695763	28079	Leake County	Mississippi	22870	15.1487333072675	2020/04/01 20:53:36
1442	695764	28081	Lee County	Mississippi	84915	72.8654138162044	2020/04/01 20:53:36
1443	695765	28083	Leflore County	Mississippi	29804	19.3702813434252	2020/04/01 20:53:36
1444	695766	28085	Lincoln County	Mississippi	34432	22.6813683952016	2020/04/01 20:53:36
1445	695767	28087	Lowndes County	Mississippi	59437	45.4032082951827	2020/04/01 20:53:36
1446	695768	28089	Madison County	Mississippi	103498	55.9272791818918	2020/04/01 20:53:36
1447	695769	28091	Marion County	Mississippi	25202	17.9403085798852	2020/04/01 20:53:36
1448	695770	28093	Marshall County	Mississippi	35787	19.566309991649	2020/04/01 20:53:36
1449	695771	28095	Monroe County	Mississippi	35840	18.086667008685	2020/04/01 20:53:36
1450	711757	28097	Montgomery County	Mississippi	10198	9.67483600977454	2020/04/01 20:53:36
1451	695772	28099	Neshoba County	Mississippi	29376	19.8937978648545	2020/04/01 20:53:36
1452	695773	28101	Newton County	Mississippi	21524	14.3815792405081	2020/04/01 20:53:36
1453	695774	28103	Noxubee County	Mississippi	10828	6.01404563584686	2020/04/01 20:53:36
1454	695775	28105	Oktibbeha County	Mississippi	49481	41.6916763923372	2020/04/01 20:53:36
1455	695776	28107	Panola County	Mississippi	34243	19.2962311027761	2020/04/01 20:53:36
1456	695777	28109	Pearl River County	Mississippi	55149	26.2451578483274	2020/04/01 20:53:36
1457	695778	28111	Perry County	Mississippi	12028	7.17549935837983	2020/04/01 20:53:36
1458	711758	28113	Pike County	Mississippi	39737	37.5107200119318	2020/04/01 20:53:36
1459	695803	28115	Pontotoc County	Mississippi	31315	24.2902252300294	2020/04/01 20:53:36
1460	695779	28117	Prentiss County	Mississippi	25360	23.5949236020564	2020/04/01 20:53:36
1461	695780	28119	Quitman County	Mississippi	7372	7.0278092404063	2020/04/01 20:53:36
1462	695781	28121	Rankin County	Mississippi	151240	75.295643235167	2020/04/01 20:53:36
1463	695782	28123	Scott County	Mississippi	28415	18.0080884119709	2020/04/01 20:53:36
1464	695783	28125	Sharkey County	Mississippi	4511	4.03434356995889	2020/04/01 20:53:36
1465	695784	28127	Simpson County	Mississippi	27073	17.7419576015184	2020/04/01 20:53:36
1466	695785	28129	Smith County	Mississippi	16063	9.74740321529336	2020/04/01 20:53:36
1467	695786	28131	Stone County	Mississippi	18375	15.9256353277404	2020/04/01 20:53:36
1468	695787	28133	Sunflower County	Mississippi	26532	14.6813804289131	2020/04/01 20:53:36
1469	695788	28135	Tallahatchie County	Mississippi	14361	8.59369213004294	2020/04/01 20:53:36
1470	695789	28137	Tate County	Mississippi	28493	27.179353723102	2020/04/01 20:53:36
1471	695790	28139	Tippah County	Mississippi	21990	18.545152519142	2020/04/01 20:53:36
1472	695791	28141	Tishomingo County	Mississippi	19478	17.7243711864603	2020/04/01 20:53:36
1473	695792	28143	Tunica County	Mississippi	10170	8.63612679404092	2020/04/01 20:53:36
1474	695793	28145	Union County	Mississippi	28356	26.3429291487746	2020/04/01 20:53:36
1475	695794	28147	Walthall County	Mississippi	14601	13.9566324273032	2020/04/01 20:53:36
1476	695795	28149	Warren County	Mississippi	47075	30.883998255286	2020/04/01 20:53:36
1477	695796	28151	Washington County	Mississippi	47086	25.0849809802452	2020/04/01 20:53:36
1478	695797	28153	Wayne County	Mississippi	20422	9.72594025800096	2020/04/01 20:53:36
1479	695798	28155	Webster County	Mississippi	9828	9.01477063564423	2020/04/01 20:53:36
1480	695799	28157	Wilkinson County	Mississippi	8990	5.1187529415997	2020/04/01 20:53:36
1481	695800	28159	Winston County	Mississippi	18358	11.6723759768565	2020/04/01 20:53:36
1482	695801	28161	Yalobusha County	Mississippi	12421	10.2660132731477	2020/04/01 20:53:36
1483	695802	28163	Yazoo County	Mississippi	27974	11.7102494377234	2020/04/01 20:53:36
1484	765805	29001	Adair County	Missouri	25325	17.2353708853361	2020/04/01 20:53:36
1485	758456	29003	Andrew County	Missouri	17403	15.5313136012	2020/04/01 20:53:36
1486	758457	29005	Atchison County	Missouri	5270	3.71791106236372	2020/04/01 20:53:36
1487	758458	29007	Audrain County	Missouri	25735	14.3539298462993	2020/04/01 20:53:36
1488	758459	29009	Barry County	Missouri	35493	17.6085490274008	2020/04/01 20:53:36
1489	758460	29011	Barton County	Missouri	11850	7.72817167638385	2020/04/01 20:53:36
1490	758461	29013	Bates County	Missouri	16374	7.55596648166993	2020/04/01 20:53:36
1491	758462	29015	Benton County	Missouri	18989	10.4137161868681	2020/04/01 20:53:36
1492	758463	29017	Bollinger County	Missouri	12281	7.6738820551497	2020/04/01 20:53:36
1493	758464	29019	Boone County	Missouri	176515	99.4136366707352	2020/04/01 20:53:36
1494	758465	29021	Buchanan County	Missouri	89076	84.2447513744697	2020/04/01 20:53:36
1495	758466	29023	Butler County	Missouri	42733	23.7512864923541	2020/04/01 20:53:36
1496	758467	29025	Caldwell County	Missouri	9049	8.193956256306	2020/04/01 20:53:36
1497	758468	29027	Callaway County	Missouri	44840	20.7447079414979	2020/04/01 20:53:36
1498	758469	29029	Camden County	Missouri	45096	26.5410090432927	2020/04/01 20:53:36
1499	758470	29031	Cape Girardeau County	Missouri	78324	52.2718169263982	2020/04/01 20:53:36
1500	758471	29033	Carroll County	Missouri	8843	4.91533950799991	2020/04/01 20:53:36
1501	758472	29035	Carter County	Missouri	6197	4.71594582114447	2020/04/01 20:53:36
1502	758473	29037	Cass County	Missouri	102678	56.9098061712793	2020/04/01 20:53:36
1503	758474	29039	Cedar County	Missouri	13938	11.3418024341163	2020/04/01 20:53:36
1504	758475	29041	Chariton County	Missouri	7546	3.87861069447857	2020/04/01 20:53:36
1505	758476	29043	Christian County	Missouri	84275	57.8318159455434	2020/04/01 20:53:36
1506	758477	29045	Clark County	Missouri	6800	5.20305404673386	2020/04/01 20:53:36
1507	758478	29047	Clay County	Missouri	239164	232.209738627726	2020/04/01 20:53:36
1508	758479	29049	Clinton County	Missouri	20475	18.8693183722079	2020/04/01 20:53:36
1509	758480	29051	Cole County	Missouri	76740	75.6799564503172	2020/04/01 20:53:36
1510	758481	29053	Cooper County	Missouri	17622	12.0475514600031	2020/04/01 20:53:36
1511	758482	29055	Crawford County	Missouri	24280	12.6260661483017	2020/04/01 20:53:36
1512	758483	29057	Dade County	Missouri	7590	5.98051718171502	2020/04/01 20:53:36
1513	758484	29059	Dallas County	Missouri	16499	11.7761042887628	2020/04/01 20:53:36
1514	758485	29061	Daviess County	Missouri	8302	5.69056399595829	2020/04/01 20:53:36
1515	758486	29063	DeKalb County	Missouri	12564	11.5127553746931	2020/04/01 20:53:36
1516	758487	29065	Dent County	Missouri	15504	7.95223252719366	2020/04/01 20:53:36
1517	758488	29067	Douglas County	Missouri	13374	6.34658785161874	2020/04/01 20:53:36
1518	758489	29069	Dunklin County	Missouri	30428	21.7118767467191	2020/04/01 20:53:36
1519	758490	29071	Franklin County	Missouri	102781	43.0066240737134	2020/04/01 20:53:36
1520	758491	29073	Gasconade County	Missouri	14746	10.969960598172	2020/04/01 20:53:36
1521	758492	29075	Gentry County	Missouri	6665	5.23658212158345	2020/04/01 20:53:36
1522	758493	29077	Greene County	Missouri	288429	164.903158307784	2020/04/01 20:53:36
1523	758494	29079	Grundy County	Missouri	10039	8.90454861843853	2020/04/01 20:53:36
1524	758495	29081	Harrison County	Missouri	8554	4.57112957964313	2020/04/01 20:53:36
1525	758496	29083	Henry County	Missouri	21765	12.0576650493343	2020/04/01 20:53:36
1526	758497	29085	Hickory County	Missouri	9368	9.06954468387883	2020/04/01 20:53:36
1527	758498	29087	Holt County	Missouri	4456	3.71838539511677	2020/04/01 20:53:36
1528	758499	29089	Howard County	Missouri	10113	8.41900627504426	2020/04/01 20:53:36
1529	758500	29091	Howell County	Missouri	40102	16.6982967017	2020/04/01 20:53:36
1530	758501	29093	Iron County	Missouri	10221	7.17173427168648	2020/04/01 20:53:36
1531	758502	29095	Jackson County	Missouri	692003	441.979622490107	2020/04/01 20:53:36
1532	758503	29097	Jasper County	Missouri	119238	72.1026831751726	2020/04/01 20:53:36
1533	758504	29099	Jefferson County	Missouri	223302	131.327441026712	2020/04/01 20:53:36
1534	758505	29101	Johnson County	Missouri	53689	24.9975476199418	2020/04/01 20:53:36
1535	758506	29103	Knox County	Missouri	3951	3.02671269065607	2020/04/01 20:53:36
1536	758507	29105	Laclede County	Missouri	35507	17.9277047802164	2020/04/01 20:53:36
1537	758508	29107	Lafayette County	Missouri	32589	20.0223172068974	2020/04/01 20:53:36
1538	758509	29109	Lawrence County	Missouri	38133	24.0678867778138	2020/04/01 20:53:36
1539	758510	29111	Lewis County	Missouri	10027	7.66559370015563	2020/04/01 20:53:36
1540	758511	29113	Lincoln County	Missouri	55563	34.239239198941	2020/04/01 20:53:36
1541	758512	29115	Linn County	Missouri	12186	7.64316788540708	2020/04/01 20:53:36
1542	758513	29117	Livingston County	Missouri	15076	10.9353774024724	2020/04/01 20:53:36
1543	758518	29119	McDonald County	Missouri	22827	16.3371237564586	2020/04/01 20:53:36
1544	758514	29121	Macon County	Missouri	15254	7.35090717451952	2020/04/01 20:53:36
1545	758515	29123	Madison County	Missouri	12205	9.53174499484654	2020/04/01 20:53:36
1546	758516	29125	Maries County	Missouri	8884	6.50905817541008	2020/04/01 20:53:36
1547	758517	29127	Marion County	Missouri	28672	25.3370527228905	2020/04/01 20:53:36
1548	758519	29129	Mercer County	Missouri	3664	3.11716315067225	2020/04/01 20:53:36
1549	758520	29131	Miller County	Missouri	25049	16.3203558583718	2020/04/01 20:53:36
1550	758521	29133	Mississippi County	Missouri	13748	12.8968658687225	2020/04/01 20:53:36
1551	758522	29135	Moniteau County	Missouri	15958	14.8457897312878	2020/04/01 20:53:36
1552	758523	29137	Monroe County	Missouri	8654	5.15911654363076	2020/04/01 20:53:36
1553	758524	29139	Montgomery County	Missouri	11545	8.33113641254108	2020/04/01 20:53:36
1554	758525	29141	Morgan County	Missouri	20137	13.0096190469237	2020/04/01 20:53:36
1555	758526	29143	New Madrid County	Missouri	17811	10.1901249145458	2020/04/01 20:53:36
1556	758527	29145	Newton County	Missouri	58202	35.9692523345999	2020/04/01 20:53:36
1557	758528	29147	Nodaway County	Missouri	22547	9.92679776276597	2020/04/01 20:53:36
1558	758529	29149	Oregon County	Missouri	10699	5.23034363970747	2020/04/01 20:53:36
1559	758530	29151	Osage County	Missouri	13619	8.66881102629886	2020/04/01 20:53:36
1560	758531	29153	Ozark County	Missouri	9236	4.78681337607	2020/04/01 20:53:36
1561	758532	29155	Pemiscot County	Missouri	17031	13.3485459050615	2020/04/01 20:53:36
1562	758533	29157	Perry County	Missouri	19146	15.583919183817	2020/04/01 20:53:36
1563	758534	29159	Pettis County	Missouri	42371	23.9796900384394	2020/04/01 20:53:36
1564	758535	29161	Phelps County	Missouri	44789	25.742305758782	2020/04/01 20:53:36
1565	758536	29163	Pike County	Missouri	18489	10.6477172122721	2020/04/01 20:53:36
1566	758537	29165	Platte County	Missouri	98824	90.8943251716872	2020/04/01 20:53:36
1567	758538	29167	Polk County	Missouri	31549	19.1669999349614	2020/04/01 20:53:36
1568	758539	29169	Pulaski County	Missouri	52591	37.1139976200309	2020/04/01 20:53:36
1569	758540	29171	Putnam County	Missouri	4815	3.59370235300651	2020/04/01 20:53:36
1570	758541	29173	Ralls County	Missouri	10217	8.39711423902516	2020/04/01 20:53:36
1571	758542	29175	Randolph County	Missouri	24945	19.9525220040604	2020/04/01 20:53:36
1572	758543	29177	Ray County	Missouri	22825	15.4933869235502	2020/04/01 20:53:36
1573	758544	29179	Reynolds County	Missouri	6315	3.01583652148046	2020/04/01 20:53:36
1574	758545	29181	Ripley County	Missouri	13693	8.39804391703739	2020/04/01 20:53:36
1575	758546	29183	St. Charles County	Missouri	389985	268.652251066858	2020/04/01 20:53:36
1576	758547	29185	St. Clair County	Missouri	9383	5.36725552005527	2020/04/01 20:53:36
1577	765806	29186	Ste. Genevieve County	Missouri	17871	13.8234785966361	2020/04/01 20:53:36
1578	758548	29187	St. Francois County	Missouri	66342	56.6857576475102	2020/04/01 20:53:36
1579	758549	29189	St. Louis County	Missouri	998684	759.90124768714	2020/04/01 20:53:36
1580	758550	29195	Saline County	Missouri	23102	11.8065101284919	2020/04/01 20:53:36
1581	758551	29197	Schuyler County	Missouri	4502	5.65637292732567	2020/04/01 20:53:36
1582	758552	29199	Scotland County	Missouri	4898	4.33241085119999	2020/04/01 20:53:36
1583	758553	29201	Scott County	Missouri	38729	35.6039402972382	2020/04/01 20:53:36
1584	758554	29203	Shannon County	Missouri	8246	3.17167941341135	2020/04/01 20:53:36
1585	758555	29205	Shelby County	Missouri	6061	4.67226240740481	2020/04/01 20:53:36
1586	758556	29207	Stoddard County	Missouri	29512	13.8416057449463	2020/04/01 20:53:36
1587	758557	29209	Stone County	Missouri	31527	26.232520196432	2020/04/01 20:53:36
1588	758558	29211	Sullivan County	Missouri	6317	3.76400617264121	2020/04/01 20:53:36
1589	758559	29213	Taney County	Missouri	54720	33.4108526171897	2020/04/01 20:53:36
1590	758560	29215	Texas County	Missouri	25671	8.41919520227286	2020/04/01 20:53:36
1591	758561	29217	Vernon County	Missouri	20691	9.66713820616124	2020/04/01 20:53:36
1592	758562	29219	Warren County	Missouri	33908	30.5453978435104	2020/04/01 20:53:36
1593	758563	29221	Washington County	Missouri	24931	12.667908056617	2020/04/01 20:53:36
1594	758564	29223	Wayne County	Missouri	13308	6.76811829501464	2020/04/01 20:53:36
1595	758565	29225	Webster County	Missouri	38082	24.8134809852954	2020/04/01 20:53:36
1596	758566	29227	Worth County	Missouri	2040	2.95410285121492	2020/04/01 20:53:36
1597	758567	29229	Wright County	Missouri	18293	10.3597268382249	2020/04/01 20:53:36
1598	767557	29510	St. Louis city	Missouri	311273	1946.48852152518	2020/04/01 20:53:36
1599	1719627	30001	Beaverhead County	Montana	9393	0.654314037624461	2020/04/01 20:53:36
1600	1716521	30003	Big Horn County	Montana	13376	1.03335304680883	2020/04/01 20:53:36
1601	1722470	30005	Blaine County	Montana	6727	0.614439102826025	2020/04/01 20:53:36
1602	1719625	30007	Broadwater County	Montana	5834	1.88912889975451	2020/04/01 20:53:36
1603	1720111	30009	Carbon County	Montana	10546	1.98848663185587	2020/04/01 20:53:36
1604	1688746	30011	Carter County	Montana	1318	0.152338308116587	2020/04/01 20:53:36
1605	1719622	30013	Cascade County	Montana	81746	11.6976558016544	2020/04/01 20:53:36
1606	1719619	30015	Chouteau County	Montana	5789	0.562649284351578	2020/04/01 20:53:36
1607	1720109	30017	Custer County	Montana	11845	1.20883090357743	2020/04/01 20:53:36
1608	1637566	30019	Daniels County	Montana	1753	0.474634871969183	2020/04/01 20:53:36
1609	1715632	30021	Dawson County	Montana	9191	1.49611643350748	2020/04/01 20:53:36
1610	1719617	30023	Deer Lodge County	Montana	9100	4.76939372832754	2020/04/01 20:53:36
1611	1688745	30025	Fallon County	Montana	2838	0.676164257411419	2020/04/01 20:53:36
1612	1719614	30027	Fergus County	Montana	11273	1.00304204438391	2020/04/01 20:53:36
1613	1719611	30029	Flathead County	Montana	98082	7.44416672424659	2020/04/01 20:53:36
1614	1720053	30031	Gallatin County	Montana	104729	15.522403191253	2020/04/01 20:53:36
1615	1716058	30033	Garfield County	Montana	1141	0.0942022809095075	2020/04/01 20:53:36
1616	1719607	30035	Glacier County	Montana	13699	1.76604626614293	2020/04/01 20:53:36
1617	1723078	30037	Golden Valley County	Montana	724	0.238021613661119	2020/04/01 20:53:36
1618	1719605	30039	Granite County	Montana	3269	0.730775675057869	2020/04/01 20:53:36
1619	1720048	30041	Hill County	Montana	16439	2.18929327414761	2020/04/01 20:53:36
1620	1720045	30043	Jefferson County	Montana	11778	2.74465213584628	2020/04/01 20:53:36
1621	1719602	30045	Judith Basin County	Montana	1951	0.402893840955224	2020/04/01 20:53:36
1622	1796943	30047	Lake County	Montana	29774	7.71289006857083	2020/04/01 20:53:36
1623	793926	30049	Lewis and Clark County	Montana	67077	7.48864201778072	2020/04/01 20:53:36
1624	1720036	30051	Liberty County	Montana	2280	0.615610723803374	2020/04/01 20:53:36
1625	1720038	30053	Lincoln County	Montana	19358	2.06896594549494	2020/04/01 20:53:36
1626	1716270	30055	McCone County	Montana	1630	0.238188063699479	2020/04/01 20:53:36
1627	1720033	30057	Madison County	Montana	8218	0.884294427327434	2020/04/01 20:53:36
1628	1719600	30059	Meagher County	Montana	1968	0.317680163643264	2020/04/01 20:53:36
1629	1720030	30061	Mineral County	Montana	4211	1.33310128570151	2020/04/01 20:53:36
1630	1719596	30063	Missoula County	Montana	115983	17.2700086788915	2020/04/01 20:53:36
1631	1719593	30065	Musselshell County	Montana	4807	0.993063276792967	2020/04/01 20:53:36
1632	1720027	30067	Park County	Montana	16246	2.2382451014786	2020/04/01 20:53:36
1633	1719590	30069	Petroleum County	Montana	432	0.100745144084347	2020/04/01 20:53:36
1634	1720023	30071	Phillips County	Montana	4124	0.309754319083627	2020/04/01 20:53:36
1635	1719587	30073	Pondera County	Montana	6044	1.43644547037516	2020/04/01 20:53:36
1636	1719584	30075	Powder River County	Montana	1619	0.189527657125451	2020/04/01 20:53:36
1637	1720021	30077	Powell County	Montana	6861	1.13886461299252	2020/04/01 20:53:36
1638	1715847	30079	Prairie County	Montana	1342	0.298369404534263	2020/04/01 20:53:36
1639	1719582	30081	Ravalli County	Montana	41902	6.76640377808936	2020/04/01 20:53:36
1640	1715338	30083	Richland County	Montana	11360	2.10431503800759	2020/04/01 20:53:36
1641	1669428	30085	Roosevelt County	Montana	11228	1.84136756089834	2020/04/01 20:53:36
1642	1716795	30087	Rosebud County	Montana	9250	0.713128729279225	2020/04/01 20:53:36
1643	1719578	30089	Sanders County	Montana	11521	1.61146273488614	2020/04/01 20:53:36
1644	1677577	30091	Sheridan County	Montana	3574	0.823443132169081	2020/04/01 20:53:36
1645	1719575	30093	Silver Bow County	Montana	34814	18.7215497841525	2020/04/01 20:53:36
1646	1719572	30095	Stillwater County	Montana	9410	2.02211171510394	2020/04/01 20:53:36
1647	1719569	30097	Sweet Grass County	Montana	3653	0.760133428840551	2020/04/01 20:53:36
1648	1720018	30099	Teton County	Montana	6080	1.03341161101646	2020/04/01 20:53:36
1649	1719566	30101	Toole County	Montana	4976	1.00325234045333	2020/04/01 20:53:36
1650	1719563	30103	Treasure County	Montana	777	0.306812412218308	2020/04/01 20:53:36
1651	1678923	30105	Valley County	Montana	7532	0.590349696305137	2020/04/01 20:53:36
1652	1719560	30107	Wheatland County	Montana	2149	0.583300336172649	2020/04/01 20:53:36
1653	1696629	30109	Wibaux County	Montana	1175	0.510539111008718	2020/04/01 20:53:36
1654	1719558	30111	Yellowstone County	Montana	157816	23.1379782522651	2020/04/01 20:53:36
1655	835823	31001	Adams County	Nebraska	31583	21.6489607989518	2020/04/01 20:53:36
1656	835824	31003	Antelope County	Nebraska	6372	2.8699707526244	2020/04/01 20:53:36
1657	835825	31005	Arthur County	Nebraska	418	0.225609394168778	2020/04/01 20:53:36
1658	835826	31007	Banner County	Nebraska	696	0.360122313246362	2020/04/01 20:53:36
1659	835827	31009	Blaine County	Nebraska	480	0.260774045385267	2020/04/01 20:53:36
1660	835828	31011	Boone County	Nebraska	5313	2.98790994793715	2020/04/01 20:53:36
1661	835991	31013	Box Butte County	Nebraska	11089	3.98169516670638	2020/04/01 20:53:36
1662	835829	31015	Boyd County	Nebraska	2042	1.46021496413722	2020/04/01 20:53:36
1663	835830	31017	Brown County	Nebraska	2988	0.944584304636339	2020/04/01 20:53:36
1664	835831	31019	Buffalo County	Nebraska	49030	19.5519431720854	2020/04/01 20:53:36
1665	835832	31021	Burt County	Nebraska	6528	5.12723303791357	2020/04/01 20:53:36
1666	835833	31023	Butler County	Nebraska	8067	5.32515098283345	2020/04/01 20:53:36
1667	835834	31025	Cass County	Nebraska	25702	17.8048770287589	2020/04/01 20:53:36
1668	835835	31027	Cedar County	Nebraska	8523	4.44549923790723	2020/04/01 20:53:36
1669	835836	31029	Chase County	Nebraska	3734	1.61189125278363	2020/04/01 20:53:36
1670	835837	31031	Cherry County	Nebraska	5790	0.375076077963537	2020/04/01 20:53:36
1671	835838	31033	Cheyenne County	Nebraska	9852	3.17973873678606	2020/04/01 20:53:36
1672	835839	31035	Clay County	Nebraska	6232	4.20449580583597	2020/04/01 20:53:36
1673	835840	31037	Colfax County	Nebraska	10760	10.0922905170012	2020/04/01 20:53:36
1674	835841	31039	Cuming County	Nebraska	8991	6.08465230596053	2020/04/01 20:53:36
1675	835842	31041	Custer County	Nebraska	10830	1.62350383541808	2020/04/01 20:53:36
1676	835843	31043	Dakota County	Nebraska	20317	29.684874810546	2020/04/01 20:53:36
1677	835844	31045	Dawes County	Nebraska	8896	2.45958142146636	2020/04/01 20:53:36
1678	835845	31047	Dawson County	Nebraska	23804	9.07203621083664	2020/04/01 20:53:36
1679	835846	31049	Deuel County	Nebraska	1894	1.66255713091417	2020/04/01 20:53:36
1680	835847	31051	Dixon County	Nebraska	5746	4.65972492161369	2020/04/01 20:53:36
1681	835848	31053	Dodge County	Nebraska	36683	26.7706484394887	2020/04/01 20:53:36
1682	835849	31055	Douglas County	Nebraska	554992	656.484639494118	2020/04/01 20:53:36
1683	835850	31057	Dundy County	Nebraska	2023	0.849301948379989	2020/04/01 20:53:36
1684	835851	31059	Fillmore County	Nebraska	5574	3.74043053727109	2020/04/01 20:53:36
1685	835852	31061	Franklin County	Nebraska	3006	2.01561550842734	2020/04/01 20:53:36
1686	835853	31063	Frontier County	Nebraska	2609	1.03356072085152	2020/04/01 20:53:36
1687	835854	31065	Furnas County	Nebraska	4786	2.56960606739551	2020/04/01 20:53:36
1688	835855	31067	Gage County	Nebraska	21595	9.79242862750191	2020/04/01 20:53:36
1689	835856	31069	Garden County	Nebraska	1860	0.421092293754498	2020/04/01 20:53:36
1690	835857	31071	Garfield County	Nebraska	1975	1.33938409513559	2020/04/01 20:53:36
1691	835858	31073	Gosper County	Nebraska	2015	1.69810587211778	2020/04/01 20:53:36
1692	835859	31075	Grant County	Nebraska	718	0.356844403233345	2020/04/01 20:53:36
1693	835860	31077	Greeley County	Nebraska	2410	1.63300795150737	2020/04/01 20:53:36
1694	835861	31079	Hall County	Nebraska	61343	43.3474635102023	2020/04/01 20:53:36
1695	835862	31081	Hamilton County	Nebraska	9178	6.53932354132214	2020/04/01 20:53:36
1696	835863	31083	Harlan County	Nebraska	3438	2.39837380879922	2020/04/01 20:53:36
1697	835864	31085	Hayes County	Nebraska	943	0.510607003899133	2020/04/01 20:53:36
1698	835865	31087	Hitchcock County	Nebraska	2843	1.54616519453113	2020/04/01 20:53:36
1699	835866	31089	Holt County	Nebraska	10245	1.63970399411138	2020/04/01 20:53:36
1700	835867	31091	Hooker County	Nebraska	691	0.369954721669927	2020/04/01 20:53:36
1701	835868	31093	Howard County	Nebraska	6405	4.34361427159064	2020/04/01 20:53:36
1702	835869	31095	Jefferson County	Nebraska	7188	4.86749085015327	2020/04/01 20:53:36
1703	835870	31097	Johnson County	Nebraska	5197	5.33560115033384	2020/04/01 20:53:36
1704	835871	31099	Kearney County	Nebraska	6552	4.90029067362028	2020/04/01 20:53:36
1705	835872	31101	Keith County	Nebraska	8099	2.94559231852661	2020/04/01 20:53:36
1706	835873	31103	Keya Paha County	Nebraska	792	0.395553505926919	2020/04/01 20:53:36
1707	835874	31105	Kimball County	Nebraska	3667	1.48746439864802	2020/04/01 20:53:36
1708	835875	31107	Knox County	Nebraska	8460	2.9468558549844	2020/04/01 20:53:36
1709	835876	31109	Lancaster County	Nebraska	310094	142.947394477437	2020/04/01 20:53:36
1710	835877	31111	Lincoln County	Nebraska	35433	5.33543314668161	2020/04/01 20:53:36
1711	835878	31113	Logan County	Nebraska	886	0.599457131216018	2020/04/01 20:53:36
1712	835879	31115	Loup County	Nebraska	585	0.400818444954463	2020/04/01 20:53:36
1713	835881	31117	McPherson County	Nebraska	454	0.204069378950085	2020/04/01 20:53:36
1714	835880	31119	Madison County	Nebraska	35164	23.7100431637209	2020/04/01 20:53:36
1715	835882	31121	Merrick County	Nebraska	7803	6.20097582459099	2020/04/01 20:53:36
1716	835883	31123	Morrill County	Nebraska	4841	1.31273476355259	2020/04/01 20:53:36
1717	835884	31125	Nance County	Nebraska	3554	3.1071153203989	2020/04/01 20:53:36
1718	835885	31127	Nemaha County	Nebraska	7004	6.63822944204127	2020/04/01 20:53:36
1719	835886	31129	Nuckolls County	Nebraska	4275	2.86981090350074	2020/04/01 20:53:36
1720	835887	31131	Otoe County	Nebraska	15896	9.96888388117061	2020/04/01 20:53:36
1721	835888	31133	Pawnee County	Nebraska	2676	2.39682247547942	2020/04/01 20:53:36
1722	835889	31135	Perkins County	Nebraska	2907	1.27063746410747	2020/04/01 20:53:36
1723	835890	31137	Phelps County	Nebraska	9120	6.5233784931424	2020/04/01 20:53:36
1724	835891	31139	Pierce County	Nebraska	7157	4.82047882841994	2020/04/01 20:53:36
1725	835892	31141	Platte County	Nebraska	33063	18.9373963709792	2020/04/01 20:53:36
1726	835893	31143	Polk County	Nebraska	5255	4.62869233044292	2020/04/01 20:53:36
1727	835894	31145	Red Willow County	Nebraska	10806	5.81894875039885	2020/04/01 20:53:36
1728	835895	31147	Richardson County	Nebraska	8009	5.60359394491297	2020/04/01 20:53:36
1729	835896	31149	Rock County	Nebraska	1350	0.516950977246272	2020/04/01 20:53:36
1730	835897	31151	Saline County	Nebraska	14288	9.60982096368844	2020/04/01 20:53:36
1731	835898	31153	Sarpy County	Nebraska	178351	289.149894802232	2020/04/01 20:53:36
1732	835899	31155	Saunders County	Nebraska	21024	10.8190627606384	2020/04/01 20:53:36
1733	835900	31157	Scotts Bluff County	Nebraska	36255	18.9313308782629	2020/04/01 20:53:36
1734	835901	31159	Seward County	Nebraska	17127	11.5723311541851	2020/04/01 20:53:36
1735	835902	31161	Sheridan County	Nebraska	5234	0.827895093745511	2020/04/01 20:53:36
1736	835903	31163	Sherman County	Nebraska	3042	2.07575732093524	2020/04/01 20:53:36
1737	835904	31165	Sioux County	Nebraska	1266	0.236515050802556	2020/04/01 20:53:36
1738	835905	31167	Stanton County	Nebraska	5992	5.41038032263963	2020/04/01 20:53:36
1739	835906	31169	Thayer County	Nebraska	5098	3.43033265513656	2020/04/01 20:53:36
1740	835907	31171	Thomas County	Nebraska	645	0.34932772191334	2020/04/01 20:53:36
1741	835908	31173	Thurston County	Nebraska	7140	7.00427630982834	2020/04/01 20:53:36
1742	835909	31175	Valley County	Nebraska	4224	2.87072990488744	2020/04/01 20:53:36
1743	835910	31177	Washington County	Nebraska	20219	20.0191076089956	2020/04/01 20:53:36
1744	835911	31179	Wayne County	Nebraska	9367	8.1654747626223	2020/04/01 20:53:36
1745	835912	31181	Webster County	Nebraska	3571	2.39822492994331	2020/04/01 20:53:36
1746	835913	31183	Wheeler County	Nebraska	822	0.551782333629999	2020/04/01 20:53:36
1747	835914	31185	York County	Nebraska	13799	9.30608276349161	2020/04/01 20:53:36
1748	858638	32001	Churchill County	Nevada	24010	1.88016907180365	2020/04/01 20:53:36
1749	863600	32003	Clark County	Nevada	2141574	104.777362384789	2020/04/01 20:53:36
1750	858643	32005	Douglas County	Nevada	47828	26.0193516637678	2020/04/01 20:53:36
1751	857664	32007	Elko County	Nevada	52252	1.17504652080958	2020/04/01 20:53:36
1752	858641	32009	Esmeralda County	Nevada	981	0.105744821409066	2020/04/01 20:53:36
1753	858640	32011	Eureka County	Nevada	1830	0.169210084482198	2020/04/01 20:53:36
1754	863310	32013	Humboldt County	Nevada	16904	0.676985020197229	2020/04/01 20:53:36
1755	863368	32015	Lander County	Nevada	5746	0.40409748685421	2020/04/01 20:53:36
1756	863992	32017	Lincoln County	Nevada	5174	0.187869851263538	2020/04/01 20:53:36
1757	858645	32019	Lyon County	Nevada	53155	10.2553006223409	2020/04/01 20:53:36
1758	858644	32021	Mineral County	Nevada	4448	0.457621869471935	2020/04/01 20:53:36
1759	863599	32023	Nye County	Nevada	43705	0.928097867904669	2020/04/01 20:53:36
1760	858646	32027	Pershing County	Nevada	6611	0.422841717709699	2020/04/01 20:53:36
1761	858642	32029	Storey County	Nevada	3941	5.76438580987713	2020/04/01 20:53:36
1762	858608	32031	Washoe County	Nevada	450486	27.6022977726726	2020/04/01 20:53:36
1763	858615	32033	White Pine County	Nevada	9737	0.423622182525409	2020/04/01 20:53:36
1764	863219	32510	Carson City	Nevada	54467	145.372151346259	2020/04/01 20:53:36
1765	873174	33001	Belknap County	New Hampshire	60640	58.2644725063166	2020/04/01 20:53:36
1766	873175	33003	Carroll County	New Hampshire	47840	19.8217429003634	2020/04/01 20:53:36
1767	873176	33005	Cheshire County	New Hampshire	76263	41.6654089727979	2020/04/01 20:53:36
1768	873177	33007	Coos County	New Hampshire	32038	6.89299389344942	2020/04/01 20:53:36
1769	873178	33009	Grafton County	New Hampshire	89811	20.2951261468896	2020/04/01 20:53:36
1770	873179	33011	Hillsborough County	New Hampshire	411087	181.077080499526	2020/04/01 20:53:36
1771	873180	33013	Merrimack County	New Hampshire	149452	61.855704143937	2020/04/01 20:53:36
1772	873181	33015	Rockingham County	New Hampshire	305129	169.417981016389	2020/04/01 20:53:36
1773	873182	33017	Strafford County	New Hampshire	128237	134.708387712718	2020/04/01 20:53:36
1774	873183	33019	Sullivan County	New Hampshire	43125	30.9754478164126	2020/04/01 20:53:36
1775	882270	34001	Atlantic County	New Jersey	268539	186.644512578803	2020/04/01 20:53:36
1776	882271	34003	Bergen County	New Jersey	929999	1542.51463078774	2020/04/01 20:53:36
1777	882272	34005	Burlington County	New Jersey	446367	215.610717844953	2020/04/01 20:53:36
1778	882273	34007	Camden County	New Jersey	507367	885.001303194233	2020/04/01 20:53:36
1779	882274	34009	Cape May County	New Jersey	93705	143.851131841752	2020/04/01 20:53:36
1780	882275	34011	Cumberland County	New Jersey	153400	122.533902077342	2020/04/01 20:53:36
1781	882276	34013	Essex County	New Jersey	793555	2430.06238473315	2020/04/01 20:53:36
1782	882277	34015	Gloucester County	New Jersey	290852	348.783328002467	2020/04/01 20:53:36
1783	882278	34017	Hudson County	New Jersey	668631	5589.05694996684	2020/04/01 20:53:36
1784	882228	34019	Hunterdon County	New Jersey	125051	112.855259073167	2020/04/01 20:53:36
1785	882229	34021	Mercer County	New Jersey	368762	634.394958878231	2020/04/01 20:53:36
1786	882230	34023	Middlesex County	New Jersey	826698	1032.24836604565	2020/04/01 20:53:36
1787	882910	34025	Monmouth County	New Jersey	623387	514.106567301996	2020/04/01 20:53:36
1788	882231	34027	Morris County	New Jersey	494383	414.453485239917	2020/04/01 20:53:36
1789	882279	34029	Ocean County	New Jersey	591939	363.721800368882	2020/04/01 20:53:36
1790	882232	34031	Passaic County	New Jersey	504041	1046.23333809151	2020/04/01 20:53:36
1791	882233	34033	Salem County	New Jersey	63336	73.6916046347258	2020/04/01 20:53:36
1792	882234	34035	Somerset County	New Jersey	330176	422.319081502863	2020/04/01 20:53:36
1793	882236	34037	Sussex County	New Jersey	142298	105.91748959082	2020/04/01 20:53:36
1794	882235	34039	Union County	New Jersey	553066	2077.9430593196	2020/04/01 20:53:36
1795	882237	34041	Warren County	New Jersey	106293	115.107623911917	2020/04/01 20:53:36
1796	1702363	35001	Bernalillo County	New Mexico	677692	225.323559582085	2020/04/01 20:53:36
1797	929108	35003	Catron County	New Mexico	3539	0.197339545334343	2020/04/01 20:53:36
1798	1702364	35005	Chaves County	New Mexico	65459	4.16568365806523	2020/04/01 20:53:36
1799	933051	35006	Cibola County	New Mexico	26978	2.29433925414903	2020/04/01 20:53:36
1800	929117	35007	Colfax County	New Mexico	12353	1.26917293644793	2020/04/01 20:53:36
1801	933053	35009	Curry County	New Mexico	50199	13.7905624746818	2020/04/01 20:53:36
1802	933054	35011	De Baca County	New Mexico	2060	0.342373575520751	2020/04/01 20:53:36
1803	929109	35013	Doña Ana County	New Mexico	215338	21.8326251158127	2020/04/01 20:53:36
1804	936829	35015	Eddy County	New Mexico	57437	5.30993233632184	2020/04/01 20:53:36
1805	915980	35017	Grant County	New Mexico	28061	2.7351427146915	2020/04/01 20:53:36
1806	929111	35019	Guadalupe County	New Mexico	4382	0.558424840099128	2020/04/01 20:53:36
1807	933055	35021	Harding County	New Mexico	459	0.0833793050914616	2020/04/01 20:53:36
1808	929106	35023	Hidalgo County	New Mexico	4371	0.490812579485854	2020/04/01 20:53:36
1809	1702365	35025	Lea County	New Mexico	70126	6.16554632882984	2020/04/01 20:53:36
1810	929116	35027	Lincoln County	New Mexico	19482	1.55699925634728	2020/04/01 20:53:36
1811	1702366	35028	Los Alamos County	New Mexico	18356	64.9018605269554	2020/04/01 20:53:36
1812	933057	35029	Luna County	New Mexico	24264	3.15939771804422	2020/04/01 20:53:36
1813	929107	35031	McKinley County	New Mexico	72849	5.16030339625025	2020/04/01 20:53:36
1814	1702367	35033	Mora County	New Mexico	4563	0.914618966858049	2020/04/01 20:53:36
1815	929104	35035	Otero County	New Mexico	65745	3.83879753290973	2020/04/01 20:53:36
1816	929110	35037	Quay County	New Mexico	8373	1.12489908444062	2020/04/01 20:53:36
1817	1702368	35039	Rio Arriba County	New Mexico	39307	2.589464260407	2020/04/01 20:53:36
1818	1702369	35041	Roosevelt County	New Mexico	19117	3.0175638902858	2020/04/01 20:53:36
1819	929113	35043	Sandoval County	New Mexico	140769	14.6494872160229	2020/04/01 20:53:36
1820	936844	35045	San Juan County	New Mexico	127455	8.9194931305282	2020/04/01 20:53:36
1821	929114	35047	San Miguel County	New Mexico	28034	2.29248222295196	2020/04/01 20:53:36
1822	933322	35049	Santa Fe County	New Mexico	148917	30.1017089438977	2020/04/01 20:53:36
1823	1702370	35051	Sierra County	New Mexico	11135	1.0282338731565	2020/04/01 20:53:36
1824	1702371	35053	Socorro County	New Mexico	17000	0.987564720796829	2020/04/01 20:53:36
1825	933056	35055	Taos County	New Mexico	32888	5.76565772966595	2020/04/01 20:53:36
1826	929112	35057	Torrance County	New Mexico	15595	1.79996145030814	2020/04/01 20:53:36
1827	929115	35059	Union County	New Mexico	4175	0.421424885932035	2020/04/01 20:53:36
1828	933052	35061	Valencia County	New Mexico	75956	27.4918596066579	2020/04/01 20:53:36
1829	974099	36001	Albany County	New York	307426	227.02996827927	2020/04/01 20:53:36
1830	974100	36003	Allegany County	New York	47025	17.6385883759066	2020/04/01 20:53:36
1831	974101	36005	Bronx County	New York	1437872	13202.5153048954	2020/04/01 20:53:36
1832	974102	36007	Broome County	New York	194402	106.343621292156	2020/04/01 20:53:36
1833	974103	36009	Cattaraugus County	New York	77686	22.9255780072106	2020/04/01 20:53:36
1834	974104	36011	Cayuga County	New York	77868	43.4727628017028	2020/04/01 20:53:36
1835	974105	36013	Chautauqua County	New York	129656	47.2168675892309	2020/04/01 20:53:36
1836	974106	36015	Chemung County	New York	85740	81.2673542091461	2020/04/01 20:53:36
1837	974107	36017	Chenango County	New York	48348	20.8901345708223	2020/04/01 20:53:36
1838	974108	36019	Clinton County	New York	80794	30.0598474694122	2020/04/01 20:53:36
1839	974109	36021	Columbia County	New York	60919	37.0605209147466	2020/04/01 20:53:36
1840	974110	36023	Cortland County	New York	48123	37.2522156947986	2020/04/01 20:53:36
1841	974111	36025	Delaware County	New York	45502	12.1798207601281	2020/04/01 20:53:36
1842	974112	36027	Dutchess County	New York	293894	142.617335504333	2020/04/01 20:53:36
1843	974113	36029	Erie County	New York	919866	340.609971003819	2020/04/01 20:53:36
1844	974114	36031	Essex County	New York	37751	8.12418289523024	2020/04/01 20:53:36
1845	974115	36033	Franklin County	New York	50692	12.0133370232406	2020/04/01 20:53:36
1846	974116	36035	Fulton County	New York	53743	41.8808819984544	2020/04/01 20:53:36
1847	974117	36037	Genesee County	New York	58112	45.5173396120714	2020/04/01 20:53:36
1848	974118	36039	Greene County	New York	47617	28.4087164523863	2020/04/01 20:53:36
1849	974119	36041	Hamilton County	New York	4575	1.02855627642957	2020/04/01 20:53:36
1850	974120	36043	Herkimer County	New York	62505	17.0974541263038	2020/04/01 20:53:36
1851	974121	36045	Jefferson County	New York	114448	34.8299627651909	2020/04/01 20:53:36
1852	974122	36047	Kings County	New York	2600747	14475.0254388117	2020/04/01 20:53:36
1853	974123	36049	Lewis County	New York	26719	8.09346087624435	2020/04/01 20:53:36
1854	974124	36051	Livingston County	New York	63907	39.0568321228063	2020/04/01 20:53:36
1855	974125	36053	Madison County	New York	71359	42.0726108242752	2020/04/01 20:53:36
1856	974126	36055	Monroe County	New York	744248	437.46040770619	2020/04/01 20:53:36
1857	974127	36057	Montgomery County	New York	49426	47.3398750969587	2020/04/01 20:53:36
1858	974128	36059	Nassau County	New York	1356564	1840.44398406769	2020/04/01 20:53:36
1859	974129	36061	New York County	New York	1632480	27819.8048012476	2020/04/01 20:53:36
1860	974130	36063	Niagara County	New York	211704	156.483123086658	2020/04/01 20:53:36
1861	974131	36065	Oneida County	New York	230782	73.4992781713988	2020/04/01 20:53:36
1862	974132	36067	Onondaga County	New York	464242	230.277362248048	2020/04/01 20:53:36
1863	974133	36069	Ontario County	New York	109472	65.6280504128795	2020/04/01 20:53:36
1864	974134	36071	Orange County	New York	378227	179.774078339202	2020/04/01 20:53:36
1865	974135	36073	Orleans County	New York	41175	40.6318800387275	2020/04/01 20:53:36
1866	974136	36075	Oswego County	New York	119104	48.3229962298602	2020/04/01 20:53:36
1867	974137	36077	Otsego County	New York	60244	23.2202272251944	2020/04/01 20:53:36
1868	974138	36079	Putnam County	New York	99070	166.078240580631	2020/04/01 20:53:36
1869	974139	36081	Queens County	New York	2298513	8158.43715313306	2020/04/01 20:53:36
1870	974140	36083	Rensselaer County	New York	159431	94.346143197678	2020/04/01 20:53:36
1871	974141	36085	Richmond County	New York	474101	3182.46932315142	2020/04/01 20:53:36
1872	974142	36087	Rockland County	New York	323686	720.588009040727	2020/04/01 20:53:36
1873	977309	36089	St. Lawrence County	New York	109558	15.7881056115879	2020/04/01 20:53:36
1874	974143	36091	Saratoga County	New York	227377	108.384222279145	2020/04/01 20:53:36
1875	974144	36093	Schenectady County	New York	154883	292.309965598494	2020/04/01 20:53:36
1876	974145	36095	Schoharie County	New York	31364	19.474654153638	2020/04/01 20:53:36
1877	974146	36097	Schuyler County	New York	17992	21.1569680947136	2020/04/01 20:53:36
1878	974147	36099	Seneca County	New York	34612	41.2832183513443	2020/04/01 20:53:36
1879	974148	36101	Steuben County	New York	96927	26.9129173214039	2020/04/01 20:53:36
1880	974149	36103	Suffolk County	New York	1487901	630.068153353716	2020/04/01 20:53:36
1881	974150	36105	Sullivan County	New York	75211	29.9948504938301	2020/04/01 20:53:36
1882	974151	36107	Tioga County	New York	49045	36.5136992174151	2020/04/01 20:53:36
1883	974152	36109	Tompkins County	New York	102962	83.7555901184546	2020/04/01 20:53:36
1884	974153	36111	Ulster County	New York	179303	61.5789541709678	2020/04/01 20:53:36
1885	974154	36113	Warren County	New York	64480	28.7068420833038	2020/04/01 20:53:36
1886	974155	36115	Washington County	New York	61828	28.7209593371976	2020/04/01 20:53:36
1887	974156	36117	Wayne County	New York	90856	58.0953851283472	2020/04/01 20:53:36
1888	974157	36119	Westchester County	New York	968815	868.763066558485	2020/04/01 20:53:36
1889	974158	36121	Wyoming County	New York	40565	26.4229817375352	2020/04/01 20:53:36
1890	974159	36123	Yates County	New York	25009	28.5560729556019	2020/04/01 20:53:36
1891	1008531	37001	Alamance County	North Carolina	160576	146.419511656808	2020/04/01 20:53:36
1892	1008532	37003	Alexander County	North Carolina	37119	55.1251943672117	2020/04/01 20:53:36
1893	1008533	37005	Alleghany County	North Carolina	10973	18.0744226914008	2020/04/01 20:53:36
1894	1008534	37007	Anson County	North Carolina	25306	18.384600030883	2020/04/01 20:53:36
1895	1008535	37009	Ashe County	North Carolina	26786	24.3309623025848	2020/04/01 20:53:36
1896	1008536	37011	Avery County	North Carolina	17501	27.3196093577784	2020/04/01 20:53:36
1897	1026333	37013	Beaufort County	North Carolina	47243	21.92453498485	2020/04/01 20:53:36
1898	1026334	37015	Bertie County	North Carolina	19644	10.8478928891382	2020/04/01 20:53:36
1899	1026336	37017	Bladen County	North Carolina	33778	14.9071817006354	2020/04/01 20:53:36
1900	1026340	37019	Brunswick County	North Carolina	126860	57.6797613439357	2020/04/01 20:53:36
1901	1008538	37021	Buncombe County	North Carolina	254474	149.662506090872	2020/04/01 20:53:36
1902	1008539	37023	Burke County	North Carolina	89712	68.4225402243607	2020/04/01 20:53:36
1903	1008540	37025	Cabarrus County	North Carolina	201448	215.313756332703	2020/04/01 20:53:36
1904	1008541	37027	Caldwell County	North Carolina	81779	66.9117179161751	2020/04/01 20:53:36
1905	1026335	37029	Camden County	North Carolina	10447	16.7837129422984	2020/04/01 20:53:36
1906	1026337	37031	Carteret County	North Carolina	68920	52.422756044479	2020/04/01 20:53:36
1907	1008542	37033	Caswell County	North Carolina	22746	20.6464107271961	2020/04/01 20:53:36
1908	1008543	37035	Catawba County	North Carolina	156729	150.766073781543	2020/04/01 20:53:36
1909	1008544	37037	Chatham County	North Carolina	69791	39.527301860128	2020/04/01 20:53:36
1910	1008545	37039	Cherokee County	North Carolina	27668	23.4507535709125	2020/04/01 20:53:36
1911	1025822	37041	Chowan County	North Carolina	14205	31.7657369635657	2020/04/01 20:53:36
1912	1008546	37043	Clay County	North Carolina	10813	19.4197421979206	2020/04/01 20:53:36
1913	1008547	37045	Cleveland County	North Carolina	97159	80.811658964755	2020/04/01 20:53:36
1914	1026339	37047	Columbus County	North Carolina	56293	23.1686056433617	2020/04/01 20:53:36
1915	1026123	37049	Craven County	North Carolina	103082	56.326585997887	2020/04/01 20:53:36
1916	1026124	37051	Cumberland County	North Carolina	332106	196.497859730551	2020/04/01 20:53:36
1917	1026125	37053	Currituck County	North Carolina	25796	38.0238775623596	2020/04/01 20:53:36
1918	1026133	37055	Dare County	North Carolina	35741	36.0092919105878	2020/04/01 20:53:36
1919	1008548	37057	Davidson County	North Carolina	164664	114.931699340305	2020/04/01 20:53:36
1920	1008549	37059	Davie County	North Carolina	41991	61.4831330598108	2020/04/01 20:53:36
1921	1026132	37061	Duplin County	North Carolina	59062	27.9893416461902	2020/04/01 20:53:36
1922	1008550	37063	Durham County	North Carolina	306457	413.06619308612	2020/04/01 20:53:36
1923	1008551	37065	Edgecombe County	North Carolina	53332	40.7405047681012	2020/04/01 20:53:36
1924	1008552	37067	Forsyth County	North Carolina	371573	351.818409000107	2020/04/01 20:53:36
1925	1008553	37069	Franklin County	North Carolina	64902	50.9532015099171	2020/04/01 20:53:36
1926	1008554	37071	Gaston County	North Carolina	216585	235.083409533329	2020/04/01 20:53:36
1927	1026126	37073	Gates County	North Carolina	11563	13.1072768685675	2020/04/01 20:53:36
1928	1008555	37075	Graham County	North Carolina	8557	11.3159965645021	2020/04/01 20:53:36
1929	1008556	37077	Granville County	North Carolina	58874	42.7288844667276	2020/04/01 20:53:36
1930	1008557	37079	Greene County	North Carolina	21008	30.4088689701276	2020/04/01 20:53:36
1931	1008558	37081	Guilford County	North Carolina	523582	312.988330289208	2020/04/01 20:53:36
1932	1008559	37083	Halifax County	North Carolina	51737	27.6009041605302	2020/04/01 20:53:36
1933	1008560	37085	Harnett County	North Carolina	130361	84.588975370979	2020/04/01 20:53:36
1934	1008561	37087	Haywood County	North Carolina	60433	42.151368754817	2020/04/01 20:53:36
1935	1008562	37089	Henderson County	North Carolina	113625	117.63824081995	2020/04/01 20:53:36
1936	1026127	37091	Hertford County	North Carolina	24153	26.4056869512436	2020/04/01 20:53:36
1937	1008563	37093	Hoke County	North Carolina	53239	52.6909917661792	2020/04/01 20:53:36
1938	1008564	37095	Hyde County	North Carolina	5393	3.4005168802052	2020/04/01 20:53:36
1939	1008565	37097	Iredell County	North Carolina	172525	116.010548681675	2020/04/01 20:53:36
1940	1008566	37099	Jackson County	North Carolina	42256	33.2153382599592	2020/04/01 20:53:36
1941	1026327	37101	Johnston County	North Carolina	191172	93.2873152867288	2020/04/01 20:53:36
1942	1026338	37103	Jones County	North Carolina	9695	7.94127332458665	2020/04/01 20:53:36
1943	1008567	37105	Lee County	North Carolina	60125	91.0147226202465	2020/04/01 20:53:36
1944	1008568	37107	Lenoir County	North Carolina	57227	55.3650714833485	2020/04/01 20:53:36
1945	1008569	37109	Lincoln County	North Carolina	81441	106.288568138999	2020/04/01 20:53:36
1946	1025836	37111	McDowell County	North Carolina	45109	39.5874415520614	2020/04/01 20:53:36
1947	1025833	37113	Macon County	North Carolina	34410	25.7683988640691	2020/04/01 20:53:36
1948	1025834	37115	Madison County	North Carolina	21405	18.3813154925015	2020/04/01 20:53:36
1949	1026328	37117	Martin County	North Carolina	23054	19.5020000597867	2020/04/01 20:53:36
1950	1008570	37119	Mecklenburg County	North Carolina	1054314	777.490679020465	2020/04/01 20:53:36
1951	1008571	37121	Mitchell County	North Carolina	15040	26.2459688224904	2020/04/01 20:53:36
1952	1008572	37123	Montgomery County	North Carolina	27338	21.474539034621	2020/04/01 20:53:36
1953	1008573	37125	Moore County	North Carolina	95629	52.9220807721414	2020/04/01 20:53:36
1954	1008574	37127	Nash County	North Carolina	94003	67.1574810739487	2020/04/01 20:53:36
1955	1026329	37129	New Hanover County	North Carolina	224231	450.441761812079	2020/04/01 20:53:36
1956	1008575	37131	Northampton County	North Carolina	20186	14.5233689362914	2020/04/01 20:53:36
1957	1026341	37133	Onslow County	North Carolina	193912	98.2620127432532	2020/04/01 20:53:36
1958	1008576	37135	Orange County	North Carolina	142938	138.828001863802	2020/04/01 20:53:36
1959	1023355	37137	Pamlico County	North Carolina	12742	14.6201718871648	2020/04/01 20:53:36
1960	1026330	37139	Pasquotank County	North Carolina	39479	67.1849808371005	2020/04/01 20:53:36
1961	1026129	37141	Pender County	North Carolina	59020	26.1538678361341	2020/04/01 20:53:36
1962	1025841	37143	Perquimans County	North Carolina	13459	21.0264128004752	2020/04/01 20:53:36
1963	1008577	37145	Person County	North Carolina	39305	38.6806351354581	2020/04/01 20:53:36
1964	1008578	37147	Pitt County	North Carolina	177372	104.977444524324	2020/04/01 20:53:36
1965	1008579	37149	Polk County	North Carolina	20458	33.2322778392825	2020/04/01 20:53:36
1966	1008580	37151	Randolph County	North Carolina	142958	70.5548752774753	2020/04/01 20:53:36
1967	1008581	37153	Richmond County	North Carolina	45189	36.8322533514693	2020/04/01 20:53:36
1968	1026130	37155	Robeson County	North Carolina	133442	54.3898502965123	2020/04/01 20:53:36
1969	1008582	37157	Rockingham County	North Carolina	91270	62.3011904217537	2020/04/01 20:53:36
1970	1008583	37159	Rowan County	North Carolina	139605	105.384269738565	2020/04/01 20:53:36
1971	1008584	37161	Rutherford County	North Carolina	66532	45.4305763206679	2020/04/01 20:53:36
1972	1026131	37163	Sampson County	North Carolina	63561	25.9500712789802	2020/04/01 20:53:36
1973	1008585	37165	Scotland County	North Carolina	35262	42.660629832262	2020/04/01 20:53:36
1974	1025844	37167	Stanly County	North Carolina	61114	59.7183546413079	2020/04/01 20:53:36
1975	1008586	37169	Stokes County	North Carolina	45905	39.4732311618611	2020/04/01 20:53:36
1976	1008587	37171	Surry County	North Carolina	72099	52.1554812049529	2020/04/01 20:53:36
1977	1008588	37173	Swain County	North Carolina	14254	10.4286588652953	2020/04/01 20:53:36
1978	1008589	37175	Transylvania County	North Carolina	33513	34.1920020784264	2020/04/01 20:53:36
1979	1026332	37177	Tyrrell County	North Carolina	4119	4.0697401943367	2020/04/01 20:53:36
1980	1008590	37179	Union County	North Carolina	226694	138.34154055311	2020/04/01 20:53:36
1981	1008591	37181	Vance County	North Carolina	44482	68.0456695818943	2020/04/01 20:53:36
1982	1008592	37183	Wake County	North Carolina	1046558	484.029322859142	2020/04/01 20:53:36
1983	1008593	37185	Warren County	North Carolina	20033	18.0248036504099	2020/04/01 20:53:36
1984	1026331	37187	Washington County	North Carolina	12156	13.5449506720942	2020/04/01 20:53:36
1985	1008594	37189	Watauga County	North Carolina	54117	66.8804341673574	2020/04/01 20:53:36
1986	1026128	37191	Wayne County	North Carolina	124002	86.4343321131916	2020/04/01 20:53:36
1987	1008595	37193	Wilkes County	North Carolina	68460	35.0313463388409	2020/04/01 20:53:36
1988	1008596	37195	Wilson County	North Carolina	81336	85.4358274190614	2020/04/01 20:53:36
1989	1008597	37197	Yadkin County	North Carolina	37665	43.4180624285547	2020/04/01 20:53:36
1990	1008598	37199	Yancey County	North Carolina	17667	21.8216170882478	2020/04/01 20:53:36
1991	1034210	38001	Adams County	North Dakota	2351	0.919113297788114	2020/04/01 20:53:36
1992	1034225	38003	Barnes County	North Dakota	10836	2.80499578011216	2020/04/01 20:53:36
1993	1034216	38005	Benson County	North Dakota	6886	1.91460249713335	2020/04/01 20:53:36
1994	1035616	38007	Billings County	North Dakota	946	0.317931699135699	2020/04/01 20:53:36
1995	1034227	38009	Bottineau County	North Dakota	6589	1.52480916299402	2020/04/01 20:53:36
1996	1035619	38011	Bowman County	North Dakota	3195	1.06170647327122	2020/04/01 20:53:36
1997	1034235	38013	Burke County	North Dakota	2213	0.774245881869597	2020/04/01 20:53:36
1998	1035614	38015	Burleigh County	North Dakota	93737	22.1694150960771	2020/04/01 20:53:36
1999	1034226	38017	Cass County	North Dakota	174202	38.1081885053288	2020/04/01 20:53:36
2000	1035304	38019	Cavalier County	North Dakota	3824	0.991599940895769	2020/04/01 20:53:36
2001	1035622	38021	Dickey County	North Dakota	4970	1.69595927758403	2020/04/01 20:53:36
2002	1034234	38023	Divide County	North Dakota	2369	0.725505176052825	2020/04/01 20:53:36
2003	1035623	38025	Dunn County	North Dakota	4387	0.843341808549415	2020/04/01 20:53:36
2004	1034222	38027	Eddy County	North Dakota	2313	1.41716309584588	2020/04/01 20:53:36
2005	1035615	38029	Emmons County	North Dakota	3352	0.857256795792447	2020/04/01 20:53:36
2006	1034223	38031	Foster County	North Dakota	3290	1.99901516725355	2020/04/01 20:53:36
2007	1035617	38033	Golden Valley County	North Dakota	1882	0.72554998911702	2020/04/01 20:53:36
2008	1034218	38035	Grand Forks County	North Dakota	70400	18.9276221735599	2020/04/01 20:53:36
2009	1035300	38037	Grant County	North Dakota	2380	0.553851572497944	2020/04/01 20:53:36
2010	1034219	38039	Griggs County	North Dakota	2266	1.23432119502978	2020/04/01 20:53:36
2011	1034209	38041	Hettinger County	North Dakota	2576	0.878449452281907	2020/04/01 20:53:36
2012	1034206	38043	Kidder County	North Dakota	2460	0.702954020365038	2020/04/01 20:53:36
2013	1035621	38045	LaMoure County	North Dakota	4100	1.38141359058781	2020/04/01 20:53:36
2014	1035620	38047	Logan County	North Dakota	1927	0.74941875643218	2020/04/01 20:53:36
2015	1035305	38049	McHenry County	North Dakota	5927	1.22116722755205	2020/04/01 20:53:36
2016	1034211	38051	McIntosh County	North Dakota	2654	1.05127793966259	2020/04/01 20:53:36
2017	1035299	38053	McKenzie County	North Dakota	12536	1.75338081588635	2020/04/01 20:53:36
2018	1034232	38055	McLean County	North Dakota	9608	1.75786114272634	2020/04/01 20:53:36
2019	1034233	38057	Mercer County	North Dakota	8570	3.17347502424591	2020/04/01 20:53:36
2020	1034207	38059	Morton County	North Dakota	30544	6.1225449161909	2020/04/01 20:53:36
2021	1035307	38061	Mountrail County	North Dakota	10152	2.14744897585294	2020/04/01 20:53:36
2022	1034217	38063	Nelson County	North Dakota	2920	1.14834598045695	2020/04/01 20:53:36
2023	1034205	38065	Oliver County	North Dakota	1837	0.981672526624634	2020/04/01 20:53:36
2024	1034212	38067	Pembina County	North Dakota	7016	2.42147448337267	2020/04/01 20:53:36
2025	1034230	38069	Pierce County	North Dakota	4210	1.59603451917106	2020/04/01 20:53:36
2026	1034215	38071	Ramsey County	North Dakota	11557	3.75938343504136	2020/04/01 20:53:36
2027	1035301	38073	Ransom County	North Dakota	5361	2.40027492993507	2020/04/01 20:53:36
2028	1034229	38075	Renville County	North Dakota	2495	1.09836569079845	2020/04/01 20:53:36
2029	1035302	38077	Richland County	North Dakota	16288	4.3801330406787	2020/04/01 20:53:36
2030	1034228	38079	Rolette County	North Dakota	14603	6.24338972882285	2020/04/01 20:53:36
2031	1035303	38081	Sargent County	North Dakota	3883	1.7463308225589	2020/04/01 20:53:36
2032	1034203	38083	Sheridan County	North Dakota	1405	0.557880790336446	2020/04/01 20:53:36
2033	1034208	38085	Sioux County	North Dakota	4413	1.55733283129035	2020/04/01 20:53:36
2034	1035896	38087	Slope County	North Dakota	704	0.223737516972433	2020/04/01 20:53:36
2035	1035618	38089	Stark County	North Dakota	30876	8.93122458269547	2020/04/01 20:53:36
2036	1034220	38091	Steele County	North Dakota	1910	1.03544722265548	2020/04/01 20:53:36
2037	1034224	38093	Stutsman County	North Dakota	21064	3.6605656240347	2020/04/01 20:53:36
2038	1034213	38095	Towner County	North Dakota	2246	0.846399516903796	2020/04/01 20:53:36
2039	1034221	38097	Traill County	North Dakota	8019	3.59203720578654	2020/04/01 20:53:36
2040	1034214	38099	Walsh County	North Dakota	10802	3.2540982530479	2020/04/01 20:53:36
2041	1034231	38101	Ward County	North Dakota	69034	13.2409927690675	2020/04/01 20:53:36
2042	1034204	38103	Wells County	North Dakota	4055	1.23218211672348	2020/04/01 20:53:36
2043	1035306	38105	Williams County	North Dakota	34061	6.32886165573168	2020/04/01 20:53:36
2044	1074014	39001	Adams County	Ohio	27878	18.4352832657619	2020/04/01 20:53:36
2045	1074015	39003	Allen County	Ohio	103642	99.4187048510773	2020/04/01 20:53:36
2046	1074016	39005	Ashland County	Ohio	53477	48.8167186426681	2020/04/01 20:53:36
2047	1074017	39007	Ashtabula County	Ohio	98136	53.969510513038	2020/04/01 20:53:36
2048	1074018	39009	Athens County	Ohio	65936	50.5494189637301	2020/04/01 20:53:36
2049	1074019	39011	Auglaize County	Ohio	45784	44.0397677833372	2020/04/01 20:53:36
2050	1065575	39013	Belmont County	Ohio	68472	49.6822326302004	2020/04/01 20:53:36
2051	1074020	39015	Brown County	Ohio	43679	34.4162569031064	2020/04/01 20:53:36
2052	1074021	39017	Butler County	Ohio	378294	313.016928547515	2020/04/01 20:53:36
2053	1074022	39019	Carroll County	Ohio	27578	26.9835271545014	2020/04/01 20:53:36
2054	1074023	39021	Champaign County	Ohio	38864	34.9782585111882	2020/04/01 20:53:36
2055	1074024	39023	Clark County	Ohio	135198	131.532624418752	2020/04/01 20:53:36
2056	1074025	39025	Clermont County	Ohio	203216	173.546761211324	2020/04/01 20:53:36
2057	1074026	39027	Clinton County	Ohio	41896	39.5809491899527	2020/04/01 20:53:36
2058	1074027	39029	Columbiana County	Ohio	104003	75.4912065490403	2020/04/01 20:53:36
2059	1074028	39031	Coshocton County	Ohio	36574	25.0402023481677	2020/04/01 20:53:36
2060	1074029	39033	Crawford County	Ohio	42021	40.3807481048616	2020/04/01 20:53:36
2061	1074030	39035	Cuyahoga County	Ohio	1253783	1058.84554179091	2020/04/01 20:53:36
2062	1074031	39037	Darke County	Ohio	51734	33.3967624359682	2020/04/01 20:53:36
2063	1074032	39039	Defiance County	Ohio	38279	35.920803152486	2020/04/01 20:53:36
2064	1074033	39041	Delaware County	Ohio	197008	171.642744547238	2020/04/01 20:53:36
2065	1074034	39043	Erie County	Ohio	75136	115.378291813948	2020/04/01 20:53:36
2066	1074035	39045	Fairfield County	Ohio	152910	117.045501579965	2020/04/01 20:53:36
2067	1074036	39047	Fayette County	Ohio	28645	27.2169304102825	2020/04/01 20:53:36
2068	1074037	39049	Franklin County	Ohio	1275333	924.861776609585	2020/04/01 20:53:36
2069	1074038	39051	Fulton County	Ohio	42305	40.2866052232372	2020/04/01 20:53:36
2070	1074039	39053	Gallia County	Ohio	30195	24.9894714626977	2020/04/01 20:53:36
2071	1074040	39055	Geauga County	Ohio	93961	90.6280966440329	2020/04/01 20:53:36
2072	1074041	39057	Greene County	Ohio	165811	154.778116514004	2020/04/01 20:53:36
2073	1074042	39059	Guernsey County	Ohio	39274	29.0352610741459	2020/04/01 20:53:36
2074	1074043	39061	Hamilton County	Ohio	812037	772.343285716782	2020/04/01 20:53:36
2075	1074044	39063	Hancock County	Ohio	75690	55.0034762792898	2020/04/01 20:53:36
2076	1074045	39065	Hardin County	Ohio	31542	25.8892677212745	2020/04/01 20:53:36
2077	1074046	39067	Harrison County	Ohio	15307	14.689559052584	2020/04/01 20:53:36
2078	1074047	39069	Henry County	Ohio	27316	25.3521825455523	2020/04/01 20:53:36
2079	1074048	39071	Highland County	Ohio	43007	30.0227579025062	2020/04/01 20:53:36
2080	1074049	39073	Hocking County	Ohio	28495	26.1126864497589	2020/04/01 20:53:36
2081	1074050	39075	Holmes County	Ohio	43859	40.0756258373345	2020/04/01 20:53:36
2082	1074051	39077	Huron County	Ohio	58457	45.9219106083933	2020/04/01 20:53:36
2083	1074052	39079	Jackson County	Ohio	32524	29.8769355392935	2020/04/01 20:53:36
2084	1074053	39081	Jefferson County	Ohio	66886	63.2768752227228	2020/04/01 20:53:36
2085	1074054	39083	Knox County	Ohio	61215	44.9762141181138	2020/04/01 20:53:36
2086	1074055	39085	Lake County	Ohio	230052	387.418666869148	2020/04/01 20:53:36
2087	1074056	39087	Lawrence County	Ohio	60622	51.627258098107	2020/04/01 20:53:36
2088	1074057	39089	Licking County	Ohio	172293	97.4780761782376	2020/04/01 20:53:36
2089	1074058	39091	Logan County	Ohio	45307	38.1576236022572	2020/04/01 20:53:36
2090	1074059	39093	Lorain County	Ohio	306713	241.08129509919	2020/04/01 20:53:36
2091	1074060	39095	Lucas County	Ohio	432379	489.983386240699	2020/04/01 20:53:36
2092	1074061	39097	Madison County	Ohio	43988	36.4592338086711	2020/04/01 20:53:36
2093	1074062	39099	Mahoning County	Ohio	231064	216.799598646393	2020/04/01 20:53:36
2094	1074063	39101	Marion County	Ohio	65344	62.4866796002159	2020/04/01 20:53:36
2095	1074064	39103	Medina County	Ohio	177257	162.411533121168	2020/04/01 20:53:36
2096	1074065	39105	Meigs County	Ohio	23160	20.7907325672252	2020/04/01 20:53:36
2097	1074066	39107	Mercer County	Ohio	40806	34.069635322217	2020/04/01 20:53:36
2098	1074067	39109	Miami County	Ohio	104800	99.5387828704605	2020/04/01 20:53:36
2099	1074068	39111	Monroe County	Ohio	14090	11.9374632477151	2020/04/01 20:53:36
2100	1074069	39113	Montgomery County	Ohio	532034	445.121569410134	2020/04/01 20:53:36
2101	1074070	39115	Morgan County	Ohio	14702	13.631412170575	2020/04/01 20:53:36
2102	1074071	39117	Morrow County	Ohio	34976	33.250908106961	2020/04/01 20:53:36
2103	1074072	39119	Muskingum County	Ohio	86076	50.0104346438388	2020/04/01 20:53:36
2104	1074073	39121	Noble County	Ohio	14443	14.0108159541253	2020/04/01 20:53:36
2105	1074074	39123	Ottawa County	Ohio	40709	61.7017232509669	2020/04/01 20:53:36
2106	1074075	39125	Paulding County	Ohio	18872	17.4973838295914	2020/04/01 20:53:36
2107	1074076	39127	Perry County	Ohio	35985	34.0591478932931	2020/04/01 20:53:36
2108	1074077	39129	Pickaway County	Ohio	57420	44.2306063834961	2020/04/01 20:53:36
2109	1074078	39131	Pike County	Ohio	28214	24.7420807984543	2020/04/01 20:53:36
2110	1074079	39133	Portage County	Ohio	162644	128.840192813669	2020/04/01 20:53:36
2111	1074080	39135	Preble County	Ohio	41207	37.5038261852716	2020/04/01 20:53:36
2112	1074081	39137	Putnam County	Ohio	33969	27.1799056026972	2020/04/01 20:53:36
2113	1074082	39139	Richland County	Ohio	121324	94.5956252450296	2020/04/01 20:53:36
2114	1074083	39141	Ross County	Ohio	77051	43.1661499194689	2020/04/01 20:53:36
2115	1074084	39143	Sandusky County	Ohio	59299	56.0538590289127	2020/04/01 20:53:36
2116	1074085	39145	Scioto County	Ohio	76377	48.3249408274934	2020/04/01 20:53:36
2117	1074086	39147	Seneca County	Ohio	55475	38.871129619404	2020/04/01 20:53:36
2118	1074087	39149	Shelby County	Ohio	48797	46.2124746528171	2020/04/01 20:53:36
2119	1065576	39151	Stark County	Ohio	373475	250.643525700289	2020/04/01 20:53:36
2120	1074088	39153	Summit County	Ohio	541810	506.751899703031	2020/04/01 20:53:36
2121	1074089	39155	Trumbull County	Ohio	201794	126.065067290577	2020/04/01 20:53:36
2122	1074090	39157	Tuscarawas County	Ohio	92526	62.9582105518037	2020/04/01 20:53:36
2123	1074091	39159	Union County	Ohio	55654	49.7698621862733	2020/04/01 20:53:36
2124	1074092	39161	Van Wert County	Ohio	28281	26.6876878943665	2020/04/01 20:53:36
2125	1074093	39163	Vinton County	Ohio	13111	12.27625097666	2020/04/01 20:53:36
2126	1074094	39165	Warren County	Ohio	226564	218.011116294097	2020/04/01 20:53:36
2127	1074095	39167	Washington County	Ohio	60671	37.0667193396819	2020/04/01 20:53:36
2128	1074096	39169	Wayne County	Ohio	116208	80.8630720650407	2020/04/01 20:53:36
2129	1074097	39171	Williams County	Ohio	36936	33.9016693590068	2020/04/01 20:53:36
2130	1074098	39173	Wood County	Ohio	129936	81.2845796687061	2020/04/01 20:53:36
2131	1074099	39175	Wyandot County	Ohio	22107	20.9788847852032	2020/04/01 20:53:36
2132	1101788	40001	Adair County	Oklahoma	22113	14.8826668996061	2020/04/01 20:53:36
2133	1101789	40003	Alfalfa County	Oklahoma	5857	2.60994613199965	2020/04/01 20:53:36
2134	1101790	40005	Atoka County	Oklahoma	13874	5.49121113491028	2020/04/01 20:53:36
2135	1101791	40007	Beaver County	Oklahoma	5415	1.15212295180398	2020/04/01 20:53:36
2136	1101792	40009	Beckham County	Oklahoma	22621	9.6849110416624	2020/04/01 20:53:36
2137	1101793	40011	Blaine County	Oklahoma	9634	4.00647787837379	2020/04/01 20:53:36
2138	1101794	40013	Bryan County	Oklahoma	45759	19.5328713830096	2020/04/01 20:53:36
2139	1101795	40015	Caddo County	Oklahoma	29342	8.86577162656269	2020/04/01 20:53:36
2140	1101796	40017	Canadian County	Oklahoma	136710	58.868559083503	2020/04/01 20:53:36
2141	1101797	40019	Carter County	Oklahoma	48406	22.7318465494414	2020/04/01 20:53:36
2142	1101798	40021	Cherokee County	Oklahoma	48599	25.0422685864231	2020/04/01 20:53:36
2143	1101799	40023	Choctaw County	Oklahoma	14886	7.46084930977573	2020/04/01 20:53:36
2144	1101800	40025	Cimarron County	Oklahoma	2189	0.460637105653088	2020/04/01 20:53:36
2145	1101801	40027	Cleveland County	Oklahoma	276733	198.271980515853	2020/04/01 20:53:36
2146	1101802	40029	Coal County	Oklahoma	5618	4.19817443094779	2020/04/01 20:53:36
2147	1101803	40031	Comanche County	Oklahoma	122561	44.2546763206507	2020/04/01 20:53:36
2148	1101804	40033	Cotton County	Oklahoma	5929	3.61840619087878	2020/04/01 20:53:36
2149	1101805	40035	Craig County	Oklahoma	14493	7.3497752977738	2020/04/01 20:53:36
2150	1101806	40037	Creek County	Oklahoma	71160	28.9159445309776	2020/04/01 20:53:36
2151	1101807	40039	Custer County	Oklahoma	29209	11.4051645722199	2020/04/01 20:53:36
2152	1101808	40041	Delaware County	Oklahoma	42112	22.0279633067946	2020/04/01 20:53:36
2153	1101809	40043	Dewey County	Oklahoma	4918	1.89982956473682	2020/04/01 20:53:36
2154	1101810	40045	Ellis County	Oklahoma	4072	1.27664665205341	2020/04/01 20:53:36
2155	1101811	40047	Garfield County	Oklahoma	62190	22.6848346622173	2020/04/01 20:53:36
2156	1101812	40049	Garvin County	Oklahoma	27823	13.393610153477	2020/04/01 20:53:36
2157	1101813	40051	Grady County	Oklahoma	54733	19.2024849748002	2020/04/01 20:53:36
2158	1101814	40053	Grant County	Oklahoma	4418	1.70431434430551	2020/04/01 20:53:36
2159	1101815	40055	Greer County	Oklahoma	5943	3.58910840936676	2020/04/01 20:53:36
2160	1101816	40057	Harmon County	Oklahoma	2721	1.95568775375475	2020/04/01 20:53:36
2161	1101817	40059	Harper County	Oklahoma	3847	1.42955819904818	2020/04/01 20:53:36
2162	1101818	40061	Haskell County	Oklahoma	12704	8.50792480949737	2020/04/01 20:53:36
2163	1101819	40063	Hughes County	Oklahoma	13460	6.45863432690585	2020/04/01 20:53:36
2164	1101820	40065	Jackson County	Oklahoma	25384	12.2105625150529	2020/04/01 20:53:36
2165	1101821	40067	Jefferson County	Oklahoma	6223	3.1663327134587	2020/04/01 20:53:36
2166	1101822	40069	Johnston County	Oklahoma	11041	6.63038684250686	2020/04/01 20:53:36
2167	1101823	40071	Kay County	Oklahoma	44880	18.8425197713252	2020/04/01 20:53:36
2168	1101824	40073	Kingfisher County	Oklahoma	15618	6.71464573540278	2020/04/01 20:53:36
2169	1101825	40075	Kiowa County	Oklahoma	9001	3.42346210109491	2020/04/01 20:53:36
2170	1101826	40077	Latimer County	Oklahoma	10495	5.61200867616007	2020/04/01 20:53:36
2171	1101827	40079	Le Flore County	Oklahoma	49909	12.1249510064788	2020/04/01 20:53:36
2172	1101828	40081	Lincoln County	Oklahoma	34854	14.1309667108902	2020/04/01 20:53:36
2173	1101829	40083	Logan County	Oklahoma	46044	23.9000738845215	2020/04/01 20:53:36
2174	1101830	40085	Love County	Oklahoma	9933	7.46146116435099	2020/04/01 20:53:36
2175	1101834	40087	McClain County	Oklahoma	38634	26.1370069920248	2020/04/01 20:53:36
2176	1101835	40089	McCurtain County	Oklahoma	32966	6.87775334269374	2020/04/01 20:53:36
2177	1101836	40091	McIntosh County	Oklahoma	19819	12.372198819386	2020/04/01 20:53:36
2178	1101831	40093	Major County	Oklahoma	7718	3.12039099742826	2020/04/01 20:53:36
2179	1101832	40095	Marshall County	Oklahoma	16376	17.0169428106233	2020/04/01 20:53:36
2180	1101833	40097	Mayes County	Oklahoma	40980	24.1423495138957	2020/04/01 20:53:36
2181	1101837	40099	Murray County	Oklahoma	13875	12.8676675042311	2020/04/01 20:53:36
2182	1101838	40101	Muskogee County	Oklahoma	69084	32.9148200904206	2020/04/01 20:53:36
2183	1101839	40103	Noble County	Oklahoma	11411	6.01980397654967	2020/04/01 20:53:36
2184	1101840	40105	Nowata County	Oklahoma	10383	7.0856383489941	2020/04/01 20:53:36
2185	1101841	40107	Okfuskee County	Oklahoma	12115	7.56201317538887	2020/04/01 20:53:36
2186	1101842	40109	Oklahoma County	Oklahoma	782051	425.989527659625	2020/04/01 20:53:36
2187	1101843	40111	Okmulgee County	Oklahoma	38889	21.5317510642819	2020/04/01 20:53:36
2188	1101844	40113	Osage County	Oklahoma	47311	8.13107475785822	2020/04/01 20:53:36
2189	1101845	40115	Ottawa County	Oklahoma	31566	25.885068751447	2020/04/01 20:53:36
2190	1101846	40117	Pawnee County	Oklahoma	16428	11.1639086398451	2020/04/01 20:53:36
2191	1101847	40119	Payne County	Oklahoma	81512	45.963847540365	2020/04/01 20:53:36
2192	1101848	40121	Pittsburg County	Oklahoma	44382	13.1263984740627	2020/04/01 20:53:36
2193	1101849	40123	Pontotoc County	Oklahoma	38358	20.5575299337275	2020/04/01 20:53:36
2194	1101850	40125	Pottawatomie County	Oklahoma	72000	35.2930702040968	2020/04/01 20:53:36
2195	1101851	40127	Pushmataha County	Oklahoma	11119	3.07561437382478	2020/04/01 20:53:36
2196	1101852	40129	Roger Mills County	Oklahoma	3708	1.25460298457017	2020/04/01 20:53:36
2197	1101853	40131	Rogers County	Oklahoma	90814	51.8982591497207	2020/04/01 20:53:36
2198	1101854	40133	Seminole County	Oklahoma	25071	15.2961410887208	2020/04/01 20:53:36
2199	1101855	40135	Sequoyah County	Oklahoma	41359	23.7180228032718	2020/04/01 20:53:36
2200	1101856	40137	Stephens County	Oklahoma	43983	19.513909685459	2020/04/01 20:53:36
2201	1101857	40139	Texas County	Oklahoma	21121	3.99494895004521	2020/04/01 20:53:36
2202	1101858	40141	Tillman County	Oklahoma	7515	3.33078223336982	2020/04/01 20:53:36
2203	1101859	40143	Tulsa County	Oklahoma	642781	435.157397772775	2020/04/01 20:53:36
2204	1101860	40145	Wagoner County	Oklahoma	77850	53.5248211667315	2020/04/01 20:53:36
2205	1101861	40147	Washington County	Oklahoma	52001	48.3271792394326	2020/04/01 20:53:36
2206	1101862	40149	Washita County	Oklahoma	11432	4.39998639144867	2020/04/01 20:53:36
2207	1101863	40151	Woods County	Oklahoma	9127	2.73927781550016	2020/04/01 20:53:36
2208	1101864	40153	Woodward County	Oklahoma	20967	6.51594563931058	2020/04/01 20:53:36
2209	1135845	41001	Baker County	Oregon	15984	2.01157896440143	2020/04/01 20:53:36
2210	1155126	41003	Benton County	Oregon	89780	51.3406277385844	2020/04/01 20:53:36
2211	1155127	41005	Clackamas County	Oregon	405788	83.7533759694779	2020/04/01 20:53:36
2212	1135846	41007	Clatsop County	Oregon	38562	17.9786242773207	2020/04/01 20:53:36
2213	1135847	41009	Columbia County	Oregon	50851	29.8332398571	2020/04/01 20:53:36
2214	1135848	41011	Coos County	Oregon	63308	15.315037571779	2020/04/01 20:53:36
2215	1155128	41013	Crook County	Oregon	22337	2.89515511375029	2020/04/01 20:53:36
2216	1155129	41015	Curry County	Oregon	22507	5.33658846624705	2020/04/01 20:53:36
2217	1155130	41017	Deschutes County	Oregon	180640	23.1129110798434	2020/04/01 20:53:36
2218	1135849	41019	Douglas County	Oregon	108323	8.30553484540074	2020/04/01 20:53:36
2219	1135850	41021	Gilliam County	Oregon	1907	0.611176039475829	2020/04/01 20:53:36
2220	1135851	41023	Grant County	Oregon	7183	0.612521990898525	2020/04/01 20:53:36
2221	1135852	41025	Harney County	Oregon	7228	0.275372597067054	2020/04/01 20:53:36
2222	1155131	41027	Hood River County	Oregon	23131	17.10615390385	2020/04/01 20:53:36
2223	1135853	41029	Jackson County	Oregon	214267	29.7238107554776	2020/04/01 20:53:36
2224	1155132	41031	Jefferson County	Oregon	23143	5.01367505488776	2020/04/01 20:53:36
2225	1155133	41033	Josephine County	Oregon	85481	20.1412164370712	2020/04/01 20:53:36
2226	1155134	41035	Klamath County	Oregon	66310	4.30818293883641	2020/04/01 20:53:36
2227	1135854	41037	Lake County	Oregon	7843	0.37207866296494	2020/04/01 20:53:36
2228	1135855	41039	Lane County	Oregon	368882	31.2570702659662	2020/04/01 20:53:36
2229	1135856	41041	Lincoln County	Oregon	47881	18.8565598845291	2020/04/01 20:53:36
2230	1135857	41043	Linn County	Oregon	122870	20.742324478479	2020/04/01 20:53:36
2231	1135858	41045	Malheur County	Oregon	30431	1.18829076456978	2020/04/01 20:53:36
2232	1135859	41047	Marion County	Oregon	335553	109.743370987885	2020/04/01 20:53:36
2233	1135860	41049	Morrow County	Oregon	11215	2.13251582971064	2020/04/01 20:53:36
2234	1135861	41051	Multnomah County	Oregon	798647	715.275377496115	2020/04/01 20:53:36
2235	1135862	41053	Polk County	Oregon	81427	42.4323644554184	2020/04/01 20:53:36
2236	1135863	41055	Sherman County	Oregon	1605	0.752407833045395	2020/04/01 20:53:36
2237	1135864	41057	Tillamook County	Oregon	26076	9.13305677111626	2020/04/01 20:53:36
2238	1156673	41059	Umatilla County	Oregon	76898	9.23369788602913	2020/04/01 20:53:36
2239	1164165	41061	Union County	Oregon	26028	4.93365839606412	2020/04/01 20:53:36
2240	1155135	41063	Wallowa County	Oregon	6924	0.849796256990401	2020/04/01 20:53:36
2241	1155136	41065	Wasco County	Oregon	25866	4.19418432339164	2020/04/01 20:53:36
2242	1155137	41067	Washington County	Oregon	581821	310.164458597462	2020/04/01 20:53:36
2243	1135865	41069	Wheeler County	Oregon	1426	0.32084779272761	2020/04/01 20:53:36
2244	1135866	41071	Yamhill County	Oregon	103820	55.9927328487135	2020/04/01 20:53:36
2245	1213656	42001	Adams County	Pennsylvania	102023	75.9334566709364	2020/04/01 20:53:36
2246	1213657	42003	Allegheny County	Pennsylvania	1225561	648.103860366394	2020/04/01 20:53:36
2247	1213658	42005	Armstrong County	Pennsylvania	66331	39.2090970831933	2020/04/01 20:53:36
2248	1214112	42007	Beaver County	Pennsylvania	166896	148.232833056137	2020/04/01 20:53:36
2249	1209171	42009	Bedford County	Pennsylvania	48611	18.5407191911067	2020/04/01 20:53:36
2250	1209172	42011	Berks County	Pennsylvania	416642	187.846826301422	2020/04/01 20:53:36
2251	1213659	42013	Blair County	Pennsylvania	123842	90.9386563095006	2020/04/01 20:53:36
2252	1213660	42015	Bradford County	Pennsylvania	61304	20.6285944951135	2020/04/01 20:53:36
2253	1209173	42017	Bucks County	Pennsylvania	626370	400.118508718221	2020/04/01 20:53:36
2254	1213661	42019	Butler County	Pennsylvania	186566	91.3441609024843	2020/04/01 20:53:36
2255	1213662	42021	Cambria County	Pennsylvania	134550	75.4691612766929	2020/04/01 20:53:36
2256	1213663	42023	Cameron County	Pennsylvania	4686	4.56621290223154	2020/04/01 20:53:36
2257	1213664	42025	Carbon County	Pennsylvania	63931	64.7089589945943	2020/04/01 20:53:36
2258	1214720	42027	Centre County	Pennsylvania	161443	56.1632729042276	2020/04/01 20:53:36
2259	1209174	42029	Chester County	Pennsylvania	517156	266.047417050911	2020/04/01 20:53:36
2260	1210234	42031	Clarion County	Pennsylvania	38827	24.9505350357467	2020/04/01 20:53:36
2261	1209175	42033	Clearfield County	Pennsylvania	80216	27.0569053425368	2020/04/01 20:53:36
2262	1214721	42035	Clinton County	Pennsylvania	39074	16.989667786191	2020/04/01 20:53:36
2263	1213665	42037	Columbia County	Pennsylvania	66220	52.9234682923893	2020/04/01 20:53:36
2264	1213666	42039	Crawford County	Pennsylvania	86164	32.8638196141633	2020/04/01 20:53:36
2265	1209176	42041	Cumberland County	Pennsylvania	247433	175.132053456229	2020/04/01 20:53:36
2266	1213667	42043	Dauphin County	Pennsylvania	274515	201.923214480524	2020/04/01 20:53:36
2267	1209177	42045	Delaware County	Pennsylvania	563527	1183.66103608761	2020/04/01 20:53:36
2268	1213668	42047	Elk County	Pennsylvania	30608	14.2837409246655	2020/04/01 20:53:36
2269	1209178	42049	Erie County	Pennsylvania	275972	133.344391732901	2020/04/01 20:53:36
2270	1209179	42051	Fayette County	Pennsylvania	132289	64.6268140453684	2020/04/01 20:53:36
2271	1213669	42053	Forest County	Pennsylvania	7351	6.64272641080762	2020/04/01 20:53:36
2272	1213670	42055	Franklin County	Pennsylvania	153751	76.873624129824	2020/04/01 20:53:36
2273	1213671	42057	Fulton County	Pennsylvania	14506	12.8003213517763	2020/04/01 20:53:36
2274	1214033	42059	Greene County	Pennsylvania	37144	24.900432642939	2020/04/01 20:53:36
2275	1213672	42061	Huntingdon County	Pennsylvania	45421	20.0504347738422	2020/04/01 20:53:36
2276	1213673	42063	Indiana County	Pennsylvania	85755	40.0137161914445	2020/04/01 20:53:36
2277	1213674	42065	Jefferson County	Pennsylvania	44084	26.0884516549451	2020/04/01 20:53:36
2278	1209180	42067	Juniata County	Pennsylvania	24562	24.2326090052396	2020/04/01 20:53:36
2279	1213675	42069	Lackawanna County	Pennsylvania	211454	177.959175346806	2020/04/01 20:53:36
2280	1209181	42071	Lancaster County	Pennsylvania	538347	220.218668100779	2020/04/01 20:53:36
2281	1213676	42073	Lawrence County	Pennsylvania	87382	94.1938299919599	2020/04/01 20:53:36
2282	1214034	42075	Lebanon County	Pennsylvania	138674	147.986510524909	2020/04/01 20:53:36
2283	1209182	42077	Lehigh County	Pennsylvania	362613	405.574784136813	2020/04/01 20:53:36
2284	1209183	42079	Luzerne County	Pennsylvania	317884	137.85179535632	2020/04/01 20:53:36
2285	1213677	42081	Lycoming County	Pennsylvania	114859	36.0913484129061	2020/04/01 20:53:36
2286	1210235	42083	McKean County	Pennsylvania	41806	16.4845740239881	2020/04/01 20:53:36
2287	1213678	42085	Mercer County	Pennsylvania	112630	64.6563143837976	2020/04/01 20:53:36
2288	1213679	42087	Mifflin County	Pennsylvania	46362	43.5486579294043	2020/04/01 20:53:36
2289	1209184	42089	Monroe County	Pennsylvania	167586	106.37825091639	2020/04/01 20:53:36
2290	1213680	42091	Montgomery County	Pennsylvania	821301	656.591561104439	2020/04/01 20:53:36
2291	1213681	42093	Montour County	Pennsylvania	18294	54.2323642296808	2020/04/01 20:53:36
2292	1209185	42095	Northampton County	Pennsylvania	301778	315.213109283897	2020/04/01 20:53:36
2293	1209186	42097	Northumberland County	Pennsylvania	92325	77.8313122604817	2020/04/01 20:53:36
2294	1213682	42099	Perry County	Pennsylvania	45924	32.1541603477523	2020/04/01 20:53:36
2295	1209187	42101	Philadelphia County	Pennsylvania	1575522	4531.77182152852	2020/04/01 20:53:36
2296	1213683	42103	Pike County	Pennsylvania	55498	39.3200923627255	2020/04/01 20:53:36
2297	1213684	42105	Potter County	Pennsylvania	16937	6.04760523876994	2020/04/01 20:53:36
2298	1213685	42107	Schuylkill County	Pennsylvania	143555	71.1850314677509	2020/04/01 20:53:36
2299	1213686	42109	Snyder County	Pennsylvania	40466	47.5207079946182	2020/04/01 20:53:36
2300	1209188	42111	Somerset County	Pennsylvania	74949	26.934956364873	2020/04/01 20:53:36
2301	1213687	42113	Sullivan County	Pennsylvania	6177	5.30060611714419	2020/04/01 20:53:36
2302	1213688	42115	Susquehanna County	Pennsylvania	41340	19.382566460591	2020/04/01 20:53:36
2303	1209189	42117	Tioga County	Pennsylvania	41226	14.0393599425766	2020/04/01 20:53:36
2304	1213689	42119	Union County	Pennsylvania	45114	55.1297894540745	2020/04/01 20:53:36
2305	1213690	42121	Venango County	Pennsylvania	52376	29.9910501257463	2020/04/01 20:53:36
2306	1213691	42123	Warren County	Pennsylvania	40035	17.4832329507541	2020/04/01 20:53:36
2307	1209190	42125	Washington County	Pennsylvania	207547	93.5068812555377	2020/04/01 20:53:36
2308	1213692	42127	Wayne County	Pennsylvania	51536	27.4237279216774	2020/04/01 20:53:36
2309	1209191	42129	Westmoreland County	Pennsylvania	354751	133.234220722871	2020/04/01 20:53:36
2310	1209192	42131	Wyoming County	Pennsylvania	27588	26.8100777908479	2020/04/01 20:53:36
2311	1209193	42133	York County	Pennsylvania	444014	189.597015841507	2020/04/01 20:53:36
2312	1219777	44001	Bristol County	Rhode Island	48900	782.228773250451	2020/04/01 20:53:36
2313	1219778	44003	Kent County	Rhode Island	163861	375.343106367366	2020/04/01 20:53:36
2314	1219779	44005	Newport County	Rhode Island	83075	313.122048563208	2020/04/01 20:53:36
2315	1219781	44007	Providence County	Rhode Island	634533	598.297855034495	2020/04/01 20:53:36
2316	1219782	44009	Washington County	Rhode Island	126242	148.027610708148	2020/04/01 20:53:36
2317	1245666	45001	Abbeville County	South Carolina	24657	19.3724049172008	2020/04/01 20:53:36
2318	1247979	45003	Aiken County	South Carolina	166926	60.199841033341	2020/04/01 20:53:36
2319	1247980	45005	Allendale County	South Carolina	9214	8.71753759395985	2020/04/01 20:53:36
2320	1247981	45007	Anderson County	South Carolina	195995	106.008134260326	2020/04/01 20:53:36
2321	1247982	45009	Bamberg County	South Carolina	14600	14.3303725079137	2020/04/01 20:53:36
2322	1247983	45011	Barnwell County	South Carolina	21577	15.1919149227249	2020/04/01 20:53:36
2323	1247984	45013	Beaufort County	South Carolina	182658	122.40139523679	2020/04/01 20:53:36
2324	1247985	45015	Berkeley County	South Carolina	209065	73.1423837106105	2020/04/01 20:53:36
2325	1247986	45017	Calhoun County	South Carolina	14713	14.9040815935145	2020/04/01 20:53:36
2326	1252740	45019	Charleston County	South Carolina	394708	166.025133721354	2020/04/01 20:53:36
2327	1247987	45021	Cherokee County	South Carolina	56711	55.6681803360999	2020/04/01 20:53:36
2328	1247988	45023	Chester County	South Carolina	32326	21.4948757994146	2020/04/01 20:53:36
2329	1247989	45025	Chesterfield County	South Carolina	46024	22.2415239405079	2020/04/01 20:53:36
2330	1247990	45027	Clarendon County	South Carolina	34017	21.6390440169968	2020/04/01 20:53:36
2331	1247991	45029	Colleton County	South Carolina	37568	13.7296337340258	2020/04/01 20:53:36
2332	1247992	45031	Darlington County	South Carolina	67253	46.3161480626616	2020/04/01 20:53:36
2333	1247993	45033	Dillon County	South Carolina	30871	29.425794224953	2020/04/01 20:53:36
2334	1247998	45035	Dorchester County	South Carolina	155474	105.574200874212	2020/04/01 20:53:36
2335	1247999	45037	Edgefield County	South Carolina	26769	20.6397465269808	2020/04/01 20:53:36
2336	1248000	45039	Fairfield County	South Carolina	22712	12.7778399651034	2020/04/01 20:53:36
2337	1248001	45041	Florence County	South Carolina	138561	66.8307417704068	2020/04/01 20:53:36
2338	1248002	45043	Georgetown County	South Carolina	61605	29.2250338775805	2020/04/01 20:53:36
2339	1245489	45045	Greenville County	South Carolina	498402	245.119501334035	2020/04/01 20:53:36
2340	1248003	45047	Greenwood County	South Carolina	70264	59.6604195217723	2020/04/01 20:53:36
2341	1248004	45049	Hampton County	South Carolina	19807	13.6569134622091	2020/04/01 20:53:36
2342	1248005	45051	Horry County	South Carolina	320915	109.295184394848	2020/04/01 20:53:36
2343	1248006	45053	Jasper County	South Carolina	27900	16.4421227158772	2020/04/01 20:53:36
2344	1248007	45055	Kershaw County	South Carolina	64361	34.206334773398	2020/04/01 20:53:36
2345	1248008	45057	Lancaster County	South Carolina	89546	62.9683136921257	2020/04/01 20:53:36
2346	1248009	45059	Laurens County	South Carolina	66710	36.0863221371645	2020/04/01 20:53:36
2347	1245652	45061	Lee County	South Carolina	17606	16.5723435408939	2020/04/01 20:53:36
2348	1244251	45063	Lexington County	South Carolina	286316	158.152762127915	2020/04/01 20:53:36
2349	1248012	45065	McCormick County	South Carolina	9606	10.3274764626023	2020/04/01 20:53:36
2350	1248010	45067	Marion County	South Carolina	31562	24.9074196176618	2020/04/01 20:53:36
2351	1248011	45069	Marlboro County	South Carolina	27131	21.8293627797478	2020/04/01 20:53:36
2352	1248013	45071	Newberry County	South Carolina	38068	23.3288841949795	2020/04/01 20:53:36
2353	1244832	45073	Oconee County	South Carolina	76696	47.2707545187344	2020/04/01 20:53:36
2354	1248014	45075	Orangeburg County	South Carolina	88454	30.8696626352344	2020/04/01 20:53:36
2355	1248015	45077	Pickens County	South Carolina	122746	95.3732779961536	2020/04/01 20:53:36
2356	1249299	45079	Richland County	South Carolina	408263	208.144127891068	2020/04/01 20:53:36
2357	1248016	45081	Saluda County	South Carolina	20299	17.3052115089899	2020/04/01 20:53:36
2358	1248592	45083	Spartanburg County	South Carolina	302195	144.449365921823	2020/04/01 20:53:36
2359	1244717	45085	Sumter County	South Carolina	106995	62.1147662818844	2020/04/01 20:53:36
2360	1248017	45087	Union County	South Carolina	27644	20.7584834464146	2020/04/01 20:53:36
2361	1248018	45089	Williamsburg County	South Carolina	31794	13.1408534980131	2020/04/01 20:53:36
2362	1248019	45091	York County	South Carolina	258641	146.710520773669	2020/04/01 20:53:36
2363	1266983	46003	Aurora County	South Dakota	2759	1.50362182714036	2020/04/01 20:53:36
2364	1266986	46005	Beadle County	South Dakota	18374	5.63612572567925	2020/04/01 20:53:36
2365	1265812	46007	Bennett County	South Dakota	3437	1.12019789037209	2020/04/01 20:53:36
2366	1266997	46009	Bon Homme County	South Dakota	6969	4.77464070957122	2020/04/01 20:53:36
2367	1265779	46011	Brookings County	South Dakota	34239	16.687232494364	2020/04/01 20:53:36
2368	1265785	46013	Brown County	South Dakota	38840	8.75419871875527	2020/04/01 20:53:36
2369	1265768	46015	Brule County	South Dakota	5256	2.48317622242885	2020/04/01 20:53:36
2370	1265767	46017	Buffalo County	South Dakota	2053	1.68149983908178	2020/04/01 20:53:36
2371	1265793	46019	Butte County	South Dakota	10177	1.74636948925124	2020/04/01 20:53:36
2372	1266974	46021	Campbell County	South Dakota	1435	0.755178033829301	2020/04/01 20:53:36
2373	1266976	46023	Charles Mix County	South Dakota	9344	3.28726890060312	2020/04/01 20:53:36
2374	1266985	46025	Clark County	South Dakota	3673	1.48093977270466	2020/04/01 20:53:36
2375	1265764	46027	Clay County	South Dakota	13925	13.0487207889216	2020/04/01 20:53:36
2376	1265791	46029	Codington County	South Dakota	27993	15.7190125492526	2020/04/01 20:53:36
2377	1265811	46031	Corson County	South Dakota	4168	0.651608542102345	2020/04/01 20:53:36
2378	1265788	46033	Custer County	South Dakota	8573	2.12599040362154	2020/04/01 20:53:36
2379	1266980	46035	Davison County	South Dakota	19901	17.6382745804277	2020/04/01 20:53:36
2380	1265790	46037	Day County	South Dakota	5506	2.06698081358846	2020/04/01 20:53:36
2381	1265781	46039	Deuel County	South Dakota	4306	2.66974828283275	2020/04/01 20:53:36
2382	1266994	46041	Dewey County	South Dakota	5779	0.969075244086619	2020/04/01 20:53:36
2383	1266978	46043	Douglas County	South Dakota	2930	2.61991061283459	2020/04/01 20:53:36
2384	1266972	46045	Edmunds County	South Dakota	3940	1.35103791250186	2020/04/01 20:53:36
2385	1265787	46047	Fall River County	South Dakota	6774	1.50323139260332	2020/04/01 20:53:36
2386	1265760	46049	Faulk County	South Dakota	2322	0.913249341807099	2020/04/01 20:53:36
2387	1265782	46051	Grant County	South Dakota	7217	4.08909724873123	2020/04/01 20:53:36
2388	1265765	46053	Gregory County	South Dakota	4201	1.59812378304928	2020/04/01 20:53:36
2389	1266988	46055	Haakon County	South Dakota	2082	0.443991149999898	2020/04/01 20:53:36
2390	1265766	46057	Hamlin County	South Dakota	6000	4.56713565877378	2020/04/01 20:53:36
2391	1265783	46059	Hand County	South Dakota	3301	0.887149679198345	2020/04/01 20:53:36
2392	1266979	46061	Hanson County	South Dakota	3397	3.01801466725632	2020/04/01 20:53:36
2393	1265792	46063	Harding County	South Dakota	1311	0.189469123579417	2020/04/01 20:53:36
2394	1265774	46065	Hughes County	South Dakota	17617	9.17291131205714	2020/04/01 20:53:36
2395	1265771	46067	Hutchinson County	South Dakota	7315	3.47391293999284	2020/04/01 20:53:36
2396	1266984	46069	Hyde County	South Dakota	1331	0.597123449079792	2020/04/01 20:53:36
2397	1265794	46071	Jackson County	South Dakota	3287	0.680900106514009	2020/04/01 20:53:36
2398	1265778	46073	Jerauld County	South Dakota	2029	1.48898059473161	2020/04/01 20:53:36
2399	1266981	46075	Jones County	South Dakota	735	0.292660933061515	2020/04/01 20:53:36
2400	1265780	46077	Kingsbury County	South Dakota	4967	2.30435528070382	2020/04/01 20:53:36
2401	1265776	46079	Lake County	South Dakota	12574	8.62484113725465	2020/04/01 20:53:36
2402	1266996	46081	Lawrence County	South Dakota	25234	12.1778229215067	2020/04/01 20:53:36
2403	1265769	46083	Lincoln County	South Dakota	54914	36.7272984287328	2020/04/01 20:53:36
2404	1265789	46085	Lyman County	South Dakota	3869	0.909680872372643	2020/04/01 20:53:36
2405	1265773	46087	McCook County	South Dakota	5511	3.70565895388142	2020/04/01 20:53:36
2406	1265762	46089	McPherson County	South Dakota	2364	0.803018360139433	2020/04/01 20:53:36
2407	1265759	46091	Marshall County	South Dakota	4895	2.25500783202226	2020/04/01 20:53:36
2408	1266991	46093	Meade County	South Dakota	27424	3.05060014045315	2020/04/01 20:53:36
2409	1267177	46095	Mellette County	South Dakota	2055	0.606918477251169	2020/04/01 20:53:36
2410	1265777	46097	Miner County	South Dakota	2229	1.50941189725514	2020/04/01 20:53:36
2411	1265772	46099	Minnehaha County	South Dakota	186749	89.3667699015108	2020/04/01 20:53:36
2412	1265775	46101	Moody County	South Dakota	6506	4.83646684583355	2020/04/01 20:53:36
2413	1266992	46102	Oglala Lakota County	South Dakota	14335	2.64366227088014	2020/04/01 20:53:36
2414	1266995	46103	Pennington County	South Dakota	109294	15.1970124479471	2020/04/01 20:53:36
2415	1266990	46105	Perkins County	South Dakota	2907	0.391014693257454	2020/04/01 20:53:36
2416	1265761	46107	Potter County	South Dakota	2326	1.042891943736	2020/04/01 20:53:36
2417	1265786	46109	Roberts County	South Dakota	10285	3.60661705332946	2020/04/01 20:53:36
2418	1266977	46111	Sanborn County	South Dakota	2388	1.61970078803408	2020/04/01 20:53:36
2419	1266987	46115	Spink County	South Dakota	6543	1.68022013986962	2020/04/01 20:53:36
2420	1266998	46117	Stanley County	South Dakota	2997	0.801109688479837	2020/04/01 20:53:36
2421	1266982	46119	Sully County	South Dakota	1331	0.510469810015214	2020/04/01 20:53:36
2422	1266989	46121	Todd County	South Dakota	10146	2.82111866846242	2020/04/01 20:53:36
2423	1265784	46123	Tripp County	South Dakota	5468	1.30930942199291	2020/04/01 20:53:36
2424	1265770	46125	Turner County	South Dakota	8264	5.17085459022913	2020/04/01 20:53:36
2425	1265763	46127	Union County	South Dakota	15177	12.7183363428564	2020/04/01 20:53:36
2426	1266973	46129	Walworth County	South Dakota	5510	3.00211248575935	2020/04/01 20:53:36
2427	1266975	46135	Yankton County	South Dakota	22717	16.8289832235328	2020/04/01 20:53:36
2428	1266993	46137	Ziebach County	South Dakota	2814	0.553981828820771	2020/04/01 20:53:36
2429	1639722	47001	Anderson County	Tennessee	75775	86.7633558649439	2020/04/01 20:53:36
2430	1639723	47003	Bedford County	Tennessee	47558	38.7684302227866	2020/04/01 20:53:36
2431	1639724	47005	Benton County	Tennessee	16112	15.7767693361865	2020/04/01 20:53:36
2432	1639725	47007	Bledsoe County	Tennessee	14602	13.8718444397951	2020/04/01 20:53:36
2433	1639726	47009	Blount County	Tennessee	128443	88.7448476256881	2020/04/01 20:53:36
2434	1639727	47011	Bradley County	Tennessee	104557	122.79310956713	2020/04/01 20:53:36
2435	1639728	47013	Campbell County	Tennessee	39687	31.9125898508026	2020/04/01 20:53:36
2436	1648572	47015	Cannon County	Tennessee	13976	20.314177003372	2020/04/01 20:53:36
2437	1639729	47017	Carroll County	Tennessee	28018	18.1003486767496	2020/04/01 20:53:36
2438	1639730	47019	Carter County	Tennessee	56391	63.8011917077381	2020/04/01 20:53:36
2439	1639731	47021	Cheatham County	Tennessee	39929	50.9693662058943	2020/04/01 20:53:36
2440	1639732	47023	Chester County	Tennessee	17150	23.1740018237872	2020/04/01 20:53:36
2441	1639733	47025	Claiborne County	Tennessee	31613	28.085236550981	2020/04/01 20:53:36
2442	1648573	47027	Clay County	Tennessee	7686	12.5459843134649	2020/04/01 20:53:36
2443	1639734	47029	Cocke County	Tennessee	35336	31.3045146637337	2020/04/01 20:53:36
2444	1639735	47031	Coffee County	Tennessee	54531	49.0822121815581	2020/04/01 20:53:36
2445	1648574	47033	Crockett County	Tennessee	14499	21.0812815702333	2020/04/01 20:53:36
2446	1639736	47035	Cumberland County	Tennessee	58634	33.2420586515401	2020/04/01 20:53:36
2447	1639737	47037	Davidson County	Tennessee	684017	524.539773262797	2020/04/01 20:53:36
2448	1639739	47039	Decatur County	Tennessee	11683	13.5104352217118	2020/04/01 20:53:36
2449	1639738	47041	DeKalb County	Tennessee	19601	24.8631786925392	2020/04/01 20:53:36
2450	1639740	47043	Dickson County	Tennessee	51988	40.9731597691013	2020/04/01 20:53:36
2451	1639741	47045	Dyer County	Tennessee	37576	28.3177147789863	2020/04/01 20:53:36
2452	1639742	47047	Fayette County	Tennessee	39692	21.7447587248094	2020/04/01 20:53:36
2453	1639743	47049	Fentress County	Tennessee	17994	13.9337443178748	2020/04/01 20:53:36
2454	1639744	47051	Franklin County	Tennessee	41512	28.9057433121641	2020/04/01 20:53:36
2455	1639745	47053	Gibson County	Tennessee	49175	31.5001698812009	2020/04/01 20:53:36
2456	1639746	47055	Giles County	Tennessee	29167	18.4332370627134	2020/04/01 20:53:36
2457	1648575	47057	Grainger County	Tennessee	23013	31.66712654844	2020/04/01 20:53:36
2458	1639747	47059	Greene County	Tennessee	68669	42.6142390526678	2020/04/01 20:53:36
2459	1639748	47061	Grundy County	Tennessee	13331	14.2799267507778	2020/04/01 20:53:36
2460	1648576	47063	Hamblen County	Tennessee	63740	152.678963686863	2020/04/01 20:53:36
2461	1639749	47065	Hamilton County	Tennessee	357546	254.543753292287	2020/04/01 20:53:36
2462	1648577	47067	Hancock County	Tennessee	6585	11.435942690641	2020/04/01 20:53:36
2463	1639750	47069	Hardeman County	Tennessee	25562	14.7804334348632	2020/04/01 20:53:36
2464	1639751	47071	Hardin County	Tennessee	25771	17.2349792683249	2020/04/01 20:53:36
2465	1639752	47073	Hawkins County	Tennessee	56402	44.7115008206315	2020/04/01 20:53:36
2466	1639753	47075	Haywood County	Tennessee	17779	12.87641416419	2020/04/01 20:53:36
2467	1639754	47077	Henderson County	Tennessee	27859	20.6850709735049	2020/04/01 20:53:36
2468	1639755	47079	Henry County	Tennessee	32279	22.1824447329722	2020/04/01 20:53:36
2469	1639756	47081	Hickman County	Tennessee	24678	15.556714120375	2020/04/01 20:53:36
2470	1648578	47083	Houston County	Tennessee	8176	15.7607149044859	2020/04/01 20:53:36
2471	1639757	47085	Humphreys County	Tennessee	18318	13.325392229825	2020/04/01 20:53:36
2472	1639758	47087	Jackson County	Tennessee	11615	14.5302113944224	2020/04/01 20:53:36
2473	1639759	47089	Jefferson County	Tennessee	53247	74.779657225567	2020/04/01 20:53:36
2474	1639760	47091	Johnson County	Tennessee	17789	23.0142411578329	2020/04/01 20:53:36
2475	1639761	47093	Knox County	Tennessee	456185	346.494471713877	2020/04/01 20:53:36
2476	1639762	47095	Lake County	Tennessee	7526	17.5275471510814	2020/04/01 20:53:36
2477	1639763	47097	Lauderdale County	Tennessee	26297	21.512788692286	2020/04/01 20:53:36
2478	1639764	47099	Lawrence County	Tennessee	42937	26.8633474372883	2020/04/01 20:53:36
2479	1639765	47101	Lewis County	Tennessee	11956	16.3643017684279	2020/04/01 20:53:36
2480	1639766	47103	Lincoln County	Tennessee	33711	22.8211984884066	2020/04/01 20:53:36
2481	1639767	47105	Loudon County	Tennessee	51610	86.9130611814988	2020/04/01 20:53:36
2482	1639773	47107	McMinn County	Tennessee	52773	47.3726473409665	2020/04/01 20:53:36
2483	1639774	47109	McNairy County	Tennessee	25903	17.7691233891399	2020/04/01 20:53:36
2484	1639768	47111	Macon County	Tennessee	23487	29.5248883922889	2020/04/01 20:53:36
2485	1639769	47113	Madison County	Tennessee	97682	67.6983327418837	2020/04/01 20:53:36
2486	1639770	47115	Marion County	Tennessee	28417	22.0206881315715	2020/04/01 20:53:36
2487	1639771	47117	Marshall County	Tennessee	32269	33.1834591485076	2020/04/01 20:53:36
2488	1639772	47119	Maury County	Tennessee	89776	56.5332527325587	2020/04/01 20:53:36
2489	1639775	47121	Meigs County	Tennessee	11962	23.6684907840473	2020/04/01 20:53:36
2490	1639776	47123	Monroe County	Tennessee	45876	27.8633670466875	2020/04/01 20:53:36
2491	1639777	47125	Montgomery County	Tennessee	196387	140.63498731604	2020/04/01 20:53:36
2492	1648579	47127	Moore County	Tennessee	6322	18.889411426885	2020/04/01 20:53:36
2493	1639778	47129	Morgan County	Tennessee	21596	15.9681798156055	2020/04/01 20:53:36
2494	1639779	47131	Obion County	Tennessee	30520	21.6276877777983	2020/04/01 20:53:36
2495	1639780	47133	Overton County	Tennessee	22004	19.5988047707567	2020/04/01 20:53:36
2496	1639781	47135	Perry County	Tennessee	7912	7.36557762648078	2020/04/01 20:53:36
2497	1648580	47137	Pickett County	Tennessee	5088	12.0536405768412	2020/04/01 20:53:36
2498	1639782	47139	Polk County	Tennessee	16782	14.909156886645	2020/04/01 20:53:36
2499	1639783	47141	Putnam County	Tennessee	76440	73.5806144967391	2020/04/01 20:53:36
2500	1639784	47143	Rhea County	Tennessee	32628	39.9442725734969	2020/04/01 20:53:36
2501	1639785	47145	Roane County	Tennessee	52897	56.6175147284181	2020/04/01 20:53:36
2502	1639786	47147	Robertson County	Tennessee	69344	56.2105116930084	2020/04/01 20:53:36
2503	1639787	47149	Rutherford County	Tennessee	307128	191.494753251823	2020/04/01 20:53:36
2504	1639788	47151	Scott County	Tennessee	21954	15.9242487851872	2020/04/01 20:53:36
2505	1652643	47153	Sequatchie County	Tennessee	14730	21.392755493087	2020/04/01 20:53:36
2506	1639789	47155	Sevier County	Tennessee	96287	62.7466247182843	2020/04/01 20:53:36
2507	1639790	47157	Shelby County	Tennessee	937005	473.797280554142	2020/04/01 20:53:36
2508	1639791	47159	Smith County	Tennessee	19458	23.9035737353753	2020/04/01 20:53:36
2509	1639792	47161	Stewart County	Tennessee	13301	11.1696655511157	2020/04/01 20:53:36
2510	1639793	47163	Sullivan County	Tennessee	156734	146.385285644056	2020/04/01 20:53:36
2511	1639794	47165	Sumner County	Tennessee	179473	130.892407452634	2020/04/01 20:53:36
2512	1639795	47167	Tipton County	Tennessee	61446	51.7543991694122	2020/04/01 20:53:36
2513	1648581	47169	Trousdale County	Tennessee	9573	32.3255357104073	2020/04/01 20:53:36
2514	1648582	47171	Unicoi County	Tennessee	17780	36.8953964049275	2020/04/01 20:53:36
2515	1648583	47173	Union County	Tennessee	19293	33.3180757741739	2020/04/01 20:53:36
2516	1648584	47175	Van Buren County	Tennessee	5704	8.0548769047964	2020/04/01 20:53:36
2517	1639796	47177	Warren County	Tennessee	40454	36.0996867246984	2020/04/01 20:53:36
2518	1639797	47179	Washington County	Tennessee	127055	150.253192979392	2020/04/01 20:53:36
2519	1639798	47181	Wayne County	Tennessee	16649	8.75648400639452	2020/04/01 20:53:36
2520	1639799	47183	Weakley County	Tennessee	33626	22.3709822836663	2020/04/01 20:53:36
2521	1639800	47185	White County	Tennessee	26580	27.2449927032159	2020/04/01 20:53:36
2522	1639801	47187	Williamson County	Tennessee	218648	144.836740764805	2020/04/01 20:53:36
2523	1639802	47189	Wilson County	Tennessee	132663	89.6905163232464	2020/04/01 20:53:36
2524	1383786	48001	Anderson County	Texas	57863	21.0242802921194	2020/04/01 20:53:36
2525	1383787	48003	Andrews County	Texas	17818	4.58417453459175	2020/04/01 20:53:36
2526	1383788	48005	Angelina County	Texas	87607	42.3991209138263	2020/04/01 20:53:36
2527	1383789	48007	Aransas County	Texas	24763	37.9332476495058	2020/04/01 20:53:36
2528	1383790	48009	Archer County	Texas	8789	3.75677340335261	2020/04/01 20:53:36
2529	1383791	48011	Armstrong County	Texas	1916	0.813732655929211	2020/04/01 20:53:36
2530	1383792	48013	Atascosa County	Texas	48828	15.4587640055162	2020/04/01 20:53:36
2531	1383793	48015	Austin County	Texas	29565	17.6570099743533	2020/04/01 20:53:36
2532	1383794	48017	Bailey County	Texas	7092	3.31116059060325	2020/04/01 20:53:36
2533	1383795	48019	Bandera County	Texas	21763	10.6230058571431	2020/04/01 20:53:36
2534	1383796	48021	Bastrop County	Texas	82577	35.8972641435938	2020/04/01 20:53:36
2535	1383797	48023	Baylor County	Texas	3591	1.59829829754419	2020/04/01 20:53:36
2536	1383798	48025	Bee County	Texas	32691	14.3393560108235	2020/04/01 20:53:36
2537	1383799	48027	Bell County	Texas	342236	125.691491149465	2020/04/01 20:53:36
2538	1383800	48029	Bexar County	Texas	1925865	599.558110948405	2020/04/01 20:53:36
2539	1383801	48031	Blanco County	Texas	11279	6.14007401978722	2020/04/01 20:53:36
2540	1383802	48033	Borden County	Texas	665	0.286099512346479	2020/04/01 20:53:36
2541	1383803	48035	Bosque County	Texas	18122	7.11808888525075	2020/04/01 20:53:36
2542	1383804	48037	Bowie County	Texas	93858	40.9476980111451	2020/04/01 20:53:36
2543	1383805	48039	Brazoria County	Texas	353999	100.32982841226	2020/04/01 20:53:36
2544	1383806	48041	Brazos County	Texas	219193	144.54137209844	2020/04/01 20:53:36
2545	1383807	48043	Brewster County	Texas	9216	0.575429250751309	2020/04/01 20:53:36
2546	1383808	48045	Briscoe County	Texas	1546	0.663237203225445	2020/04/01 20:53:36
2547	1383809	48047	Brooks County	Texas	7180	2.93867619668061	2020/04/01 20:53:36
2548	1383810	48049	Brown County	Texas	37834	15.4669419870098	2020/04/01 20:53:36
2549	1383811	48051	Burleson County	Texas	17863	10.4652390537829	2020/04/01 20:53:36
2550	1383812	48053	Burnet County	Texas	45750	17.7660642274024	2020/04/01 20:53:36
2551	1383813	48055	Caldwell County	Texas	41401	29.3176956031227	2020/04/01 20:53:36
2552	1383814	48057	Calhoun County	Texas	21807	16.6122370545004	2020/04/01 20:53:36
2553	1383815	48059	Callahan County	Texas	13770	5.91148677532021	2020/04/01 20:53:36
2554	1383816	48061	Cameron County	Texas	421750	182.749266849806	2020/04/01 20:53:36
2555	1383817	48063	Camp County	Texas	12813	25.2601879697469	2020/04/01 20:53:36
2556	1383818	48065	Carson County	Texas	6032	2.53084124489572	2020/04/01 20:53:36
2557	1383819	48067	Cass County	Texas	30087	12.3982855360491	2020/04/01 20:53:36
2558	1383820	48069	Castro County	Texas	7787	3.36139112448126	2020/04/01 20:53:36
2559	1383821	48071	Chambers County	Texas	40292	26.0516761726167	2020/04/01 20:53:36
2560	1383822	48073	Cherokee County	Texas	51903	19.0320141590265	2020/04/01 20:53:36
2561	1383823	48075	Childress County	Texas	7226	4.0056439823053	2020/04/01 20:53:36
2562	1383824	48077	Clay County	Texas	10387	3.683503048777	2020/04/01 20:53:36
2563	1383825	48079	Cochran County	Texas	2904	1.44660861338296	2020/04/01 20:53:36
2564	1383826	48081	Coke County	Texas	3275	1.38705103567844	2020/04/01 20:53:36
2565	1383827	48083	Coleman County	Texas	8391	2.5653229293806	2020/04/01 20:53:36
2566	1383828	48085	Collin County	Texas	944350	433.407858893581	2020/04/01 20:53:36
2567	1383829	48087	Collingsworth County	Texas	2996	1.25948506176896	2020/04/01 20:53:36
2568	1383830	48089	Colorado County	Texas	21022	8.45233345948467	2020/04/01 20:53:36
2569	1383831	48091	Comal County	Texas	135097	93.2262995097279	2020/04/01 20:53:36
2570	1383832	48093	Comanche County	Texas	13495	5.55631287338317	2020/04/01 20:53:36
2571	1383833	48095	Concho County	Texas	4233	1.66135905099143	2020/04/01 20:53:36
2572	1383834	48097	Cooke County	Texas	39571	17.4648857704713	2020/04/01 20:53:36
2573	1383835	48099	Coryell County	Texas	75389	27.6638413774703	2020/04/01 20:53:36
2574	1383836	48101	Cottle County	Texas	1623	0.695835228255293	2020/04/01 20:53:36
2575	1383837	48103	Crane County	Texas	4839	2.37985202228651	2020/04/01 20:53:36
2576	1383838	48105	Crockett County	Texas	3633	0.49966063085711	2020/04/01 20:53:36
2577	1383839	48107	Crosby County	Texas	5861	2.51382859533624	2020/04/01 20:53:36
2578	1383840	48109	Culberson County	Texas	2241	0.226972574940636	2020/04/01 20:53:36
2579	1383841	48111	Dallam County	Texas	7243	1.86047344013983	2020/04/01 20:53:36
2580	1383842	48113	Dallas County	Texas	2586552	1145.19391461404	2020/04/01 20:53:36
2581	1383843	48115	Dawson County	Texas	12964	5.55969745296382	2020/04/01 20:53:36
2582	1383845	48117	Deaf Smith County	Texas	18899	4.87495901532138	2020/04/01 20:53:36
2583	1383846	48119	Delta County	Texas	5215	7.83984023310607	2020/04/01 20:53:36
2584	1383847	48121	Denton County	Texas	807047	354.657871814841	2020/04/01 20:53:36
2585	1383844	48123	DeWitt County	Texas	20435	8.68009123701455	2020/04/01 20:53:36
2586	1383848	48125	Dickens County	Texas	2216	0.948851640227678	2020/04/01 20:53:36
2587	1383849	48127	Dimmit County	Texas	10663	3.09809237909347	2020/04/01 20:53:36
2588	1383850	48129	Donley County	Texas	3387	1.41085255049157	2020/04/01 20:53:36
2589	1383851	48131	Duval County	Texas	11355	2.44451989496542	2020/04/01 20:53:36
2590	1383852	48133	Eastland County	Texas	18270	7.6136486394467	2020/04/01 20:53:36
2591	1383853	48135	Ector County	Texas	158342	68.0947060855723	2020/04/01 20:53:36
2592	1383854	48137	Edwards County	Texas	2055	0.374640418144079	2020/04/01 20:53:36
2593	1383856	48139	Ellis County	Texas	168838	69.6713482569525	2020/04/01 20:53:36
2594	1383855	48141	El Paso County	Texas	837654	319.210918675678	2020/04/01 20:53:36
2595	1383857	48143	Erath County	Texas	41482	14.7863916643485	2020/04/01 20:53:36
2596	1383858	48145	Falls County	Texas	17299	8.72565312015485	2020/04/01 20:53:36
2597	1383859	48147	Fannin County	Texas	34175	14.8119997667493	2020/04/01 20:53:36
2598	1383860	48149	Fayette County	Texas	25066	10.1888008536552	2020/04/01 20:53:36
2599	1383861	48151	Fisher County	Texas	3883	1.66776039550199	2020/04/01 20:53:36
2600	1383862	48153	Floyd County	Texas	5872	2.28514741615961	2020/04/01 20:53:36
2601	1383863	48155	Foard County	Texas	1408	0.771769618474554	2020/04/01 20:53:36
2602	1383864	48157	Fort Bend County	Texas	739342	331.322640165965	2020/04/01 20:53:36
2603	1383865	48159	Franklin County	Texas	10679	14.4982765765992	2020/04/01 20:53:36
2604	1383866	48161	Freestone County	Texas	19709	8.66972990583688	2020/04/01 20:53:36
2605	1383867	48163	Frio County	Texas	19394	6.60614045210438	2020/04/01 20:53:36
2606	1383868	48165	Gaines County	Texas	20321	5.22242361946982	2020/04/01 20:53:36
2607	1383869	48167	Galveston County	Texas	327089	333.273901734218	2020/04/01 20:53:36
2608	1383870	48169	Garza County	Texas	6288	2.71745374162617	2020/04/01 20:53:36
2609	1383871	48171	Gillespie County	Texas	26208	9.56245383415092	2020/04/01 20:53:36
2610	1383872	48173	Glasscock County	Texas	1430	0.613325116492367	2020/04/01 20:53:36
2611	1383873	48175	Goliad County	Texas	7531	3.41279048081621	2020/04/01 20:53:36
2612	1383874	48177	Gonzales County	Texas	20667	7.48071220954013	2020/04/01 20:53:36
2613	1383875	48179	Gray County	Texas	22685	9.45893450265317	2020/04/01 20:53:36
2614	1383876	48181	Grayson County	Texas	128560	53.2114786719019	2020/04/01 20:53:36
2615	1383877	48183	Gregg County	Texas	123494	174.413694850221	2020/04/01 20:53:36
2616	1383878	48185	Grimes County	Texas	27630	13.5472386054342	2020/04/01 20:53:36
2617	1383879	48187	Guadalupe County	Texas	155137	84.2158537716774	2020/04/01 20:53:36
2618	1383880	48189	Hale County	Texas	34113	13.1097483840724	2020/04/01 20:53:36
2619	1383881	48191	Hall County	Texas	3074	1.34339430139724	2020/04/01 20:53:36
2620	1383882	48193	Hamilton County	Texas	8269	3.81938413002264	2020/04/01 20:53:36
2621	1383883	48195	Hansford County	Texas	5547	2.32842538928007	2020/04/01 20:53:36
2622	1383884	48197	Hardeman County	Texas	3952	2.19514409896517	2020/04/01 20:53:36
2623	1383885	48199	Hardin County	Texas	56379	24.442356156773	2020/04/01 20:53:36
2624	1383886	48201	Harris County	Texas	4602523	1042.13065070773	2020/04/01 20:53:36
2625	1383887	48203	Harrison County	Texas	66645	28.5922768254501	2020/04/01 20:53:36
2626	1383888	48205	Hartley County	Texas	5767	1.52306832765785	2020/04/01 20:53:36
2627	1383889	48207	Haskell County	Texas	5809	2.48342975529736	2020/04/01 20:53:36
2628	1383890	48209	Hays County	Texas	204150	116.259946397189	2020/04/01 20:53:36
2629	1383891	48211	Hemphill County	Texas	4061	1.7300949473764	2020/04/01 20:53:36
2630	1383892	48213	Henderson County	Texas	80460	35.5536059135239	2020/04/01 20:53:36
2631	1383893	48215	Hidalgo County	Texas	849389	208.766361446875	2020/04/01 20:53:36
2632	1383894	48217	Hill County	Texas	35399	14.2541107811168	2020/04/01 20:53:36
2633	1383895	48219	Hockley County	Texas	23162	9.8447590729286	2020/04/01 20:53:36
2634	1383896	48221	Hood County	Texas	56901	52.2210578344457	2020/04/01 20:53:36
2635	1383897	48223	Hopkins County	Texas	36240	18.2360166718556	2020/04/01 20:53:36
2636	1383898	48225	Houston County	Texas	22955	7.19978820283774	2020/04/01 20:53:36
2637	1383899	48227	Howard County	Texas	36667	15.7164101615326	2020/04/01 20:53:36
2638	1383900	48229	Hudspeth County	Texas	4098	0.346184876575034	2020/04/01 20:53:36
2639	1383901	48231	Hunt County	Texas	92152	42.3401085017567	2020/04/01 20:53:36
2640	1383902	48233	Hutchinson County	Texas	21571	9.38519121646415	2020/04/01 20:53:36
2641	1383903	48235	Irion County	Texas	1524	0.559576954769846	2020/04/01 20:53:36
2642	1383904	48237	Jack County	Texas	8842	3.7476848562361	2020/04/01 20:53:36
2643	1383905	48239	Jackson County	Texas	14820	6.89864898212927	2020/04/01 20:53:36
2644	1383906	48241	Jasper County	Texas	35504	14.6040564255757	2020/04/01 20:53:36
2645	1383907	48243	Jeff Davis County	Texas	2234	0.380892480628825	2020/04/01 20:53:36
2646	1383908	48245	Jefferson County	Texas	255210	112.437564456015	2020/04/01 20:53:36
2647	1383909	48247	Jim Hogg County	Texas	5282	1.79496563039944	2020/04/01 20:53:36
2648	1383910	48249	Jim Wells County	Texas	41192	18.3828846379285	2020/04/01 20:53:36
2649	1383911	48251	Johnson County	Texas	163475	87.0833986210229	2020/04/01 20:53:36
2650	1383912	48253	Jones County	Texas	19891	8.27073522051882	2020/04/01 20:53:36
2651	1383913	48255	Karnes County	Texas	15387	7.94779638574582	2020/04/01 20:53:36
2652	1383914	48257	Kaufman County	Texas	118910	58.809857422536	2020/04/01 20:53:36
2653	1383915	48259	Kendall County	Texas	41982	24.4686336080459	2020/04/01 20:53:36
2654	1383916	48261	Kenedy County	Texas	595	0.157516766798116	2020/04/01 20:53:36
2655	1383917	48263	Kent County	Texas	749	0.320430270036095	2020/04/01 20:53:36
2656	1383918	48265	Kerr County	Texas	51365	17.9748623266836	2020/04/01 20:53:36
2657	1383919	48267	Kimble County	Texas	4408	1.3604787191283	2020/04/01 20:53:36
2658	1383920	48269	King County	Texas	228	0.0966450266498534	2020/04/01 20:53:36
2659	1383921	48271	Kinney County	Texas	3675	1.04328552465351	2020/04/01 20:53:36
2660	1383922	48273	Kleberg County	Texas	31425	13.7673615421094	2020/04/01 20:53:36
2661	1383923	48275	Knox County	Texas	3733	1.69442363312255	2020/04/01 20:53:36
2662	1383925	48277	Lamar County	Texas	49532	21.0811344730545	2020/04/01 20:53:36
2663	1383926	48279	Lamb County	Texas	13262	5.03894987810358	2020/04/01 20:53:36
2664	1383927	48281	Lampasas County	Texas	20640	11.1794138512207	2020/04/01 20:53:36
2665	1383924	48283	La Salle County	Texas	7409	1.92414283791798	2020/04/01 20:53:36
2666	1383928	48285	Lavaca County	Texas	19941	7.93976512655366	2020/04/01 20:53:36
2667	1383929	48287	Lee County	Texas	16952	10.4050743760357	2020/04/01 20:53:36
2668	1383930	48289	Leon County	Texas	17098	6.15155013675713	2020/04/01 20:53:36
2669	1383931	48291	Liberty County	Texas	81862	27.2854742193571	2020/04/01 20:53:36
2670	1383932	48293	Limestone County	Texas	23515	10.0274911377255	2020/04/01 20:53:36
2671	1383933	48295	Lipscomb County	Texas	3469	1.43682519079334	2020/04/01 20:53:36
2672	1383934	48297	Live Oak County	Texas	12123	4.50201053373317	2020/04/01 20:53:36
2673	1383935	48299	Llano County	Texas	20640	8.53180425764232	2020/04/01 20:53:36
2674	1383936	48301	Loving County	Texas	102	0.0588836336073344	2020/04/01 20:53:36
2675	1383937	48303	Lubbock County	Texas	301454	129.959318000759	2020/04/01 20:53:36
2676	1383938	48305	Lynn County	Texas	5808	2.51436751286519	2020/04/01 20:53:36
2677	1383945	48307	McCulloch County	Texas	8098	2.93417115241428	2020/04/01 20:53:36
2678	1383946	48309	McLennan County	Texas	248429	92.4857483664463	2020/04/01 20:53:36
2679	1383947	48311	McMullen County	Texas	662	0.224249738101542	2020/04/01 20:53:36
2680	1383939	48313	Madison County	Texas	14128	11.7040506883547	2020/04/01 20:53:36
2681	1383940	48315	Marion County	Texas	10083	10.2211376221867	2020/04/01 20:53:36
2682	1383941	48317	Martin County	Texas	5614	2.3690516711058	2020/04/01 20:53:36
2683	1383942	48319	Mason County	Texas	4161	1.72966072098891	2020/04/01 20:53:36
2684	1383943	48321	Matagorda County	Texas	36743	12.9807009828232	2020/04/01 20:53:36
2685	1383944	48323	Maverick County	Texas	57970	17.4934183947971	2020/04/01 20:53:36
2686	1383948	48325	Medina County	Texas	49334	14.3719304702469	2020/04/01 20:53:36
2687	1383949	48327	Menard County	Texas	2123	0.908725914753073	2020/04/01 20:53:36
2688	1383950	48329	Midland County	Texas	164194	70.4197334989774	2020/04/01 20:53:36
2689	1383951	48331	Milam County	Texas	24664	9.36442273639666	2020/04/01 20:53:36
2690	1383952	48333	Mills County	Texas	4902	2.52958527493796	2020/04/01 20:53:36
2691	1383953	48335	Mitchell County	Texas	8558	3.62671541451339	2020/04/01 20:53:36
2692	1383954	48337	Montague County	Texas	19409	8.05007110215243	2020/04/01 20:53:36
2693	1383955	48339	Montgomery County	Texas	554445	205.321086912675	2020/04/01 20:53:36
2694	1383956	48341	Moore County	Texas	21801	9.35582042731036	2020/04/01 20:53:36
2695	1383957	48343	Morris County	Texas	12424	19.0362602145226	2020/04/01 20:53:36
2696	1383958	48345	Motley County	Texas	1156	0.4510402973483	2020/04/01 20:53:36
2697	1383959	48347	Nacogdoches County	Texas	65558	26.7412054197836	2020/04/01 20:53:36
2698	1383960	48349	Navarro County	Texas	48583	18.5790439848761	2020/04/01 20:53:36
2699	1383961	48351	Newton County	Texas	14057	5.81297125701534	2020/04/01 20:53:36
2700	1383962	48353	Nolan County	Texas	14966	6.33599017652774	2020/04/01 20:53:36
2701	1383963	48355	Nueces County	Texas	360486	166.028634375297	2020/04/01 20:53:36
2702	1383964	48357	Ochiltree County	Texas	10348	4.35376749677255	2020/04/01 20:53:36
2703	1383965	48359	Oldham County	Texas	2090	0.537781447988349	2020/04/01 20:53:36
2704	1383966	48361	Orange County	Texas	84047	97.2215802406318	2020/04/01 20:53:36
2705	1383967	48363	Palo Pinto County	Texas	28317	11.4778918276682	2020/04/01 20:53:36
2706	1383968	48365	Panola County	Texas	23440	11.1544636139163	2020/04/01 20:53:36
2707	1383969	48367	Parker County	Texas	129802	55.470785113502	2020/04/01 20:53:36
2708	1383970	48369	Parmer County	Texas	9852	4.31856728852797	2020/04/01 20:53:36
2709	1383971	48371	Pecos County	Texas	15797	1.28032484717464	2020/04/01 20:53:36
2710	1383972	48373	Polk County	Texas	47837	17.4732169931259	2020/04/01 20:53:36
2711	1383973	48375	Potter County	Texas	120899	51.3869331514923	2020/04/01 20:53:36
2712	1383974	48377	Presidio County	Texas	7123	0.713365951495892	2020/04/01 20:53:36
2713	1383975	48379	Rains County	Texas	11473	19.3056959935703	2020/04/01 20:53:36
2714	1383976	48381	Randall County	Texas	132475	56.0888712560936	2020/04/01 20:53:36
2715	1383977	48383	Reagan County	Texas	3752	1.23256880993844	2020/04/01 20:53:36
2716	1383978	48385	Real County	Texas	3389	1.87153518415653	2020/04/01 20:53:36
2717	1383979	48387	Red River County	Texas	12275	4.54019766401323	2020/04/01 20:53:36
2718	1383980	48389	Reeves County	Texas	15125	2.21594372931446	2020/04/01 20:53:36
2719	1383981	48391	Refugio County	Texas	7236	3.6260760709598	2020/04/01 20:53:36
2720	1383982	48393	Roberts County	Texas	885	0.369782546269164	2020/04/01 20:53:36
2721	1383983	48395	Robertson County	Texas	16890	7.62624859349727	2020/04/01 20:53:36
2722	1383984	48397	Rockwall County	Texas	93642	284.441672044511	2020/04/01 20:53:36
2723	1383985	48399	Runnels County	Texas	10310	3.78729532505107	2020/04/01 20:53:36
2724	1383986	48401	Rusk County	Texas	53595	22.3942853972123	2020/04/01 20:53:36
2725	1383987	48403	Sabine County	Texas	10458	8.21198970142993	2020/04/01 20:53:36
2726	1383988	48405	San Augustine County	Texas	8327	6.05866501065776	2020/04/01 20:53:36
2727	1383989	48407	San Jacinto County	Texas	27819	18.8688810214327	2020/04/01 20:53:36
2728	1383990	48409	San Patricio County	Texas	67046	37.3309231801277	2020/04/01 20:53:36
2729	1383991	48411	San Saba County	Texas	5962	2.02758276802011	2020/04/01 20:53:36
2730	1383992	48413	Schleicher County	Texas	3061	0.901740597086667	2020/04/01 20:53:36
2731	1383993	48415	Scurry County	Texas	17239	7.35110228154041	2020/04/01 20:53:36
2732	1383994	48417	Shackelford County	Texas	3311	1.39823269654078	2020/04/01 20:53:36
2733	1383995	48419	Shelby County	Texas	25478	12.3645628729828	2020/04/01 20:53:36
2734	1383996	48421	Sherman County	Texas	3058	1.27914941359342	2020/04/01 20:53:36
2735	1383997	48423	Smith County	Texas	225015	94.2825266569404	2020/04/01 20:53:36
2736	1383998	48425	Somervell County	Texas	8743	18.1037523500272	2020/04/01 20:53:36
2737	1383999	48427	Starr County	Texas	63894	20.1684381311828	2020/04/01 20:53:36
2738	1384000	48429	Stephens County	Texas	9372	4.03531159953458	2020/04/01 20:53:36
2739	1384001	48431	Sterling County	Texas	1141	0.477061979888246	2020/04/01 20:53:36
2740	1384002	48433	Stonewall County	Texas	1385	0.583590685589275	2020/04/01 20:53:36
2741	1384003	48435	Sutton County	Texas	3865	1.0263764737678	2020/04/01 20:53:36
2742	1384004	48437	Swisher County	Texas	7484	3.24614670241567	2020/04/01 20:53:36
2743	1384005	48439	Tarrant County	Texas	2019977	903.05200921491	2020/04/01 20:53:36
2744	1384006	48441	Taylor County	Texas	136348	57.5010015389649	2020/04/01 20:53:36
2745	1384007	48443	Terrell County	Texas	862	0.141144059835929	2020/04/01 20:53:36
2746	1384008	48445	Terry County	Texas	12615	5.4798191100548	2020/04/01 20:53:36
2747	1384009	48447	Throckmorton County	Texas	1567	0.662999944416319	2020/04/01 20:53:36
2748	1384010	48449	Titus County	Texas	32730	31.1215268037344	2020/04/01 20:53:36
2749	1384011	48451	Tom Green County	Texas	117466	29.7988409008887	2020/04/01 20:53:36
2750	1384012	48453	Travis County	Texas	1203166	468.362862808123	2020/04/01 20:53:36
2751	1384013	48455	Trinity County	Texas	14569	8.1077411854149	2020/04/01 20:53:36
2752	1384014	48457	Tyler County	Texas	21496	8.97851926773152	2020/04/01 20:53:36
2753	1384015	48459	Upshur County	Texas	40769	27.0009452880672	2020/04/01 20:53:36
2754	1384016	48461	Upton County	Texas	3634	1.13032286736473	2020/04/01 20:53:36
2755	1384017	48463	Uvalde County	Texas	27009	6.71956645043787	2020/04/01 20:53:36
2756	1384018	48465	Val Verde County	Texas	49027	6.01937638523006	2020/04/01 20:53:36
2757	1384019	48467	Van Zandt County	Texas	54368	24.9139047775813	2020/04/01 20:53:36
2758	1384020	48469	Victoria County	Texas	91970	40.2557086383184	2020/04/01 20:53:36
2759	1384021	48471	Walker County	Texas	71539	35.2213692895532	2020/04/01 20:53:36
2760	1384022	48473	Waller County	Texas	49987	37.5973427693089	2020/04/01 20:53:36
2761	1384023	48475	Ward County	Texas	11586	5.35347671622505	2020/04/01 20:53:36
2762	1384024	48477	Washington County	Texas	34796	22.2362954105879	2020/04/01 20:53:36
2763	1384025	48479	Webb County	Texas	272053	31.248238637591	2020/04/01 20:53:36
2764	1384026	48481	Wharton County	Texas	41551	14.7704469530281	2020/04/01 20:53:36
2765	1384027	48483	Wheeler County	Texas	5482	2.31444385569764	2020/04/01 20:53:36
2766	1384028	48485	Wichita County	Texas	131818	81.0958149730072	2020/04/01 20:53:36
2767	1384029	48487	Wilbarger County	Texas	12906	5.13214477687841	2020/04/01 20:53:36
2768	1384030	48489	Willacy County	Texas	21754	14.2218069331982	2020/04/01 20:53:36
2769	1384031	48491	Williamson County	Texas	527057	181.964521526996	2020/04/01 20:53:36
2770	1384032	48493	Wilson County	Texas	48198	23.1536052571556	2020/04/01 20:53:36
2771	1384033	48495	Winkler County	Texas	7802	3.58074503547669	2020/04/01 20:53:36
2772	1384034	48497	Wise County	Texas	64639	27.59556666333	2020/04/01 20:53:36
2773	1384035	48499	Wood County	Texas	43815	26.2180411704578	2020/04/01 20:53:36
2774	1384036	48501	Yoakum County	Texas	8571	4.13807592033117	2020/04/01 20:53:36
2775	1384037	48503	Young County	Texas	18114	7.64775470642388	2020/04/01 20:53:36
2776	1384038	48505	Zapata County	Texas	14369	5.55672382708122	2020/04/01 20:53:36
2777	1384039	48507	Zavala County	Texas	12131	3.6101277704896	2020/04/01 20:53:36
2778	1448015	49001	Beaver County	Utah	6443	0.963125031336786	2020/04/01 20:53:36
2779	1455966	49003	Box Elder County	Utah	53001	3.56165178893216	2020/04/01 20:53:36
2780	1448017	49005	Cache County	Utah	122336	40.5537433722118	2020/04/01 20:53:36
2781	1448018	49007	Carbon County	Utah	20356	5.31340125095471	2020/04/01 20:53:36
2782	1448019	49009	Daggett County	Utah	612	0.339023252162355	2020/04/01 20:53:36
2783	1448020	49011	Davis County	Utah	340621	439.794275837236	2020/04/01 20:53:36
2784	1448021	49013	Duchesne County	Utah	20219	2.41291167969328	2020/04/01 20:53:36
2785	1448022	49015	Emery County	Utah	10248	0.886716679986861	2020/04/01 20:53:36
2786	1448023	49017	Garfield County	Utah	5017	0.374303191905102	2020/04/01 20:53:36
2787	1448024	49019	Grand County	Utah	9616	1.01089511660296	2020/04/01 20:53:36
2788	1448025	49021	Iron County	Utah	49691	5.82033954652595	2020/04/01 20:53:36
2789	1455158	49023	Juab County	Utah	10948	1.24629919647103	2020/04/01 20:53:36
2790	1448026	49025	Kane County	Utah	7350	0.711250452771152	2020/04/01 20:53:36
2791	1448027	49027	Millard County	Utah	12733	0.744322166797224	2020/04/01 20:53:36
2792	1448028	49029	Morgan County	Utah	11391	7.21982353393644	2020/04/01 20:53:36
2793	1448029	49031	Piute County	Utah	1904	0.969279410445654	2020/04/01 20:53:36
2794	1448030	49033	Rich County	Utah	2350	0.881900082503967	2020/04/01 20:53:36
2795	1448031	49035	Salt Lake County	Utah	1120805	583.162253223751	2020/04/01 20:53:36
2796	1448032	49037	San Juan County	Utah	15281	0.754500566587932	2020/04/01 20:53:36
2797	1448033	49039	Sanpete County	Utah	29366	7.13130224555859	2020/04/01 20:53:36
2798	1448034	49041	Sevier County	Utah	21118	4.26798706634357	2020/04/01 20:53:36
2799	1448035	49043	Summit County	Utah	40511	8.3617858054769	2020/04/01 20:53:36
2800	1448036	49045	Tooele County	Utah	65185	3.62550648113495	2020/04/01 20:53:36
2801	1448037	49047	Uintah County	Utah	36323	3.12877941698049	2020/04/01 20:53:36
2802	1448038	49049	Utah County	Utah	590440	113.779008231689	2020/04/01 20:53:36
2803	1448039	49051	Wasatch County	Utah	30523	10.0125703436495	2020/04/01 20:53:36
2804	1448040	49053	Washington County	Utah	160537	25.5346037480816	2020/04/01 20:53:36
2805	1448041	49055	Wayne County	Utah	2694	0.422653771424376	2020/04/01 20:53:36
2806	1448042	49057	Weber County	Utah	247731	165.981423370835	2020/04/01 20:53:36
2807	1461757	50001	Addison County	Vermont	36939	18.6111273289705	2020/04/01 20:53:36
2808	1461758	50003	Bennington County	Vermont	35920	20.5464597878637	2020/04/01 20:53:36
2809	1461759	50005	Caledonia County	Vermont	30425	18.0998654845958	2020/04/01 20:53:36
2810	1461760	50007	Chittenden County	Vermont	162052	116.605130378786	2020/04/01 20:53:36
2811	1461761	50009	Essex County	Vermont	6208	3.61199584128018	2020/04/01 20:53:36
2812	1461762	50011	Franklin County	Vermont	49025	29.8503336480629	2020/04/01 20:53:36
2813	1461763	50013	Grand Isle County	Vermont	6965	32.87212693068	2020/04/01 20:53:36
2814	1461764	50015	Lamoille County	Vermont	25268	21.2609721715667	2020/04/01 20:53:36
2815	1461765	50017	Orange County	Vermont	28937	16.2622665319102	2020/04/01 20:53:36
2816	1461766	50019	Orleans County	Vermont	26911	14.9809586120743	2020/04/01 20:53:36
2817	1461767	50021	Rutland County	Vermont	59273	24.6128476160329	2020/04/01 20:53:36
2818	1461768	50023	Washington County	Vermont	58477	32.8627932121356	2020/04/01 20:53:36
2819	1461769	50025	Windham County	Vermont	43150	21.2096317380194	2020/04/01 20:53:36
2820	1461770	50027	Windsor County	Vermont	55427	22.0719633461461	2020/04/01 20:53:36
2821	1480091	51001	Accomack County	Virginia	32742	28.1359681116964	2020/04/01 20:53:36
2822	1675170	51003	Albemarle County	Virginia	106355	56.9960094663718	2020/04/01 20:53:36
2823	1673675	51005	Alleghany County	Virginia	15286	13.2162229688555	2020/04/01 20:53:36
2824	1497770	51007	Amelia County	Virginia	12854	13.9695599701853	2020/04/01 20:53:36
2825	1480095	51009	Amherst County	Virginia	31882	25.9719602051438	2020/04/01 20:53:36
2826	1497238	51011	Appomattox County	Virginia	15577	17.9951422866035	2020/04/01 20:53:36
2827	1480097	51013	Arlington County	Virginia	231803	3442.63585463294	2020/04/01 20:53:36
2828	1480098	51015	Augusta County	Virginia	74701	29.8242293089727	2020/04/01 20:53:36
2829	1673638	51017	Bath County	Virginia	4393	3.20510468976521	2020/04/01 20:53:36
2830	1674818	51019	Bedford County	Virginia	77908	39.5752296142677	2020/04/01 20:53:36
2831	1494613	51021	Bland County	Virginia	6447	6.95986350998392	2020/04/01 20:53:36
2832	1674418	51023	Botetourt County	Virginia	33222	23.6978316830682	2020/04/01 20:53:36
2833	1493961	51025	Brunswick County	Virginia	16665	11.3634817325086	2020/04/01 20:53:36
2834	1497431	51027	Buchanan County	Virginia	22138	16.9980204684914	2020/04/01 20:53:36
2835	1501502	51029	Buckingham County	Virginia	17004	11.3268219667749	2020/04/01 20:53:36
2836	1674917	51031	Campbell County	Virginia	55170	42.33097537703	2020/04/01 20:53:36
2837	1480107	51033	Caroline County	Virginia	30184	22.0885013964241	2020/04/01 20:53:36
2838	1480108	51035	Carroll County	Virginia	29738	24.1854524553904	2020/04/01 20:53:36
2839	1480109	51036	Charles City County	Virginia	6995	14.7731510636387	2020/04/01 20:53:36
2840	1492442	51037	Charlotte County	Virginia	12095	9.82526448265532	2020/04/01 20:53:36
2841	1480111	51041	Chesterfield County	Virginia	339447	309.422654492403	2020/04/01 20:53:36
2842	1690562	51043	Clarke County	Virginia	14365	31.5254117247301	2020/04/01 20:53:36
2843	1673664	51045	Craig County	Virginia	5113	6.01691898307908	2020/04/01 20:53:36
2844	1497831	51047	Culpeper County	Virginia	50450	51.3700808363156	2020/04/01 20:53:36
2845	1494109	51049	Cumberland County	Virginia	9786	12.7004167883292	2020/04/01 20:53:36
2846	1497376	51051	Dickenson County	Virginia	14960	17.4794814635643	2020/04/01 20:53:36
2847	1690739	51053	Dinwiddie County	Virginia	28308	21.6904274490425	2020/04/01 20:53:36
2848	1480118	51057	Essex County	Virginia	11036	16.5734440474237	2020/04/01 20:53:36
2849	1480119	51059	Fairfax County	Virginia	1143529	1129.20580464924	2020/04/01 20:53:36
2850	1480120	51061	Fauquier County	Virginia	69115	41.1809044133723	2020/04/01 20:53:36
2851	1494354	51063	Floyd County	Virginia	15666	15.8790069217175	2020/04/01 20:53:36
2852	1494061	51065	Fluvanna County	Virginia	26282	35.3428255558143	2020/04/01 20:53:36
2853	1494434	51067	Franklin County	Virginia	56233	31.4379030622912	2020/04/01 20:53:36
2854	1480124	51069	Frederick County	Virginia	85153	79.5746841393496	2020/04/01 20:53:36
2855	1494551	51071	Giles County	Virginia	16814	18.1732642275596	2020/04/01 20:53:36
2856	1480126	51073	Gloucester County	Virginia	37161	65.874538036211	2020/04/01 20:53:36
2857	1674271	51075	Goochland County	Virginia	22482	30.9315790032854	2020/04/01 20:53:36
2858	1501196	51077	Grayson County	Virginia	15811	13.8181612308925	2020/04/01 20:53:36
2859	1480129	51079	Greene County	Virginia	19410	48.0606032470353	2020/04/01 20:53:36
2860	1501122	51081	Greensville County	Virginia	11659	15.2478069026627	2020/04/01 20:53:36
2861	1496705	51083	Halifax County	Virginia	34779	16.4213771827093	2020/04/01 20:53:36
2862	1480132	51085	Hanover County	Virginia	104449	86.1919637339166	2020/04/01 20:53:36
2863	1480133	51087	Henrico County	Virginia	325642	538.090840570989	2020/04/01 20:53:36
2864	1502770	51089	Henry County	Virginia	51588	52.0942356852706	2020/04/01 20:53:36
2865	1673774	51091	Highland County	Virginia	2214	2.05902366740942	2020/04/01 20:53:36
2866	1702378	51093	Isle of Wight County	Virginia	36372	44.4876726196645	2020/04/01 20:53:36
2867	1480135	51095	James City County	Virginia	74153	201.106739859977	2020/04/01 20:53:36
2868	1480136	51097	King and Queen County	Virginia	7052	8.63962511377793	2020/04/01 20:53:36
2869	1480137	51099	King George County	Virginia	25890	55.6627087184148	2020/04/01 20:53:36
2870	1480138	51101	King William County	Virginia	16497	23.2525250322446	2020/04/01 20:53:36
2871	1480139	51103	Lancaster County	Virginia	10804	31.2942736018195	2020/04/01 20:53:36
2872	1496538	51105	Lee County	Virginia	24134	21.4025545950466	2020/04/01 20:53:36
2873	1480141	51107	Loudoun County	Virginia	385143	288.317756013779	2020/04/01 20:53:36
2874	1494707	51109	Louisa County	Virginia	35380	27.5335720412056	2020/04/01 20:53:36
2875	1492239	51111	Lunenburg County	Virginia	12278	10.9811511911602	2020/04/01 20:53:36
2876	1494590	51113	Madison County	Virginia	13139	15.8215863754233	2020/04/01 20:53:36
2877	1480145	51115	Mathews County	Virginia	8796	39.532767097606	2020/04/01 20:53:36
2878	1500747	51117	Mecklenburg County	Virginia	30847	19.0472088804731	2020/04/01 20:53:36
2879	1480147	51119	Middlesex County	Virginia	10700	31.6986180243888	2020/04/01 20:53:36
2880	1674630	51121	Montgomery County	Virginia	97997	97.8091647370008	2020/04/01 20:53:36
2881	1500936	51125	Nelson County	Virginia	14812	12.1487062901972	2020/04/01 20:53:36
2882	1480150	51127	New Kent County	Virginia	21103	38.7929869559128	2020/04/01 20:53:36
2883	1480151	51131	Northampton County	Virginia	11957	21.8080862330068	2020/04/01 20:53:36
2884	1480152	51133	Northumberland County	Virginia	12223	24.6546611248496	2020/04/01 20:53:36
2885	1493928	51135	Nottoway County	Virginia	15500	19.0355583283937	2020/04/01 20:53:36
2886	1494761	51137	Orange County	Virginia	35612	40.3089895258474	2020/04/01 20:53:36
2887	1500440	51139	Page County	Virginia	23749	29.577194889521	2020/04/01 20:53:36
2888	1497999	51141	Patrick County	Virginia	17859	14.2775353307381	2020/04/01 20:53:36
2889	1480157	51143	Pittsylvania County	Virginia	61676	24.57499338787	2020/04/01 20:53:36
2890	1674225	51145	Powhatan County	Virginia	28574	42.399881425157	2020/04/01 20:53:36
2891	1492359	51147	Prince Edward County	Virginia	22956	25.3266792437305	2020/04/01 20:53:36
2892	1480160	51149	Prince George County	Virginia	37894	55.1393401639268	2020/04/01 20:53:36
2893	1480161	51153	Prince William County	Virginia	456749	525.262881508984	2020/04/01 20:53:36
2894	1501465	51155	Pulaski County	Virginia	34234	41.3265922547858	2020/04/01 20:53:36
2895	1673976	51157	Rappahannock County	Virginia	7332	10.6276129585239	2020/04/01 20:53:36
2896	1480164	51159	Richmond County	Virginia	8878	17.9018851112506	2020/04/01 20:53:36
2897	1480165	51161	Roanoke County	Virginia	93583	144.216652416059	2020/04/01 20:53:36
2898	1480166	51163	Rockbridge County	Virginia	22509	14.5685729447282	2020/04/01 20:53:36
2899	1488970	51165	Rockingham County	Virginia	79444	36.095425564345	2020/04/01 20:53:36
2900	1497573	51167	Russell County	Virginia	27408	22.3479787429823	2020/04/01 20:53:36
2901	1498172	51169	Scott County	Virginia	22009	15.8590699675578	2020/04/01 20:53:36
2902	1673918	51171	Shenandoah County	Virginia	43045	32.7115097112322	2020/04/01 20:53:36
2903	1500545	51173	Smyth County	Virginia	31059	26.5690410312299	2020/04/01 20:53:36
2904	1480171	51175	Southampton County	Virginia	17939	11.5596262938748	2020/04/01 20:53:36
2905	1480172	51177	Spotsylvania County	Virginia	131412	126.371401782121	2020/04/01 20:53:36
2906	1480173	51179	Stafford County	Virginia	144012	206.546638055036	2020/04/01 20:53:36
2907	1480174	51181	Surry County	Virginia	6600	9.13525471270143	2020/04/01 20:53:36
2908	1690257	51183	Sussex County	Virginia	11486	9.04638098591414	2020/04/01 20:53:36
2909	1497748	51185	Tazewell County	Virginia	42080	31.3174022566405	2020/04/01 20:53:36
2910	1674058	51187	Warren County	Virginia	39449	70.997274868346	2020/04/01 20:53:36
2911	1498359	51191	Washington County	Virginia	54406	37.4339708593057	2020/04/01 20:53:36
2912	1480179	51193	Westmoreland County	Virginia	17638	29.6960617174877	2020/04/01 20:53:36
2913	1496656	51195	Wise County	Virginia	39025	37.347959960112	2020/04/01 20:53:36
2914	1501379	51197	Wythe County	Virginia	28940	24.1897889718418	2020/04/01 20:53:36
2915	1480182	51199	York County	Virginia	67587	249.474194755752	2020/04/01 20:53:36
2916	1498415	51510	Alexandria city	Virginia	156505	4046.49321287735	2020/04/01 20:53:36
2917	1498416	51520	Bristol city	Virginia	16843	503.976998804554	2020/04/01 20:53:36
2918	1498417	51530	Buena Vista city	Virginia	6399	383.753948410731	2020/04/01 20:53:36
2919	1789068	51540	Charlottesville city	Virginia	47042	1772.92395154229	2020/04/01 20:53:36
2920	1498558	51550	Chesapeake city	Virginia	237820	271.255535330367	2020/04/01 20:53:36
2921	1498420	51570	Colonial Heights city	Virginia	17593	903.352524889049	2020/04/01 20:53:36
2922	1789069	51580	Covington city	Virginia	5582	394.102108735751	2020/04/01 20:53:36
2923	1498421	51590	Danville city	Virginia	41512	374.506547567474	2020/04/01 20:53:36
2924	1498422	51595	Emporia city	Virginia	5381	300.932757327567	2020/04/01 20:53:36
2925	1789070	51600	Fairfax city	Virginia	23865	1476.54520471141	2020/04/01 20:53:36
2926	1498423	51610	Falls Church city	Virginia	14067	2654.0182424841	2020/04/01 20:53:36
2927	1498424	51620	Franklin city	Virginia	8211	380.780627647604	2020/04/01 20:53:36
2928	1498425	51630	Fredericksburg city	Virginia	28469	1051.79082452251	2020/04/01 20:53:36
2929	1498426	51640	Galax city	Virginia	6638	311.174589852389	2020/04/01 20:53:36
2930	1498554	51650	Hampton city	Virginia	135583	1018.34027202183	2020/04/01 20:53:36
2931	1498563	51660	Harrisonburg city	Virginia	53391	1188.88697635342	2020/04/01 20:53:36
2932	1498428	51670	Hopewell city	Virginia	22408	835.535743855943	2020/04/01 20:53:36
2933	1789071	51678	Lexington city	Virginia	7110	1098.4084355296	2020/04/01 20:53:36
2934	1498429	51680	Lynchburg city	Virginia	80131	631.736043934096	2020/04/01 20:53:36
2935	1498430	51683	Manassas city	Virginia	41457	1625.07006808854	2020/04/01 20:53:36
2936	1498431	51685	Manassas Park city	Virginia	16423	2511.65404110499	2020/04/01 20:53:36
2937	1789072	51690	Martinsville city	Virginia	13101	461.683087703788	2020/04/01 20:53:36
2938	1498555	51700	Newport News city	Virginia	180145	1006.30368020134	2020/04/01 20:53:36
2939	1498557	51710	Norfolk city	Virginia	245592	1779.83490362982	2020/04/01 20:53:36
2940	1498434	51720	Norton city	Virginia	3990	206.029986502712	2020/04/01 20:53:36
2941	1498435	51730	Petersburg city	Virginia	31827	540.861429269364	2020/04/01 20:53:36
2942	1498436	51735	Poquoson city	Virginia	12039	302.203859107385	2020/04/01 20:53:36
2943	1498556	51740	Portsmouth city	Virginia	95311	1105.07804527461	2020/04/01 20:53:36
2944	1498438	51750	Radford city	Virginia	17630	703.46230740824	2020/04/01 20:53:36
2945	1789073	51760	Richmond city	Virginia	223787	1442.14668748179	2020/04/01 20:53:36
2946	1498439	51770	Roanoke city	Virginia	99621	904.648408637989	2020/04/01 20:53:36
2947	1789074	51775	Salem city	Virginia	25519	678.685039823246	2020/04/01 20:53:36
2948	1789075	51790	Staunton city	Virginia	24452	473.932721517175	2020/04/01 20:53:36
2949	1498560	51800	Suffolk city	Virginia	89160	86.2446960672682	2020/04/01 20:53:36
2950	1498559	51810	Virginia Beach city	Virginia	450135	710.179967367614	2020/04/01 20:53:36
2951	1498443	51820	Waynesboro city	Virginia	21926	565.519157470855	2020/04/01 20:53:36
2952	1789076	51830	Williamsburg city	Virginia	14788	638.644008652875	2020/04/01 20:53:36
2953	1789077	51840	Winchester city	Virginia	27789	1167.13965733831	2020/04/01 20:53:36
2954	1531601	53001	Adams County	Washington	19452	3.90155935164216	2020/04/01 20:53:36
2955	1533502	53003	Asotin County	Washington	22337	13.5585798878058	2020/04/01 20:53:36
2956	1513302	53005	Benton County	Washington	194168	44.0996056822111	2020/04/01 20:53:36
2957	1531932	53007	Chelan County	Washington	75757	10.0131002020281	2020/04/01 20:53:36
2958	1531341	53009	Clallam County	Washington	74487	16.5410432314785	2020/04/01 20:53:36
2959	1531820	53011	Clark County	Washington	465384	285.903649112559	2020/04/01 20:53:36
2960	1513273	53013	Columbia County	Washington	4001	1.7785188570349	2020/04/01 20:53:36
2961	1529156	53015	Cowlitz County	Washington	105112	35.5812838227925	2020/04/01 20:53:36
2962	1531818	53017	Douglas County	Washington	41371	8.78016610668887	2020/04/01 20:53:36
2963	1531821	53019	Ferry County	Washington	7576	1.32764128162999	2020/04/01 20:53:36
2964	1531822	53021	Franklin County	Washington	90660	28.1927662599176	2020/04/01 20:53:36
2965	1533500	53023	Garfield County	Washington	2224	1.20800308693456	2020/04/01 20:53:36
2966	1531924	53025	Grant County	Washington	94860	13.6688764513564	2020/04/01 20:53:36
2967	1531823	53027	Grays Harbor County	Washington	71967	14.6143051246117	2020/04/01 20:53:36
2968	1513272	53029	Island County	Washington	81636	151.165669967486	2020/04/01 20:53:36
2969	1531936	53031	Jefferson County	Washington	30856	6.60503139889385	2020/04/01 20:53:36
2970	1531933	53033	King County	Washington	2163257	394.8557331716	2020/04/01 20:53:36
2971	1529223	53035	Kitsap County	Washington	262475	256.478251982443	2020/04/01 20:53:36
2972	1531926	53037	Kittitas County	Washington	44825	7.53364258474797	2020/04/01 20:53:36
2973	1529219	53039	Klickitat County	Washington	21396	4.41380703632912	2020/04/01 20:53:36
2974	1531927	53041	Lewis County	Washington	76947	12.3646364563511	2020/04/01 20:53:36
2975	1514052	53043	Lincoln County	Washington	10435	1.7436941073872	2020/04/01 20:53:36
2976	1529221	53045	Mason County	Washington	62627	25.2031038891509	2020/04/01 20:53:36
2977	1531928	53047	Okanogan County	Washington	41638	3.05278394040318	2020/04/01 20:53:36
2978	1513274	53049	Pacific County	Washington	21281	8.80882701837827	2020/04/01 20:53:36
2979	1529157	53051	Pend Oreille County	Washington	13219	3.64497325123599	2020/04/01 20:53:36
2980	1529159	53053	Pierce County	Washington	859840	199.055297595935	2020/04/01 20:53:36
2981	1531931	53055	San Juan County	Washington	16473	36.571795865662	2020/04/01 20:53:36
2982	1531402	53057	Skagit County	Washington	123907	27.6501153435941	2020/04/01 20:53:36
2983	1529220	53059	Skamania County	Washington	11620	2.70554193468086	2020/04/01 20:53:36
2984	1529222	53061	Snohomish County	Washington	786620	145.560968552441	2020/04/01 20:53:36
2985	1529225	53063	Spokane County	Washington	497875	108.981113311377	2020/04/01 20:53:36
2986	1531930	53065	Stevens County	Washington	44214	6.89075874056749	2020/04/01 20:53:36
2987	1529226	53067	Thurston County	Washington	274684	146.792699307179	2020/04/01 20:53:36
2988	1513275	53069	Wahkiakum County	Washington	4189	6.15163831925205	2020/04/01 20:53:36
2989	1531819	53071	Walla Walla County	Washington	60236	18.3123269663365	2020/04/01 20:53:36
2990	1529224	53073	Whatcom County	Washington	216812	39.7133103503866	2020/04/01 20:53:36
2991	1533501	53075	Whitman County	Washington	48593	8.68901886661116	2020/04/01 20:53:36
2992	1531929	53077	Yakima County	Washington	249325	22.4157548100339	2020/04/01 20:53:36
2993	1696996	54001	Barbour County	West Virginia	16730	18.9395143289284	2020/04/01 20:53:36
2994	1550008	54003	Berkeley County	West Virginia	113495	136.449841542595	2020/04/01 20:53:36
2995	1550009	54005	Boone County	West Virginia	22817	17.5654913663909	2020/04/01 20:53:36
2996	1550010	54007	Braxton County	West Virginia	14282	10.7951870372882	2020/04/01 20:53:36
2997	1558262	54009	Brooke County	West Virginia	22772	98.5655266170357	2020/04/01 20:53:36
2998	1550012	54011	Cabell County	West Virginia	95318	130.960575597711	2020/04/01 20:53:36
2999	1696945	54013	Calhoun County	West Virginia	7396	10.2260210449384	2020/04/01 20:53:36
3000	1550014	54015	Clay County	West Virginia	8785	9.91963513592397	2020/04/01 20:53:36
3001	1689476	54017	Doddridge County	West Virginia	8536	10.3082066601541	2020/04/01 20:53:36
3002	1560095	54019	Fayette County	West Virginia	44126	25.7509271722696	2020/04/01 20:53:36
3003	1689673	54021	Gilmer County	West Virginia	8205	9.35877157783982	2020/04/01 20:53:36
3004	1697238	54023	Grant County	West Virginia	11641	9.41530878269474	2020/04/01 20:53:36
3005	1557518	54025	Greenbrier County	West Virginia	35347	13.3824076080351	2020/04/01 20:53:36
3006	1718644	54027	Hampshire County	West Virginia	23363	14.0858413297518	2020/04/01 20:53:36
3007	1560574	54029	Hancock County	West Virginia	29680	138.719341080139	2020/04/01 20:53:36
3008	1718557	54031	Hardy County	West Virginia	13842	9.17786017509734	2020/04/01 20:53:36
3009	1718426	54033	Harrison County	West Virginia	68209	63.3056641512553	2020/04/01 20:53:36
3010	1559963	54035	Jackson County	West Virginia	29018	24.1277155063864	2020/04/01 20:53:36
3011	1550025	54037	Jefferson County	West Virginia	56179	103.637327434714	2020/04/01 20:53:36
3012	1550026	54039	Kanawha County	West Virginia	185710	79.5258448763389	2020/04/01 20:53:36
3013	1550027	54041	Lewis County	West Virginia	16276	16.2412217461254	2020/04/01 20:53:36
3014	1550028	54043	Lincoln County	West Virginia	21078	18.6213012425547	2020/04/01 20:53:36
3015	1550029	54045	Logan County	West Virginia	33801	28.7616403987895	2020/04/01 20:53:36
3016	1689162	54047	McDowell County	West Virginia	19217	13.9087641137668	2020/04/01 20:53:36
3017	1718173	54049	Marion County	West Virginia	56497	70.6527975338908	2020/04/01 20:53:36
3018	1717539	54051	Marshall County	West Virginia	31645	40.0031100411265	2020/04/01 20:53:36
3019	1560254	54053	Mason County	West Virginia	26939	24.145762166159	2020/04/01 20:53:36
3020	1557645	54055	Mercer County	West Virginia	60486	55.741569469605	2020/04/01 20:53:36
3021	1717890	54057	Mineral County	West Virginia	27278	32.1230331529781	2020/04/01 20:53:36
3022	1550036	54059	Mingo County	West Virginia	24741	22.5754165501055	2020/04/01 20:53:36
3023	1550037	54061	Monongalia County	West Virginia	105252	112.854885817634	2020/04/01 20:53:36
3024	1557702	54063	Monroe County	West Virginia	13467	10.998616246343	2020/04/01 20:53:36
3025	1557950	54065	Morgan County	West Virginia	17624	29.7052662161384	2020/04/01 20:53:36
3026	1550040	54067	Nicholas County	West Virginia	25324	15.1158789854889	2020/04/01 20:53:36
3027	1717163	54069	Ohio County	West Virginia	42547	155.224963025579	2020/04/01 20:53:36
3028	1550042	54071	Pendleton County	West Virginia	7056	3.91399928461346	2020/04/01 20:53:36
3029	1678557	54073	Pleasants County	West Virginia	7507	22.2754637556009	2020/04/01 20:53:36
3030	1550044	54075	Pocahontas County	West Virginia	8531	3.50297042119041	2020/04/01 20:53:36
3031	1558642	54077	Preston County	West Virginia	33837	20.1360423441243	2020/04/01 20:53:36
3032	1550046	54079	Putnam County	West Virginia	56652	63.2769209396658	2020/04/01 20:53:36
3033	1550047	54081	Raleigh County	West Virginia	76232	48.6213898321469	2020/04/01 20:53:36
3034	1550048	54083	Randolph County	West Virginia	29065	10.7935542440394	2020/04/01 20:53:36
3035	1689049	54085	Ritchie County	West Virginia	9932	8.48418382159324	2020/04/01 20:53:36
3036	1550050	54087	Roane County	West Virginia	14205	11.3420202988628	2020/04/01 20:53:36
3037	1557805	54089	Summers County	West Virginia	13018	13.9392922492793	2020/04/01 20:53:36
3038	1689856	54091	Taylor County	West Virginia	16951	37.8814412347522	2020/04/01 20:53:36
3039	1689423	54093	Tucker County	West Virginia	7027	6.47459281097388	2020/04/01 20:53:36
3040	1678706	54095	Tyler County	West Virginia	8909	13.4208361809426	2020/04/01 20:53:36
3041	1696800	54097	Upshur County	West Virginia	24605	26.7880407224947	2020/04/01 20:53:36
3042	1550056	54099	Wayne County	West Virginia	40708	31.0624832586946	2020/04/01 20:53:36
3043	1550057	54101	Webster County	West Virginia	8518	5.94217668288447	2020/04/01 20:53:36
3044	1717836	54103	Wetzel County	West Virginia	15614	16.8365140327007	2020/04/01 20:53:36
3045	1678877	54105	Wirt County	West Virginia	5797	9.62635272860413	2020/04/01 20:53:36
3046	1560558	54107	Wood County	West Virginia	85556	90.1294794733703	2020/04/01 20:53:36
3047	1550061	54109	Wyoming County	West Virginia	21711	16.7831414570854	2020/04/01 20:53:36
3048	1581060	55001	Adams County	Wisconsin	20073	12.003656983797	2020/04/01 20:53:36
3049	1581061	55003	Ashland County	Wisconsin	15712	5.80533448934766	2020/04/01 20:53:36
3050	1581062	55005	Barron County	Wisconsin	45252	20.2449026844077	2020/04/01 20:53:36
3051	1581063	55007	Bayfield County	Wisconsin	14992	3.91671846314783	2020/04/01 20:53:36
3052	1581064	55009	Brown County	Wisconsin	259786	189.219697317592	2020/04/01 20:53:36
3053	1581065	55011	Buffalo County	Wisconsin	13167	7.52276942107937	2020/04/01 20:53:36
3054	1581066	55013	Burnett County	Wisconsin	15258	7.17069746674321	2020/04/01 20:53:36
3055	1581067	55015	Calumet County	Wisconsin	49807	60.4203636134287	2020/04/01 20:53:36
3056	1581068	55017	Chippewa County	Wisconsin	63635	24.366023279515	2020/04/01 20:53:36
3057	1581069	55019	Clark County	Wisconsin	34491	11.0085937217158	2020/04/01 20:53:36
3058	1581070	55021	Columbia County	Wisconsin	56954	28.7246932018275	2020/04/01 20:53:36
3059	1581071	55023	Crawford County	Wisconsin	16288	11.0205147768922	2020/04/01 20:53:36
3060	1581072	55025	Dane County	Wisconsin	529843	170.977165078522	2020/04/01 20:53:36
3061	1581073	55027	Dodge County	Wisconsin	87776	38.7006947192678	2020/04/01 20:53:36
3062	1581074	55029	Door County	Wisconsin	27439	21.981492501379	2020/04/01 20:53:36
3063	1581075	55031	Douglas County	Wisconsin	43402	12.8480420610215	2020/04/01 20:53:36
3064	1581076	55033	Dunn County	Wisconsin	44498	20.208862082048	2020/04/01 20:53:36
3065	1581077	55035	Eau Claire County	Wisconsin	102991	62.3352477287183	2020/04/01 20:53:36
3066	1581078	55037	Florence County	Wisconsin	4337	3.43053998697445	2020/04/01 20:53:36
3067	1581079	55039	Fond du Lac County	Wisconsin	102315	54.8998474127114	2020/04/01 20:53:36
3068	1581080	55041	Forest County	Wisconsin	9018	3.43297186091257	2020/04/01 20:53:36
3069	1581081	55043	Grant County	Wisconsin	51828	17.4481329210239	2020/04/01 20:53:36
3070	1581082	55045	Green County	Wisconsin	36864	24.3702394203414	2020/04/01 20:53:36
3071	1581083	55047	Green Lake County	Wisconsin	18757	20.7187595155435	2020/04/01 20:53:36
3072	1581084	55049	Iowa County	Wisconsin	23620	11.9571936153936	2020/04/01 20:53:36
3073	1581085	55051	Iron County	Wisconsin	5715	2.91032362375515	2020/04/01 20:53:36
3074	1581086	55053	Jackson County	Wisconsin	20506	8.0199323407595	2020/04/01 20:53:36
3075	1581087	55055	Jefferson County	Wisconsin	84652	58.7355343096142	2020/04/01 20:53:36
3076	1581088	55057	Juneau County	Wisconsin	26419	13.2984500543456	2020/04/01 20:53:36
3077	1581089	55059	Kenosha County	Wisconsin	168330	239.067524003644	2020/04/01 20:53:36
3078	1581090	55061	Kewaunee County	Wisconsin	20360	22.9550226614442	2020/04/01 20:53:36
3079	1581091	55063	La Crosse County	Wisconsin	117850	100.719893752674	2020/04/01 20:53:36
3080	1581092	55065	Lafayette County	Wisconsin	16735	10.1981410381223	2020/04/01 20:53:36
3081	1581093	55067	Langlade County	Wisconsin	19164	8.49807713998798	2020/04/01 20:53:36
3082	1581094	55069	Lincoln County	Wisconsin	27848	12.2363953237494	2020/04/01 20:53:36
3083	1581095	55071	Manitowoc County	Wisconsin	79407	52.0260989544225	2020/04/01 20:53:36
3084	1581096	55073	Marathon County	Wisconsin	135264	33.7972058638786	2020/04/01 20:53:36
3085	1581097	55075	Marinette County	Wisconsin	40537	11.1839820101159	2020/04/01 20:53:36
3086	1581098	55077	Marquette County	Wisconsin	15207	12.8842789248993	2020/04/01 20:53:36
3087	1581099	55078	Menominee County	Wisconsin	4579	4.94376284600985	2020/04/01 20:53:36
3088	1581100	55079	Milwaukee County	Wisconsin	954209	1525.65896177732	2020/04/01 20:53:36
3089	1581101	55081	Monroe County	Wisconsin	45502	19.5008816666088	2020/04/01 20:53:36
3090	1581102	55083	Oconto County	Wisconsin	37556	14.5370661885633	2020/04/01 20:53:36
3091	1581103	55085	Oneida County	Wisconsin	35345	12.2509386299518	2020/04/01 20:53:36
3092	1581104	55087	Outagamie County	Wisconsin	184754	111.882543572435	2020/04/01 20:53:36
3093	1581105	55089	Ozaukee County	Wisconsin	88284	146.284038211139	2020/04/01 20:53:36
3094	1581106	55091	Pepin County	Wisconsin	7262	12.0853165233182	2020/04/01 20:53:36
3095	1581107	55093	Pierce County	Wisconsin	41603	27.9915072032604	2020/04/01 20:53:36
3096	1581108	55095	Polk County	Wisconsin	43349	18.310649113301	2020/04/01 20:53:36
3097	1581109	55097	Portage County	Wisconsin	70599	34.0356826415509	2020/04/01 20:53:36
3098	1581110	55099	Price County	Wisconsin	13490	4.15334090277917	2020/04/01 20:53:36
3099	1581111	55101	Racine County	Wisconsin	195398	226.838108701495	2020/04/01 20:53:36
3100	1581112	55103	Richland County	Wisconsin	17539	11.5531031853518	2020/04/01 20:53:36
3101	1581113	55105	Rock County	Wisconsin	161769	86.9742373173408	2020/04/01 20:53:36
3102	1581114	55107	Rusk County	Wisconsin	14183	5.99427227779121	2020/04/01 20:53:36
3103	1581833	55109	St. Croix County	Wisconsin	87917	46.9862653620783	2020/04/01 20:53:36
3104	1581115	55111	Sauk County	Wisconsin	63596	29.5289045415877	2020/04/01 20:53:36
3105	1581116	55113	Sawyer County	Wisconsin	16370	5.02576337861919	2020/04/01 20:53:36
3106	1581117	55115	Shawano County	Wisconsin	41009	17.7264037672883	2020/04/01 20:53:36
3107	1581118	55117	Sheboygan County	Wisconsin	115205	86.9569442312475	2020/04/01 20:53:36
3108	1581119	55119	Taylor County	Wisconsin	20356	8.0607644691931	2020/04/01 20:53:36
3109	1581120	55121	Trempealeau County	Wisconsin	29438	15.5061480686662	2020/04/01 20:53:36
3110	1581121	55123	Vernon County	Wisconsin	30516	14.8848680188809	2020/04/01 20:53:36
3111	1581122	55125	Vilas County	Wisconsin	21593	9.72021347526262	2020/04/01 20:53:36
3112	1581123	55127	Walworth County	Wisconsin	103013	71.6079988744977	2020/04/01 20:53:36
3113	1581124	55129	Washburn County	Wisconsin	15689	7.59936780448	2020/04/01 20:53:36
3114	1581125	55131	Washington County	Wisconsin	134535	120.620011442758	2020/04/01 20:53:36
3115	1581126	55133	Waukesha County	Wisconsin	398879	280.157066356862	2020/04/01 20:53:36
3116	1581127	55135	Waupaca County	Wisconsin	51444	26.5652730584356	2020/04/01 20:53:36
3117	1581128	55137	Waushara County	Wisconsin	24116	14.8704291491963	2020/04/01 20:53:36
3118	1581129	55139	Winnebago County	Wisconsin	169926	150.931815167318	2020/04/01 20:53:36
3119	1581130	55141	Wood County	Wisconsin	73274	35.6756145904473	2020/04/01 20:53:36
3120	1605066	56001	Albany County	Wyoming	38102	3.44177346352407	2020/04/01 20:53:36
3121	1605067	56003	Big Horn County	Wyoming	11901	1.46479583574345	2020/04/01 20:53:36
3122	1605068	56005	Campbell County	Wyoming	47708	3.83588328202555	2020/04/01 20:53:36
3123	1605069	56007	Carbon County	Wyoming	15477	0.756628567615905	2020/04/01 20:53:36
3124	1605070	56009	Converse County	Wyoming	13997	1.27011015707496	2020/04/01 20:53:36
3125	1605071	56011	Crook County	Wyoming	7410	1.00229012513225	2020/04/01 20:53:36
3126	1605072	56013	Fremont County	Wyoming	40076	1.68489993148913	2020/04/01 20:53:36
3127	1605073	56015	Goshen County	Wyoming	13438	2.33124115363331	2020/04/01 20:53:36
3128	1605074	56017	Hot Springs County	Wyoming	4680	0.901482712304166	2020/04/01 20:53:36
3129	1609191	56019	Johnson County	Wyoming	8515	0.791415418674987	2020/04/01 20:53:36
3130	1605075	56021	Laramie County	Wyoming	97692	14.0435616772756	2020/04/01 20:53:36
3131	1605076	56023	Lincoln County	Wyoming	19011	1.80112431796184	2020/04/01 20:53:36
3132	1605077	56025	Natrona County	Wyoming	80610	5.82783477273144	2020/04/01 20:53:36
3133	1605078	56027	Niobrara County	Wyoming	2448	0.359926920279315	2020/04/01 20:53:36
3134	1605079	56029	Park County	Wyoming	29121	1.62035138675428	2020/04/01 20:53:36
3135	1605080	56031	Platte County	Wyoming	8673	1.60881432614948	2020/04/01 20:53:36
3136	1605081	56033	Sheridan County	Wyoming	30012	4.59216805197077	2020/04/01 20:53:36
3137	1605082	56035	Sublette County	Wyoming	9951	0.786271793661482	2020/04/01 20:53:36
3138	1609192	56037	Sweetwater County	Wyoming	44117	1.63361480673333	2020/04/01 20:53:36
3139	1605083	56039	Teton County	Wyoming	23059	2.22753868603816	2020/04/01 20:53:36
3140	1605084	56041	Uinta County	Wyoming	20609	3.822404960518	2020/04/01 20:53:36
3141	1605085	56043	Washakie County	Wyoming	8129	1.4020016308123	2020/04/01 20:53:36
3142	1605086	56045	Weston County	Wyoming	7100	1.14316920440451	2020/04/01 20:53:36
3143	1804480	72001	Adjuntas Municipio	Puerto Rico	18181	105.259360575524	2020/04/01 20:53:36
3144	1804481	72003	Aguada Municipio	Puerto Rico	38643	483.499036092378	2020/04/01 20:53:36
3145	1804482	72005	Aguadilla Municipio	Puerto Rico	54166	572.480222740317	2020/04/01 20:53:36
3146	1804483	72007	Aguas Buenas Municipio	Puerto Rico	26275	337.207028213262	2020/04/01 20:53:36
3147	1804484	72009	Aibonito Municipio	Puerto Rico	23457	289.255249550567	2020/04/01 20:53:36
3148	1804485	72011	Añasco Municipio	Puerto Rico	27368	268.97977743437	2020/04/01 20:53:36
3149	1804486	72013	Arecibo Municipio	Puerto Rico	87242	267.466156718545	2020/04/01 20:53:36
3150	1804487	72015	Arroyo Municipio	Puerto Rico	18111	465.943866666217	2020/04/01 20:53:36
3151	1804488	72017	Barceloneta Municipio	Puerto Rico	24299	501.818412818101	2020/04/01 20:53:36
3152	1804489	72019	Barranquitas Municipio	Puerto Rico	28755	324.13132523034	2020/04/01 20:53:36
3153	1804490	72021	Bayamón Municipio	Puerto Rico	182955	1593.45901687076	2020/04/01 20:53:36
3154	1804491	72023	Cabo Rojo Municipio	Puerto Rico	49005	268.867552091051	2020/04/01 20:53:36
3155	1804492	72025	Caguas Municipio	Puerto Rico	131363	865.482114709286	2020/04/01 20:53:36
3156	1804493	72027	Camuy Municipio	Puerto Rico	32222	268.386322612537	2020/04/01 20:53:36
3157	1804494	72029	Canóvanas Municipio	Puerto Rico	46108	541.632838108379	2020/04/01 20:53:36
3158	1804495	72031	Carolina Municipio	Puerto Rico	157453	1339.9222951784	2020/04/01 20:53:36
3159	1804496	72033	Cataño Municipio	Puerto Rico	24888	1970.65694344995	2020/04/01 20:53:36
3160	1804497	72035	Cayey Municipio	Puerto Rico	44530	331.053773228686	2020/04/01 20:53:36
3161	1804498	72037	Ceiba Municipio	Puerto Rico	11853	157.616226708223	2020/04/01 20:53:36
3162	1804499	72039	Ciales Municipio	Puerto Rico	16912	98.148569309337	2020/04/01 20:53:36
3163	1804500	72041	Cidra Municipio	Puerto Rico	40343	432.426246848663	2020/04/01 20:53:36
3164	1804501	72043	Coamo Municipio	Puerto Rico	39265	194.330852579858	2020/04/01 20:53:36
3165	1804502	72045	Comerío Municipio	Puerto Rico	19539	265.630056439895	2020/04/01 20:53:36
3166	1804503	72047	Corozal Municipio	Puerto Rico	34165	309.8907307052	2020/04/01 20:53:36
3167	1804504	72049	Culebra Municipio	Puerto Rico	1314	43.6326614711479	2020/04/01 20:53:36
3168	1804505	72051	Dorado Municipio	Puerto Rico	37208	621.478928435235	2020/04/01 20:53:36
3169	1804506	72053	Fajardo Municipio	Puerto Rico	32001	413.189895328196	2020/04/01 20:53:36
3170	1804507	72054	Florida Municipio	Puerto Rico	11910	302.349499317099	2020/04/01 20:53:36
3171	1804508	72055	Guánica Municipio	Puerto Rico	16783	174.89595941355	2020/04/01 20:53:36
3172	1804509	72057	Guayama Municipio	Puerto Rico	41706	247.76066384032	2020/04/01 20:53:36
3173	1804510	72059	Guayanilla Municipio	Puerto Rico	19008	173.62014209212	2020/04/01 20:53:36
3174	1804511	72061	Guaynabo Municipio	Puerto Rico	88663	1241.00285874498	2020/04/01 20:53:36
3175	1804512	72063	Gurabo Municipio	Puerto Rico	46894	649.24469059643	2020/04/01 20:53:36
3176	1804513	72065	Hatillo Municipio	Puerto Rico	40390	373.242992573047	2020/04/01 20:53:36
3177	1804514	72067	Hormigueros Municipio	Puerto Rico	16180	550.623070160575	2020/04/01 20:53:36
3178	1804515	72069	Humacao Municipio	Puerto Rico	53466	461.192142440383	2020/04/01 20:53:36
3179	1804516	72071	Isabela Municipio	Puerto Rico	42420	296.113578390751	2020/04/01 20:53:36
3180	1804517	72073	Jayuya Municipio	Puerto Rico	14906	129.234695903937	2020/04/01 20:53:36
3181	1804518	72075	Juana Díaz Municipio	Puerto Rico	46960	300.799846392228	2020/04/01 20:53:36
3182	1804519	72077	Juncos Municipio	Puerto Rico	39128	570.334072074933	2020/04/01 20:53:36
3183	1804520	72079	Lajas Municipio	Puerto Rico	23315	150.140551583609	2020/04/01 20:53:36
3184	1804521	72081	Lares Municipio	Puerto Rico	26451	166.196154552358	2020/04/01 20:53:36
3185	1804522	72083	Las Marías Municipio	Puerto Rico	8599	71.6154702807791	2020/04/01 20:53:36
3186	1804523	72085	Las Piedras Municipio	Puerto Rico	37768	430.4125829628	2020/04/01 20:53:36
3187	1804524	72087	Loíza Municipio	Puerto Rico	26463	527.698908319518	2020/04/01 20:53:36
3188	1804525	72089	Luquillo Municipio	Puerto Rico	18547	277.436249122943	2020/04/01 20:53:36
3189	1804526	72091	Manatí Municipio	Puerto Rico	39692	339.500297678603	2020/04/01 20:53:36
3190	1804527	72093	Maricao Municipio	Puerto Rico	6202	65.3862219801932	2020/04/01 20:53:36
3191	1804528	72095	Maunabo Municipio	Puerto Rico	11023	201.088284762173	2020/04/01 20:53:36
3192	1804529	72097	Mayagüez Municipio	Puerto Rico	77255	384.019954184836	2020/04/01 20:53:36
3193	1804530	72099	Moca Municipio	Puerto Rico	36872	282.796361164301	2020/04/01 20:53:36
3194	1804531	72101	Morovis Municipio	Puerto Rico	31320	311.096418901777	2020/04/01 20:53:36
3195	1804532	72103	Naguabo Municipio	Puerto Rico	26266	196.308334548894	2020/04/01 20:53:36
3196	1804533	72105	Naranjito Municipio	Puerto Rico	28557	402.385920097178	2020/04/01 20:53:36
3197	1804534	72107	Orocovis Municipio	Puerto Rico	21407	129.906021637766	2020/04/01 20:53:36
3198	1804535	72109	Patillas Municipio	Puerto Rico	17334	143.617435365443	2020/04/01 20:53:36
3199	1804536	72111	Peñuelas Municipio	Puerto Rico	20984	181.587591129232	2020/04/01 20:53:36
3200	1804537	72113	Ponce Municipio	Puerto Rico	143926	483.478093691757	2020/04/01 20:53:36
3201	1804538	72115	Quebradillas Municipio	Puerto Rico	24036	409.139533058018	2020/04/01 20:53:36
3202	1804539	72117	Rincón Municipio	Puerto Rico	14269	385.59174781235	2020/04/01 20:53:36
3203	1804540	72119	Río Grande Municipio	Puerto Rico	50550	321.956956157411	2020/04/01 20:53:36
3204	1804541	72121	Sabana Grande Municipio	Puerto Rico	23054	245.124287178913	2020/04/01 20:53:36
3205	1804542	72123	Salinas Municipio	Puerto Rico	28633	159.31022816287	2020/04/01 20:53:36
3206	1804543	72125	San Germán Municipio	Puerto Rico	32114	227.524856739896	2020/04/01 20:53:36
3207	1804544	72127	San Juan Municipio	Puerto Rico	344606	2778.41073448275	2020/04/01 20:53:36
3208	1804545	72129	San Lorenzo Municipio	Puerto Rico	37873	275.343932001499	2020/04/01 20:53:36
3209	1804546	72131	San Sebastián Municipio	Puerto Rico	37964	208.141775536848	2020/04/01 20:53:36
3210	1804547	72133	Santa Isabel Municipio	Puerto Rico	22066	250.322997324416	2020/04/01 20:53:36
3211	1804548	72135	Toa Alta Municipio	Puerto Rico	73405	1049.05390643637	2020/04/01 20:53:36
3212	1804549	72137	Toa Baja Municipio	Puerto Rico	79726	1324.31493785922	2020/04/01 20:53:36
3213	1804550	72139	Trujillo Alto Municipio	Puerto Rico	67780	1260.17611267945	2020/04/01 20:53:36
3214	1804551	72141	Utuado Municipio	Puerto Rico	29402	99.9913669789444	2020/04/01 20:53:36
3215	1804552	72143	Vega Alta Municipio	Puerto Rico	37724	525.284759577859	2020/04/01 20:53:36
3216	1804553	72145	Vega Baja Municipio	Puerto Rico	53371	449.335379588124	2020/04/01 20:53:36
3217	1804554	72147	Vieques Municipio	Puerto Rico	8771	66.6786299476298	2020/04/01 20:53:36
3218	1804555	72149	Villalba Municipio	Puerto Rico	22993	249.115454866911	2020/04/01 20:53:36
3219	1804556	72151	Yabucoa Municipio	Puerto Rico	34149	238.795547397623	2020/04/01 20:53:36
3220	1804557	72153	Yauco Municipio	Puerto Rico	36439	207.781273257002	2020/04/01 20:53:36
\.


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.types (id, name) FROM stdin;
1	accounting
2	airport
3	amusement_park
4	aquarium
5	art_gallery
6	atm
7	bakery
8	bank
9	bar
10	beauty_salon
11	bicycle_store
12	book_store
13	bowling_alley
14	bus_station
15	cafe
16	campground
17	car_dealer
18	car_rental
19	car_repair
20	car_wash
21	casino
22	cemetery
23	church
24	city_hall
25	clothing_store
26	convenience_store
27	courthouse
28	dentist
29	department_store
30	doctor
31	drugstore
32	electrician
33	electronics_store
34	embassy
35	fire_station
36	florist
37	funeral_home
38	furniture_store
39	gas_station
40	gym
41	hair_care
42	hardware_store
43	hindu_temple
44	home_goods_store
45	hospital
46	insurance_agency
47	jewelry_store
48	laundry
49	lawyer
50	library
51	light_rail_station
52	liquor_store
53	local_government_office
54	locksmith
55	lodging
56	meal_delivery
57	meal_takeaway
58	mosque
59	movie_rental
60	movie_theater
61	moving_company
62	museum
63	night_club
64	painter
65	park
66	parking
67	pet_store
68	pharmacy
69	physiotherapist
70	plumber
71	police
72	post_office
73	primary_school
74	real_estate_agency
75	restaurant
76	roofing_contractor
77	rv_park
78	school
79	secondary_school
80	shoe_store
81	shopping_mall
82	spa
83	stadium
84	storage
85	store
86	subway_station
87	supermarket
88	synagogue
89	taxi_stand
90	tourist_attraction
91	train_station
92	transit_station
93	travel_agency
94	university
95	veterinary_care
96	zoo
97	administrative_area_level_1
98	administrative_area_level_2
99	administrative_area_level_3
100	administrative_area_level_4
101	administrative_area_level_5
102	archipelago
103	colloquial_area
104	continent
105	country
106	establishment
107	finance
108	floor
109	food
110	general_contractor
111	geocode
112	health
113	intersection
114	landmark
115	locality
116	natural_feature
117	neighborhood
118	place_of_worship
119	plus_code
120	point_of_interest
121	political
122	post_box
123	postal_code
124	postal_code_prefix
125	postal_code_suffix
126	postal_town
127	premise
128	room
129	route
130	street_address
131	street_number
132	sublocality
133	sublocality_level_1
134	sublocality_level_2
135	sublocality_level_3
136	sublocality_level_4
137	sublocality_level_5
138	subpremise
139	town_square
140	grocery_or_supermarket
\.


--
-- Data for Name: user_addresses; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.user_addresses (id, user_id, address_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: bernardn
--

COPY public.users (id, username, password, email) FROM stdin;
1	bernardn38	$2b$12$brkMxTQO6rvblnTNCwivo.8XeuJdx6rax2mNEEjHdz0MVeMGYdkB.	bernardnboxx@gmail.com
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, true);


--
-- Name: income_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.income_data_id_seq', 3180, true);


--
-- Name: place_address_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.place_address_relation_id_seq', 60, true);


--
-- Name: place_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.place_types_id_seq', 5649, true);


--
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.places_id_seq', 60, true);


--
-- Name: population_data_fips_code_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.population_data_fips_code_seq', 1, false);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.types_id_seq', 140, true);


--
-- Name: user_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.user_addresses_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bernardn
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: income_data income_data_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.income_data
    ADD CONSTRAINT income_data_pkey PRIMARY KEY (id);


--
-- Name: place_address_relation place_address_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.place_address_relation
    ADD CONSTRAINT place_address_relation_pkey PRIMARY KEY (id);


--
-- Name: place_types place_types_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.place_types
    ADD CONSTRAINT place_types_pkey PRIMARY KEY (id);


--
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- Name: places places_place_id_key; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_place_id_key UNIQUE (place_id);


--
-- Name: population_data population_data_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.population_data
    ADD CONSTRAINT population_data_pkey PRIMARY KEY (fips_code);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- Name: user_addresses user_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.user_addresses
    ADD CONSTRAINT user_addresses_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: place_address_relation place_address_relation_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.place_address_relation
    ADD CONSTRAINT place_address_relation_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.addresses(id);


--
-- Name: place_address_relation place_address_relation_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.place_address_relation
    ADD CONSTRAINT place_address_relation_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(place_id);


--
-- Name: place_types place_types_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.place_types
    ADD CONSTRAINT place_types_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.types(id);


--
-- Name: user_addresses user_addresses_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.user_addresses
    ADD CONSTRAINT user_addresses_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.addresses(id);


--
-- Name: user_addresses user_addresses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bernardn
--

ALTER TABLE ONLY public.user_addresses
    ADD CONSTRAINT user_addresses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

