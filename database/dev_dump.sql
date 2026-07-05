--
-- PostgreSQL database dump
--

\restrict hqYqTwfLRl2sa3puQUFy1JO3vgNHHPQ8hbVqD6UELo3IKCsh7TG8e7NcHaQPmS0

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg13+1)
-- Dumped by pg_dump version 16.14 (Debian 16.14-1.pgdg13+1)

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
-- Name: airports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airports (
    id bigint NOT NULL,
    iata_code character varying(20),
    airport_name character varying(500),
    city_name character varying(400),
    country_name character varying(400)
);


ALTER TABLE public.airports OWNER TO postgres;

--
-- Name: airports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
 

CREATE SEQUENCE public.airports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.airports_id_seq OWNER TO postgres;

--
-- Name: airports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.airports_id_seq OWNED BY public.airports.id;


--
-- Name: airports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airports ALTER COLUMN id SET DEFAULT nextval('public.airports_id_seq'::regclass);


--
-- Data for Name: airports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.airports (id, iata_code, airport_name, city_name, country_name) FROM stdin;
1	AAI	Arraias	Arraias	Botswana
2	AAK	Aranuka	Aranuka	Kiribati
3	AAV	Alah	Alah	Philippines
4	AAW	Abbottabad	Abbottabad	Pakistan
5	ABG	Abingdon	Abingdon	Australia
6	ABH	Alpha	Alpha	Australia
7	ACS	Achinsk	Achinsk	Russia
8	ADB	Adnan Menderes	Izmir	Turkey
9	ADO	Andamooka	Andamooka	Australia
10	ADR	Andrews	Andrews	United States
11	AEK	Aseki	Aseki	Papua New Guinea
12	AFR	Afore	Afore	Papua New Guinea
13	AGG	Angoram	Angoram	Papua New Guinea
14	BLR	Bengaluru	Bengaluru	India
15	AAE	Les Salines	Annaba	Algeria
16	AAM	Malamala	Malamala	South Africa
17	AAN	Al Ain	Alain	United Arab Emirates
18	AAO	Anaco	Anaco	Venezuela
19	AAQ	Anapa	Anapa	Russia
20	AAR	Aarhus	Aarhus	Denmark
21	AAX	Araxa	Araxa	Brazil
22	AAY	Al Ghaydah	Alghaydah	Yemen
23	ABA	Abakan	Abakan	Russia
24	ABC	Los Llanos	Albacete	Spain
25	ABE	Lehigh Valley International	Allentownbthlehm	United States
26	ABF	Abaiang	Abaiang	Kiribati
27	ABI	Abilene	Abilene	United States
28	ABJ	Felix Boigny	Abidjan	Cote D'Ivoire (Ivory Coast)
29	ABL	Ambler	Ambler	United States
30	ABM	Injinoo	Bamaga	Australia
31	ABQ	Albuquerque	Albuquerque	United States
32	ABS	Abu Simbel	Abusimbel	Egypt
33	ABT	Al Aqiq	Al-Baha	Saudi Arabia
34	ABV	Nnamdi Azikiwe International Airport	Abuja	Nigeria
35	ABX	Albury	Albury	Australia
36	ABY	Dougherty County	Albany	United States
37	ABZ	Dyce	Aberdeen	United Kingdom
38	ACC	Kotoka	Accra	Ghana
39	ACD	Acandi	Acandi	Colombia
40	ACE	Lanzarote	Lanzarote	Spain
41	ACH	Altenrhein	Altenrhein	Switzerland
42	ACI	The Blaye	Alderney	United Kingdom
43	ACK	Nantucket	Nantucket	United States
44	ACP	Sahand	Maragheh	Iran
45	ACT	Waco	Waco	United States
46	ACV	Arcata	Arcata	United States
47	ACX	Xingyi	Xingyi	China
48	ACZ	Zabol	Zabol	Iran
49	ADA	Adana	Adana	Turkey
50	ADD	Bole International	Addisababa	Ethiopia
51	ADE	Aden	Aden	Yemen
52	ADF	Adiyaman	Adiyaman	Turkey
53	ADH	Aldan	Aldan	Russia
54	ADK	Adak Island	Adakisland	United States
55	ADL	Adelaide	Adelaide	Australia
56	ADM	Ardmore	Ardmore	United States
57	ADQ	Kodiak	Kodiak	United States
58	ADU	Ardabil	Ardabil	Iran
59	ADY	Alldays	Alldays	South Africa
60	AEA	Abemamaatoll	Abemamaatoll	Kiribati
61	AEH	Abecher	Abecher	Chad
62	AEO	Aiounelatrouss	Aiounelatrouss	Mauritania
63	AEP	Jorge Newbery Airport	Buenosaires	Argentina
64	AER	Adler	Sochi	Russia
65	AES	Vigra	Alesund	Norway
66	AEX	Alexandria	Alexandria	United States
67	AEY	Akureyri	Akureyri	Iceland
68	AFA	San Rafael	San Rafael	Argentina
69	AFS	Zarafshan	Zarafshan	Uzbekistan
70	AFT	Aerodrome	Afutara	Solomon Islands
71	AFW	Fort Worth Alliance	Fort Worth Meacham	United States
72	AFY	Afyon	Afyon	Turkey
73	AGA	Almassira	Agadir	Morocco
74	AGB	Augsburg Muehlhausen	Munich	Germany
75	AGE	Wangerooge	Wangerooge	Germany
76	AGF	La Garenne	Agen	France
77	AAU	Asau	Asau	Samoa
78	DEL	Indira Gandhi Intl Airport	Delhi	India
79	ABU	Atambua	Atambua	Indonesia
80	AGK	Kagua	Kagua	Papua New Guinea
81	AGM	Tasiilaq	Tasiilaq	Greenland
82	AHI	Amahai	Amahai	Indonesia
83	AHL	Aishalton	Aishalton	Guyana
84	AHZ	L'alped'huez	L'alped'huez	France
85	AIB	Anitabay	Anitabay	United States
86	AID	Anderson	Anderson	United States
87	AIF	Assis	Assis	Brazil
88	AIG	Yalinga	Yalinga	Central African Republic
89	AII	Albenga	Albenga	Italy
90	AIP	Adampur	Adampur	India
91	AIR	Aripuana	Aripuana	Brazil
92	AIY	Baderfiel Airport	Atlantic	United States
93	AJJ	Akjoujt	Akjoujt	Mauritania
94	AJO	Aljouf	Aljouf	Yemen
95	AKE	Akieni	Akieni	Gabon
96	AKG	Anguganak	Anguganak	Papua New Guinea
97	AKK	Akhiok	Akhiok	United States
98	ALC	El Altet	Alicante	Spain
99	ALE	Alpine	Alpine	United States
100	ALK	Asela	Asela	Ethiopia
101	ALN	Alton	Alton	United States
102	ALQ	Federal Airport	Alegrete	Brazil
103	ALT	Alenquer	Alenquer	Brazil
104	ALV	Andorra La Vella	Andorra La Vella	Andorra
105	AMF	Ama	Ama	Papua New Guinea
106	AMG	Amboin	Amboin	Papua New Guinea
107	AMJ	Almenara	Almenara	Brazil
108	AGQ	Agrinion	Agrinion	Greece
109	AGR	Kheria Airport	Agra	India
110	AGT	Alejo Garcia	Ciudad Del Este	Paraguay
111	AGU	Aguascalients	Aguascalientes	Mexico
112	AGV	Acarigua	Acarigua	Venezuela
113	AGX	Agattiisland	Agattiisland	India
114	AHB	Abha	Abha	Saudi Arabia
115	AHE	Ahe	Ahe	French Polynesia
116	AHN	Athens	Athens	United States
117	AHO	Fertilia	Alghero	Italy
118	AHU	Charif Al Idrissi	Alhoceima	Morocco
119	AIA	Alliance	Alliance	United States
120	AIN	Wainwright	Wainwright	United States
121	AIS	Aroraeisland	Aroraeisland	Kiribati
122	AIU	Atiu Island	Atiuisland	Cook Islands
123	AIZ	Lee C Fine Memorial	Kaiser/lake Ozark	United States
124	AJA	Campo Dell Oro	Ajaccio	France
125	AJF	Jouf	Jouf	Saudi Arabia
126	AJI	Agri	Agri	Turkey
127	AJN	Ouani	Anjouan	Comoros
128	AJR	Arvidsjaur	Arvidsjaur	Sweden
129	AJU	Santa Maria	Aracaju	Brazil
130	AJY	Agades	Agades	Niger
131	AKB	Atka	Atka	United States
132	AKF	Kufrah	Kufrah	Libya
133	AKI	Akiak	Akiak	United States
134	AKL	Auckland	Auckland	New Zealand
135	AKN	King Salmon	Kingsalmon	United States
136	AKP	Anaktuvuk	Anaktuvuk	United States
137	AKR	Akure	Akure	Nigeria
138	AKU	Aksu	Aksu	China
139	AKV	Akulivik	Akulivik	Canada
140	AKX	Aktyubinsk	Aktyubinsk	Kazakhstan
141	AKY	Civil	Sittwe	Myanmar
142	ALA	Almaty	Almaty	Kazakhstan
143	ALF	Alta	Alta	Norway
144	ALG	Houari Boumediene	Algiers	Algeria
145	ALH	Albany	Albany	Australia
146	ALL	Albenga	Albenga	Italy
147	ALM	Alamogordo	Alamogordo	United States
148	ALO	Waterloo	Waterloo	United States
149	ALP	Nejrab	Aleppo	Syria
150	ALR	Alexandra	Alexandra	New Zealand
151	ALU	Alula	Alula	Somalia
152	ALW	Walla Walla	Wallawalla	United States
153	ALY	El Nohza	Alexandria	Egypt
154	AMB	Ambilobe	Ambilobe	Madagascar
155	AMC	Amtiman	Amtiman	Chad
156	AMD	Ahmedabad	Ahmedabad	India
157	AMH	Arba Mintch	Arbamintch	Ethiopia
158	AGL	Wanigela	Wanigela	Papua New Guinea
159	AGP	Pablo Ruiz Picasso	Malaga	Spain
160	AIC	Airok	Airok	Marshall Islands
161	AIE	Aiome	Aiome	Papua New Guinea
162	ALZ	Alitak	Alitak	United States
163	AMO	Mao	Mao	Chad
164	AMP	Ampanihy	Ampanihy	Madagascar
165	AMR	Arno	Arno	Marshall Islands
166	AMT	Amata	Amata	Australia
167	AMU	Amanab	Amanab	Papua New Guinea
168	ANA	Anaheim	Anaheim	United States
169	ANH	Anuhaislandresort	Anuhaislandresort	Solomon Islands
170	ANJ	Zanaga	Zanaga	Congo
171	ANL	Andulo	Andulo	Angola
172	ANO	Angoche	Angoche	Mozambique
173	ANT	St. Anton Airport	Saintanton	Austria
174	AOA	Aroa	Aroa	Papua New Guinea
175	AOB	Annanberg	Annanberg	Papua New Guinea
176	AOD	Aboudeia	Aboudeia	Chad
177	API	Apiay	Apiay	Colombia
178	APP	Asapa	Asapa	Papua New Guinea
179	APQ	Arapiraca	Arapiraca	Brazil
180	APS	Anapolis	Anapolis	Brazil
181	APV	Applevalley	Applevalley	United States
182	ARF	Acaricuara	Acaricuara	Colombia
183	ARJ	Arso	Arso	Indonesia
184	ARL	Arly	Arly	Burkina Faso
185	ARN	Arlanda	Stockholm	Sweden
186	ARO	Arboletas	Arboletas	Colombia
187	ARP	Aragip	Aragip	Papua New Guinea
188	ARS	Aragarcas	Aragarcas	Brazil
189	ARX	Asburypark	Asburypark	United States
190	ARY	Ararat	Ararat	Australia
191	ARZ	N'zeto	N'zeto	Angola
192	ASC	Ascension	Ascension	Bolivia
193	ASQ	Austin	Austin	United States
194	AMV	Amderma	Amderma	Russia
195	ANB	Anniston	Anniston	United States
196	AND	Anderson	Anderson	United States
197	ANE	Marce	Angers	France
198	ANF	Cerro Moreno	Antofagasta	Chile
199	ANG	Briechampniers Airport	Angouleme	France
200	ANI	Aniak	Aniak	United States
201	ANR	Deurne	Antwerp	Belgium
202	ANM	Antsirabato	Antalaha	Madagascar
203	ANN	Annetteisland	Annetteisland	United States
204	ANU	V. C. Bird Intl	Antigua	Antigua and Barbuda
205	AMQ	Pattimura	Ambon	Indonesia
206	ANV	Anvik	Anvik	United States
207	ANX	Andenes	Andenes	Norway
208	AOC	Altenburg	Altenburg	Germany
209	AOI	Falconara	Ancona	Italy
210	AOJ	Aomori	Aomori	Japan
211	AOK	Karpathos	Karpathos	Greece
212	AMY	Ambatomainty	Ambatomainty	Madagascar
213	AOL	Paso De Los Libres	Paso De Los Libres	Argentina
214	AOR	Alor Setar	Alorsetar	Malaysia
215	AOT	Corrado Gex	Aosta	Italy
216	APC	Napa	Napa	United States
217	APF	Naples	Naples	United States
218	APK	Apataki	Apataki	French Polynesia
219	APN	County Regional	Alpena	United States
220	APO	Apartado	Apartado	Colombia
221	APW	Faleolo	Apia	Samoa
222	APZ	Zapala	Zapala	Argentina
223	AQG	Anqing	Anqing	China
224	AQI	Qaisumah	Qaisumah	Saudi Arabia
225	AQJ	King Hussein Intl	Aqaba	Jordan
226	AQP	Rodriguez Ballon	Arequipa	Peru
339	BCG	Bemichi	Bemichi	Guyana
227	ARC	Arctic Village	Arcticvillage	United States
228	ARD	Alorisland	Alorisland	Indonesia
229	ARH	Arkhangelsk	Arkhangelsk	Russia
230	ARI	Chacalluta	Arica	Chile
231	ARK	Arusha	Arusha	Tanzania
232	ARM	Armidale	Armidale	Australia
233	ART	Watertown	Watertown	United States
234	ARU	Aracatuba	Aracatuba	Brazil
235	ARV	Noble F. Lee	Minocqua	United States
236	ARW	Arad	Arad	Romania
237	ASA	Assab	Assab	Eritrea
238	ASD	Andros Town	Andros Town	The Bahamas
239	ASE	Aspen	Aspen	United States
240	ASF	Astrakhan	Astrakhan	Russia
241	ASJ	Amami O Shima	Amamioshima	Japan
242	ASM	Yohannes IV	Asmara	Eritrea
243	ASO	Asosa	Asosa	Ethiopia
244	ASP	Alice Springs	Alice Springs	Australia
245	ANK	Etimesgut	Ankara	Turkey
246	ASX	Ashland	Ashland	United States
247	ATI	Artigas	Artigas	Uruguay
248	ATN	Namatanai	Namatanai	Papua New Guinea
249	ATS	Artesia	Artesia	United States
250	ATU	Cascocove Airport	Attuisland	United States
251	ATV	Ati	Ati	Chad
252	ATX	Atbasar	Atbasar	Kazakhstan
253	AUD	Augustus Downs	Augustus Downs	Australia
254	AUI	Auaisland	Auaisland	Papua New Guinea
255	AUM	Austin	Austin	United States
256	AUP	Agaun	Agaun	Papua New Guinea
257	AUV	Aumo	Aumo	Papua New Guinea
258	AVU	Avuavu	Avuavu	Solomon Islands
259	AWH	Awareh	Awareh	Ethiopia
260	AWR	Awar	Awar	Papua New Guinea
261	AXB	Alexandriabay	Alexandriabay	United States
262	AXC	Aramac	Aramac	Australia
263	AXX	Angelfire	Angelfire	United States
264	AYC	Ayacucho	Ayacucho	Colombia
265	AYD	Alroy Downs	Alroy Downs	Australia
266	AYG	Yaguara	Yaguara	Colombia
267	AYU	Aiyura	Aiyura	Papua New Guinea
268	AYW	Ayawasi	Ayawasi	Indonesia
269	AZB	Amazonbay	Amazonbay	Papua New Guinea
270	AZP	Atizapan	Mexico	Mexico
271	AZT	Zapatoca	Zapatoca	Colombia
272	AZZ	Ambriz	Ambriz	Angola
273	BAA	Bialla	Bialla	Papua New Guinea
274	AST	Astoria	Astoria	United States
275	ASU	Silvio Pettirossi	Asuncion	Paraguay
276	ASV	Amboseli	Amboseli	Kenya
277	ATA	Anta	Anta	Peru
278	ATB	Atbara	Atbara	Sudan
279	ATC	Arthur's Town	Arthur's Town	The Bahamas
280	ATD	Atoifi	Atoifi	Solomon Islands
281	ATH	Eleftherios Venizelos	Athens	Greece
282	ATJ	Antsirabe	Antsirabe	Madagascar
283	ATK	Atqasuk	Atqasuk	United States
284	ATM	Altamira	Altamira	Brazil
285	ATO	Ohiouniversity Airport	Athens	United States
286	ATQ	Raja Sansi International	Amritsar	India
287	ATR	Mouakchott Airport	Atar	Mauritania
288	ATW	Outagamie County	Appleton	United States
289	ATY	Watertown	Watertown	United States
290	ATZ	Assiut	Assiut	Egypt
291	AUA	Reina Beatrix	Aruba	Aruba
292	AUG	Augusta	Augusta	United States
293	ATP	Aitape	Aitape	Papua New Guinea
294	AUK	Alakanuk	Alakanuk	United States
295	AUQ	Atuona	Atuona	French Polynesia
296	AUR	Aurillac	Aurillac	France
297	AUS	bergstrom International	Austin	United States
298	AUU	Aurukun Mission	Aurukun Mission	Australia
299	AUW	Wausau	Wausau	United States
300	AUY	Aneityum	Aneityum	Vanuatu
301	AVA	Anshun	Anshun	China
302	AVI	Maximo Gomez	Ciegodeavila	Cuba
303	AVK	Arvaikheer	Arvaikheer	Mongolia
304	AVN	Caum	Avignon	France
305	AVP	Scrantn Wilkesbre	Scranton	United States
306	AVV	Avalon	Melbourne	Australia
307	AVX	Avalonbay Airport	Catalinaisland	United States
308	AWA	Awassa	Awassa	Ethiopia
309	AWD	Aniwa	Aniwa	Vanuatu
310	AXA	Wallblake	Anguilla	Anguilla
311	AXK	Ataq	Ataq	Yemen
312	AXM	El Eden	Armenia	Colombia
313	AXP	Springpoint Arpt	Springpoint	The Bahamas
314	AXR	Arutua	Arutua	French Polynesia
315	AXT	Akita	Akita	Japan
316	AXU	Axum	Axum	Ethiopia
317	AYP	Yanamilla	Ayacucho	Peru
318	AYQ	Connellan	Ayersrock	Australia
319	AYT	Antalya	Antalya	Turkey
320	AZD	Yazd	Yazd	Iran
321	AZN	Andizhan	Andizhan	Uzbekistan
322	AZR	Adrar	Adrar	Algeria
323	AZS	Samana	Samana	Dominican Republic
324	AUH	Abu Dhabi	Abudhabi	United Arab Emirates
325	ATT	Atmautluak	Atmautluak	United States
326	AUJ	Ambunti	Ambunti	Papua New Guinea
327	AUL	Aurisland	Aurisland	Marshall Islands
328	AWB	Awaba	Awaba	Papua New Guinea
329	BAJ	Bali	Bali	Papua New Guinea
330	BAP	Baibara	Baibara	Papua New Guinea
331	BAT	Barretos	Barretos	Brazil
332	BBB	Benson	Benson	United States
333	BBD	Curtis Field Airport	Brady	United States
334	BBF	Burlington	Burlington	United States
335	BBU	Baneasa	Bucharest	Romania
336	BBV	Bereby	Bereby	Cote D'Ivoire (Ivory Coast)
337	BBY	Bambari	Bambari	Central African Republic
338	BBZ	Zambezi	Zambezi	Zambia
340	BCJ	Bacagrande	Bacagrande	United States
341	BCK	Bolwarra	Bolwarra	Australia
342	BCP	Bambu	Bambu	Papua New Guinea
343	BCS	Southseaplane Airport	Bellechasse	United States
344	BCV	Belmopan	Belmopan	Belize
345	BCX	Beloretsk	Beloretsk	Russia
346	BCY	Bulchi	Bulchi	Ethiopia
347	BCZ	Bickerton Island	Bickerton Island	Australia
348	BDC	Barra Do Corda	Barra Do Corda	Brazil
349	BDI	Birdisland	Birdisland	Seychelles
350	BDK	Bondoukou	Bondoukou	Cote D'Ivoire (Ivory Coast)
351	BDY	State Airport	Bandon	United States
352	BDZ	Baindoung	Baindoung	Papua New Guinea
353	BEA	Bereina	Bereina	Papua New Guinea
354	BFC	Bloomfield	Bloomfield	Australia
355	BAG	Loakan	Baguio	Philippines
356	BAH	Bahrain	Bahrain	Bahrain
357	BAM	Landerc Airport	Battlemountain	United States
358	BAL	Batman	Batman	Turkey
359	BAQ	E Cortissoz	Barranquilla	Colombia
360	BAS	Balalae	Balalae	Solomon Islands
361	BAV	Baotou	Baotou	China
362	BAX	Barnaul	Barnaul	Russia
363	BAY	Baia Mare	Baiamare	Romania
364	BAZ	Barbelos	Barbelos	Brazil
365	BBA	Teniente Vidal	Balmaceda	Chile
366	BBH	Barth Airport	Stralsund	Germany
367	BBI	Biju Patnaik Airport	Bhubaneswar	India
368	BBK	Kasane	Kasane	Botswana
369	BBM	Battambang	Battambang	Cambodia
370	BBN	Bario	Bario	Malaysia
371	BBQ	Barbuda	Barbuda	Antigua and Barbuda
372	BBT	Berberati	Berberati	Central African Republic
373	BCA	Baracoa	Baracoa	Cuba
374	BCD	Bacolod	Bacolod	Philippines
375	BCE	Bryce	Bryce	United States
376	BCI	Barcaldine	Barcaldine	Australia
377	BCL	Barra Colorado	Barracolorado	Costa Rica
378	BCM	Bacau	Bacau	Romania
379	BCO	Jinka	Jinka	Ethiopia
380	BDA	Kindley Field	Bermuda	Bermuda
381	BDB	Bundaberg	Bundaberg	Australia
382	BDD	Badu Island	Badu Island	Australia
383	BDJ	Sjamsudin Noor	Banjarmasin	Indonesia
384	BDL	Bradley International	Hartford	United States
385	BDN	Talhar Airport	Badin	Pakistan
386	BDO	Husein Sastranegara	Bandung	Indonesia
387	BDP	Bhadrapur	Bhadrapur	Nepal
388	BDR	Igorisikorskymem Airport	Bridgeport	United States
389	BDS	Papola Casale	Brindisi	Italy
390	BDT	Gbadolite	Gbadolite	Democratic Republic of the Congo
391	BDU	Bardufoss	Bardufoss	Norway
392	BED	Hanscom Field	Bedfordhanscom	United States
393	BEF	Bluefields	Bluefields	Nicaragua
394	BEG	Nikola Tesla	Belgrade	Serbia
395	BEI	Beica	Beica	Ethiopia
396	BEJ	Kalimaru	Berau	Indonesia
397	BEL	Val De Cans	Belem	Brazil
398	BEN	Benina Intl	Benghazi	Libya
399	BEO	Belmont Airport	Newcastle	Australia
400	BEP	Bellary	Bellary	India
401	BET	Bethel	Bethel	United States
402	BEU	Bedourie	Bedourie	Australia
403	BEV	Beersheba	Beersheba	Israel
404	BEW	Beira	Beira	Mozambique
405	BEZ	Beru	Beru	Kiribati
406	BAK	Baku	Baku	Azerbaijan
407	BER	Metropolitan Area	Berlin	Germany
408	BCW	Benguera Island	Bengueraisland	Mozambique
409	BEH	Rossfield Airport	Bentonharbor	United States
410	BFR	Virgiligrissom Airport	Bedford	United States
411	BFU	Bengbu	Bengbu	China
412	BGB	Booue	Booue	Gabon
413	BGH	Abbaye	Boghe	Mauritania
414	BGJ	Borgarfjordureystri	Borgarfjordureystri	Iceland
415	BGL	Baglung	Baglung	Nepal
416	BGT	Bagdad	Bagdad	United States
417	BGU	Bangassou	Bangassou	Central African Republic
418	BGY	Orio Al Serio	Milan	Italy
419	BHA	Bahiadecaraquez	Bahiadecaraquez	Ecuador
420	BHZ	Belo Horizonte	Belo Horizonte	Brazil
421	BIB	Baidoa	Baidoa	Somalia
422	BIH	Bishop	Bishop	United States
423	BIT	Baitadi	Baitadi	Nepal
424	BIV	Bria	Bria	Central African Republic
425	BIW	Billiluna	Billiluna	Australia
426	BIZ	Bimin	Bimin	Papua New Guinea
427	BJD	Bakkafjordur	Bakkafjordur	Iceland
428	BJK	Benjina	Benjina	Indonesia
429	BJS	Beijing	Beijing	China
430	BJW	Bajawa	Bajawa	Indonesia
431	BFF	County	Scottsbluff	United States
432	BFJ	Ba	Ba	Fiji Islands
433	BFL	Meadows Field	Bakersfield	United States
434	BFN	Bloemfontein	Bloemfontein	South Africa
435	BFO	Buffalorange	Buffalorange	Zimbabwe
436	BFP	Beaverfalls	Beaverfalls	United States
437	BHE	Woodbourne Air Station	Blenheim	New Zealand
438	BFT	County Airport	Beaufort	United States
439	BFV	Buriram	Buriram	Thailand
440	BFX	Bafoussam	Bafoussam	Cameroon
441	BGA	Palo Negro	Bucaramanga	Colombia
442	BGC	Braganca	Braganca	Portugal
443	BGF	Bangui	Bangui	Central African Republic
444	BGM	Greater Binghamton	Binghamton	United States
445	BGO	Flesland	Bergen	Norway
446	BGR	Bangor	Bangor	United States
447	BGW	Baghdad	Baghdad	Iraq
448	BGX	Bage	Bage	Brazil
449	BGZ	Braga	Braga	Portugal
450	BHB	Bar Harbor	Barharbor	United States
451	BHG	Brus Laguna	Bruslaguna	Honduras
452	BHH	Bisha	Bisha	Saudi Arabia
453	BHI	Comandante	Bahiablanca	Argentina
454	BHJ	Rudra Mata Airport	Bhuj	India
455	BHK	Bukhara	Bukhara	Uzbekistan
456	BHN	Beihan	Beihan	Yemen
457	BHO	Bhopal	Bhopal	India
458	BHP	Bhojpur	Bhojpur	Nepal
459	BHQ	Broken Hill	Broken Hill	Australia
460	BHR	Bharatpur	Bharatpur	Nepal
461	BHS	Raglan	Bathurst	Australia
462	BHV	Bahawalpur	Bahawalpur	Pakistan
463	BHX	Birmingham	Birmingham	United Kingdom
464	BHY	Beihai	Beihai	China
465	BIA	Poretta	Bastia	France
466	BID	Blockisland	Blockisland	United States
467	BIK	Frans Kaisepo	Biak	Indonesia
468	BIL	Billings	Billings	United States
469	BIM	Bimini	Bimini	The Bahamas
470	BIN	Bamiyan	Bamiyan	Afghanistan
471	BIQ	Biarritz Parme	Biarritz	France
472	BIR	Biratnagar	Biratnagar	Nepal
473	BIS	Bismarck	Bismarck	United States
474	BIU	Bildudalur	Bildudalur	Iceland
475	BIY	Bisho	Bisho	South Africa
476	BJB	Bojnord	Bojnurd	Iran
477	BJF	Batsfjord	Batsfjord	Norway
478	BJH	Bajhang	Bajhang	Nepal
479	BJL	Yundum International	Banjul	The Gambia 
480	BJM	Bujumbura	Bujumbura	Burundi
481	BJO	Bermejo	Bermejo	Bolivia
482	BJR	Bahar Dar	Bahardar	Ethiopia
483	BJU	Bajura	Bajura	Nepal
484	BJX	Del Bajío International	Leon	Mexico
485	BJZ	Talaveral La Real	Badajoz	Spain
486	BFQ	Bahia Pinas	Bahiapinas	Panama
487	BGK	Big Creek	Bigcreek	Belize
488	BII	Enyuairfield Airport	Bikiniatoll	Marshall Islands
489	BJT	Bentota River	Bentota River	Sri Lanka
490	BKE	Baker	Baker	United States
491	BKJ	Boke	Boke	Guinea
492	BKP	Barkly Downs	Barkly Downs	Australia
493	BKR	Bokoro	Bokoro	Chad
494	BKU	Betioky	Betioky	Madagascar
495	BLC	Bali	Bali	Cameroon
496	BLO	Blonduos	Blonduos	Iceland
497	BLP	Bellavista	Bellavista	Peru
498	BMB	Bumba	Bumba	Democratic Republic of the Congo
499	BMF	Bakouma	Bakouma	Central African Republic
500	BMH	Bomai	Bomai	Papua New Guinea
501	BMJ	Baramita	Baramita	Guyana
502	BML	Berlin	Berlin	United States
503	BMZ	Bamu	Bamu	Papua New Guinea
504	BNB	Boende	Boende	Democratic Republic of the Congo
505	BNC	Beni	Beni	Democratic Republic of the Congo
506	BNF	Warmspringbay Airport	Baranof	United States
507	BNJ	Bonnhbfrailwaystn Airport	Cologne/bonn	Germany
508	BNM	Bodinumu	Bodinumu	Papua New Guinea
509	BNT	Bundi	Bundi	Papua New Guinea
510	BNV	Boana	Boana	Papua New Guinea
511	BNZ	Banz	Banz	Papua New Guinea
512	BOE	Boundji	Boundji	Congo
513	BOK	Brookings	Brookings	United States
514	BOP	Bouar	Bouar	Central African Republic
515	BOQ	Boku	Boku	Papua New Guinea
516	BOV	Boang	Boang	Papua New Guinea
517	BKC	Buckland	Buckland	United States
518	BKG	Branson	Branson	United States
519	WAC	Waca	Waca	Ethiopia
520	BKX	Brookings	Brookings	United States
521	BKM	Bakalalan	Bakalalan	Malaysia
522	BKO	Bamako	Bamako	Mali
523	BKQ	Blackall	Blackall	Australia
524	BKW	Beckley	Beckley	United States
525	BKY	Kamenbe	Bukavu	Democratic Republic of the Congo
526	BKZ	Bukoba	Bukoba	Tanzania
527	BLA	Gen J A Anzoategui	Barcelona	Venezuela
528	BLB	Balboa	Balboa	Panama
529	BLF	Princeton	Bluefield	United States
530	BLG	Belaga	Belaga	Malaysia
531	BLH	Blythe	Blythe	United States
532	BLJ	Batna	Batna	Algeria
533	BLK	Blackpool	Blackpool	United Kingdom
534	BLL	Billund	Billund	Denmark
535	BLQ	Guglielmo Marconi	Bologna	Italy
536	BLT	Blackwater	Blackwater	Australia
537	BLZ	Chileka	Blantyre	Malawi
538	BMA	Bromma	Stockholm	Sweden
539	BMD	Belo	Belo	Madagascar
540	BME	Broome	Broome	Australia
541	BMI	Central Illinois Regional Airport	Bloomington	United States
542	BMK	Borkum	Borkum	Germany
543	BMM	Bitam	Bitam	Gabon
544	BMO	Bhamo	Bhamo	Myanmar
545	BMP	Brampton Island	Brampton Island	Australia
546	BMU	Bima	Bima	Indonesia
547	BMW	Bordj Badji Mokhtar	Bordj Badji Mokhtar	Algeria
548	BMY	Belep Island	Belepisland	New Caledonia
549	BNA	Nashville	Nashville	United States
550	BND	Bandar Abbas	Bandarabbas	Iran
551	BNI	Benin City	Benin	Nigeria
552	BNK	Byron Gateway	Ballina	Australia
553	BNN	Bronnoy	Bronnoysund	Norway
554	BNO	Burns	Burns	United States
555	BNP	Bannu	Bannu	Pakistan
556	BNU	Blumenau	Blumenau	Brazil
557	BNX	Banja Luka	Banja Luka	Bosnia and Herzegovina
558	BOA	Boma	Boma	Democratic Republic of the Congo
559	BOB	Motu mute	Borabora	French Polynesia
560	BOD	Mérignac	Bordeaux	France
561	BOG	Eldorado International	Bogota	Colombia
562	BOH	Bournemouth International	Bournemouth	United Kingdom
563	BOI	Gowen Field	Boise	United States
564	BOJ	Bourgas	Burgas	Bulgaria
565	BOO	Bodo	Bodo	Norway
566	BOR	Belfort	Belfort	France
567	BOS	Logan International	Boston	United States
568	BOU	Bourges	Bourges	France
569	LUA	Lukla	Lukla	Nepal
570	BKK	Suvarnabhumi International Airport	Bangkok	Thailand
571	BLD	Lasvegas Boulder Airport	Lasvegas	United States
572	BNY	Bellona	Bellona	Solomon Islands
573	BOX	Borroloola	Borroloola	Australia
574	BPB	Boridi	Boridi	Papua New Guinea
575	BPD	Bapi	Bapi	Papua New Guinea
576	BQE	Bubaque	Bubaque	Guinea
577	BQI	Bagani	Bagani	Namibia
578	BQO	Bouna	Bouna	Cote D'Ivoire (Ivory Coast)
579	BQQ	Barra	Barra	Brazil
580	BQW	Balgo Hills	Balgo Hills	Australia
581	BRB	Barreirinha Airport	Barreiras	Brazil
582	BRF	Bradford	Bradford	United Kingdom
583	BRH	Brahman	Brahman	Papua New Guinea
584	BRP	Biaru	Biaru	Papua New Guinea
585	BSH	Brighton	Brighton	United Kingdom
586	BSO	Basco	Basco	Philippines
587	BSP	Bensbach	Bensbach	Papua New Guinea
588	BSS	Balsas	Balsas	Brazil
589	BSY	Bardera	Bardera	Somalia
590	BSZ	Bartletts	Bartletts	United States
591	BTA	Bertoua	Bertoua	Cameroon
592	BTD	Brunette Downs	Brunette Downs	Australia
593	BTL	Wkkellogg Airport	Battlecreek	United States
594	BTN	Bennettsville	Bennettsville	United States
595	BTQ	Butare	Butare	Rwanda
596	BUE	Buenos Aires	Buenos Aires	Argentina
597	BUH	Bucharest	Bucharest	Romania
598	BUK	Albuq	Albuq	Yemen
599	BUL	Bulolo	Bulolo	Papua New Guinea
600	BPC	Bamenda	Bamenda	Cameroon
601	BPG	Barra Do Garcas	Barra Do Garcas	Brazil
602	BPN	Sepingan	Balikpapan	Indonesia
603	BPT	Jefferson County	Beaumont	United States
604	BPX	Bangda	Bangda	China
605	BPY	Besalampy	Besalampy	Madagascar
606	BQB	Bussellton	Bussellton	Australia
607	BQL	Boulia	Boulia	Australia
608	BQN	Borinquen	Aguadilla	Puerto Rico
609	BQS	Blagoveschensk	Blagoveshchensk	Russia
610	BQT	Brest	Brest	Belarus
611	BRA	Barreiras	Barradogarcas	Brazil
612	BRD	Brainerd Lakes Regional	Brainerd	United States
613	BRE	Bremen	Bremen	Germany
614	BRI	Palese	Bari	Italy
615	BRK	Bourke	Bourke	Australia
616	BRL	Burlington	Burlington	United States
617	BRM	Barquisimeto	Barquisimeto	Venezuela
618	BRN	Belp	Bern	Switzerland
619	BRQ	Turany	Brno	Czech Republic
620	BRR	North Bay	North Bay	United Kingdom
621	BRS	Bristol	Bristol	United Kingdom
622	BRT	Bathurst Island	Bathurst Island	Australia
623	BRV	Bremerhaven	Bremerhaven	Germany
624	BRW	Wiley Post W.Rogers M	Barrow	United States
625	BRX	Barahona	Barahona	Dominican Republic
626	BSA	Bossaso	Bossaso	Somalia
627	BSC	Bahia Solano	Bahiasolano	Colombia
628	BSD	Baoshan	Baoshan	China
629	BSG	Bata	Bata	Equatorial Guinea
630	BSJ	Bairnsdale	Bairnsdale	Australia
631	BSK	Biskra	Biskra	Algeria
632	BSR	Basra	Basrah	Iraq
633	BST	Bost	Bost	Afghanistan
634	BSU	Basankusu	Basankusu	Democratic Republic of the Congo
635	BSX	Bassein	Bassein	Myanmar
636	BTC	Batticaloa	Batticaloa	Sri Lanka
637	BTE	Bonthe	Bonthe	Sierra Leone
638	BTH	Hang Nadim	Batubesar	Indonesia
639	BTJ	Sultan Lskandarmuda Airport	Bandaaceh	Indonesia
640	BTK	Bratsk	Bratsk	Russia
641	BTM	Bert Mooney Airport	Butte	United States
642	BTR	Ryan	Batonrouge	United States
643	BTT	Bettles	Bettles	United States
644	BTU	Bintulu	Bintulu	Malaysia
645	BTV	Burlington	Burlington	United States
646	BUA	Buka	Buka	Papua New Guinea
647	BUC	Burketown	Burketown	Australia
648	BUF	Niagara International	Buffalo	United States
649	BUG	Gen V Deslandes Airport	Benguela	Angola
650	BUI	Bokondini	Bokondini	Indonesia
651	BUN	Buenaventura	Buenaventura	Colombia
652	BUO	Burao	Burao	Somalia
653	BTO	Botopasie	Botopasie	Suriname
654	BUV	Bellaunion	Bellaunion	Uruguay
655	BUW	Baubau	Baubau	Indonesia
656	BUY	Bunbury	Bunbury	Australia
657	BVA	Beauvais Tille	Paris	France
658	BVE	Laroche	Brivelagaillard	France
659	BVF	Dama Airport	Bua	Fiji Islands
660	BVM	Belmonte	Belmonte	Brazil
661	BVP	Bolovip	Bolovip	Papua New Guinea
662	BVR	Esperadinha Airport	Bravaisland	Cape Verde
663	BVZ	Beverley Springs	Beverley Springs	Australia
664	BWI	Baltimore	Baltimore	United States
665	BWJ	Bawan	Bawan	Papua New Guinea
666	BWL	Blackwell	Blackwell	United States
667	BWM	Bowman	Bowman	United States
668	BWP	Bewani	Bewani	Papua New Guinea
669	BWQ	Brewarrina	Brewarrina	Australia
670	BXC	Boxborough	Boxborough	United States
671	BXD	Bade	Bade	Indonesia
672	BXI	Boundiali	Boundiali	Cote D'Ivoire (Ivory Coast)
673	BXL	Bluelagoon	Bluelagoon	Fiji Islands
674	BXM	Batom	Batom	Indonesia
675	BXV	Breiddalsvik	Breiddalsvik	Iceland
676	BXZ	Bunsil	Bunsil	Papua New Guinea
677	BYA	Boundary	Boundary	United States
678	BYB	Dibaalbayah	Dibaalbayah	Oman
679	BYD	Albayda	Albayda	Yemen
680	BYL	Bella Yella	Bellayella	Liberia
681	BYX	Baniyala	Baniyala	Australia
682	BZC	Buzios	Buzios	Brazil
683	BZD	Balranald	Balranald	Australia
684	CAD	Cadillac	Cadillac	United States
685	CAM	Camiri	Camiri	Bolivia
686	CAS	Anfa	Casablanca	Morocco
687	BUR	Bob Hope	Burbank	United States
688	BUX	Bunia	Bunia	Democratic Republic of the Congo
689	BUZ	Bushehr	Bushehr	Iran
690	BVB	Boa Vista	Boa Vista	Brazil
691	BVC	Rabil	Boavistaisland	Cape Verde
692	BVG	Berlevag	Berlevag	Norway
693	BVI	Birdsville	Birdsville	Australia
694	BWA	Bhairawa	Bhairawa	Nepal
695	BWB	Barrow Island	Barrow Island	Australia
696	BWF	Walney Island	Walney Island	United Kingdom
697	BWG	Warrencnt Airport	Bowlinggreen	United States
698	BWK	Bol	Bol	Croatia
699	BWN	Brunei International Airport	Bandarseribegawan	Brunei
700	BWO	Balakovo	Balakovo	Russia
701	BWU	Bankstown	Bankstown	Australia
702	BXB	Babo	Babo	Indonesia
703	BXE	Bakel	Bakel	Senegal
704	BXH	Balhash	Balhash	Kazakhstan
705	BXN	Imsik Airport	Bodrum	Turkey
706	BXU	Butuan	Butuan	Philippines
707	BYC	Yacuiba	Yacuiba	Bolivia
708	BYK	Bouake	Bouake	Cote D'Ivoire (Ivory Coast)
709	BYN	Bayankhongor	Bayankhongor	Mongolia
710	BYU	Bindlacherberg Airport	Bayreuth	Germany
711	BZA	Sanpedro Airport	Bonanza	Nicaragua
712	BZE	Philip S.W.Goldson Int	Belize	Belize
713	BZG	I. J. Paderewski Airport	Bydgoszcz	Poland
714	BZH	Bumihills	Bumihills	Zimbabwe
715	BZK	Bryansk	Bryansk	Russia
716	BZL	Barisal	Barisal	Bangladesh
717	BZN	Gallatin Field	Bozeman	United States
718	BZO	Bolzano	Bolzanobozen	Italy
719	BZR	Beziers Vias	Beziers	France
720	BZV	Maya Maya	Brazzaville	Congo
721	BZY	International Airport	Balti	Moldova
722	CAC	Cascavel	Cascavel	Brazil
723	CAE	Metropolitan Airport	Columbia	United States
724	CAF	Carauari	Carauari	Brazil
725	CAG	Elmas	Cagliari	Italy
726	CAH	Camau	Camau	Vietnam
727	CAI	Cairo	Cairo	Egypt
728	CAK	Akron Canton	Cantonakron	United States
729	CAL	Machrihanish	Cambeltown	United Kingdom
730	CAN	New Baiyun	Guangzhou	China
731	CAP	Caphaitien	Caphaitien	Haiti
732	BWD	Brownwood	Brownwood	United States
733	BXS	Borregosprings	Borregosprings	United States
734	BXX	Borama	Borama	Somalia
735	BYW	Blakelyisland	Blakelyisland	United States
736	CAV	Cazombo	Cazombo	Angola
737	CBA	Cornerbay	Cornerbay	United States
738	CBE	Severo Evensk	Rugao	China
739	CBP	Coimbra	Coimbra	Portugal
740	CBS	Oronegro Airport	Cabimas	Venezuela
741	CBX	Condobolin	Condobolin	Australia
742	CBY	Canobie	Canobie	Australia
743	CBZ	Cabincreek	Cabincreek	United States
744	CCT	Colonia Catriel	Colonia Catriel	Argentina
745	CCW	Cowell	Cowell	Australia
746	CCX	Caceres	Caceres	Brazil
747	CDD	Cauquira	Cauquira	Honduras
748	CDG	Charles De Gaulle	Paris	France
749	CDH	Harrellfld Airport	Camden	United States
750	CDL	Candle	Candle	United States
751	CDQ	Croydon	Croydon	Australia
752	CEH	Chelinda	Chelinda	Malawi
753	CEO	Wako Kungo Airport	Wakukungo	Angola
754	CEP	Concepcion	Concepcion	Bolivia
755	CFA	Coffeepoint	Coffeepoint	United States
756	CFH	Clifton Hills	Clifton Hills	Australia
757	CGC	Capegloucester	Capegloucester	Papua New Guinea
758	CGH	Congonhas	Sao Paulo	Brazil
759	CGT	Chinguitti	Chinguitti	Mauritania
760	CGY	Cagayan De Oro	Cagayandeoro	Philippines
761	CAX	Carlisle	Carlisle	United Kingdom
762	CAY	Rochambeau	Cayenne	French Guiana
763	CBB	J Wilsterman	Cochabamba	Bolivia
764	CBG	Cambridge	Cambridge	United Kingdom
765	CBH	Leger	Bechar	Algeria
766	CBL	Caborojo	Caborojo	Venezuela
767	CBO	Awang	Cotabato	Philippines
768	CBQ	Calabar	Calabar	Nigeria
769	CBR	Canberra	Canberra	Australia
770	CBT	Catumbela	Catumbela	Angola
771	CCC	Cayo Coco	Cayococo	Cuba
772	CCI	Concordia	Concordia	Brazil
773	CCJ	Kozhikode	Kozhikode	India
774	CCM	Criciuma	Criciuma	Brazil
775	CCP	Carriel Sur	Concepcion	Chile
776	CCS	Simon Bolivar International Airport	Caracas	Venezuela
777	CCU	Netaji Subhas Chandra Intl Airport	Kolkata	India
778	CCV	Craig Cove	Craig Cove	Vanuatu
779	CCZ	Chub Cay	Chub Cay	The Bahamas
780	CDA	Cooinda	Cooinda	Australia
781	CDB	Cold Bay	Coldbay	United States
782	CDC	Cedar City	Cedar	United States
783	CDP	Cuddapah Airport	Cuddapah	India
784	CDR	Chadron	Chadron	United States
785	CDU	Camden	Camden	Australia
786	CDV	Mudhole Smith	Cordova	United States
787	CEB	Mactan Cebu International	Cebu	Philippines
788	CEC	Mc Namara Fld	Crescent	United States
789	CED	Ceduna	Ceduna	Australia
790	CEE	Cherepovets	Cherepovets	Russia
791	CEI	Chiang Rai	Chiangrai	Thailand
792	CEK	Chelyabinsk	Chelyabinsk	Russia
793	CEM	Central	Central	United States
794	CEN	Ciudad Obregon	Ciudadobregon	Mexico
795	CEQ	Mandelieu Airport	Cannes	France
796	CER	Maupertus Airport	Cherbourg	France
797	CEZ	Montezuma County	Cortez	United States
798	CFB	Cabo Frio	Cabo Frio	Brazil
799	CFE	Aulnat	Clermontferrand	France
800	CFG	Cienfuegos	Cienfuegos	Cuba
801	CFO	Confreza	Confreza	Brazil
802	CFR	Carpiquet	Caen	France
803	CFS	Coffs Harbour	Coffs Harbour	Australia
804	CFU	Ioannis Kapodistrias	Kerkyra	Greece
805	CGD	Changde	Changde	China
806	CGI	Cape Girardeau	Capegirardeau	United States
807	CGJ	Chingola	Chingola	Zambia
808	CGK	Soekarno Hatta International	Jakarta	Indonesia
809	CGM	Mambajao	Camiguin	Philippines
810	CGN	bonn	Cologne/bonn	Germany
811	CGP	Patenga	Chittagong	Bangladesh
812	CGQ	Changchun	Changchun	China
813	CGR	Campo Grande	Campo Grande	Brazil
814	CGA	Craig	Craig	United States
815	CHI	FSS	Chicago	United States
816	CHL	Challis	Challis	United States
817	CHP	Circlehotspring	Circlehotspring	United States
818	CHW	Jiuquan	Jiuquan	China
819	CIG	Craig Moffat	Craig	United States
820	CIM	Cimitarra	Cimitarra	Colombia
821	CIU	Chippewa County	Sault Ste Marie	United States
822	CIV	Chomley	Chomley	United States
823	CJT	Copalar Airport	Comitan	Mexico
824	CKE	Clearlake	Clearlake	United States
825	CKI	Croker Island	Croker Island	Australia
826	CKO	Cornelio Procopio	Cornelio Procopio	Brazil
827	CKX	Chicken	Chicken	United States
828	CLA	Comilla	Comilla	Bangladesh
829	CLC	Metroport Airport	Clearlake	United States
830	CLH	Coolah	Coolah	Australia
831	CLP	Clarkspoint	Clarkspoint	United States
832	CMD	Cootamundra	Cootamundra	Australia
833	CMM	Carmelita	Carmelita	Guatemala
834	CMQ	Clermont	Clermont	Australia
835	CMV	Coromandel	Coromandel	New Zealand
836	MAP	Mamai	Mamai	Papua New Guinea
837	CHF	Jinhae	Jinhae	South Korea
838	CHG	Chaoyang	Chaoyang	China
839	CHH	Chachapoyas	Chachapoyas	Peru
840	CHM	Chimbote	Chimbote	Peru
841	CHQ	Souda	Chania	Greece
842	CHR	Chateauroux	Chateauroux	France
843	CHS	AFB Municipal	Charleston	United States
844	CHT	Karewa	Chathamisland	New Zealand
845	CHU	Chuathbaluk	Chuathbaluk	United States
846	CHX	Changuinola	Changuinola	Panama
847	CIA	Ciampino	Rome	Italy
848	CIC	Chico	Chico	United States
849	CID	Cedar Rapids	Cedarrapids	United States
850	CIF	Chifeng	Chifeng	China
851	CIJ	E. Beltram	Cobija	Bolivia
852	CIK	Chalkyitsik	Chalkyitsik	United States
853	CIO	Mcallopez Airport	Concepcion	Paraguay
854	CIP	Chipata	Chipata	Zambia
855	CIT	Shimkent	Shimkent	Kazakhstan
856	CIX	Cornel Ruiz	Chiclayo	Peru
857	CIY	Vincenzomagliocco Airport	Comiso	Italy
858	CJA	Cajamarca	Cajamarca	Peru
859	CJB	Peelamedu Airport	Coimbatore	India
860	CJJ	Cheongju	Cheongju	South Korea
861	CJL	Chitral	Chitral	Pakistan
862	CJS	Intl Abraham Gonzalez	Ciudadjuarez	Mexico
863	CJU	Jeju	Jeju	South Korea
864	CKG	Jiangbei International	Chongqing	China
865	CKS	Carajas	Carajas	Brazil
866	CKV	Clarksville	Clarksville	United States
867	CKY	Conakry	Conakry	Guinea
868	CKZ	Canakkale	Canakkale	Turkey
869	CLE	Hopkins International	Cleveland	United States
870	CLJ	Napoca International Airport	Clujnapoca	Romania
871	CLL	Easterwoodfield Airport	Collegestation	United States
872	CLM	Fairchild Intl	Portangeles	United States
873	CLO	Alfonso B. Aragon	Cali	Colombia
874	CLQ	Colima	Colima	Mexico
875	CLT	Douglas	Charlotte	United States
876	CLV	Caldas Novas	Caldasnovas	Brazil
877	CLY	Ste Catherine	Calvi	France
878	CLZ	Calabozo	Calabozo	Venezuela
879	CMA	Cunnamulla	Cunnamulla	Australia
880	CMB	Bandaranayake	Colombo	Sri Lanka
881	CME	Ciudad Del Carmen	Ciudaddelcarmen	Mexico
882	CMF	Chambery	Chamberyaixlesbains	France
883	CMH	Port Columbus Intl	Columbus	United States
884	CMI	University Of Illinois Willard	Champaign	United States
885	CMK	Club Makokola	Clubmakokola	Malawi
886	CMP	Campo Alegre Airport	Santanadoaragua	Brazil
887	CMR	Houssen Airport	Colmar	France
888	CMU	Chimbu	Kundiawa	Papua New Guinea
889	CMW	Ign Agramonte Intl	Camaguey	Cuba
890	CMX	Houghton County	Hancock	United States
891	CKD	Crooked Creek	Crookedcreek	United States
892	CNA	Cananea	Cananea	Mexico
893	CNE	Canon	Canon	United States
894	CNN	Kannur International Airport	Kannur	India
895	CNV	Canavieiras	Canavieiras	Brazil
896	CNZ	Cangamba	Cangamba	Angola
897	COA	Columbia	Columbia	United States
898	COV	Covilha	Covilha	Portugal
899	CPI	Capeorford	Capeorford	Papua New Guinea
900	CPL	Chaparral	Chaparral	Colombia
901	CPN	Caperodney	Caperodney	Papua New Guinea
902	CPO	Chamonate	Copiapo	Chile
903	CPU	Cururupu	Cururupu	Brazil
904	CQT	Caquetania	Caquetania	Colombia
905	CRF	Carnot	Carnot	Central African Republic
906	CRG	Craig Municipal	Jacksonville	United States
907	CRO	Corcoran	Corcoran	United States
908	CRT	Crossett	Crossett	United States
909	CSE	Crestedbutte	Crestedbutte	United States
910	CSI	Casino	Casino	Australia
911	CSL	O'sullivanaaf Airport	Sanluisobispo	United States
912	CSN	Carson	Carson	United States
913	CST	Castaway	Castaway	Fiji Islands
914	CSU	Santa Cruz Do Sul	Santa Cruz Do Sul	Brazil
915	CSV	Memorial Airport	Crossville	United States
916	CTA	Fontanarossa	Rome	Italy
917	CTI	Cuito Cuanavale	Cuito Cuanavale	Angola
918	CND	Kogalniceanu	Constanta	Romania
919	CNF	Tancredo Neves International	Belohorizonte	Brazil
920	CNJ	Cloncurry	Cloncurry	Australia
921	CNL	Sindal	Sindal	Denmark
922	CNP	Neerlerit Inaat	Neerleritinaat	Greenland
923	CNQ	Camba Punta	Deniliquin	Argentina
924	CNS	Cairns	Cairns	Australia
925	CNX	Chiang Mai	Chiangmai	Thailand
926	CNY	Canyonlands Field	Moab	United States
927	COD	Yellowstone Regional	Cody	United States
928	COE	Coeurd'alene	Coeurd'alene	United States
929	COG	Mandinga Airport	Condoto	Colombia
930	COK	Kochi	Kochi	India
931	COO	Cotonou	Cotonou	Benin
932	COQ	Choibalsan	Choibalsan	Mongolia
933	COR	Pajas Blancas	Cordoba	Argentina
934	COS	Colorado Springs	Coloradosprings	United States
935	CPA	Atubman Airport	Capepalmas	Liberia
936	CPB	Capurgana	Capurgana	Colombia
937	CPC	Chapelco	Sanmartindelosandes	Argentina
938	CPD	Coober Pedy	Cooberpedy	Australia
939	CPH	Kastrup	Copenhagen	Denmark
940	CPQ	Campinas	Campinas	Brazil
941	CPR	Natrona County International Airport	Casper	United States
942	CPT	Cape Town International	Capetownintl	South Africa
943	CPV	Joao Suassuna	Campinagrande	Brazil
944	CQD	Shahre kord	Shahrekord	Iran
945	CQF	Calaisdunkerque	Calaisdunkerque	France
946	CQM	Central Airport	Ciudadreal	Spain
947	CRA	Craiova	Craiova	Romania
948	CRD	Comodoro Rivadavia	Comodoro Rivadavia	Argentina
949	CRI	Crooked Island	Crooked Island	The Bahamas
950	CRK	Luzon Clark Field	Luzon Clark Field	Philippines
951	CRM	National	Catarman	Philippines
952	CRP	Corpus Christi	Corpuschristi	United States
953	CRQ	Caravelas	Caravelas	Brazil
954	CRV	Crotone	Crotone	Italy
955	CRW	Yeager	Charleston	United States
956	CRZ	Turkmenabad	Turkmenabad	Turkmenistan
957	CSB	Caransebes	Caransebes	Romania
958	CSF	Creil	Creil	France
959	CSH	Solovetsky	Solovetsky	Russia
960	CSK	Cap Skirring	Capskirring	Senegal
961	CSM	Clinton	Clinton	United States
962	CSX	Changsha	Changsha	China
963	CTC	Catamarca	Catamarca	Argentina
964	CTD	Chitre	Chitre	Panama
965	CTG	Rafael Nunez	Cartagena	Colombia
966	CTH	Chestercount Airport	Coatesville	United States
967	CTM	Chetumal	Chetumal	Mexico
968	PMA	Wawi	Pemba	Tanzania
969	COI	Merrittisland Airport	Cocoa	United States
970	CTP	Carutapera	Carutapera	Brazil
971	CTS	New Chitose Airport	Sapporo	Japan
972	CUD	Caloundra	Caloundra	Australia
973	CUG	Cudal	Cudal	Australia
974	CUO	Caruru	Caruru	Colombia
975	CUV	Casigua	Casigua	Venezuela
976	CUW	Cubecove	Cubecove	United States
977	CUY	Cue	Cue	Australia
978	CVB	Chungribu	Chungribu	Papua New Guinea
979	CVC	Cleve	Cleve	Australia
980	CVE	Covenas	Covenas	Colombia
981	CVH	Caviahue	Caviahue	Argentina
982	CVL	Capevogel	Capevogel	Papua New Guinea
983	CWR	Cowarie	Cowarie	Australia
984	CWS	Centerisland	Centerisland	United States
985	CWW	Corowa	Corowa	Australia
986	CXI	Cassidy International Airport	Christmasisland	Kiribati
987	CXN	Candala	Candala	Somalia
988	CXT	Charters Towers	Charters Towers	Australia
989	CXY	Cat Cays	Cat Cays	The Bahamas
990	CZB	Carlos Ruhl Airport	Cruzalta	Brazil
991	CZP	Capepole	Capepole	United States
992	DAH	Dathina	Dathina	Yemen
993	DAK	Dakhla Airport	Dakhlaoasis	Egypt
994	DAZ	Darwaz	Darwaz	Afghanistan
995	CZH	Corozal	Corozal	Belize
996	CUC	Camilo Dazo	Cucuta	Colombia
997	CUE	Cuenca	Cuenca	Ecuador
998	CUF	Levaldigi	Cuneo	Italy
999	CUL	Fedl De Bachigualato	Culiacan	Mexico
1000	CUM	Cumana	Cumana	Venezuela
1001	CUN	Cancun	Cancun	Mexico
1002	CUQ	Coen	Coen	Australia
1003	CUT	Cutral	Cutral	Argentina
1004	CUZ	Velazco Astete	Cuzco	Peru
1005	CVF	Courchevel	Courchevel	France
1006	CTU	Shuangliu	Chengdu	China
1007	CVJ	Cuernavaca	Cuernavaca	Mexico
1008	CVN	Clovis	Clovis	United States
1009	CVQ	Carnarvon	Carnarvon	Australia
1010	CVT	West Midlands International	Coventry	United Kingdom
1011	CVU	Corvo Island	Corvoisland	Portugal
1012	CWB	Afonso Pena International Airport	Curitiba	Brazil
1013	CWC	Chernovtsy	Chernivtsi	Ukraine
1014	CWI	Clinton	Clinton	United States
1015	CWL	Cardiff-Wales	Cardiff-Wales	United Kingdom
1016	CWT	Cowra	Cowra	Australia
1017	CXA	Caicaradeoro	Caicaradeoro	Venezuela
1018	CXJ	Campo Dos Bugres	Caxiasdosul	Brazil
1019	CXL	Calexico	Calexico	United States
1020	CXP	Tunggulwulung Airport	Cilacap	Indonesia
1021	CYA	Lescayes	Lescayes	Haiti
1022	CYF	Chefornak	Chefornak	United States
1023	CYO	Cayo Largo Del Sur	Cayolargodelsur	Cuba
1024	CYP	Calbayog	Calbayog	Philippines
1025	CYR	Colonia	Colonia	Uruguay
1026	CYU	Cuyo	Cuyo	Philippines
1027	CYX	Cherskiy	Cherskiy	Russia
1028	CYZ	Cauayan	Cauayan	Philippines
1029	CZA	Chichenitza	Chichenitza	Mexico
1030	CZE	Coro	Coro	Venezuela
1031	CZL	Ain El Bey	Constantine	Algeria
1032	CZM	Cozumel	Cozumel	Mexico
1033	CZU	Corozal	Corozal	Colombia
1034	CZX	Changzhou	Changzhou	China
1035	DAB	Daytona Beach	Daytonabeach	United States
1036	DAC	Shahjalal Intl Airport	Dhaka	Bangladesh
1037	DAD	Da Nang	Danang	Vietnam
1038	DAL	Love Field	Dallas	United States
1039	DAM	Damascus	Damascus	Syria
1040	DAR	Dar Es Salaam	Daressalaam	Tanzania
1041	DAT	Datong	Datong	China
1042	DAU	Daru	Daru	Papua New Guinea
1043	DAV	Enrique Malek	David	Panama
1044	DAX	Daxian	Daxian	China
1045	CVG	northern Kentucky	Cincinnati	United States
1046	CUK	Caye Caulker	Caye Caulker	Belize
1047	CXF	Coldfoot	Coldfoot	United States
1048	CYC	Caye Chapel	Caye Chapel	Belize
1049	CZN	Chisana Field	Chisana	United States
1050	DBP	Debepare	Debepare	Papua New Guinea
1051	DBY	Dalby	Dalby	Australia
1052	DDI	Daydream Island Airport	Daydreamis	Australia
1053	DDM	Dodoima	Dodoima	Papua New Guinea
1054	DDN	Delta Downs	Delta Downs	Australia
1055	DDP	Dorado Beach Airport	Dorado	Puerto Rico
1056	DEI	Denisisland	Denisisland	Seychelles
1057	DER	Derim	Derim	Papua New Guinea
1058	DGC	Degahbur	Degahbur	Ethiopia
1059	DGD	Dalgaranga	Dalgaranga	Australia
1060	DGF	Douglas Lake	Douglas Lake	Canada
1061	DGH	Deoghar Airport	Deoghar	India
1062	DGM	Dongguan	Dongguan	China
1063	DHD	Durham Downs	Durham Downs	Australia
1064	DIO	Diomedeisland	Diomedeisland	United States
1065	DIP	Diapaga	Diapaga	Burkina Faso
1066	DIQ	Divinopolis	Divinopolis	Brazil
1067	DJA	Djougou	Djougou	Benin
1068	DJM	Djambala	Djambala	Congo
1069	DKV	Docker River	Docker River	Australia
1070	DLK	Dulkaninna	Dulkaninna	Australia
1071	DLL	Dillon	Dillon	United States
1072	DLV	Delissaville	Delissaville	Australia
1073	DME	Domodedovo	Moscow	Russia
1074	DMO	Sedalia	Sedalia	United States
1075	DNB	Dunbar	Dunbar	Australia
1076	DNF	Martuba Airport	Derna	Libya
1077	PPX	Param	Param	Papua New Guinea
1078	DBA	Dalbandin	Dalbandin	Pakistan
1079	DBM	Debra Marcos	Debramarcos	Ethiopia
1080	DBQ	Dubuque	Dubuque	United States
1081	DBT	Debratabor	Debratabor	Ethiopia
1082	DBV	Dubrovnik	Dubrovnik	Croatia
1083	DCF	Cane Field	Roseau	Dominica
1084	DCM	Mazamet	Castres	France
1085	DDC	Dodge City	Dodge	United States
1086	DDG	Dandong	Dandong	China
1087	DEA	Dera Ghazi Khan	Deraghazikhan	Pakistan
1088	DEB	Debrecen	Debrecen	Hungary
1089	DEC	Decatur	Decatur	United States
1090	DEF	Dezful	Dezful	Iran
1091	DEM	Dembidollo	Dembidollo	Ethiopia
1092	DEN	Denver	Denver	United States
1093	DES	Desroches	Desroches	Seychelles
1094	DET	Detroit City	Detroit City	United States
1095	DEZ	Al Jafrah	Deirezzor	Syria
1096	DGE	Mudgee	Mudgee	Australia
1097	DGO	Guadalupe Victoria	Durango	Mexico
1098	DGT	Dumaguete	Dumaguete	Philippines
1099	DHI	Dhangarhi	Dhangarhi	Nepal
1100	DHM	Gaggal Airport	Dharamsala	India
1101	DIB	Mohanbari Airport	Dibrugarh	India
1102	DIE	Antsiranana	Antsiranana	Madagascar
1103	DIG	Diqing	Diqing	China
1104	DIJ	Longvic Airport	Dijon	France
1105	DIN	Dien Bien Phu	Dienbienphu	Vietnam
1106	DIR	Aba Tenna D Yilma	Diredawa	Ethiopia
1107	DIS	Loubomo	Loubomo	Congo
1108	DIU	Diu	Diu	India
1109	DJB	Sultan Taha Syarifudn	Jambi	Indonesia
1110	DJE	Zarzis	Djerba	Tunisia
1111	DJG	Inedbirenne	Djanet	Algeria
1112	DJJ	Sentani	Jayapura	Indonesia
1113	DJO	Daloa	Daloa	Cote D'Ivoire (Ivory Coast)
1114	DKR	Yoff Léopold Sédar Senghor International	Dakar	Senegal
1115	DLA	Douala	Douala	Cameroon
1116	DLC	Dalian	Dalian	China
1117	DLG	Dillingham	Dillingham	United States
1118	DLH	Duluth	Duluth	United States
1119	DLI	Lienkhang	Dalat	Vietnam
1120	DLU	Dali	Dali	China
1121	DLY	Dillons Bay	Dillonsbay	Vanuatu
1122	DLZ	Dalanzadgad	Dalanzadgad	Mongolia
1123	DMB	Zhambyl	Zhambyl	Kazakhstan
1124	DMM	King Fahd International Airport	Dammam	Saudi Arabia
1125	DMU	Dimapur	Dimapur	India
1126	DND	Dundee	Dundee	United Kingdom
1127	DNH	Dunhuang	Dunhuang	China
1128	DGA	Dangriga	Dangriga	Belize
1129	DJN	Delta Junction	Deltajunction	United States
1130	DNI	Wadmadani	Wadmadani	Sudan
1131	DNM	Denham	Denham	Australia
1132	DNO	Dianopolis	Dianopolis	Brazil
1133	DNQ	Deniliquin	Deniliquin	Australia
1134	DNU	Dinangat	Dinangat	Papua New Guinea
1135	DOA	Doany	Doany	Madagascar
1136	DOF	Dorabay	Dorabay	United States
1137	DOI	Doini	Doini	Papua New Guinea
1138	DOL	Stgatien Airport	Deauville	France
1139	DON	Doslagunas	Doslagunas	Guatemala
1140	DOO	Dorobisoro	Dorobisoro	Papua New Guinea
1141	DOR	Dori	Dori	Burkina Faso
1142	DOS	Dios	Dios	Papua New Guinea
1143	DOX	Dongara	Dongara	Australia
1144	DRD	Dorunda Station	Dorunda Station	Australia
1145	DRN	Dirranbandi	Dirranbandi	Australia
1146	DRR	Durrie	Durrie	Australia
1147	DSC	Dschang	Dschang	Cameroon
1148	DSS	Blaise Diagne International Airport	Diass	Senegal
1149	DTH	Deathvalley	Deathvalley	United States
1150	DTR	Decaturisland	Decaturisland	United States
1151	DTT	Detroit	Detroit	United States
1152	DUQ	Duncan/quam Airport	Duncanquam	Canada
1153	DVN	Davenport	Davenport	United States
1154	DVR	Daly River	Daly River	Australia
1155	DWD	Dawadmi	Dawadmi	Saudi Arabia
1156	DYA	Dysart	Dysart	Australia
1157	DYW	Daly Waters	Daly Waters	Australia
1158	EAB	Abbs	Abbs	Yemen
1159	EAP	Mulhouse	Basel	France
1160	DNK	Dnepropetrovsk	Dnipropetrovsk	Ukraine
1161	DNP	Dang	Dang	Nepal
1162	DNR	Pleurtuit	Dinardstmalo	France
1163	DNV	Vermilion County	Danville	United States
1164	DNZ	Cardak	Denizli	Turkey
1165	DOG	Dongola	Dongola	Sudan
1166	DOK	Donetsk	Donetsk	Ukraine
1167	DOM	Melville Hall	Dominica	Dominica
1168	DOP	Dolpa	Dolpa	Nepal
1169	DOY	Dongying	Dongying	China
1170	DPL	Dipolog	Dipolog	Philippines
1171	DPO	Devonport	Devonport	Australia
1172	DPS	Ngurah Rai International Bali	Bali	Indonesia
1173	DRB	Derby	Derby	Australia
1174	DRG	Deering	Drummondisland	United States
1175	DRO	La Plata	Durango	United States
1176	DRS	Dresden	Dresden	Germany
1177	DRT	Del Rio	Delrio	United States
1178	DSA	Robin Hood	Doncaster Sheffield	United Kingdom
1179	DSE	Combolcha Airport	Dessie	Ethiopia
1180	DSK	Dera Ismail Khan	Deraismailkhan	Pakistan
1181	DSM	Des Moines	Desmoines	United States
1182	DTA	Delta	Delta	United States
1183	DTD	Datadawai	Datadawai	Indonesia
1184	DTE	Camarinesnorte Airport	Daet	Philippines
1185	DTM	Dortmund	Dortmund	Germany
1186	DUB	Dublin	Dublin	Ireland
1187	DUD	Dunedin	Dunedin	New Zealand
1188	DUE	Dundo	Dundo	Angola
1189	DUG	Bisbee Douglas	Douglas	United States
1190	DUJ	Jefferson County	Dubois	United States
1191	DUM	Pinangkampai Airport	Dumai	Indonesia
1192	EAR	Kearney	Kearney	United States
1193	DUT	Emergencyfield Airport	Dutchharbor	United States
1194	DVL	Devils Lake	Devilslake	United States
1195	DVO	Francisco Bangoy International	Davao	Philippines
1196	DWB	Soalala	Soalala	Madagascar
1197	DWC	Almaktoum Intl Airport	Dubai	United Arab Emirates
1198	DYG	Dayong	Dayong	China
1199	DYR	Anadyr	Anadyr	Russia
1200	DZA	Dzaoudzi	Dzaoudzi	Comoros
1201	DZN	Zhezhazgan	Zhezkazgan	Kazakhstan
1202	EAA	Eagle	Eagle	United States
1203	EAE	Emae	Emae	Vanuatu
1204	EAS	Donostia	Sansebastian	Spain
1205	EAT	Pangborn Field	Wenatchee	United States
1206	EAU	Chippewa Valley Regional Airport	Eauclaire	United States
1207	EBB	Entebbe	Entebbe	Uganda
1208	EBD	El Obeid	Elobeid	Sudan
1209	EBG	Elbagre	Elbagre	Colombia
1210	DUS	Dusseldorf	Dusseldorf	Germany
1211	DOE	Djoemoe	Djoemoe	Suriname
1212	ECH	Echuca	Echuca	Australia
1213	ECO	Elencanto	Elencanto	Colombia
1214	EDA	Edna Bay	Ednabay	United States
1215	EDB	Eldebba	Eldebba	Sudan
1216	EFG	Efogi	Efogi	Papua New Guinea
1217	EGL	Neghelli	Neghelli	Ethiopia
1218	EIH	Einasleigh	Einasleigh	Australia
1219	EKA	Eurekamurrayfield Airport	Arcata	United States
1220	EKD	Elkedra	Elkedra	Australia
1221	EKE	Ekereku	Ekereku	Guyana
1222	EKI	Elkhart	Elkhart	United States
1223	EKX	Elizabethtown	Elizabethtown	United States
1224	ELJ	Elrecreo	Elrecreo	Colombia
1225	ELW	Ellamar	Ellamar	United States
1226	EMI	Emirau	Emirau	Papua New Guinea
1227	EMO	Emo	Emo	Papua New Guinea
1228	EMS	Embessa	Embessa	Papua New Guinea
1229	EMX	El Maiten	El Maiten	Argentina
1230	EMY	Elminya	Elminya	Egypt
1231	ENB	Eneabba Airport	Eneabbawest	Australia
1232	ENN	Nenana	Nenana	United States
1233	ENO	Teniente Airport	Encarnacion	Paraguay
1234	EBL	Erbil	Erbil	Iraq
1235	EBU	Boutheon Airport	Saintetienne	France
1236	ECA	Emmetcounty Airport	Easttawas	United States
1237	ECN	Ercan	Lefkosa	Cyprus
1238	EBO	Ebon	Ebon	Marshall Islands
1239	EDI	Turnhouse	Edinburgh	United Kingdom
1240	EDL	Eldoret	Eldoret	Kenya
1241	EDO	Korfez Airport	Edremit	Turkey
1242	EDR	Edward River	Edwardriver*pompuraaw	Australia
1243	EDW	Edwardsafb	Edwardsafb	United States
1244	EEK	Eek	Eek	United States
1245	EFL	Kefalonia Istland International Airport	Kefallinia	Greece
1246	EGC	Roumanieres	Bergerac	France
1247	EGE	County	Vaileagle	United States
1248	EGM	Sege	Sege	Solomon Islands
1249	EGO	Belgorod	Belgorod	Russia
1250	EGS	Egilsstadir	Egilsstadir	Iceland
1251	EGV	Eagle River	Eagleriver	United States
1252	EGX	Egegik	Egegik	United States
1253	EHL	El Bolson	El Bolson	Argentina
1254	EIE	Eniseysk	Yeniseysk	Russia
1255	EIN	Eindhoven	Eindhoven	Netherlands
1256	EIS	Beef Island	Beefisland	Virgin Islands (British)
1257	EIY	Einyahav	Einyahav	Israel
1258	EJH	Wedjh	Wedjh	Saudi Arabia
1259	EKB	Ekibastuz	Ekibastuz	Kazakhstan
1260	EKN	Elkins	Elkins	United States
1261	EKO	Elko	Elko	United States
1262	ELB	Sanbernado Airport	Elbanco	Colombia
1263	ELC	Elcho Island	Elcho Island	Australia
1264	ELD	Goodwin Field	Eldorado	United States
1265	ELF	El Fasher	Elfasher	Sudan
1266	ELG	Djamet	El Golea	Algeria
1267	ELI	Elim	Elim	United States
1268	ELM	Elmira Corning	Elmira	United States
1269	ELO	Eldorado	Eldorado	Argentina
1270	ELP	El Paso	Elpaso	United States
1271	ELS	East London	Eastlondon	South Africa
1272	ELT	Toursinai	Toursinai	Egypt
1273	ELU	Guemar	El Oued	Algeria
1274	ELV	Elfincove	Elfincove	United States
1275	EMA	East Midlands	East Midlands	United Kingdom
1276	EMD	Emerald	Emerald	Australia
1277	EME	Emden	Emden	Germany
1278	EMK	Emmonak	Emmonak	United States
1279	EMN	Nema	Nema	Mauritania
1280	ENA	Kenai	Kenai	United States
1281	ENC	Nancyessey Airport	Metznancy	France
1282	ENE	Ende	Ende	Indonesia
1283	ENF	Enontekio	Enontekio	Finland
1284	ENH	Enshi	Enshi	China
1285	ENT	Enewetak Island	Enewetakisland	Marshall Islands
1286	ENU	Enugu	Enugu	Nigeria
1287	ENY	Yan'an	Yan'an	China
1288	EOH	Enrique Olaya Herrera	Medellin	Colombia
1289	EOR	Eldorado	Eldorado	Venezuela
1290	EGA	Engati	Engati	Papua New Guinea
1291	EIA	Popondetta Airport	Eia	Papua New Guinea
1292	EJT	Enijet	Mili Atoll	Marshall Islands
1293	ELE	El Real	Elreal	Panama
1294	ELL	Ellisras	Ellisras	South Africa
1295	EPN	Epena	Epena	Congo
1296	EPS	Elportillo/samana	Elportillo/samana	Dominican Republic
1297	EPT	Eliptamin	Eliptamin	Papua New Guinea
1298	ERA	Erigavo	Erigavo	Somalia
1299	ERB	Ernabella	Ernabella	Australia
1300	ERE	Erave	Erave	Papua New Guinea
1301	ERL	Eren Hot Airport	Erenhotshi	China
1302	ERO	Coastguard Airport	Eldredrock	United States
1303	ERU	Erume	Erume	Papua New Guinea
1304	ESA	Esa'ala	Esa'ala	Papua New Guinea
1305	ESI	Espinosa	Espinosa	Brazil
1306	ETD	Etadunna	Etadunna	Australia
1307	ETE	Gendawuha	Gendawuha	Ethiopia
1308	ETH	Eilat	Einasleigh	Australia
1309	ETS	Enterprise	Enterprise	United States
1310	EUC	Eucla	Eucla	Australia
1311	EUE	Eureka	Eureka	United States
1312	EVD	Eva Downs	Eva Downs	Australia
1313	EVM	Eveleth	Eveleth	United States
1314	EWE	Ewer	Ewer	Indonesia
1315	EWI	Enarotali	Enarotali	Indonesia
1316	EWO	Ewo	Ewo	Congo
1317	EYL	Yelimane	Yelimane	Mali
1318	FAC	Faaite	Faaite	French Polynesia
1319	FAG	Fagurholsmyri	Fagurholsmyri	Iceland
1320	FAH	Farah	Farah	Afghanistan
1321	FAK	Falseisland	Falseisland	United States
1322	FAM	Farmington	Farmington	United States
1323	FAQ	Freidariver	Freidariver	Papua New Guinea
1324	FAS	Faskrudsfjordur	Faskrudsfjordur	Iceland
1325	FCO	Leonardo da Vinci	Rome	Italy
1326	EOZ	Elorza	Elorza	Venezuela
1327	EPA	El Palomar	El Palomar	Argentina
1328	EPR	Esperance	Esperance	Australia
1329	EPU	Parnu	Parnu	Estonia
1330	EQS	Esquel	Esquel	Argentina
1331	ERC	Erzincan	Erzincan	Turkey
1332	ERH	Moulay Ali Cherif	Errachidia	Morocco
1333	ERI	Erie	Erie	United States
1334	ERN	Eirunepe	Eirunepe	Brazil
1335	ERS	Eros	Windhoek	Namibia
1336	ERZ	Budrum	Erzurum	Turkey
1337	ESC	Delta County Arpt	Escanaba	United States
1338	ESD	Orcas Island	Eastsound	United States
1339	ESE	Ensenada	Ensenada	Mexico
1340	ESG	Mariscalestigarr	Mariscalestigarr	Paraguay
1341	ESK	Eskisehir	Eskisehir	Turkey
1342	ESL	Elista	Elista	Russia
1343	ESM	Esmeraldas	Esmeraldas	Ecuador
1344	ESN	Easton	Easton	United States
1345	ESR	El Salvador	Elsalvador	Chile
1346	ESU	Essaouira	Essaouira	Morocco
1347	ETR	Watford	Watford	United Kingdom
1348	ETZ	Metz nancy lorraine	Metznancy	France
1349	EUA	Kaufana Airport	Eua	Tonga
1350	EUN	Hassan I	Laayoune	Morocco
1351	EVE	Evenes	Harstad-narvik	Norway
1352	EVG	Sveg	Sveg	Sweden
1353	EVV	Regional Airport	Evansville	United States
1354	EVX	Fauville Airport	Evreux	France
1355	EWB	New Bedford	Newbedford	United States
1356	EWN	Simmons Nott	Newbern	United States
1357	EXT	Exeter	Exeter	United Kingdom
1358	EYK	Beloyarsky	Beloyarsky	Russia
1359	EYP	El Yopal	Elyopal	Colombia
1360	EYW	Key West	Keywest	United States
1361	EZE	Ezeiza Ministro Pistarini	Buenosaires	Argentina
1362	EZS	Elazig	Elazig	Turkey
1363	EZV	Berezovo	Berezovo	Russia
1364	FAE	Vagar	Faroe Islands	Faroe Islands
1365	FAI	Fairbanks	Fairbanks	United States
1366	FAJ	Fajardo	Fajardo	Puerto Rico
1367	FAO	Faro	Faro	Portugal
1368	FAT	Fresno	Fresno	United States
1369	FAV	Fakarava	Fakarava	French Polynesia
1370	FAY	Fayetteville	Fayetteville	United States
1371	FBD	Faizabad	Faizabad	Afghanistan
1372	FBM	Luano	Lubumbashi	Democratic Republic of the Congo
1373	FCA	Glacierpark Airport	Kalispell	United States
1374	FCB	Ficksburg	Ficksburg	South Africa
1375	FDF	Lamentin	Fort de France	Martinique
1376	EXI	Spb Airport	Excursioninlet	United States
1377	FEB	Sanfebagar	Sanfebagar	Nepal
1378	FFM	Fergusfalls	Fergusfalls	United States
1379	FHZ	Fakahina	Fakahina	French Polynesia
1380	FIC	Firecove	Firecove	United States
1381	FID	Elizabet Airport	Fishersisland	United States
1382	FIL	Fillmore	Fillmore	United States
1383	FIN	Finschhafen	Finschhafen	Papua New Guinea
1384	FLB	Cangapara Airport	Floriano	Brazil
1385	FLI	Holt Airport	Flateyri	Iceland
1386	FLJ	Fallsbay	Fallsbay	United States
1387	FLM	Filadelfia	Filadelfia	Paraguay
1388	FLT	Flat	Flat	United States
1389	FLX	Fallon	Fallon	United States
1390	FLY	Finley	Finley	Australia
1391	FNG	Fada Ngourma Airport	Fadan'gourma	Burkina Faso
1392	FNH	Fincha	Fincha	Ethiopia
1393	FOO	Numfoor	Numfoor	Indonesia
1394	FOT	Forster	Forster	Australia
1395	FOU	Fougamou	Fougamou	Gabon
1396	FOY	Foya	Foya	Liberia
1397	FRB	Forbes	Forbes	Australia
1398	FRK	Fregateis	Fregateis	Seychelles
1399	FRM	Fairmont	Fairmont	United States
1400	FRQ	Feramin	Feramin	Papua New Guinea
1401	QPJ	Pogany	Pecs	Hungary
1402	FDU	Bandundu	Bandundu	Democratic Republic of the Congo
1403	FEG	Fergana	Fergana	Uzbekistan
1404	FEN	Fernando De Noronha	Fernandodenoron	Brazil
1405	FEZ	Sais	Fes	Morocco
1406	FGU	Fangatau	Fangatau	French Polynesia
1407	FHU	Fort Huachuca	Fort Huachuca	United States
1408	FIH	N'Djili	Kinshasa	Democratic Republic of the Congo
1409	FKB	Soellingen	Karlsruhe/badenbaden	Germany
1410	FKI	Kisangani	Kisangani	Democratic Republic of the Congo
1411	FKJ	Fukui	Fukui	Japan
1412	FKL	Chess Lambertin	Franklin	United States
1413	FKQ	Fak Fak	Fakfak	Indonesia
1414	FKS	Fukushima	Fukushima	Japan
1415	FLA	Capitolio	Florencia	Colombia
1416	FLG	Pulliam Field	Grand Canyon	United States
1417	FLL	Fort Lauderdale hollywood International	Fortlauderdale	United States
1418	FLN	Hercilio Luz	Florianopolis	Brazil
1419	FLO	Florence	Florence	United States
1420	FLS	Flinders Island	Flinders Island	Australia
1421	FLW	Santa Cruz	Floresisland	Portugal
1422	FMA	El Pucu	Formosa	Argentina
1423	FMH	Otisafb Airport	Falmouth	United States
1424	FMM	Allgaeu Airport	Memmingen	Germany
1425	FMN	Farmington	Farmington	United States
1426	FMO	Greven	Muenster/osnabrueck	Germany
1427	FMY	Page Field	Fort Myers	United States
1428	FNC	Madeira	Funchal	Portugal
1429	FNI	Garons Airport	Nimes	France
1430	FNJ	Sunan International	Pyongyang	North Korea
1431	FNL	Fort Huachuca	Fort Huachuca	United States
1432	FNT	Bishop International Airport	Flint	United States
1433	FOC	Fuzhou	Fuzhou	China
1434	FOG	Ginolisa Airport	Foggia	Italy
1435	FOK	Suffolkcnty Airport	Westhampton	United States
1436	FOM	Foumban	Foumban	Cameroon
1437	FON	Fortuna	Fortuna	Costa Rica
1438	FOR	Pinto Martins	Fortaleza	Brazil
1439	FRA	Frankfurt	Frankfurt	Germany
1440	FRC	Franca	Franca	Brazil
1441	FRD	Friday Harbor	Friday Harbor	United States
1442	FRE	Fera Island	Feraisland	Solomon Islands
1443	FRG	Republicfld Airport	Farmingdale	United States
1444	FRJ	Frejus	Frejus	France
1445	FRL	Luigi Ridolfi	Forli	Italy
1446	FRS	Santa Elena	Flores	Guatemala
1447	FRU	Manas	Bishkek	Kyrgyzstan
1448	FRW	Francistown	Francistown	Botswana
1449	FSC	Sud Corse	Figari	France
1450	FSM	Fort Smith	Fort Smith	United States
1451	FSP	Saint Pierre	Saintpierre	Saint Pierre and Miquelon
1452	FTA	Futuna	Futunaisland	Vanuatu
1453	FTE	El Calafate	El Calafate	Argentina
1454	FTU	Marillac	Fortdauphin	Madagascar
1455	FNE	Fane	Fane	Papua New Guinea
1456	FUB	Fulleborn	Fulleborn	Papua New Guinea
1457	FVL	Flora Valley	Flora Valley	Australia
1458	FWL	Farewell	Farewell	United States
1459	FYG	Shenzhen Airport	Shenzhen	China
1460	FYN	Fuyun	Fuyun	China
1461	GAA	Guamal	Guamal	Colombia
1462	GAC	Gracias	Gracias	Honduras
1463	GAR	Garaina	Garaina	Papua New Guinea
1464	GAZ	Guasopa	Guasopa	Papua New Guinea
1465	GBC	Gasuke	Gasuke	Papua New Guinea
1466	GBF	Negarbo	Negarbo	Papua New Guinea
1467	GBI	Kalaburagi Airport	Kalaburagi	India
1468	GBL	Goulburn Island	Goulburn Island	Australia
1469	GBM	Garbaharey	Garbaharey	Somalia
1470	GBU	Khashmelgirba	Khashmelgirba	Sudan
1471	GBV	Gibbriver	Gibbriver	Australia
1472	GCA	Guacamaya	Guacamaya	Colombia
1473	GCV	Guacamaya	Guacamaya	Brazil
1474	GDD	Gordon Downs	Gordon Downs	Australia
1475	GDG	Magdagachi	Magdagachi	Russia
1476	GDP	Guadalupe	Guadalupe	Brazil
1477	GEB	Gebe	Gebe	Indonesia
1478	GEC	Gecitkale	Gecitkale	Cyprus
1479	GEF	Geva	Geva	Solomon Islands
1480	GEW	Gewoia	Gewoia	Papua New Guinea
1481	GFB	Togiakfish	Togiakfish	United States
1482	GFE	Grenfell	Grenfell	Australia
1483	GGC	Lumbala Airport	Lumbalan'guimbo	Angola
1484	GGD	Gregory Downs	Gregory Downs	Australia
1485	GGN	Gagnoa	Gagnoa	Cote D'Ivoire (Ivory Coast)
1486	GGO	Guiglo	Guiglo	Cote D'Ivoire (Ivory Coast)
1487	UOL	Buol	Buol	Indonesia
1488	FUE	Fuerteventura	Fuerteventura	Spain
1489	FUJ	Fukue	Fukue	Japan
1490	FUK	Fukuoka	Fukuoka	Japan
1491	FUN	Funafutiatol	Funafutiatol	Tuvalu
1492	FUO	Fuoshan	Fuoshan	China
1493	FWA	Fort Wayne	Fortwayne	United States
1494	FXE	Executive	Ft. Lauderdale	United States
1495	FYT	Faya	Faya	Chad
1496	FYU	Fort Yukon	Fort Yukon	United States
1497	GAE	Matmata Airport	Gabes	Tunisia
1498	GAF	Ksar Airport	Gafsa	Tunisia
1499	GAH	Gayndah	Gayndah	Australia
1500	GAJ	Junmachi	Yamagata	Japan
1501	GAL	Galena	Galena	United States
1502	GAM	Gambell	Gambell	United States
1503	GAN	Gan	Ganisland	Maldives
1504	GAQ	Gao	Gao	Mali
1505	GAS	Garissa	Garissa	Kenya
1506	GAU	Borjhar Airport	Guwahati	India
1507	GAY	Gaya	Gaya	India
1508	GBD	Great Bend	Great Bend	United States
1509	GBJ	Les Bases	Marie Galante	Guadeloupe
1510	GBK	Gbangbatok	Gbangbatok	Sierra Leone
1511	GBT	Gorgan	Gorgan	Iran
1512	GBZ	Greatbarrierisl	Greatbarrierisl	New Zealand
1513	GCC	Campbell County	Gillette	United States
1514	GCI	Guernsey	Guernsey	United Kingdom
1515	GCK	Garden City	Garden City	United States
1516	GCN	National Park	Grandcanyon	United States
1517	GDE	Gode	Godeiddidole	Ethiopia
1518	GDL	Don Miguel Hidalgo y Costilla International	Guadalajara	Mexico
1519	GDN	Lech Walesa	Gdansk	Poland
1520	GDO	Varemaria Airport	Guasdualito	Venezuela
1521	GDT	Grand Turk Island	Grandturkis	Turks and Caicos Islands
1522	GDX	Magadan	Magadan	Russia
1523	GDZ	Gelendzik	Gelendzhik	Russia
1524	GEA	Magenta	Noumea	New Caledonia
1525	GEL	Sepe Tiaraju	Santoangelo	Brazil
1526	GEO	Cheddi Jagan International	Georgetown	Guyana
1527	GER	Rafael Cabrera	Nuevagerona	Cuba
1528	GES	General Santos	Generalsantos	Philippines
1529	GEV	Gallivare	Gallivare	Sweden
1530	GEX	Geelong	Geelong	Australia
1531	GFF	Griffith	Griffith	Australia
1532	GFN	Grafton	Grafton	Australia
1533	GFY	Grootfontein	Grootfontein	Namibia
1534	GGG	Kilgore	Longview	United States
1535	GGM	Kakamega	Kakamega	Kenya
1536	GAX	Gamba	Gamba	Gabon
1537	GGR	Garoe	Garoe	Somalia
1538	GHD	Ghimbi	Ghimbi	Ethiopia
1539	GID	Gitega	Gitega	Burundi
1540	GII	Siguiri	Siguiri	Guinea
1541	GIM	Mielemimbale	Mielemimbale	Gabon
1542	GIY	Giyani	Giyani	South Africa
1543	GKO	Kongoboumba	Kongoboumba	Gabon
1544	GLC	Geladi	Geladi	Ethiopia
1545	GLG	Glengyle	Glengyle	Australia
1546	GLL	Klanten Arpt	Goll	Norway
1547	GLP	Gulgubip	Gulgubip	Papua New Guinea
1548	GLX	Gainesville	Gainesville	Indonesia
1549	GMM	Gamboma	Gamboma	Congo
1550	GMP	Gimpo International	Seoul	South Korea
1551	GNE	Ghent	Ghent	Belgium
1552	GOC	Gora	Gora	Papua New Guinea
1553	GOE	Gonalia	Gonalia	Papua New Guinea
1554	GOO	Goondiwindi	Goondiwindi	Australia
1555	GOS	Gosford	Gosford	Australia
1556	GPN	Garden Point	Garden Point	Australia
1557	GRC	Grandcess	Grandcess	Liberia
1558	GRG	Gardez	Gardez	Afghanistan
1559	GRH	Garuahi	Garuahi	Papua New Guinea
1560	GRL	Garasa	Garasa	Papua New Guinea
1561	GGT	Exuma International	Georgetown	The Bahamas
1562	GHA	Noumerate	Ghardaia	Algeria
1563	GHB	Governors Harbour	Governorsharbour	The Bahamas
1564	GHT	Ghat	Ghat	Libya
1565	GHU	Gualeguaychu	Gualeguaychu	Argentina
1566	GIB	North Front	Gibraltar	Gibraltar
1567	GIG	Galeao	Riodejaneiro	Brazil
1568	GIL	Gilgit	Gilgit	Pakistan
1569	GIS	Gisborne	Gisborne	New Zealand
1570	GIZ	Jazan	Gizan	Saudi Arabia
1571	GJL	Jijel	Jijel	Algeria
1572	GJM	Guajara-mirim	Guajara-mirim	Brazil
1573	GJR	Gjogur	Gjogur	Iceland
1574	GJT	Walker Field	Grandjunction	United States
1575	GKA	Goroka	Goroka	Papua New Guinea
1576	GLA	Glasgow	Glasgow	United Kingdom
1577	GLF	Golfito	Golfito	Costa Rica
1578	GLH	Greenville	Greenville	United States
1579	GLI	Glen Innes	Glen Innes	Australia
1580	GLK	Galcaio	Galcaio	Somalia
1581	GLV	Golovin	Golovin	United States
1582	GMA	Gemena	Gemena	Democratic Republic of the Congo
1583	GMB	Gambela	Gambela	Ethiopia
1584	GME	Gomel	Gomel	Belarus
1585	GMZ	La Gomera	Sansebastiangomera	Spain
1586	GNA	Grodna	Grodno	Belarus
1587	GNB	Grenoble isere Airport St Geoirs	Lyon	France
1588	GND	Point Salines International	Grenada	Grenada
1589	GNR	General Roca	General Roca	Argentina
1590	GNS	Gunungsitoli	Gunungsitoli	Indonesia
1591	GNV	Gainesville	Gainesville	United States
1592	GNZ	Ghanzi	Ghanzi	Botswana
1593	GOB	Goba	Goba	Ethiopia
1594	GOH	Nuuk	Nuuk	Greenland
1595	GOI	Dabolim Airport	Goa	India
1596	GOJ	Nizhniy Novgorod	Nizhnynovgorod	Russia
1597	GOM	Goma	Goma	Democratic Republic of the Congo
1598	GOP	Gorakhpur	Gorakhpur	India
1599	GOQ	Golmud	Golmud	China
1600	GOR	Gore	Gore	Ethiopia
1601	GOT	Landvetter	Goteborg	Sweden
1602	GOV	Nhulunbuy	Gove	Australia
1603	GOZ	Gorna Orechovitsa Airport	Gornaoryahovitsa	Bulgaria
1604	GPA	Araxos Airport	Patrai	Greece
1605	GPI	Guapi	Guapi	Colombia
1606	GPL	Guapiles	Guapiles	Costa Rica
1607	GPO	General Pico	General Pico	Argentina
1608	GPS	Baltra	Galapagosis	Ecuador
1609	GPT	Biloxi International	Gulfport	United States
1610	GRB	Austin straubel Field	Greenbay	United States
1611	GRI	Grand Island	Grand Island	United States
1612	GRJ	George	George	South Africa
1613	GRK	Robertgrayaaf Airport	Killeen	United States
1614	GRO	Costabrava Airport	Girona	Spain
1615	GHE	Garachine	Garachine	Panama
1616	GLN	Guelmime	Guelmime	Morocco
1617	GMI	Gasmata Island	Gasmataisland	Papua New Guinea
1618	GNU	Goodnews Bay	Goodnews Bay	United States
1619	GRV	Groznyj	Grozny	Russia
1620	GSA	Longpasia	Longpasia	Malaysia
1621	GSC	Gascoyne Junction	Gascoyne Junction	Australia
1622	GSM	Gheshm	Gheshmisland	Iran
1623	HKB	Healy Lake	Healylake	United States
1624	GSR	Gardo	Gardo	Somalia
1625	GSU	Gedaref	Gedaref	Sudan
1626	GTB	Genting	Genting	Malaysia
1627	GTK	Sungei Tekai	Sungei Tekai	Malaysia
1628	GTT	Georgetown	Georgetown	Australia
1629	GTW	Holesov Airport	Zlin	Czech Republic
1630	GUD	Goundam	Goundam	Mali
1631	GUG	Guari	Guari	Papua New Guinea
1632	GUH	Gunnedah	Gunnedah	Australia
1633	GUU	Grundarfjordu	Grundarfjordu	Iceland
1634	GUV	Mougulu	Mougulu	Papua New Guinea
1635	GUZ	Guarapari	Guarapari	Brazil
1636	GVI	Green River	Greenriver	Papua New Guinea
1637	GVP	Greenvale	Greenvale	Australia
1638	GXX	Yagoua	Yagoua	Cameroon
1639	GYP	Gympie	Gympie	Australia
1640	HAE	Havasupai	Havasupai	United States
1641	HAG	M The Hague	Thehague	Netherlands
1642	HAP	Long Island	Long Island	Australia
1643	HAY	Haycock	Haycock	United States
1644	HAZ	Hatzfeldthaven	Hatzfeldthaven	Papua New Guinea
1645	HBH	Hobartbay	Hobartbay	United States
1646	GRP	Gurupi	Gurupi	Brazil
1647	GRQ	Eelde	Groninge	Netherlands
1648	GRS	Corradobaccarini Airport	Grosseto	Italy
1649	GRU	Aeroporto Internacional Guarulhos	Saopaulo	Brazil
1650	GRW	Graciosa Island	Graciosaisland	Portugal
1651	GRX	Granada	Granada	Spain
1652	GRY	Grimsey	Grimsey	Iceland
1653	GRZ	Thalerhof	Graz	Austria
1654	GSO	Piedmont Triad Intl	Greensboro/highpoint	United States
1655	GSP	Greenville Spartanbur Int'l Airport	Greenville	United States
1656	GSQ	Sharkelowainat	Sharkelowainat	Egypt
1657	GST	Gustavus	Gustavus	United States
1658	GTF	Great Falls	Greatfalls	United States
1659	GTO	Tolotio	Gorontalo	Indonesia
1660	GTR	Golden Triangle Reg.	Columbus	United States
1661	GUA	La Aurora	Guatemala	Guatemala
1662	GUC	Gunnison	Gunnison	United States
1663	GUI	Guiria	Guiria	Venezuela
1664	GUL	Goulburn	Goulburn	Australia
1665	GUP	Senator Clark	Gallup	United States
1666	GUQ	Guanare	Guanare	Venezuela
1667	GUR	Gurney	Alotau	Papua New Guinea
1668	GUW	Atyrau	Atyrau	Kazakhstan
1669	GVA	cointrin	Geneva	Switzerland
1670	GVR	Governador Valadares	Governadorvalada	Brazil
1671	GVX	Sandviken	Gavle	Sweden
1672	GWE	Gweru	Gweru	Zimbabwe
1673	GWL	Gwalior	Gwalior	India
1674	GWT	Westerland Sylt	Westerland	Germany
1675	GWY	Carnmore	Galway	Ireland
1676	GXF	Sayun	Sayun	Yemen
1677	GXG	Negage	Negage	Angola
1678	GYA	Guayaramerin	Guayaramerin	Bolivia
1679	GYE	Simon Bolivar	Guayaquil	Ecuador
1680	GYI	Gisenyi	Gisenyi	Rwanda
1681	GYL	Argyle	Argyle	Australia
1682	GYN	Santa Genoveva	Goiania	Brazil
1683	GYS	Guangyuan	Guangyuan	China
1684	GZM	Heliport	Gozo	Malta
1685	GZO	Gizo	Gizo	Solomon Islands
1686	HAA	Hasvik	Hasvik	Norway
1687	HAC	Hachijo Jima	Hachijojima	Japan
1688	HAD	Halmstad	Halmstad	Sweden
1689	HAH	Prince Said Ibrahim In	Moroni	Comoros
1690	HAK	Haikou	Haikou	China
1691	HAM	Hamburg	Hamburg	Germany
1692	HAN	Noibai International	Hanoi	Vietnam
1693	HAQ	Hanimaadhoo	Hanimaadhoo	Maldives
1694	HAR	Capital City	Harrisburg	United States
1695	HAS	Hail	Hail	Saudi Arabia
1696	HAV	Jose Marti Intl	Havana	Cuba
1697	HBA	Hobart	Hobart	Australia
1698	HBE	Amiryah West	Alexandria	Egypt
1699	HBX	Hubli	Hubli	India
1700	HCA	Howardcounty Airport	Bigspring	United States
1701	HCB	Shoalcove	Shoalcove	United States
1702	HEO	Haelogo	Haelogo	Papua New Guinea
1703	HEZ	Hardyanders Airport	Natchez	United States
1704	HFD	Barnes Airport	Hartford	United States
1705	HHZ	Hikueru	Hikueru	French Polynesia
1706	HII	Lake Havasu City	Lakehavasu	United States
1707	HIP	Headingly	Headingly	Australia
1708	HIS	Hayman Island	Hayman Island	Australia
1709	HIT	Hivaro	Hivaro	Papua New Guinea
1710	HIX	Hivaoa	Hivaoa	French Polynesia
1711	HLP	Halim Perdana Kusuma	Jakarta	Indonesia
1712	HLU	Houailou	Houailou	New Caledonia
1713	HLV	Helenvale	Helenvale	Australia
1714	HLY	Anglesey Airport	Holyhead	United Kingdom
1715	HMB	Sohag International Airport	Sohag	Egypt
1716	HNG	Hienghene	Hienghene	New Caledonia
1717	HNI	Heiweni	Heiweni	Papua New Guinea
1718	HNK	Hinchinbrooke Island Airport	Hinchinbrookisl	Australia
1719	HOC	Komako	Komako	Papua New Guinea
1720	HCQ	Halls Creek	Halls Creek	Australia
1721	HCW	Cheraw	Cheraw	United States
1722	HDD	Hyderabad	Hyderabad	Pakistan
1723	HDF	Heringsdorf	Heringsdorf	Germany
1724	HDG	Handan	Handan	China
1725	HDN	Yampa Valley	Hayden	United States
1726	HDS	Hoedspruit	Hoedspruit	South Africa
1727	HDY	Hat Yai	Hatyai	Thailand
1728	HEA	Herat	Herat	Afghanistan
1729	HEH	Heho	Heho	Myanmar
1730	HEK	Heihe	Heihe	China
1731	HEL	Vantaa	Helsinki	Finland
1732	HER	Nikos Kazantzakis Airport	Heraklion	Greece
1733	HET	Hohhot	Hohhot	China
1734	HFA	Haifa	Haifa	Israel
1735	HFE	Shanghai	Hefei	China
1736	HFN	Hofn Airport	Hornafjordur	Iceland
1737	HFS	Hagfors	Hagfors	Sweden
1738	HFT	Hammerfest	Hammerfest	Norway
1739	HGA	Hargeisa	Hargeisa	Somalia
1740	HGH	Hangzhou	Hangzhou	China
1741	HGL	Duene Airport	Helgoland	Germany
1742	HGN	Mae Hong Son	Maehongson	Thailand
1743	HGO	Korhogo	Korhogo	Cote D'Ivoire (Ivory Coast)
1744	HGU	Kagamuga	Mounthagen	Papua New Guinea
1745	HHH	Hiltonhead	Hiltonhead	United States
1746	HHN	Hahn	Frankfurt	Germany
1747	HHQ	Hua Hin	Huahin	Thailand
1748	HIA	Lianshui Airport	Huai'an	China
1749	HID	Horn Island	Horn Island	Australia
1750	HIJ	Хиросима	Hiroshima	Japan
1751	HIN	Sacheon	Jinju	South Korea
1752	HIR	Henderson Intl	Honiara	Solomon Islands
1753	HJJ	Zhijiang	Zhijiang	China
1754	HJR	Khajuraho	Khajuraho	India
1755	HKG	Hong Kong	Hong Kong	Hong Kong S.A.R.
1756	HKK	Hokitika	Hokitika	New Zealand
1757	HKN	Hoskins	Hoskins	Papua New Guinea
1758	HKT	Phuket	Phuket	Thailand
1759	HLA	Lanseria	Johannesburg	South Africa
1760	HLD	Hailar	Hailar	China
1761	HLF	Vimmerby	Hultsfred/vimmerby	Sweden
1762	HLG	Ohiocounty Airport	Wheeling	United States
1763	HLN	Helena	Helena	United States
1764	HLT	Hamilton	Hamilton	Australia
1765	HLZ	Hamilton	Hamilton	New Zealand
1766	HMA	Khanty Mansiysk	Khanty-mansiysk	Russia
1767	HMJ	Khmelnitskiy	Khmelnytskyi	Ukraine
1768	HMO	Gen Pesqueira Garcia	Hermosillo	Mexico
1769	HMR	Stafsberg Airport	Hamar	Norway
1770	HMV	Hemavan	Hemavantarnaby	Sweden
1771	HNA	Hanamaki	Morioka	Japan
1772	HDB	Heidelberg	Heidelberg	Germany
1773	HNH	Hoonah	Hoonah	United States
1774	HNM	Hana	Hana	United States
1775	HNS	Haines	Haines	United States
1776	HOB	Lea County	Hobbs	United States
1777	HDO	Hindon airport india	Ghaziabad	India
1778	HIL	Shillavo	Shillavo	Ethiopia
1779	HOI	Hao Island	Haoisland	French Polynesia
1780	HPE	Hope Vale	Hope Vale	Australia
1781	HRC	Zhairem	Zhairem	Kazakhstan
1782	HRZ	Horizontina	Horizontina	Brazil
1783	HSP	Ingallsfld Airport	Hotsprings	United States
1784	HTO	Easthampton	Easthampton	United States
1785	HTR	Hateruma	Hateruma	Japan
1786	HTU	Hopetown Airport	Hopetoun	Australia
1787	HTZ	Hatocorozal	Hatocorozal	Colombia
1788	HUC	Humacao	Humacao	Puerto Rico
1789	HVK	Holmavik	Holmavik	Iceland
1790	HVM	Hvammstangi	Hvammstangi	Iceland
1791	HWA	Hawabango	Hawabango	Papua New Guinea
1792	HWI	Spb Airport	Hawkinlet	United States
1793	HWK	Wilpena Pound Airport	Hawker	Australia
1794	HXX	Hay	Hay	Australia
1795	HYD	Rajiv Gandhi Intl Airport	Hyderabad	India
1796	HYF	Hayfields	Hayfields	Papua New Guinea
1797	HYR	Hayward	Hayward	United States
1798	IAG	Niagarafalls	Niagarafalls	United States
1799	IAU	Iaura	Iaura	Papua New Guinea
1800	HOF	Alahsa	Hofuf	Saudi Arabia
1801	HOG	Frank Pais	Holguin	Cuba
1802	HOK	Hooker Creek	Hooker Creek	Australia
1803	HOM	Homer	Homer	United States
1804	HON	Howes	Huron	United States
1805	HOQ	Hof	Hof	Germany
1806	HOS	Oscar Reguera Airport	Chosmalal	Argentina
1807	HOT	Memorial Field	Hotsprings	United States
1808	HOU	William P Hobby	Houston	United States
1809	HOV	Hovden	Orstavolda	Norway
1810	HPB	Hooper Bay	Hooperbay	United States
1811	HPH	Catbi	Haiphong	Vietnam
1812	HPN	County Apt	Westchestercounty	United States
1813	HRB	Harbin	Harbin	China
1814	HRE	Harare	Harare	Zimbabwe
1815	HRG	Hurghada	Hurghada	Egypt
1816	HRK	Kharkov	Kharkiv	Ukraine
1817	HRL	Valley International	Harlingen	United States
1818	HRO	Boone County	Harrison	United States
1819	HRT	Linton On Ouse	Harrogate	United Kingdom
1820	HSG	Saga	Saga	Japan
1821	HSL	Huslia	Huslia	United States
1822	HSN	Zhoushan	Zhoushan	China
1823	HTA	Chita	Chita	Russia
1824	HTG	Hatanga	Khatanga	Russia
1825	HTI	Hamilton Island	Hopevale	Australia
1826	HTN	Hotan	Hotan	China
1827	HTS	Tri State	Huntington	United States
1828	HTY	Hatay	Hatay	Turkey
1829	HUF	Terrehaute	Terrehaute	United States
1830	HUH	Huahine	Huahine	French Polynesia
1831	HUI	Phu Bai	Hue	Vietnam
1832	HUQ	Houn	Houn	Libya
1833	HUS	Hughes	Hughes	United States
1834	HUT	Hutchinson	Hutchinson	United States
1835	HUU	Huanuco	Huanuco	Peru
1836	HUX	Huatulco	Huatulco	Mexico
1837	HUY	Humberside	Humberside	United Kingdom
1838	HUZ	Huizhou	Huizhou	China
1839	HVA	Analalava	Analalava	Madagascar
1840	HVD	Khovd	Khovd	Mongolia
1841	HVG	Valan	Honningsvag	Norway
1842	HVN	New Haven	Newhaven	United States
1843	HVR	City County	Havre	United States
1844	HWN	Hwangenatpark	Hwangenatpark	Zimbabwe
1845	HYG	Spb Airport	Hydaburg	United States
1846	HYN	Huangyan	Huangyan	China
1847	HYS	Hays	Hays	United States
1848	HZG	Hanzhong	Hanzhong	China
1849	HZK	Husavik	Husavik	Iceland
1850	IAA	Igarka	Igarka	Russia
1851	IAD	Dulles International	Washington	United States
1852	IAH	George Bush Intercontinental	Houston	United States
1853	IAM	In Amenas	In Amenas	Algeria
1854	IAN	Bob Barker Memorial	Kiana	United States
1855	IAR	Yaroslavl	Yaroslavl	Russia
1856	IAS	Iasi	Iasi	Romania
1857	IBA	Ibadan	Ibadan	Nigeria
1858	HYL	Spb Airport	Hollis	United States
1859	IBI	Iboki	Iboki	Papua New Guinea
1860	ICA	Icabaru	Icabaru	Venezuela
1861	ICR	Nicaro	Nicaro	Cuba
1862	IDB	Idre	Idre	Sweden
1863	IDI	Indiana	Indiana	United States
1864	IDK	Indulkana	Indulkana	Australia
1865	IDN	Indagen	Indagen	Papua New Guinea
1866	IDO	Santa Isabel Do Morro Airport	Santaisabeldom	Brazil
1867	IEJ	Iejima	Iejima	Japan
1868	IFF	Iffley	Iffley	Australia
1869	IGH	Ingham	Ingham	Australia
1870	IGN	Maria Cristina	Iligan	Philippines
1871	IGO	Chigorodo	Chigorodo	Colombia
1872	IHA	Niihama	Niihama	Japan
1873	IHN	Qishn	Qishn	Yemen
1874	IHO	Ihosy	Ihosy	Madagascar
1875	IIN	Nishinoomote	Nishinoomote	Japan
1876	IJU	J. Batista Bos Filho Airport	Ijui	Brazil
1877	IJX	Jacksonville	Jacksonville	United States
1878	IKL	Ikela	Ikela	Democratic Republic of the Congo
1879	IKP	Inkerman	Inkerman	Australia
1880	ILA	Illaga	Illaga	Indonesia
1881	ILB	Ilha Solteira	Ilha Solteira	Brazil
1882	ILE	Killeen	Killeen	United States
1883	ILK	Ilaka	Ilaka	Madagascar
1884	ILL	Willmar	Willmar	United States
1885	IMA	Iamalele	Iamalele	Papua New Guinea
1886	IMD	Imonda	Imonda	Papua New Guinea
1887	IMG	Inhaminga	Inhaminga	Mozambique
1888	IML	Imperial	Imperial	United States
1889	IMN	Imane	Imane	Papua New Guinea
1890	IMO	Zemio	Zemio	Central African Republic
1891	IMZ	Nimroz	Nimroz	Afghanistan
1892	INA	Inta	Inta	Russia
1893	INC	Yinchuan	Yinchuan	China
1894	INE	Chinde	Chinde	Mozambique
1895	IBZ	Ibiza	Ibiza	Spain
1896	ICI	Cicia	Cicia	Fiji Islands
1897	ICK	Nieuwnickerie	Nieuwnickerie	Suriname
1898	ICN	Incheon International	Seoul	South Korea
1899	IDA	Fanning Field	Idahofalls	United States
1900	IDR	Devi Ahilyabai Holkar Airport	Indore	India
1901	IDY	Iled'yeu	Iled'yeu	France
1902	IEG	Babimost	Zielonagora	Poland
1903	IGM	Kingman	Kingman	United States
1904	IFJ	Isafjordur	Isafjordur	Iceland
1905	IFN	Isfahan	Esfahan	Iran
1906	IFO	Ivano Frankovsk	Ivanofrankivsk	Ukraine
1907	IGA	Inagua	Inagua	The Bahamas
1908	IGG	Igiugig	Igiugig	United States
1909	IGL	Cigli Military Arpt	Izmir	Turkey
1910	IGR	Cataratas	Iguazu	Argentina
1911	IGT	Magas	Nazran	Russia
1912	IGU	Cataratas	Iguassufalls	Brazil
1913	IHC	Inhaca	Inhaca	Mozambique
1914	IHR	Iran Shahr	Iran Shahr	Iran
1915	IIA	Inishmaan	Inishmaan	Ireland
1916	IIL	Ilaam	Ilam	Iran
1917	IKA	Imam Khomeini	Tehran	Iran
1918	IKB	Wilkes County	Wilkesboro	United States
1919	IKI	Iki	Iki	Japan
1920	IKK	Greater Kankakee	Greater Kankakee	United States
1921	IKO	AFS	Nikolski	United States
1922	IKT	Irkutsk	Irkutsk	Russia
1923	ILD	Alguaire Airport	Lleida	Spain
1924	ILF	Ilford	Ilford	Canada
1925	ILI	Iliamna	Iliamna	United States
1926	ILM	Wilmington	Wilmington	United States
1927	ILN	Clinton Field	Wilmington	United States
1928	ILO	Iloilo	Iloilo	Philippines
1929	ILP	Ile Des Pins	Iledespins	New Caledonia
1930	ILQ	Ilo	Ilo	Peru
1931	ILU	Kilaguni	Kilaguni	Kenya
1932	ILY	Glenegedale	Islay	United Kingdom
1933	ILZ	Zilina	Zilina	Slovakia
1934	IMB	Imbaimadai	Imbaimadai	Guyana
1935	IMF	Imphal	Imphal	India
1936	IMM	Immokalee	Immokalee	United States
1937	IMP	Imperatriz	Imperatriz	Brazil
1938	IMT	Ford	Ironmountain	United States
1939	IEV	Zhulhany	Kiev	Ukraine
1940	ICY	Icy Bay	Icy Bay	United States
1941	IFP	Laughlin Bullhead Intl	Bullhead	United States
1942	IHU	Ihu	Ihu	Papua New Guinea
1943	IMI	Ine Island	Ineisland	Marshall Islands
1944	INB	Independence	Independence	Belize
1945	INF	Newark Liberty International	In Guezzam	Algeria
1946	INJ	Injune	Injune	Australia
1947	INM	Innamincka	Innamincka	Australia
1948	INX	Inanwatan	Inanwatan	Indonesia
1949	IOK	Iokea	Iokea	Papua New Guinea
1950	ION	Impfondo	Impfondo	Congo
1951	IOP	Ioma	Ioma	Papua New Guinea
1952	IOU	Ile Ouen	Ileouen	New Caledonia
1953	IPE	Ipil	Ipil	Philippines
1954	IPG	Ipiranga	Ipiranga	Brazil
1955	IPU	Ipiau	Ipiau	Brazil
1956	IPW	Closed	Ipswich	United Kingdom
1957	IRE	Irece	Irece	Brazil
1958	IRM	Igrim	Igrim	Russia
1959	IRN	Iriona	Iriona	Honduras
1960	IRO	Birao	Birao	Central African Republic
1961	IRS	Kirsch Municipal	Sturgis	United States
1962	ISB	nternational	Islamabad	Pakistan
1963	ISD	Iscuande	Iscuande	Colombia
1964	ISH	Ischia	Ischia	Italy
1965	ISI	Isisford	Isisford	Australia
1966	ISQ	Schoolcraft County	Manistique	United States
1967	ISS	Wiscasset	Wiscasset	United States
1968	ITE	Itubera	Itubera	Brazil
1969	ITI	Itambacuri	Itambacuri	Brazil
1970	ITJ	Itajai	Itajai	Brazil
1971	ITM	Itami	Osaka	Japan
1972	ITN	Itabuna	Itabuna	Brazil
1973	ITP	Itaperuna	Itaperuna	Brazil
1974	ITQ	Itaqui	Itaqui	Brazil
1975	IUL	Ilu	Ilu	Indonesia
1976	IUM	Summit Lake	Summit Lake	Canada
1977	IUS	Inus	Inus	Papua New Guinea
1978	INH	Inhambane	Inhambane	Mozambique
1979	INI	Nis	Nis	Serbia
1980	INK	Wink	Wink	United States
1981	INN	Innsbruck kranebitten	Innsbruck	Austria
1982	INO	Inongo	Inongo	Democratic Republic of the Congo
1983	INQ	Inisheer	Inisheer	Ireland
1984	INU	Nauru International	Nauruisland	Nauru
1985	INV	Inverness	Inverness	United Kingdom
1986	INW	Lindbergh	Winslow	United States
1987	INZ	In Salah	In Salah	Algeria
1988	IOA	Ioannina	Ioannina	Greece
1989	IOR	Kilronan	Inishmore	Ireland
1990	IOS	Eduardo Gomes	Ilheus	Brazil
1991	IOW	Iowa City	Iowa City	United States
1992	IPA	Ipota	Ipota	Vanuatu
1993	IPH	Sultan Azlan Shah Airport	Ipoh	Malaysia
1994	IPI	San Luis	Ipiales	Colombia
1995	IPN	Usiminas	Ipatinga	Brazil
1996	IPT	Lycoming County	Williamsport	United States
1997	IQM	Qiemo	Qiemo	China
1998	IQN	Qingyang	Qingyang	China
1999	IQT	C.F. Secada	Iquitos	Peru
2000	IRA	Kirakira	Kirakira	Solomon Islands
2001	IRB	Iraan	Iraan	United States
2002	IRC	Circle City	Circle	United States
2003	IRD	Ishurdi	Ishurdi	Bangladesh
2004	IRI	Nduli	Iringa	Tanzania
2005	IRJ	Capitan Vicente Almando	La Rioja	Argentina
2006	IRK	Kirksville	Kirksville	United States
2007	IRP	Matari	Isiro	Democratic Republic of the Congo
2008	ISA	Mount Isa	Mount Isa	Australia
2009	ISC	St Marys	Scilly	United Kingdom
2010	ISG	Ishigaki	Ishigaki	Japan
2011	ISJ	Isla Mujeres	Islamujeres	Mexico
2012	ISK	Gandhi Nagar Airport	Nasik	India
2013	ISM	Gateway	Kissimmee	United States
2014	ISN	Sloulin Field Intl	Williston	United States
2015	ISO	Stallings Field	Kinston	United States
2016	ISU	Sulaymaniyah	Sulaymaniyah	Iraq
2017	ISW	Alexander Field	Wisconsinrapids	United States
2018	ITA	Itacoatiara	Itacoatiara	Brazil
2019	ITB	Itaituba	Itaituba	Brazil
2020	ITH	Tompkins County	Ithaca	United States
2021	ITO	Hilo	Hilo	United States
2022	IUE	Hanan	Niueisland	Niue
2023	IVA	Ambanja	Ambanja	Madagascar
2024	IVC	Invercargill	Invercargill	New Zealand
2025	INY	Inyati	Inyati	South Africa
2026	ITK	Itokama	Itokama	Papua New Guinea
2027	IVL	Ivalo	Ivalo	Finland
2028	IVO	Chivolo	Chivolo	Colombia
2029	IVW	Inverway	Inverway	Australia
2030	IXN	Khowai	Khowai	India
2031	IXQ	Kamalpur	Kamalpur	India
2032	IXT	Pasighat	Pasighat	India
2033	IZM	Izmir	Izmir	Turkey
2034	JAH	Agora Helipad	Aubagne	France
2035	JAM	Jambol	Jambol	Bulgaria
2036	JBK	Berkeley	Berkeley	United States
2037	JCJ	Chuja Heliport	Jeju	South Korea
2038	JCM	Jacobina	Jacobina	Brazil
2039	JCT	Kimble County	Junction	United States
2040	JCU	Heliport Airport	Ceuta	Spain
2041	JDA	John Day	John Day	United States
2042	JDB	Downtown Heliport	Dallas	United States
2043	JDM	Downtown Heliport	Miami	United States
2044	JDN	Jordan	Jordan	United States
2045	JDX	Central Bus. District	Houston	United States
2046	JDY	Heliport	Downey	United States
2047	JEQ	Jequie	Jequie	Brazil
2048	JEV	Heliport	Evry	France
2049	JFN	Ashtabula	Jefferson	United States
2050	JGB	Jagdalpur	Jagdalpur	India
2051	JGL	Galleria Heliport	Atlanta	United States
2052	IVR	Inverell	Inverell	Australia
2053	IWJ	Iwami	Iwami	Japan
2054	IWS	West Houston	Houston	United States
2055	IXA	Singerbhil Airport	Agartala	India
2056	IXB	Bagdogra	Bagdogra	India
2057	IXD	Bamrauli Airport	Allahabad	India
2058	IXE	Bajpe Airport	Mangalore	India
2059	IXG	Sambre Airport	Belgaum	India
2060	IXH	Kailashahar	Kailashahar	India
2061	IXI	Lilabari	Lilabari	India
2062	IXK	Keshod	Keshod	India
2063	IXL	Leh	Leh	India
2064	IXM	Madurai	Madurai	India
2065	IXP	Pathankot	Pathankot	India
2066	IXS	Silchar Airport	Silchar	India
2067	IXU	Chikkalthana Airport	Aurangabad	India
2068	IXV	Along	Along	India
2069	IXW	Sonari Airport	Jamshedpur	India
2070	IXY	Kandla	Kandla	India
2071	IXZ	Veersavarkar Airport	Portblair	India
2072	IZO	Izumo	Izumo	Japan
2073	IZT	Ixtepec	Ixtepec	Mexico
2074	JAA	Jalalabad	Jalalabad	Afghanistan
2075	JAB	Jabiru	Jabiru	Australia
2076	JAC	Jackson Hole	Jackson	United States
2077	JAF	Kankesanturai	Jaffna	Sri Lanka
2078	JAG	Jacobabad	Jacobabad	Pakistan
2079	JAI	Sanganeer Airport	Jaipur	India
2080	JAK	Jacmel	Jacmel	Haiti
2081	JAL	Jalapa	Jalapa	Mexico
2082	JAN	evers	Jackson	United States
2083	JAR	Jahrom	Jahrom	Iran
2084	JAU	Jauja	Jauja	Peru
2085	JAV	Ilulissat	Ilulissat	Greenland
2086	JAX	Jacksonville	Jacksonville	United States
2087	JCB	Joacaba	Joacaba	Brazil
2088	JCH	Qasigiannguit	Qasigiannguit	Greenland
2089	JCI	New Century Aircenter Airport	Kansas city	United States
2090	JCK	Julia Creek	Julia Creek	Australia
2091	JDF	Francisco De Assis	Juizdefora	Brazil
2092	JDH	Jodhpur	Jodhpur	India
2093	JDO	Regional Do Cariri	Juazeirodonorte	Brazil
2094	JDZ	Jingdezhen	Jingdezhen	China
2095	JEE	Jeremie	Jeremie	Haiti
2096	JEF	Jefferson City	Jefferson	United States
2097	JEG	Aasiaat	Aasiaat	Greenland
2098	JER	Jersey	Jersey	United Kingdom
2099	JFR	Frederikshab	Paamiut	Greenland
2100	JGA	Govardhanpur Airport	Jamnagar	India
2101	JGN	Jiayuguan	Jiayuguan	China
2102	IWD	Gogebic County	Ironwood	United States
2103	JAQ	Jacquinot Bay	Jacquinotbay	Papua New Guinea
2104	JAT	Jabot	Jabot	Marshall Islands
2105	JEJ	Jeh	Jeh	Marshall Islands
2106	JGP	Greenway Plaza	Houston	United States
2107	JGQ	Transco Twr Galleria	Houston	United States
2108	JGR	Groennedal	Groennedal	Greenland
2109	JHC	Island Heliport	Garden City	United States
2110	JHE	Helsingborghpt Airport	Angelholm/helsingborg	Sweden
2111	JHY	Hyatt Regency	Cambridge	United States
2112	JIA	Juina	Juina	Brazil
2113	JID	City Of Industry	Los Angeles	United States
2114	JIL	Jilin	Jilin	China
2115	JIN	Jinja	Jinja	Uganda
2116	JIP	Jipijapa	Jipijapa	Ecuador
2117	JIR	Jiri	Jiri	Nepal
2118	JKT	Soekarno hatta Intl	Jakarta	Indonesia
2119	JLD	Landskrona	Landskrona	Sweden
2120	JLG	Jalgaon Airport	Jalgaon	India
2121	JLO	Jesolo	Jesolo	Italy
2122	JLP	Juan Les Pins	Juanlespins	France
2123	JLS	Jales	Jales	Brazil
2124	JMB	Jamba	Jamba	Angola
2125	JMC	Marin County	Sausalito	United States
2126	JNA	Januaria	Januaria	Brazil
2127	JOM	Njombe	Njombe	Tanzania
2128	JOP	Josephstaal	Josephstaal	Papua New Guinea
2129	JPD	Heliport	Pasadena	United States
2130	JRG	Veer Surendra Sai Airport	Jharsuguda	India
2131	JRK	Arsuk	Arsuk	Greenland
2132	JRN	Juruena	Juruena	Brazil
2133	JRS	Jerusalem	Jerusalem	Israel
2134	JSO	Heliport Airport	Sodertalje	Sweden
2135	JSS	Spetsai Island	Spetsai Island	Greece
2136	JTI	Jatai	Jatai	Brazil
2137	JUA	Juara	Juara	Brazil
2138	JGS	Ji An	Jian	China
2139	JHG	Gasa	Jinghong	China
2140	JHM	West Maui	Kapalua	United States
2141	JHQ	Shute Harbour Heliport Airport	Shuteharbour	Australia
2142	JHW	Jamestown	Jamestown	United States
2143	JIB	Ambouli	Djibouti	Djibouti
2144	JIJ	Jigiga	Jijiga	Ethiopia
2145	JIK	Ikaria	Ikariaisland	Greece
2146	JIM	Jimma	Jimma	Ethiopia
2147	JIW	Jiwani	Jiwani	Pakistan
2148	JJI	Juanjui	Juanjui	Peru
2149	JJN	Jinjiang	Jinjiang	China
2150	JJU	Heliport Airport	Qaqortoq	Greenland
2151	JKG	Axamo	Jonkoping	Sweden
2152	JKR	Janakpur	Janakpur	Nepal
2153	JLN	Joplin	Joplin	United States
2154	JLR	Jabalpur	Jabalpur	India
2155	JMK	Mikonos	Mykonos	Greece
2156	JMO	Jomsom	Jomsom	Nepal
2157	JMU	Jiamusi	Jiamusi	China
2158	JNB	Johannesburg	Johannesburg	South Africa
2159	JNG	Jining	Jining	China
2160	JNI	Junin	Junin	Argentina
2161	JNS	Heliport Airport	Narsaq	Greenland
2162	JNU	Boundary Bay	Juneau	United States
2163	JNX	Naxos	Naxos	Greece
2164	JNZ	Jinzhou	Jinzhou	China
2165	JOI	Lauro Carneiro De Loyola	Joinville	Brazil
2166	JOK	Joshkar Ola	Yoshkarola	Russia
2167	JOL	Jolo	Jolo	Philippines
2168	JON	Johnston Island	Johnston Island	United States Minor Outlying Islands
2169	JOS	Jos	Jos	Nigeria
2170	JPA	Castro Pinto	Joaopessoa	Brazil
2171	JPR	Ji Parana	Jiparana	Brazil
2172	JQA	Qaarsut	Qaarsut	Greenland
2173	JQE	Jaque	Jaque	Panama
2174	JRH	Rowriah Airport	Jorhat	India
2175	JRO	Kilimanjaro	Kilimanjaro	Tanzania
2176	JSA	Jaisalmer	Jaisalmer	India
2177	JSH	Sitia	Siteia	Greece
2178	JSI	Skiathos	Skiathos	Greece
2179	JSR	Jessore	Jessore	Bangladesh
2180	JST	Cambria County	Johnstown	United States
2181	JSU	Heliport Airport	Maniitsoq	Greenland
2182	JSY	Syros Island	Syrosisland	Greece
2183	JTC	Bauru-arealva	Bauru	Brazil
2184	JTY	Astypalaia	Astypaleaisland	Greece
2185	JUB	Juba	Juba	Sudan
2186	JUI	Juist	Juist	Germany
2187	JUJ	El Cadillal	Jujuy	Argentina
2188	JUN	Jundah	Jundah	Australia
2189	JUO	Jurado	Jurado	Colombia
2190	JUR	Jurien Bay	Jurien Bay	Australia
2191	JUT	Juticalpa	Juticalpa	Honduras
2192	JVI	Central Jersey Regional Airport	Manville	United States
2193	KAF	Karato	Karato	Papua New Guinea
2194	KAK	Kar	Kar	Papua New Guinea
2195	KAM	Kamaran Island	Kamaranisland	Yemen
2196	KAP	Kapanga	Kapanga	Democratic Republic of the Congo
2197	KAQ	Kamulai	Kamulai	Papua New Guinea
2198	KAV	Kavanayen	Kavanayen	Venezuela
2199	KAY	Wakaya Island	Wakayaisland	Fiji Islands
2200	KAZ	Kau	Kau	Indonesia
2201	KBA	Kabala	Kabala	Sierra Leone
2202	KBB	Kirkimbie	Kirkimbie	Australia
2203	KBD	Kimberley Downs	Kimberley Downs	Australia
2204	KBE	Hotsprings Airport	Bellisland	United States
2205	KBF	Karubaga	Karubaga	Indonesia
2206	KBG	Falls	Kabalegafalls	Uganda
2207	KBH	Kalat	Kalat	Pakistan
2208	KBI	Kribi	Kribi	Cameroon
2209	KBJ	Kings Canyon	Kingscanyon	Australia
2210	KBK	Kushinagar	Kushinagar	India
2211	KBM	Kabwum	Kabwum	Papua New Guinea
2212	KBN	Kabinda	Kabinda	Democratic Republic of the Congo
2213	KBO	Kabalo	Kabalo	Democratic Republic of the Congo
2214	KBX	Kambuaya	Kambuaya	Indonesia
2215	KBY	Streaky Bay	Streaky Bay	Australia
2216	KCB	Tepoe	Tepoe	Suriname
2217	KCD	Kamur	Kamur	Indonesia
2218	KCE	Collinsville	Collinsville	Australia
2219	KCF	Kadanwari	Kadanwari	Pakistan
2220	KCI	Kon	Kono	Indonesia
2221	KCJ	Komaio	Komaio	Papua New Guinea
2222	KCN	Spb Airport	Chernofski	United States
2223	KCP	Kamenets podolskiy	Kamenets-Podolskiy	Ukraine
2224	KCU	Masindi	Masindi	Uganda
2225	KDA	Kolda	Kolda	Senegal
2226	KDB	Kambalda	Kambalda	Australia
2227	KDC	Kandi	Kandi	Benin
2228	KDE	Koroba	Koroba	Papua New Guinea
2229	KDF	Kouba	Kouba	Algeria
2230	KDJ	N Djole	N'djole	Gabon
2231	JUM	Jumla	Jumla	Nepal
2232	JUV	Heliport Airport	Upernavik	Greenland
2233	JUZ	Juzhou Zhejiang	Juzhou	China
2234	JVA	Ankavandra	Ankavandra	Madagascar
2235	JWA	Jwaneng	Jwaneng	Botswana
2236	JWN	Zanjan	Zanjan	Iran
2237	JXA	Jixi	Jixi	China
2238	JXN	Reynolds Municipal	Jackson	United States
2239	JYR	Jiroft	Jiroft	Iran
2240	JYV	Jyvaskyla	Jyvaskyla	Finland
2241	KAA	Kasama	Kasama	Zambia
2242	KAB	Kariba	Kariba	Zimbabwe
2243	KAC	Kameshli	Kameshly	Syria
2244	KAD	Kaduna	Kaduna	Nigeria
2245	KAI	Kaieteur	Kaieteur	Guyana
2246	KAJ	Kajaani	Kajaani	Finland
2247	KAL	Kaltag	Kaltag	United States
2248	KAN	Aminu Kano Intl Apt	Kano	Nigeria
2249	KAR	Kamarang	Kamarang	Guyana
2250	KAT	Kaitaia	Kaitaia	New Zealand
2251	KAU	Kauhava	Kauhava	Finland
2252	KAW	Kawthaung	Kawthaung	Myanmar
2253	KAX	Kalbarri	Kalbarri	Australia
2254	KBQ	Kasungu	Kasungu	Malawi
2255	KBR	Sultan Ismail Petra	Kotabharu	Malaysia
2256	KBS	Bo	Bo	Sierra Leone
2257	KBV	Krabi	Krabi	Thailand
2258	KBZ	Kaikoura	Kaikoura	New Zealand
2259	KCH	Kuching	Kuching	Malaysia
2260	KCK	Fairfax Municipal	Kirensk	United States
2261	KCM	Kahramanmaras	Kahramanmaras	Turkey
2262	KCO	Cengiz Topel	Kocaeli	Turkey
2263	KCZ	Kochi	KOCHI	Japan
2264	KDD	Khuzdar	Khuzdar	Pakistan
2265	KDH	Kandahar	Kandahar	Afghanistan
2266	KDI	Wolter Monginsidi	Kendari	Indonesia
2267	KAE	Spb Airport	Kake	United States
2268	KBC	Birch Creek	Birchcreek	United States
2269	KBT	Kaben	Kaben	Marshall Islands
2270	KBU	Kotabaru	Kotabaru	Indonesia
2271	KBW	Bay	Chignik	United States
2272	KCG	Fisheries	Chignik	United States
2273	KCL	Lagoon	Chignik	United States
2274	KCQ	Chignik Lake	Chignik Lake	United States
2275	KDK	Kodiak	Kodaikanal	India
2276	KDN	Ndende	Ndende	Gabon
2277	KDP	Kandep	Kandep	Papua New Guinea
2278	KDQ	Kamberator	Kamberatoro	Papua New Guinea
2279	KDS	Kamaran Downs	Kamaran Downs	Australia
2280	KDW	Vic. Resevour Kandy	Victoria Resevour Kandy	Sri Lanka
2281	KEA	Keisah	Keisah	Indonesia
2282	KEB	Nanwalek	English Bay	United States
2283	KEC	Kasenga	Kasenga	Democratic Republic of the Congo
2284	KEE	Kelle	Kelle	Congo
2285	KEG	Keglsugl	Keglsugl	Papua New Guinea
2286	KEI	Kepi	Kepi	Indonesia
2287	KEO	Odienne	Odienne	Cote D'Ivoire (Ivory Coast)
2288	KEQ	Kebar	Kebar	Indonesia
2289	KES	Kelsey	Kelsey	Canada
2290	KEU	Kelly Bar	Kelly Bar	United States
2291	KEX	Kanabea	Kanabea	Papua New Guinea
2292	KGB	Konge	Konge	Papua New Guinea
2293	KGH	Yongai	Yongai	Papua New Guinea
2294	KGM	Kungum	Kungum	Papua New Guinea
2295	KGN	Kasongo Lunda	Kasongolunda	Democratic Republic of the Congo
2296	KGR	Kulgera	Kulgera	Australia
2297	KGU	Keningau	Keningau	Malaysia
2298	KGW	Kagi	Kagi	Papua New Guinea
2299	KGY	Kingaroy	Kingaroy	Australia
2300	KGZ	Glacier Creek	Glacier Creek	United States
2301	KHA	Khaneh	Khaneh	Iran
2302	KHJ	Kauhajoki	Kauhajoki	Finland
2303	KHL	Khulna	KHULNA	Bangladesh
2304	KHO	Khoka Moya	Khoka Moya	South Africa
2305	KHR	Kharkhorin	Kharkhorin	Mongolia
2306	KHU	Kremenchug	Kremenchug	Ukraine
2307	KHZ	Kauehi	Kauehi	French Polynesia
2308	KIB	Spb Airport	Ivanofbay	United States
2309	KIC	Mesa Del Rey	King Cyti	United States
2310	KIE	Aropa	Kieta	Papua New Guinea
2311	KIG	Koinghaas	Koinghaas	South Africa
2312	KII	Kibuli	Kibuli	Papua New Guinea
2313	KDM	Kaadedhdhoo	Kaadedhdhoo	Maldives
2314	KDO	Kadhdhoo	Kadhdhoo	Maldives
2315	KDU	Skardu	Skardu	Pakistan
2316	KDV	Kandavu	Kadavu	Fiji Islands
2317	KDY	Mahaweli	Kandy	Sierra Leone
2318	KED	Kaedi	Kaedi	Mauritania
2319	KEJ	Kemerovo	Kemerovo	Russia
2320	KEL	Holtenau	Kiel	Germany
2321	KEM	Tornio	Kemitornio	Finland
2322	KEN	Kenema	Kenema	Sierra Leone
2323	KEP	Nepalganj	Nepalganj	Nepal
2324	KER	Kerman	Kerman	Iran
2325	KET	Keng Tung	Keng Tung	Myanmar
2326	KEW	Keewaywin	Keewaywin	Canada
2327	KEY	Kericho	Kericho	Kenya
2328	KFG	Kalkurung	Kalkurung	Australia
2329	KFP	False Pass	Falsepass	United States
2330	KFS	Kastamonu	Kastamonu	Turkey
2331	KGA	Kananga	Kananga	Democratic Republic of the Congo
2332	KGD	Khrabrovo	Kaliningrad	Russia
2333	KGE	Kagau	Kagau	Solomon Islands
2334	KGF	Karaganda	Karaganda	Kazakhstan
2335	KGG	Kedougou	Kedougou	Senegal
2336	KGJ	Karonga	Karonga	Malawi
2337	KGK	New Koliganek	Newkoliganek	United States
2338	KGL	Gregoire Kayibanda	Kigali	Rwanda
2339	KGO	Kirovograd	Kirovograd	Ukraine
2340	KGS	Island International Airport	Kos	Greece
2341	KGT	Kangding	Kangding	China
2342	KHC	Kerch	Kerch	Ukraine
2343	KHD	Khorramabad	Khorramabad	Iran
2344	KHE	Kherson	Kherson	Ukraine
2345	KHG	Kashi	Kashi	China
2346	KHI	Quaid e azam Intl	Karachi	Pakistan
2347	KHK	Khark	Kharkisland	Iran
2348	KHM	Khamti	Khamti	Myanmar
2349	KHN	Nanchang	Nanchang	China
2350	KHS	Khasab	Khasab	Oman
2351	KHT	Khost	Khost	Afghanistan
2352	KHW	Khwai River Lodge	Khwai River Lodge	Botswana
2353	KID	Kristianstad	Kristianstad	Sweden
2354	KIF	Kingfisher Lake	Kingfisher Lake	Canada
2355	KIH	Kish Island	Kishisland	Iran
2356	KDR	Kandrian	Kandrian	Papua New Guinea
2357	KGX	Grayling	Grayling	United States
2358	KEH	Kenmore	Kenmoreairharbo	United States
2359	KEK	Ekwok	Ekwok	United States
2360	KIA	Kaiapit	Kaiapit	Papua New Guinea
2361	KIL	Kilwa	Kilwa	Democratic Republic of the Congo
2362	KIQ	Kira	Kira	Papua New Guinea
2363	KIU	Kiunga	Kiunga	Kenya
2364	KIY	Kilwa	Kilwa	Tanzania
2365	KIZ	Kikinonda	Kikinonda	Papua New Guinea
2366	KJU	Kamiraba	Kamiraba	Papua New Guinea
2367	KKF	Kagvik Creek	Kagvik Creek	United States
2368	KKG	Konawaruk	Konawaruk	Guyana
2369	KKK	Kalakaket	Kalakaket	United States
2370	KKM	Lop Buri	Lop Buri	Thailand
2371	KKO	Kaikohe	Kaikohe	New Zealand
2372	KKP	Koolburra	Koolburra	Australia
2373	KKT	Kentland	Kentland	United States
2374	KKU	Ekuk	Ekuk	United States
2375	KKY	Kilkenny	Kilkenny	Ireland
2376	KKZ	Koh Kong	Koh Kong	Cambodia
2377	KLA	Kampala	Kampala	Uganda
2378	KLB	Kalabo	Kalabo	Zambia
2379	KLE	Kaele	Kaele	Cameroon
2380	KLJ	Klaipeda	Klaipeda	Lithuania
2381	KLP	Kelp Bay	Kelp Bay	United States
2382	KLQ	Keluang	Keluang	Indonesia
2383	KLT	Kaiserslautern	Kaiserslautern	Germany
2384	KLY	Kalima	Kalima	Democratic Republic of the Congo
2385	KMB	Koinambe	Koinambe	Papua New Guinea
2386	KMD	Mandji	Mandji	Gabon
2387	KMF	Kamina	Kamina	Papua New Guinea
2388	KMK	Makabana	Makabana	Congo
2389	KML	Kamileroi	Kamileroi	Australia
2390	KMM	Kimam	Kimam	Indonesia
2391	KMR	Karimui	Karimui	Papua New Guinea
2392	KMT	Kampot	Kampot	Cambodia
2393	KMX	Khamis Mushait	Khamis Mushait	Saudi Arabia
2394	KMZ	Kaoma	Kaoma	Zambia
2395	KNB	Kanab	Kanab	United States
2396	KNC	Ji'An	Ji'An	China
2397	KNE	Kanainj	Kanainj	Papua New Guinea
2398	KIM	Kimberley	Kimberley	South Africa
2399	KIN	Norman Manley	Kingston	Jamaica
2400	KIO	Kili	Kiliisland	Marshall Islands
2401	KIS	Kisumu	Kisumu	Kenya
2402	KIT	Kithira	Kithira	Greece
2403	KIV	Kishinev	Chisinau	Moldova
2404	KIX	Kansai International	Osaka	Japan
2405	KJA	Krasnojarsk	Krasnoyarsk	Russia
2406	KJK	Kortrijk	Kortrijk	Belgium
2407	KJP	Kerama	Kerama	Japan
2408	KKA	Koyuk	Koyuk	United States
2409	KKC	Khon Kaen	Khonkaen	Thailand
2410	KKH	Kongiganak	Kongiganak	United States
2411	KKJ	Kita Kyushu	Kitakyushu	Japan
2412	KKN	Hoeybuktmoen	Kirkenes	Norway
2413	KKR	Kaukura Atoll	Kaukuraatoll	French Polynesia
2414	KKX	Kikaiga Shima	Kikaigashima	Japan
2415	KLC	Kaolack	Kaolack	Senegal
2416	KLD	TVER	TVER	Russia
2417	KLF	Kaluga	Kaluga	Russia
2418	KLG	Kalskag	Kalskag	United States
2419	KLI	Kota Koli	Kota Koli	Democratic Republic of the Congo
2420	KLN	Larsenspb Airport	Larsenbay	United States
2421	KLO	Kalibo	Kalibo	Philippines
2422	KLR	Kalmar	Kalmar	Sweden
2423	KLU	Alpe Adria	Klagenfurt	Austria
2424	KLV	Karlovy Vary	Karlovyvary	Czech Republic
2425	KLW	Klawock	Klawock	United States
2426	KLX	Kalamata	Kalamata	Greece
2427	KLZ	Kleinzee	Kleinzee	South Africa
2428	KME	Kamembe	Kamembe	Rwanda
2429	KMG	Kunming	Kunming	China
2430	KMH	Kuruman	Kuruman	South Africa
2431	KMJ	Kumamoto	Kumamoto	Japan
2432	KMN	Kamina	Kamina	Democratic Republic of the Congo
2433	KMO	Manokotak	Manokotak	United States
2434	KMP	J.G.H. Van Der Wath	Keetmanshoop	Namibia
2435	KMQ	Komatsu	Komatsu	Japan
2436	KMU	Kismayu	Kismayu	Somalia
2437	KMV	Kalemyo	Kalemyo	Myanmar
2438	KMW	Kostroma	Kostroma	Russia
2439	KNA	Vina del Mar	Vinadelmar	Chile
2440	KJB	Kurnool Airport	Kurnool	India
2441	KKD	Kokoda	Kokoda	Papua New Guinea
2442	KIP	Kickapoo	Kickapoo	United States
2443	KKB	Spb Airport	Kitoibay	United States
2444	KLK	Kalokol	Kalokol	Kenya
2445	KLL	Levelock	Levelock	United States
2446	KMY	Moser Bay	Moserbay	United States
2447	KNI	Katanning	Katanning	Australia
2448	KNJ	Kindamba	Kindamba	Congo
2449	KNK	Kakhonak	Kakhonak	United States
2450	KNL	Kelanoa	Kelanoa	Papua New Guinea
2451	KNM	Kaniama	Kaniama	Democratic Republic of the Congo
2452	KNR	Jam	Kangan	Iran
2453	KNT	Kennett l	Kennett l	United States
2454	KNV	Knights Inlet	Knights Inlet	Canada
2455	KNY	Kinoosao	Kinoosao	Canada
2456	KNZ	Kenieba	Kenieba	Mali
2457	KOB	Koutaba	Koutaba	Cameroon
2458	KOD	Sabiha Gökçen Havaalani	Kotabangun	Indonesia
2459	KOF	Komatipoort	Komatipoort	South Africa
2460	KOG	Khong	Khong	Laos
2461	KOH	Koolatah	Koolatah	Australia
2462	KOL	Koumala	Koumala	Central African Republic
2463	KOM	Manda	Komomanda	Papua New Guinea
2464	KOO	Kongolo	Kongolo	Democratic Republic of the Congo
2465	KOR	Kokoro	Kokoro	Papua New Guinea
2466	KOX	Kokonao	Kokonao	Indonesia
2467	KPA	Kopiago	Kopiago	Papua New Guinea
2468	KPD	King Of Prussia	King Of Prussia	United States
2469	KPE	Yapsiei	Yapsiei	Papua New Guinea
2470	KPF	Kondubol	Kondubol	Papua New Guinea
2471	KPG	Kurupung	Kurupung	Guyana
2472	KPI	Kapit	Kapit	Malaysia
2473	KPK	Parks	Parks	United States
2474	KPL	Kapal	Kapal	Papua New Guinea
2475	KPM	Kompiam	Kompiam	Papua New Guinea
2476	KPP	Kalpowar	Kalpowar	Australia
2477	KPS	Kempsey	Kempsey	Australia
2478	KPT	Jackpot	Jackpot	United States
2479	KQB	Koonibba	Koonibba	Australia
2480	KQH	Ajmer Kishangarh Airport	Ajmer	India
2481	KQL	Kol	Kol	Papua New Guinea
2482	KRA	Kerang	Kerang	Australia
2483	KRC	Kerinci	Kerinci	Indonesia
2484	KRD	Kurundi	Kurundi	Australia
2485	KRE	Kirundo	Kirundo	Burundi
2486	KRG	Karasabai	Karasabai	Guyana
2487	KRJ	Karawari	Karawari	Papua New Guinea
2488	KRM	Karanambo	Karanambo	Guyana
2489	KRQ	Kramatorsk	Kramatorsk	Ukraine
2490	KRU	Kerau	Kerau	Papua New Guinea
2491	KRX	Kar Kar	Karkar	Papua New Guinea
2492	KSB	Kasanombe	Kasanombe	Papua New Guinea
2493	KNO	Knokke	Knokke	Belgium
2494	KNP	Capanda	Capanda	Angola
2495	KNQ	Kone	Kone	New Caledonia
2496	KNU	Kanpur	Kanpur	India
2497	KNW	New Stuyahok	Newstuyahok	United States
2498	KNX	Kununurra	Kununurra	Australia
2499	KOA	Kona	Kona	United States
2500	KOC	Koumac	Koumac	New Caledonia
2501	KOE	Eltari	Kupang	Indonesia
2502	KOJ	Kagoshima	Kagoshima	Japan
2503	KOK	Kruunupyy	Kokkolapietarsaa	Finland
2504	KOP	Nakhon Phanom	Nakhonphanom	Thailand
2505	KOQ	Koethen	Koethen	Germany
2506	KOT	Kotlik	Kotlik	United States
2507	KOU	Koulamoutou	Koulamoutou	Gabon
2508	KOV	Kokshetau	Kokshetau	Kazakhstan
2509	KOW	Ganzhou	Ganzhou	China
2510	KPN	Kipnuk	Kipnuk	United States
2511	KPO	Pohang	Pohang	South Korea
2512	KPV	Perryville	Perryville	United States
2513	KQA	Akutan	Akutan	United States
2514	KRB	Karumba	Karumba	Australia
2515	KRH	Redhill	Redhill	United Kingdom
2516	KRI	Kikori	Kikori	Papua New Guinea
2517	KRK	J. Paul Ii Balice Intl	Krakow	Poland
2518	KRL	Korla	Korla	China
2519	KRN	Kiruna	Kiruna	Sweden
2520	KRP	Karup	Karup	Denmark
2521	KRR	Pashkovsky	Krasnodar	Russia
2522	KRS	Kjevik	Kristiansand	Norway
2523	KRT	Civil	Khartoum	Sudan
2524	KRY	Karamay	Karamay	China
2525	KRZ	Kiri	Kiri	Democratic Republic of the Congo
2526	KSA	Kosrae	Kosrae	Micronesia
2527	KSC	Barca	Kosice	Slovakia
2528	KNN	Kankan	Kankan	Guinea
2529	KON	Kontum	Kontum	Vietnam
2530	KOY	Olgabay	Olgabay	United States
2531	KOZ	Ouzinkie	Ouzinkie	United States
2532	KPR	Pwilliams Airport	Portwilliams	United States
2533	KPY	Portbailey	Portbailey	United States
2534	KRV	Kerio Valley	Kerio Valley	Kenya
2535	KSE	Kasese	Kasese	Uganda
2536	KSG	Kisengan	Kisengan	Papua New Guinea
2537	KSP	Kosipe	Kosipe	Papua New Guinea
2538	KSR	Federal No 1	Sandy River	United States
2539	KST	Kosti	Kosti	Sudan
2540	KSV	Springvale	Springvale	Australia
2541	KSW	Shmona	Kiryatshmona	Israel
2542	KSX	Yasuru	Yasuru	Papua New Guinea
2543	KTC	Katiola	Katiola	Cote D'Ivoire (Ivory Coast)
2544	KTK	Kanua	Kanua	Papua New Guinea
2545	KTO	Kato	Kato	Guyana
2546	KTV	Kamarata	Kamarata	Venezuela
2547	KTX	Koutiala	Koutiala	Mali
2548	KTZ	Kwun Tong	Kwun Tong	Hong Kong S.A.R.
2549	KUB	Kuala Belait	Kualabelait	Brunei
2550	KUE	Kukundu	Kukundu	Solomon Islands
2551	KUI	Kawau Island	Kawau Island	New Zealand
2552	KUJ	Kushimoto	Kushimoto	Japan
2553	KUP	Kupiano	Kupiano	Papua New Guinea
2554	KUQ	Kuri	Kuri	Papua New Guinea
2555	KUR	Kuran O Munjan	Kuran-O-Munjan	Afghanistan
2556	KUW	Kugururok River	Kugururok River	United States
2557	KUX	Kuyol	Kuyol	Papua New Guinea
2558	KVE	Kitava	Kitava	Papua New Guinea
2559	KVU	Korolevu	Korolevu	Fiji Islands
2560	KWB	Karimunjawa	Karimunjawa	Indonesia
2561	KWF	Waterfall	Waterfall	United States
2562	KWH	Khwahan	Khwahan	Afghanistan
2563	KWO	Kawito	Kawito	Papua New Guinea
2564	KWR	Kwai Harbour	Kwai Harbour	Solomon Islands
2565	KWV	Kurwina	Kurwina	Papua New Guinea
2566	KWX	Kiwai Island	Kiwai Island	Papua New Guinea
2567	KSI	Kissidougou	Kissidougou	Guinea
2568	KSJ	Kasos Island	Kasosisland	Greece
2569	KSK	Karlskoga	Karlskoga	Sweden
2570	KSL	Kassala	Kassala	Sudan
2571	KSN	Kostanay	Kostanay	Kazakhstan
2572	KSO	Aristoteles Airport	Kastoria	Greece
2573	KSQ	Karshi	Karshi	Uzbekistan
2574	KSS	Sikasso	Sikasso	Mali
2575	KSY	Kars	Kars	Turkey
2576	KSZ	Kotlas	Kotlas	Russia
2577	KTA	Karratha	Karratha	Australia
2578	KTD	Kitadaito	Kitadaito	Japan
2579	KTE	Kerteh	Kerteh	Malaysia
2580	KTG	Ketapang	Ketapang	Indonesia
2581	KTI	Kratie	Kratie	Cambodia
2582	KTL	Kitale	Kitale	Kenya
2583	KTM	Tribhuvan	Kathmandu	Nepal
2584	KTP	Tinson	Kingston	Jamaica
2585	KTQ	Kitee	Kitee	Finland
2586	KTR	Tindal	Katherine	Australia
2587	KTS	Brevigm Airport	Tellermission	United States
2588	KTT	Kittila	Kittila	Finland
2589	KTW	Pyrzowice	Katowice	Poland
2590	KUA	Kuantan	Kuantan	Malaysia
2591	KUC	Kuria	Kuria	Kiribati
2592	KUD	Kudat	Kudat	Malaysia
2593	KUG	Kubin Island	Kubin Island	Australia
2594	KUH	Kushiro	Kushiro	Japan
2595	KUK	Kasigluk	Kasigluk	United States
2596	KUL	Kuala Lumpur	Kualalumpur	Malaysia
2597	KUN	Kaunas	Kaunas	Lithuania
2598	KUO	Kuopio	Kuopio	Finland
2599	KUT	Kopitnari	Kutaisi	Georgia
2600	KUU	Bhuntar Airport	Kullu	India
2601	KUV	Gunsan	Gunsan	South Korea
2602	KVB	Skovde	Skovde	Sweden
2603	KVC	King Cove	Kingcove	United States
2604	KVD	Gyandzha	Ganja	Azerbaijan
2605	KVG	Kavieng	Kavieng	Papua New Guinea
2606	KVK	Kirovsk	Kirovskapatity	Russia
2607	KVX	Kirov	Kirov	Russia
2608	KWA	Kwajalein	Kwajalein	Marshall Islands
2609	KWE	Guiyang	Guiyang	China
2610	KWG	Krivoy Rog	Krivyirih	Ukraine
2611	KWI	Kuwait	Kuwait	Kuwait
2612	KWK	Kwigillingok	Kwigillingok	United States
2613	KWL	Guilin	Guilin	China
2614	KWM	Kowanyama	Kowanyama	Australia
2615	KWN	Kwinhagak	Quinhagak	United States
2616	KWT	Kwethluk	Kwethluk	United States
2617	KUS	Kulusuk	Kulusuk	Greenland
2618	KUY	Kamusi	Kamusi	United States
2619	KWP	Villagespb Airport	Westpoint	United States
2620	KXA	Kasaan	Kasaan	United States
2621	KXR	Karoola	Karoola	Papua New Guinea
2622	KXU	Katiu	Katiu	French Polynesia
2623	KYF	Yeelirrie	Yeelirrie	Australia
2624	KYL	Port Largo	Key Largo	United States
2625	KYN	Milton Keynes	Milton Keynes	United Kingdom
2626	KYO	Topp Of Tampa	Tampa	United States
2627	KYT	Kyauktaw	Kyauktaw	Myanmar
2628	KYX	Yalumet	Yalumet	Papua New Guinea
2629	KZD	Krakor	Krakor	Cambodia
2630	KZF	Kaintiba	Kaintiba	Papua New Guinea
2631	KZH	Kizhuyak	Kizhuyak	United States
2632	KZK	Kompong Thom	Kompong -Thom	Cambodia
2633	LAB	Lablab	Lablab	Papua New Guinea
2634	LAC	Layang Airstrip	Pulau	Malaysia
2635	LAG	La Guaira	La Guaira	Venezuela
2636	LAH	Labuha	Labuha	Indonesia
2637	LAI	Servel	Lannion	France
2638	LAV	Lalomalava	Lalomalava	Samoa
2639	LBG	Le Bourget	Paris	France
2640	LBK	Liboi	Liboi	Kenya
2641	LBM	Luabo	Luabo	Mozambique
2642	LBN	Lake Baringo	Lake Baringo	Kenya
2643	LBO	Lusambo	Lusambo	Democratic Republic of the Congo
2644	LCB	Pontes e Lacerda	Pontes-de-Lacerda	Brazil
2645	LCD	Louis Trichardt	Louistrichardt	South Africa
2646	LCF	Las Vegas	Riodulce	Guatemala
2647	LCI	Laconia Municipal	Laconia	United States
2648	KXF	Koro	Koroisland	Fiji Islands
2649	KXK	Komsomolsk Na Amure	Komsomolsknaamure	Russia
2650	KYA	Konya	Konya	Turkey
2651	KYD	Orchid Island	Orchid Island	Taiwan
2652	KYE	Kleyate	Tripoli	Lebanon
2653	KYK	Karluk	Karluk	United States
2654	KYP	Kyaukpyu	Kyaukpyu	Myanmar
2655	KYS	Kayes	Kayes	Mali
2656	KYU	Koyukuk	Koyukuk	United States
2657	KYZ	Kyzyl	Kyzyl	Russia
2658	KZG	Kitzingen	Kitzingen	Germany
2659	KZI	Philippos Airport	Kozani	Greece
2660	KZN	Kazan	Kazan	Russia
2661	KZO	Kzyl Orda	Kzylorda	Kazakhstan
2662	KZS	Kastelorizo	Kastelorizo	Greece
2663	LAD	Quatro De Fevereiro Airport	Luanda	Angola
2664	LAE	Nadzab	Lae	Papua New Guinea
2665	LAF	Purdue University	Lafayette	United States
2666	LAJ	Lages	Lages	Brazil
2667	LAL	Lakeland	Lakeland	United States
2668	LAM	Los Alamos	Losalamos	United States
2669	LAN	Capital City Airport	Lansing	United States
2670	LAO	Laoag	Laoag	Philippines
2671	LAP	La Paz	Lapaz	Mexico
2672	LAR	Generalbreesfld Airport	Laramie	United States
2673	LAS	Mc Carran Intl	Lasvegas	United States
2674	LAU	Lamu	Lamu	Kenya
2675	LAX	Los Angeles	Losangeles	United States
2676	LAY	Ladysmith	Ladysmith	South Africa
2677	LBA	Leeds	Leeds	United Kingdom
2678	LBB	Lubbock	Lubbock	United States
2679	LBC	Lübeck Blankensee	Hamburg	Germany
2680	LBD	Khudzhand	Khudzhand	Tajikistan
2681	LBE	Westmorlandcounty Airport	Latrobe	United States
2682	LBF	Leebirdfield Airport	Northplatte	United States
2683	LBI	Le Sequestre	Albi	France
2684	LBL	Liberal Municipal	Liberal	United States
2685	LBQ	Lambarene	Lambarene	Gabon
2686	LBR	Labrea	Labrea	Brazil
2687	LBS	Labasa	Labasa	Fiji Islands
2688	LBU	Labuan	Labuan	Malaysia
2689	LBV	Libreville	Libreville	Gabon
2690	LBW	Long Bawan	Longbawan	Indonesia
2691	LBX	Lubang	Lubang	Philippines
2692	LBY	Montoir	Labauleescoublac	France
2693	LBZ	Lukapa	Lukapa	Angola
2694	LCC	Galatina	Galatina	Italy
2695	LCE	Goloson International	Laceiba	Honduras
2696	LCG	La Coruna	Lacoruna	Spain
2697	LCH	Lake Charles Municipal	Lakecharles	United States
2698	LCK	Rickenbacker	Columbus	United States
2699	LCL	La Coloma	La Coloma	Cuba
2700	KWY	Kiwayu	Kiwayu	Kenya
2701	LBP	Long Banga	Longbanga	Malaysia
2702	LCM	La Cumbre	La Cumbre	Argentina
2703	LCN	Balcanoona	Balcanoona	Australia
2704	LCO	Lague	Lague	Congo
2705	LCP	Loncopue	Loncopue	Argentina
2706	LCS	Las Canas	Las Canas	Costa Rica
2707	LCV	Lucca	Lucca	Italy
2708	LCY	London	London	United Kingdom
2709	LDA	Malda	Malda	India
2710	LDC	Lindeman Island	Lindeman Island	Australia
2711	LDR	Lodar	Lodar	Yemen
2712	LDW	Lansdowne	Lansdowne	Australia
2713	LEE	Leesburg	Leesburg	United States
2714	LEF	Lebakeng	Lebakeng	Lesotho
2715	LEG	Aleg	Aleg	Mauritania
2716	LEM	Lemmon	Lemmon	United States
2717	LEO	Leconi	Leconi	Gabon
2718	LEP	Leopoldina	Leopoldina	Brazil
2719	LEZ	La Esperanza	La Esperanza	Honduras
2720	LFO	Kelafo	Kelafocallaf	Ethiopia
2721	LFP	Lakefield	Lakefield	Australia
2722	LGD	La Grande	La Grande	United States
2723	LGE	Lake Gregory	Lake Gregory	Australia
2724	LGM	Laiagam	Laiagam	Papua New Guinea
2725	LGN	Linga Linga	Lingalinga	Papua New Guinea
2726	LGR	Cochrane	Cochrane	Chile
2727	LGT	Las Gaviotas	Las Gaviotas	Colombia
2728	LGW	Gatwick	London	United Kingdom
2729	LGX	Lugh Ganane	Lughganane	Somalia
2730	LGY	Lagunillas	Lagunillas	Venezuela
2731	LGZ	Leguizamo	Leguizamo	Colombia
2732	LHI	Lereh	Lereh	Indonesia
2733	LHK	Guanghua	Guanghua	China
2734	LHN	Lishan	Lishan	Taiwan
2735	LHP	Lehu	Lehu	Papua New Guinea
2736	LHU	Lianshulu	Caprivi	Namibia
2737	LIA	Liangping	Liangping	China
2738	LIB	Limbunya	Limbunya	Australia
2739	LIE	Libenge	Libenge	Democratic Republic of the Congo
2740	LDE	Tarbes Ossun Lourdes	Lourdestarbes	France
2741	LDG	Leshukonskoye	Leshukonskoye	Russia
2742	LDH	Lord Howe Island	Lord Howe Island	Australia
2743	LDI	Kikwetu	Lindi	Tanzania
2744	LDK	Hovby	Lidkoping	Sweden
2745	LDU	Lahad Datu	Lahaddatu	Malaysia
2746	LDV	Landivisiau	Landivisiau	France
2747	LDY	Eglinton City of Derry	Londonderry	United Kingdom
2748	LEA	Learmonth	Learmonth	Australia
2749	LEB	White River	Lebanon	United States
2750	LEC	Chapada Diamantina	Lencois	Brazil
2751	LED	Pulkovo	Saintpetersburg	Russia
2752	LEH	Octeville	Lehavre	France
2753	LEI	Almeria	Almeria	Spain
2754	LEK	Labe	Labe	Guinea
2755	LEL	Lake Evella	Lake Evella	Australia
2756	LEN	Leon	Leon	Spain
2757	LEQ	Lands End	Lands End	United Kingdom
2758	LET	Gen. A.V. Cobo	Leticia	Colombia
2759	LEU	Aeroport De La Seu	Seodeurgel	Spain
2760	LEV	Levuka	Bureta	Fiji Islands
2761	LEW	Auburn Airport	Lewiston	United States
2762	LEY	Lelystad	Lelystad	Netherlands
2763	LFB	Lumbo	Lumbo	Mozambique
2764	LFK	Lufkinangel Airport	Nacogdoches	United States
2765	LFM	Lamerd	Lamerd	Iran
2766	LFR	La Fria	La Fria	Australia
2767	LFW	Lome	Lome	Togo
2768	LGA	La Guardia	New York LaGuardia Airport	United States
2769	LGB	Long Beach	Longbeach	United States
2770	LGG	Liege	Liege	Belgium
2771	LGI	Deadmans Cay	Deadmans Cay	The Bahamas
2772	LGK	Langakawi Intl	Langkawi	Malaysia
2773	LGL	Long Lellang	Longlellang	Malaysia
2774	LGO	Langeoog	Langeoog	Germany
2775	LGS	Malargue	Malargue	Argentina
2776	LGU	Cache Airport	Logan	United States
2777	LHA	Black Forest	Lahr	Germany
2778	LHE	Alama Iqbal International	Lahore	Pakistan
2779	LHS	Las Heras	Las Heras	Argentina
2780	LHW	Lanzhou	Lanzhou	China
2781	LID	Valkenburg	Valkenburg	Netherlands
2782	LCR	La Chorrera	Lachorrera	Colombia
2783	LDO	Ladouanie	Ladouanie	Suriname
2784	LDZ	Londolozi	Londolozi	South Africa
2785	LGQ	Lago Agrio	Lagoagrio	Ecuador
2786	LHR	Heathrow	London	United Kingdom
2787	LIJ	Long Island	Longisland	United States
2788	LKA	Larantuka	Larantuka	Indonesia
2789	LKC	Lekana	Lekana	Congo
2790	LKD	Lakeland Downs	Lakeland Downs	Australia
2791	LKR	Las Khoreh	Las Khoreh	Somalia
2792	LKS	Lakeside	Lakeside	United States
2793	LKT	Lakota	Lakota	Cote D'Ivoire (Ivory Coast)
2794	LKU	Lake Rudolf	Lake Rudolf	Kenya
2795	LLG	Chillagoe	Chillagoe	Australia
2796	LLH	Las Limas	Las Limas	Honduras
2797	LLL	Lissadell	Lissadell	Australia
2798	LLM	Long Lama	Long Lama	Malaysia
2799	LLN	Kelila	Kelila	Indonesia
2800	LLP	Linda Downs	Linda Downs	Australia
2801	LLS	Las Lomitas	Las Lomitas	Argentina
2802	LLX	Lyndonville	Lyndonville	United States
2803	LMB	Salima	Salima	Malawi
2804	LMD	Los Menucos	Los Menucos	Argentina
2805	LMG	Lamassa	Lamassa	Papua New Guinea
2806	LMH	Limon	Limon	Honduras
2807	LMI	Lumi	Lumi	Papua New Guinea
2808	LMK	Limerick	Limerick	Ireland
2809	LMR	Lime Acres	Lima Acres	South Africa
2810	LMX	Lopez De Micay	Lopez De Micay	Colombia
2811	LMZ	Palma	Palma	Mozambique
2812	LNC	Lengbati	Lengbati	Papua New Guinea
2813	LNF	Munbil	Munbil	Papua New Guinea
2814	LNG	Lese	Lese	Papua New Guinea
2815	LNH	Lake Nash	Lake Nash	Australia
2816	LNJ	Lincang	Lincang	China
2817	LNM	Langimar	Langimar	Papua New Guinea
2818	LNP	Wise	Wise	United States
2819	LNQ	Loani	Loani	Papua New Guinea
2820	LNX	Smolensk	Smolensk	Russia
2821	LOA	Lorraine	Lorraine	Australia
2822	LOB	Los Andes	Los Andes	Chile
2823	LOC	Lock	Lock	Australia
2824	LOF	Loen	Loen	Marshall Islands
2825	LOG	Longview	Longview	United States
2826	LIG	Bellegarde	Limoges	France
2827	LIH	Lihue	Kauaiisland	United States
2828	LII	Mulia	Mulia	Indonesia
2829	LIM	Jorge Chavez International	Lima	Peru
2830	LJU	Brnik	Ljubljana	Slovenia
2831	LIO	Limon	Limon	Costa Rica
2832	LIP	Lins	Lins	Brazil
2833	LIQ	Lisala	Lisala	Democratic Republic of the Congo
2834	LIR	Daniel Oduber International	Liberia	Costa Rica
2835	LIS	Portela	Lisbon	Portugal
2836	LIT	Adams Field Airport	Littlerock	United States
2837	LIW	Loikaw	Loikaw	Myanmar
2838	LJA	Lodja	Lodja	Democratic Republic of the Congo
2839	LJG	Lijiang	Lijiang	China
2840	LIN	Linate	Milan	Italy
2841	LKB	Lakeba	Lakeba	Fiji Islands
2842	LKH	Long Akah	Longakah	Malaysia
2843	LKL	Banak	Lakselv	Norway
2844	LKN	Leknes	Leknes	Norway
2845	LKO	Amausi Airport	Lucknow	India
2846	LKV	Lakecounty Airport	Lakeview	United States
2847	LKY	Lake Manyara	Lakemanyara	Tanzania
2848	LLA	Kallax	Lulea	Sweden
2849	LLE	Malelane	Malelane	South Africa
2850	LLI	Lalibela	Lalibela	Ethiopia
2851	LLK	Lenkaran	Lenkaran	Azerbaijan
2852	LLU	Alluitsup Paa	Alluitsuppaa	Greenland
2853	LMA	Lake Minchumina	Lakeminchumina	United States
2854	LME	Arnage	Lemans	France
2855	LMM	Federal Valle Del Fuerte	Losmochis	Mexico
2856	LMN	Limbang	Limbang	Malaysia
2857	LMP	Lampedusa	Lampedusa	Italy
2858	LMQ	Marsa Brega	Marsa el Brega	Libya
2859	LNB	Lamen Bay	Lamenbay	Vanuatu
2860	LND	Huntfield Airport	Lander	United States
2861	LNE	Lonorore	Lonorore	Vanuatu
2862	LNO	Leonora	Leonora	Australia
2863	LNS	Lancaster	Lancaster	United States
2864	LNY	City	Lanai	United States
2865	LNZ	Blue Danube	Linz	Austria
2866	LOD	Longana	Longana	Vanuatu
2867	LOE	Loei	Loei	Thailand
2868	LIV	Livengood	Livengood	United States
2869	LKK	Kulik Lake	Kulik Lake	United States
2870	LML	Lae	Laeisland	Marshall Islands
2871	LMY	Lake Murray	Lakemurray	Papua New Guinea
2872	LNV	Lihir Island	Lihirisland	Papua New Guinea
2873	LOI	Helmuth Baungartem	Helmuth Baungartem	Brazil
2874	LOM	Francisco P. V. Y R.	Lagosdemoreno	Mexico
2875	LON	London	London	United Kingdom
2876	LOQ	Lobatse	Lobatse	Botswana
2877	LOW	Louisa	Louisa	United States
2878	LOY	Loyangalani	Loyangalani	Kenya
2879	LPE	La Primavera	La Primavera	Colombia
2880	LPJ	Pijiguaos	Pijiguaos	Venezuela
2881	LPO	Laporte Municipal	Laporte	United States
2882	LPW	Littleportwalte	Littleportwalte	United States
2883	LQK	Pickens	Pickens	United States
2884	LQN	Qala Nau	Qala Nau	Afghanistan
2885	LRB	Leribe	Leribe	Lesotho
2886	LRG	Lora Lai	Lora Lai	Pakistan
2887	LRI	Lorica	Lorica	Colombia
2888	LRQ	Laurie River	Laurie River	Canada
2889	LSB	Lordsburg	Lordsburg	United States
2890	LSJ	Long Island	Long Island	Papua New Guinea
2891	LSM	Lawas	Longsemado	Malaysia
2892	LSN	Los Banos	Los Banos	United States
2893	LSO	Talmont	Talmont	France
2894	LSR	Lost River	Lostriver	United States
2895	LSU	Long Sukang	Longsukang	Malaysia
2896	LTB	Latrobe	Latrobe	Australia
2897	LTC	Lai	Lai	Chad
2898	LTF	Leitre	Leitre	Papua New Guinea
2899	LTG	Langtang	Langtang	Nepal
2900	LTH	Lathrop Wells	Lathropwells	United States
2901	LTL	Lastourville	Lastourville	Gabon
2902	LTN	Luton	London	United Kingdom
2903	LTP	Lyndhurst	Lyndhurst	Australia
2904	LTR	Letterkenny	Letterkenny	Ireland
2905	LTV	Lotusvale	Lotusvale	Australia
2906	LTW	St Marys County	Leonardtown	United States
2907	LOK	Lodwar	Lodwar	Kenya
2908	LOO	L'Mekrareg	L'Mekrareg	Algeria
2909	LOS	Murtala Muhammed	Lagos	Nigeria
2910	LOU	Bowman Field Airport	Loisville	United States
2911	LOV	Monclova	Monclova	Mexico
2912	LOZ	Corbin	London	United States
2913	LPA	Gran Canaria	Laspalmas	Spain
2914	LPB	El Alto	Lapaz	Bolivia
2915	LPD	La Pedrera	Lapedrera	Colombia
2916	LPG	La Plata	La Plata	Argentina
2917	LPI	Linkoping	Linkoping	Sweden
2918	LPL	John Lennon	Liverpool	United Kingdom
2919	LPM	Lamap	Lamap	Vanuatu
2920	LPP	Lappeenranta	Lappeenranta	Finland
2921	LPQ	Luang Prabang	Luang Prabang	Laos
2922	LPT	Lampang	Lampang	Thailand
2923	LPU	Long Apung	Longapung	Indonesia
2924	LPX	Liepaya	Liepaja	Latvia
2925	LPY	Loudes	Lepuy	France
2926	LQM	Puerto Leguizamo	Puertoleguizamo	Colombia
2927	LRA	Larisa	Larisa	Greece
2928	LRD	Laredo	Laredo	United States
2929	LRH	Laleu	Larochelle	France
2930	LRL	Niamtougou	Lamakara	Togo
2931	LRM	Casa de Campo International	Laromana	Dominican Republic
2932	LRR	Lar	Lar	Iran
2933	LRS	Leros	Leros	Greece
2934	LRU	Las Cruces Municipal	Lascruces	United States
2935	LRV	Los Roques	Losroques	Venezuela
2936	LSC	La Florida	Laserena	Chile
2937	LSH	Lashio	Lashio	Myanmar
2938	LSI	Sumburgh	Shetland Islands	United Kingdom
2939	LSL	Los Chiles	Los Chiles	Costa Rica
2940	LSP	Josefa Camejo	Laspiedras	Venezuela
2941	LSQ	Los Angeles	Losangeles	Chile
2942	LST	Launceston	Launceston	Australia
2943	LSW	Lhoksumawe	Lhoksumawe	Indonesia
2944	LSX	Lhok Sukon	Lhok Sukon	Indonesia
2945	LSY	Lismore	Lismore	Australia
2946	LSZ	Losinj Arpt	Malilosinj	Croatia
2947	LTD	Ghadames	Ghadames	Libya
2948	LTI	Altai	Altai	Mongolia
2949	LTK	Latakia	Latakia	Syria
2950	LTM	Lethem	Lethem	Guyana
2951	LTQ	Le Touquet	Letouquetparisplage	France
2952	LTS	Altus	Altus	United States
2953	LTT	La Mole	Sainttropez	France
2954	LTX	Cotopaxi International	Cotapaxi	Ecuador
2955	LTU	Latur	Latur	India
2956	LUB	Lumid Pau	Lumidpau	Guyana
2957	LUC	Laucala Island	Laucalais	Fiji Islands
2958	LUE	Lucenec	Lucenec	Slovakia
2959	LUI	La Union	Launion	Honduras
2960	LUJ	Lusikisiki	Lusikisiki	South Africa
2961	LUL	Hesler Noble Field	Laurel	United States
2962	LUS	Lusanga	Lusanga	Democratic Republic of the Congo
2963	LUU	Laura	Laura	Australia
2964	LUY	Lushoto	Lushoto	Tanzania
2965	LVB	Dos Galpoes	Livramento	Brazil
2966	LVD	Lime Village	Limevillage	United States
2967	LWA	Lwbak	Lwbak	Philippines
2968	LWH	Lawn Hill	Lawn Hill	Australia
2969	LWI	Lowai	Lowai	Papua New Guinea
2970	LWL	Harriet Field	Wells	United States
2971	LWV	Lawrenceville	Lawrenceville	United States
2972	LXI	Linxi	Linxi	China
2973	LXN	Lexington	Lexington	United States
2974	LXU	Lukulu	Lukulu	Zambia
2975	LXV	Leadville	Leadville	United States
2976	LYK	Lunyuk	Lunyuk	Indonesia
2977	LYO	Rice County Municipal	Lyons	United States
2978	LZA	Luiza	Luiza	Democratic Republic of the Congo
2979	LZD	dong	Lanzhou	China
2980	LZI	Luozi	Luozi	Democratic Republic of the Congo
2981	LZM	Luzamba	Luzamba	Angola
2982	MAI	Mangochi	Mangochi	Malawi
2983	MAL	Mangole	Mangole	Indonesia
2984	LUD	Luderitz	Luderitz	Namibia
2985	LUH	Ludhiana	Ludhiana	India
2986	LUM	Mangshi	Luxi	China
2987	LUN	Lusaka	Lusaka	Zambia
2988	LUO	Luena	Luena	Angola
2989	LUP	Kalaupapa	Kalaupapa	United States
2990	LUR	Cape Lisburne	Capelisburne	United States
2991	LUV	Langgur	Langgur	Indonesia
2992	LUW	Luwuk	Luwuk	Indonesia
2993	LUX	Findel	Luxembourg	Luxembourg
2994	LUZ	Lushan	Lushan	China
2995	LVI	Livingstone	Livingstone	Zambia
2996	LVK	Livermore	Livermore	United States
2997	LVM	Mission Field	Livingston	United States
2998	LVO	Laverton	Laverton	Australia
2999	LVS	Las Vegas	Las Vegas	United States
3000	LWB	Greenbrier Valley	Lewisburg	United States
3001	LWC	Lawrence	Lawrence	United States
3002	LWM	Lawrence	Lawrence	United States
3003	LWN	Gyoumri	Gyumri	Armenia
3004	LWO	Snilow	Lviv	Ukraine
3005	LWR	Leeuwarden	Leeuwarden	Netherlands
3006	LWS	Nez Perce County Rgnl	Lewiston	United States
3007	LWT	Lewistown	Lewistown	United States
3008	LWY	Lawas	Lawas	Malaysia
3009	LXG	Luang Namtha	Luang Namtha	Laos
3010	LXR	Luxor	Luxor	Egypt
3011	LXS	Limnos	Limnos	Greece
3012	LYA	Luoyang	Luoyang	China
3013	LYC	Lycksele	Lycksele	Sweden
3014	LYE	RAF Station	Lyneham	United Kingdom
3015	LYG	Lianyungang	Lianyungang	China
3016	LYH	Preston Glenn Field	Lynchburg	United States
3017	LYI	Linyi	Linyi	China
3018	LYP	Faisalabad	Faisalabad	Pakistan
3019	LYR	Svalbard	Longyearbyen	Norway
3020	LYS	St Exupéry	Lyon	France
3021	LYU	Ely	Ely	United States
3022	LZC	Lazaro Cardenas	Lazarocardenas	Mexico
3023	LZH	Liuzhou	Liuzhou	China
3024	LZN	Matsu Islands	Nangan	China
3025	LZO	Luzhou	Luzhou	China
3026	LZY	Nyingchi	Nyingchi	China
3027	MAA	Chennai	Chennai	India
3028	MAB	Maraba	Maraba	Brazil
3029	LWE	Lewoleba	Lewoleba	Indonesia
3030	MAG	Madang	Madang	Papua New Guinea
3031	MAH	Mahon	Menorca	Spain
3032	MAJ	Amata Kabua Intl	Majuro	Marshall Islands
3033	MAK	Malakal	Malakal	Sudan
3034	MAM	Matamoros	Matamoros	Mexico
3035	MAO	Eduardo Gomes Intl	Manaus	Brazil
3036	MAD	Barajas	Madrid	Spain
3037	LYT	Lady Elliot Island	Lady Elliot Island	Australia
3038	MAW	Malden	Malden	United States
3039	MBB	Marble Bar	Marble Bar	Australia
3040	MBC	Mbigou	Mbigou	Gabon
3041	MBF	Mount Buffalo	Mount Buffalo	Australia
3042	MBG	Mobridge	Mobridge	Venezuela
3043	MBI	Mbeya	Mbeya	Tanzania
3044	MBK	Matupa	Matupa	Brazil
3045	MBM	Mkambati	Mkambati	South Africa
3046	MBN	Mt Barnett	Mt. Barnett	Australia
3047	MBP	Moyobamba	Moyobamba	Peru
3048	MBQ	Mbarara	Mbarara	Uganda
3049	MBR	Mbout	Mbout	Mauritania
3050	MBV	Masa	Masa	Papua New Guinea
3051	MBY	Moberly	Moberly	United States
3052	MCA	Macenta	Macenta	Guinea
3053	MCB	Pike County	Mccomb	United States
3054	MCM	Monaco Airport	Montecarlo	Monaco
3055	MCQ	Miskolc	Miskolc	Hungary
3056	MCR	Melchor De Menco	Melchordemenco	Guatemala
3057	MDB	Melinda	Melinda	Belize
3058	MDD	Midland	Midland	United States
3059	MDF	Medford	Medford	United States
3060	MDH	Southern Illinois	Carbondale	United States
3061	MDJ	City County Airport	Madras	United States
3062	MDM	Munduku	Munduku	Papua New Guinea
3063	MDO	Intermediate	Middletonisland	United States
3064	MDP	Mindiptana	Mindiptana	Indonesia
3065	MDR	Medfra	Medfra	United States
3066	MDV	Medouneu	Medouneu	Gabon
3067	MDX	Mercedes	Mercedes	Argentina
3068	MEF	Melfi	Melfi	Chad
3069	MEJ	Meadville	Meadville	United States
3070	MAS	Momote	Manusisland	Papua New Guinea
3071	MAT	Matadi	Matadi	Democratic Republic of the Congo
3072	MAU	Maupiti	Maupiti	French Polynesia
3073	MAX	Matam	Matam	Senegal
3074	MAZ	Eugenio M De Hostos	Mayaguez	Puerto Rico
3075	MBA	Moi International	Mombasa	Kenya
3076	MBE	Monbetsu	Monbetsu	Japan
3077	MBH	Maryborough	Maryborough	Australia
3078	MBJ	Sangster International	Montegobay	Jamaica
3079	MBL	Blacker	Manistee	United States
3080	MBO	Mamburao	Mamburao	Philippines
3081	MBS	MBS International	Saginaw	United States
3082	MBT	Masbate	Masbate	Philippines
3083	MBW	Moorabbin	Moorabbin	Australia
3084	MBX	Maribor	Maribor	Slovenia
3085	MBZ	Maues	Maues	Brazil
3086	MCG	Mcgrath	Mcgrath	United States
3087	MCH	Machala	Machala	Ecuador
3088	MCI	Kansas City	Kansas	United States
3089	MCJ	Maicao	Maicao	Colombia
3090	MCK	Mccook	Mccook	United States
3091	MCN	Lewis B Wilson	Macon	United States
3092	MCO	Orlando	Orlando	United States
3093	MCP	Macapa	Macapa	Brazil
3094	MCT	Seeb	Muscat	Oman
3095	MCU	Gueret Lepaud	Montlucon	France
3096	MCV	Mcarthur River	Mcarthurriver	Australia
3097	MCW	Mason City	Mason	United States
3098	MCX	Makhachkala	Makhachkala	Russia
3099	MCY	Maroochydore	Sunshinecoast	Australia
3100	MDC	Samratulangi	Manado	Indonesia
3101	MDE	Jose Maria Cordova	Medellin	Colombia
3102	MDG	Mudanjiang	Mudanjiang	China
3103	MDI	Makurdi	Makurdi	Nigeria
3104	MDL	Mandalay	Mandalay	Myanmar
3105	MDQ	Mar Del Plata	Mar Del Plata	Argentina
3106	MDS	Middle Caicos	Middlecaicos	Turks and Caicos Islands
3107	MDU	Mendi	Mendi	Papua New Guinea
3108	MDW	Midway	Chicago	United States
3109	MDY	Sand Island Field	Midway Island	United States Minor Outlying Islands
3110	MDZ	El Plumerillo	Mendoza	Argentina
3111	MEA	Macae	Macae	Brazil
3112	MEC	Manta	Manta	Ecuador
3113	MED	Mohammad Bin Abdulaziz	Madinah	Saudi Arabia
3114	MEE	Mare	Mare	New Caledonia
3115	MEG	Malange	Malanje	Angola
3116	MEH	Mehamn	Mehamn	Norway
3117	MAV	Maloelap	Maloelapisland	Marshall Islands
3118	MCD	Mackinac Island	Mackinacisland	United States
3119	MEP	Mersing	Mersing	Malaysia
3120	MEQ	Seunagan	Meulaboh	Indonesia
3121	MET	Moreton	Moreton	Australia
3122	MEV	Douglas County	Minden	United States
3123	MEW	Mweka	Mweka	Democratic Republic of the Congo
3124	MEZ	Messina	Messina	South Africa
3125	MFB	Monfort	Monfort	Colombia
3126	MFC	Mafeteng	Mafeteng	Lesotho
3127	MFF	Moanda	Moanda	Gabon
3128	MFH	Mesquite	Mesquite	United States
3129	MFL	Mount Full Stop	Mount Full Stop	Australia
3130	MFO	Manguna	Manguna	Egypt
3131	MFP	Manners Creek	Manners Creek	Australia
3132	MFS	Miraflores	Miraflores	Colombia
3133	MFT	Machu Picchu	Machupicchu	Peru
3134	MFV	Accomack County	Melfa	United States
3135	MFW	Magaruque	Magaruque	Mozambique
3136	MFY	Mayfa'ah	Mayfa'ah	Yemen
3137	MFZ	Mesalia	Meselia	Papua New Guinea
3138	MGD	Magdalena	Magdalena	Bolivia
3139	MGG	Margarima	Margarima	Papua New Guinea
3140	MGK	Mong Ton	Mong Ton	Myanmar
3141	MGO	Manega	Manega	Gabon
3142	MGP	Manga	Manga	Papua New Guinea
3143	MGV	Margaret River	Margaret River Station	Australia
3144	MGX	Moabi	Moabi	Gabon
3145	MHB	Mechanics Bay	Aucland	New Zealand
3146	MHE	Mitchell	Mitchell	United States
3147	MHF	Morichal	Morichal	Colombia
3148	MHI	Musha	Musha	Djibouti
3149	MHJ	Misrak Gashamo	Misrakgashamo	Ethiopia
3150	MHL	Memorial Municipal	Marshall Memorial	United States
3151	MHM	Intermediate	Minchumina	United States
3152	MHO	Mount House	Mount House	Australia
3153	MHW	Monteagudo	Monteagudo	Bolivia
3154	MHY	Morehead	Morehead	Papua New Guinea
3155	MIC	Crystal	Minneapolis	United States
3156	MIF	Roy Hurd Memorial	Monahans	United States
3157	MIH	Mitchell Plateau	Mitchell Plateau	Australia
3158	MEL	Tullamarine	Melbourne	Australia
3159	MEM	Memphis	Memphis	United States
3160	MEN	Brenoux	Mende	France
3161	MES	Polonia	Medan	Indonesia
3162	MEU	Monte Dourado	Monte Dourado	Brazil
3163	MEX	Benito Juarez	Mexico	Mexico
3164	MEY	Meghauli	Meghauli	Nepal
3165	MFA	Mafia Island	Mafia	Tanzania
3166	MFE	Mc Allen Miller International	Mcallen	United States
3167	MFG	Muzaffarabad	Muzaffarabad	Pakistan
3168	MFI	Marshfield	Marshfield	United States
3169	MFJ	Moala	Moala	Fiji Islands
3170	MFK	Matsu	Matsu	Taiwan
3171	MFN	Milford Sound	Milfordsound	New Zealand
3172	MFQ	Maradi	Maradi	Niger
3173	MFU	Mfuwe	Mfuwe	Zambia
3174	MFX	Meribel	Meribel	France
3175	MGA	Augusto C Sandino	Managua	Nicaragua
3176	MGB	Mount Gambier	Mount Gambier	Australia
3177	MGC	Michigan City	Michigan	United States
3178	MGF	Regional De Maringa SBMG	Maringa	Brazil
3179	MGH	Margate	Margate	South Africa
3180	MGL	Moenchen gl. Dus Exp	Duesseldorf	Germany
3181	MGM	Dannelly Fld	Montgomery	United States
3182	MGN	Baracoa	Magangue	Colombia
3183	MGQ	Mogadishu	Mogadishu	Somalia
3184	MGS	Mangaia	Mangaiaisland	Cook Islands
3185	MGW	Morgantown	Morgantown	United States
3186	MGY	Wright Brothers Airport	Dayton	United States
3187	MGZ	Myeik	Myeik	Myanmar
3188	MHA	Mahdia	Mahdia	Guyana
3189	MHD	Mashad	Mashhad	Iran
3190	MHH	Marsh Harbour	Marshharbour	The Bahamas
3191	MHK	Manhattan	Manhattan	United States
3192	MHP	Minsk	Minsk	Belarus
3193	MHQ	Mariehamn	Mariehamn	Finland
3194	MHU	Mount Hotham	Mount Hotham	Australia
3195	MHV	Kern County	Mojave	United States
3196	MHX	Manihiki Island	Manihikiisland	Cook Islands
3197	MHZ	Mildenhall	Mildenhall	United Kingdom
3198	MID	Rejon	Merida	Mexico
3199	MIE	Delaware County	Muncie	United States
3200	MIG	Mian Yang	Mianyang	China
3201	MIL	Milan	Milan	Italy
3202	MIN	Minnipa	Minnipa	Australia
3203	MIO	Miami	Miami	United States
3533	MXM	Morombe	Morombe	Madagascar
3204	MIQ	Simón Bolívar International	Omaxa	United States
3205	MIW	Marshalltown	Marshalltown	United States
3206	MIX	Miriti	Miriti	Colombia
3207	MIZ	Mainoru	Mainoru	Australia
3208	MJG	Mayajigua	Mayajigua	Cuba
3209	MJH	Majma	Majma	Saudi Arabia
3210	MJJ	Moki	Moki	Papua New Guinea
3211	MJO	Mount Etjo Lodge	Mountetjolodge	Namibia
3212	MJP	Manjimup	Manjimup	Australia
3213	MJQ	Jackson	Jackson	United States
3214	MJR	Miramar	Miramar	Argentina
3215	MJW	Mahenye	Mahenye	Zimbabwe
3216	MJY	Mangunjaya	Mangunjaya	Indonesia
3217	MKA	Marianske Lazne	Marianskelazne	Czech Republic
3218	MKB	Mekambo	Mekambo	Gabon
3219	MKD	Chagni	Chagni	Ethiopia
3220	MKH	Mokhotlong	Mokhotlong	Lesotho
3221	MKI	M'boki	Mboki	Central African Republic
3222	MKJ	Makoua	Makoua	Congo
3223	MKN	Malekolon	Malekolon	Papua New Guinea
3224	MKO	Davis Field	Muskogee	United States
3225	MKT	Mankato	Mankato	United States
3226	MKV	Mt Cavenagh	Mt. Cavenagh	Australia
3227	MKX	Mukalla	Mukalla	Yemen
3228	MLD	Malad City	Malad City	United States
3229	MLF	Milford	Milford	United States
3230	MLH	EuroAirport	Baselmulhouse	France
3231	MLJ	Baldwin County	Milledgeville	United States
3232	MLP	Malabang	Malabang	Philippines
3233	MLQ	Malalaua	Malalaua	Papua New Guinea
3234	MLR	Millicent	Millicent	Australia
3235	MLT	Millinocket	Millinocket	United States
3236	MLV	Merluna	Merluna	Australia
3237	MLZ	Melo	Melo	Uruguay
3238	MMA	Malmo	Malmo	Sweden
3239	MMC	Ciudad Mante	Ciudad Acuna	Mexico
3240	MMF	Mamfe	Mamfe	Cameroon
3241	MIK	Mikkeli	Mikkeli	Finland
3242	MIM	Merimbula	Merimbula	Australia
3243	MIP	Mitspeh Ramon	Mitspehramon	Israel
3244	MIR	Habib Bourguiba	Monastir	Tunisia
3245	MIU	Maiduguri	Maiduguri	Nigeria
3246	MIV	Millville	Millville	United States
3247	MJA	Manja	Manja	Madagascar
3248	MJC	Man	Man	Cote D'Ivoire (Ivory Coast)
3249	MJF	Kjaerstad	Mosjoen	Norway
3250	MJI	Mitiga	Mitiga	Libya
3251	MJK	Shark Bay	Monkeymia	Australia
3252	MJL	Mouila	Mouila	Gabon
3253	MJN	Amborovy	Majunga	Madagascar
3254	MJT	Mytilene	Mytilini	Greece
3255	MJV	San Javier	Murcia	Spain
3256	MJZ	Mirnyj	Mirny	Russia
3257	MKC	Downtown	Kansas	United States
3258	MKG	Muskegon	Muskegon	United States
3259	MKK	Molokai	Hoolehua	United States
3260	MKL	Mc Kellar Sipes Regional	Jackson	United States
3261	MKM	Mukah	Mukah	Malaysia
3262	MKP	Makemo	Makemo	French Polynesia
3263	MKQ	Mopah	Merauke	Indonesia
3264	MKS	Mekane Selam	Mekaneselam	Ethiopia
3265	MKU	Makokou	Makokou	Gabon
3266	MKW	Rendani	Manokwari	Indonesia
3267	MKY	Mackay	Mackay	Australia
3268	MLA	Malta	Malta	Malta
3269	MLB	Melbourne	Melbourne	United States
3270	MLC	Mc Alester	Mcalester	United States
3271	MLE	Male	Male	Maldives
3272	MLI	Quad City	Moline	United States
3273	MLL	Marshall	Marshall	United States
3274	MLM	Francisco J. Múgica Internacional	Morelia	Mexico
3275	MLN	Melilla	Melilla	Spain
3276	MLO	Milos	Milos	Greece
3277	MLU	Monroe	Monroe	United States
3278	MLW	Sprigg Payne	Monrovia	Liberia
3279	MLX	Malatya	Malatya	Turkey
3280	MMB	Memanbetsu	Memanbetsu	Japan
3281	MMD	Maridor	Minamidaito	Japan
3282	MME	Durham Tees Valley	Teesside	United Kingdom
3283	MJU	Mamuju	Mamuju	Indonesia
3284	MJB	Mejit Island	Mejitisland	Marshall Islands
3285	MJE	Majkin	Majkin	Marshall Islands
3286	MML	Municipal Ryan Field	Marshall	United States
3287	MMM	Middlemount	Middlemount	Australia
3288	MMN	Minute Man Airfield	Stow	United States
3289	MMP	Mompos	Mompos	Colombia
3290	MMQ	Mbala	Mbala	Zambia
3291	MMS	Selfs	Marks	United States
3292	MMW	Moma	Moma	Mozambique
3293	MNA	Melangguane	Melangguane	Indonesia
3294	MND	Medina	Medina	Colombia
3295	MNE	Mungeranie	Mungeranie	Australia
3296	MNH	Minneriya	Minneriya	Sri Lanka
3297	MNN	Marion	Marion	United States
3298	MNO	Manono	Manono	Democratic Republic of the Congo
3299	MNQ	Monto	Monto	Australia
3300	MNS	Mansa	Mansa	Zambia
3301	MNV	Mountain Valley	Mountain Valley	Australia
3302	MNW	Macdonald Downs	Macdonald Downs	Australia
3303	MOH	Mohanbari	Mohanbari	India
3304	MOK	Mankono	Mankono	Cote D'Ivoire (Ivory Coast)
3305	MOM	Moudjeria	Moudjeria	Mauritania
3306	MOP	Mount Pleasant	Mount Pleasant	United States
3307	MOR	Moore Murrell	Morristown	United States
3308	MOW	Moscow	Moscow	Russia
3309	MOX	Morris	Morris	United States
3310	MOY	Monterrey	Monterrey	Colombia
3311	MPC	Muko Muko	Muko-Muko	Indonesia
3312	MPD	Mirpur Khas	Mirpurkhas	Pakistan
3313	MPE	Griswold	Madison	United States
3314	MPF	Mapoda	Mapoda	Papua New Guinea
3315	MPG	Makini	Makini	Papua New Guinea
3316	MPI	Mamitupo	Mamitupo	Panama
3317	MPO	Mt Pocono	Mount Pocono	United States
3318	MPQ	Maan	Maan	Jordan
3319	MPR	Mcpherson	McPherson	United States
3320	MPS	Mount Pleasant	Mount Pleasant	United States
3321	MPT	Maliana	Maliana	Indonesia
3322	MPX	Miyanmin	Miyanmin	Papua New Guinea
3323	MQA	Mandora	Mandora	Australia
3324	MQD	Maquinchao	Maquinchao	Argentina
3325	MQE	Marqua	Marqua	Australia
3326	MMH	Mammoth Lakes	Mammothlakes	United States
3327	MMI	McMinn County	Athens	United States
3328	MMK	Murmashi Airport 	Murmansk	Russia
3329	MMO	Vila Do Maio	Maioisland	Cape Verde
3330	MMU	Morristown	Morristown	United States
3331	MMX	Malmo Sturup	Malmo	Sweden
3332	MMY	Hirara	Miyakojima	Japan
3333	MNB	Moanda	Moanda	Democratic Republic of the Congo
3334	MNC	Nacala	Nacala	Mozambique
3335	MNF	Mana Island	Manaisland	Fiji Islands
3336	MNI	Gerald's Airport	Montserrat	Montserrat
3337	MNJ	Mananjary	Mananjary	Madagascar
3338	MNK	Maiana	Maiana	Kiribati
3339	MNL	Ninoy Aquino Intl	Manila	Philippines
3340	MNR	Mongu	Mongu	Zambia
3341	MNU	Maulmyine	Maulmyine	Myanmar
3342	MNX	Manicore	Manicore	Brazil
3343	MNY	Mono	Mono	Solomon Islands
3344	MOA	Orestes Acosta	Moa	Cuba
3345	MOB	Mobile Regional Airport	Mobile	United States
3346	MOC	Montes Claros	Montes Claros	Brazil
3347	MOD	Modesto	Modesto	United States
3348	MOE	Momeik	Momeik	Myanmar
3349	MOG	Mong Hsat	Mong Hsat	Myanmar
3350	MOI	Mitiaro Island	Mitiaroisland	Cook Islands
3351	MOJ	Moengo	Moengo	Suriname
3352	MOL	Aro	Molde	Norway
3353	MON	Mount Cook	Mountcook	New Zealand
3354	MOQ	Morondava	Morondava	Madagascar
3355	MOT	Minot	Minot	United States
3356	MOV	Moranbah	Moranbah	Australia
3357	MOZ	Temae	Moorea	French Polynesia
3358	MPA	Mpacha	Mpacha	Namibia
3359	MPH	Malay	Caticlan	Philippines
3360	MPK	Mokpo	Mokpo	South Korea
3361	MPL	Méditerranée	Montpellier	France
3362	MPM	Maputo	Maputo	Mozambique
3363	MPV	Edward F Knapp State	Montpelier	United States
3364	MPW	Mariupol	Mariupol	Ukraine
3365	MPY	Maripasoula	Maripasoula	French Guiana
3366	MQC	Miquelon	Miquelon	Saint Pierre and Miquelon
3367	MQB	Macomb	Macomb	United States
3368	MNT	Minto	Minto	United States
3369	MOS	Intermediate	Moses Point	United States
3370	MPU	Mapua	Mapua	Papua New Guinea
3371	MQG	Midgard	Midgard	Namibia
3372	MQI	Quincy	Quincy	United States
3373	MQK	San Matias	San Matias	Bolivia
3374	MQO	Malam	Malam	Papua New Guinea
3375	MQR	Mosquera	Mosquera	Colombia
3376	MQV	Mostaganem	Mostaganem	Algeria
3377	MQW	Telfair-Wheeler	Telfair-Wheeler	United States
3378	MQZ	Margaret River	Margaret River	Australia
3379	MRC	Maury County	Columbia	United States
3380	MRG	Mareeba	Mareeba	Australia
3381	MRH	May River	May River	Papua New Guinea
3382	MRJ	Marcala	Marcala	Honduras
3383	MRL	Miners Lake	Miners Lake	Australia
3384	MRM	Manare	Manare	Papua New Guinea
3385	MRP	Marla	Marla	Australia
3386	MRT	Moroak	Mordak	Australia
3387	MSD	Mt Pleasant	Mountpleasant	United States
3388	MSF	Mount Swan	Mount Swan	Australia
3389	MSG	Matsaile	Matsaile	Lesotho
3390	MSI	Masalembo	Masalembo	Indonesia
3391	MSK	Mastic Point	Mastic Point	The Bahamas
3392	MSM	Masi Manimba	Masi Manimba	Democratic Republic of the Congo
3393	MSV	Sullivan County Intl	Monticello	United States
3394	MSX	Mossendjo	Mossendjo	Congo
3395	MTA	Matamata	Matamata	New Zealand
3396	MTB	Monte Libano	Montelibano	Colombia
3397	MTD	Mt Sandford	Mount Sanford	Australia
3398	MTE	Monte Alegre	Monte Alegre	Brazil
3399	MTG	Mato Grosso	Mato Grosso	Brazil
3400	MTI	Mosteiros	Mosteiros	Cape Verde
3401	MTO	Colescountymem Airport	Mattoon	United States
3402	MTP	Skyportal Airport	Montauk	United States
3403	MTQ	Mitchell	Mitchell	Australia
3404	MTU	Montepuez	Montepuez	Mozambique
3405	MTW	Manitowoc	Manitowoc	United States
3406	MQJ	Merkez	Balikesir	Turkey
3407	MQL	Mildura	Mildura	Australia
3408	MQM	Mardin	Mardin	Turkey
3409	MQN	Mo I Rana	Moirana	Norway
3410	MQQ	Moundou	Moundou	Chad
3411	MQS	Mustique	Mustique	Saint Vincent and the Grenadines
3412	MQT	Sawyer International	Marquette	United States
3413	MQU	Mariquita	Mariquita	Colombia
3414	MQX	Makale	Makale	Ethiopia
3415	MRB	Eastern Wv Regional Airport	Martinsburg	United States
3416	MRD	A Carnevalli	Merida	Venezuela
3417	MRE	Mara Lodges	Maralodges	Kenya
3418	MRK	Marco Island	Marcoisland	United States
3419	MRN	Lenoir	Morgaton	United States
3420	MRO	Masterton	Masterton	New Zealand
3421	MRQ	Marinduque	Marinduque	Philippines
3422	MRR	Macara	Macara	Ecuador
3423	MRU	Sir Seewoosagur Ramgoolam Int	Mauritius	Mauritius
3424	MRV	Mineralnye Vody	Mineralnyevody	Russia
3425	MRW	Maribo	Maribo	Denmark
3426	MRX	Mahshahr	Mahshahr	Iran
3427	MRY	Peninsula	Monterey	United States
3428	MSA	Muskrat Dam	Muskrat Dam	Canada
3429	MSC	Falcon Field	Mesa	United States
3430	MSE	Kent International	Manston	United Kingdom
3431	MSH	Masirah	Masirah	Oman
3432	MSJ	Misawa	Misawa	Japan
3433	MSN	Dane County Regional	Madison	United States
3434	MSO	Missoula	Missoula	United States
3435	MSP	St. Paul Intl	Minneapolis	United States
3436	MSR	Mus	Mus	Turkey
3437	MSS	Richards Field	Massena	United States
3438	MST	Maastricht	Maastricht	Netherlands
3439	MSU	Moshoeshoe Intl	Maseru	Lesotho
3440	MSW	Massawa	Massawa	Eritrea
3441	MSZ	Namibe	Namibe	Angola
3442	MTC	Selfridge ANGB	Mt Clemens	United States
3443	MTF	Mizan Teferi	Mizanteferi	Ethiopia
3444	MTH	Flight Strip	Marathon	United States
3445	MTJ	Regional Airport	Montrose	United States
3446	MTL	Maitland	Maitland	Australia
3447	MTM	Spb Airport	Metlakatla	United States
3448	MTN	Glenn L Martin	Baltimore	United States
3449	MTR	S. Jeronimo	Monteria	Colombia
3450	MTT	Minatitlan	Minatitlan	Mexico
3451	MTV	Mota Lava	Motalava	Vanuatu
3452	MRA	Misurata	Misurata	Libya
3453	MTX	Metro Field	Fairbanks	United States
3454	MUF	Muting	Muting	Indonesia
3455	MUG	Mulege	Mulege	Mexico
3456	MUJ	Mui	Mui	Ethiopia
3457	MUL	Spence	Moultrie	United States
3458	MUM	Mumias	Mumias	Kenya
3459	MUP	Mulga Park	Mulga Park	Australia
3460	MUT	Muscatine	Muscatine	United States
3461	MUY	Mouyondzi	Mouyondzi	Congo
3462	MVE	Chippewa	Montevideo	United States
3463	MVG	Mevang	Mevang	Gabon
3464	MVH	Macksville	Macksville	Australia
3465	MVI	Manetai	Manetai	Papua New Guinea
3466	MVJ	Marlboro	Mandeville	Jamaica
3467	MVK	Mulka	Mulka	Australia
3468	MVM	Monument Valley	Kayenta	United States
3469	MVN	Mt Vernon Outland	Mountvernon	United States
3470	MVO	Mongo	Mongo	Chad
3471	MVU	Musgrave	Musgrave	Australia
3472	MVW	Skagit Regional	Mount Vernon	United States
3473	MVX	Minvoul	Minvoul	Gabon
3474	MWE	Merowe	Merowe	Sudan
3475	MWG	Marawaka	Marawaka	Papua New Guinea
3476	MWI	Maramuni	Maramuni	Papua New Guinea
3477	MWJ	Matthews Ridge	Matthewsridge	Guyana
3478	MWM	Windom Municipal	Windom Municipal	United States
3479	MWN	Mwadui	Mwadui	Tanzania
3480	MWO	Hook Field	Middletown	United States
3481	MWP	Mountain	Mountain	Nepal
3482	MWT	Moolawatana	Moolawatana	Australia
3483	MWU	Mussau	Mussau	Papua New Guinea
3484	MWV	Mundulkiri	Mundulkiri	Cambodia
3485	MWW	Mouscron	Mouscron	Belgium
3486	MWY	Miranda Downs	Miranda Downs	Australia
3487	MXA	Manila Municipal	Manila Municipal	United States
3488	MXC	San Juan County	Monticello	United States
3489	MXD	Marion Downs	Marion Downs	Australia
3490	MXE	Maxton	Maxton	United States
3491	MXG	Marlborough	Marlborough	United States
3492	MXI	Imelda Romualdez Marcos	Mati	Philippines
3493	MXK	Mindik	Mindik	Papua New Guinea
3494	MXO	Monticello	Monticello	United States
3495	MXP	Malpensa	Milan	Italy
3496	MXQ	Mitchell River	Mitchell River	Australia
3497	MXR	Mirgorod	Mirgorod	Ukraine
3498	MXU	Mullewa	Mullewa	Australia
3499	MXW	Mandalgobi	Mandalgobi	Mongolia
3500	MTZ	Masada	Masada	Israel
3501	MUA	Munda	Munda	Solomon Islands
3502	MUB	Maun	Maun	Botswana
3503	MUD	Mueda	Kabalega Falls	Mozambique
3504	MUE	Kamuela	Kamuela	United States
3505	MUH	Mersa Matruh	Mersamatruh	Egypt
3506	MUK	Mauke Island	Maukeisland	Cook Islands
3507	MUN	Quiriquire	Maturin	Venezuela
3508	MUR	Marudi	Marudi	Malaysia
3509	MUX	Multan	Multan	Pakistan
3510	MUZ	Musoma	Musoma	Tanzania
3511	MVA	Reykiahlid	Myvatn	Iceland
3512	MVD	Carrasco International	Montevideo	Uruguay
3513	MVF	Dixsept Rosado	Mossoro	Brazil
3514	MVL	Morrisville Stowe	Stowe	United States
3515	MVP	Mitu	Mitu	Colombia
3516	MVQ	Mogilev	Mogilev	Belarus
3517	MVR	Salam	Maroua	Cameroon
3518	MVT	Mataiva	Mataiva	French Polynesia
3519	MVV	Megeve	Megeve	France
3520	MVY	Martha's Vineyard	Marthasvineyard	United States
3521	MVZ	Masvingo	Masvingo	Zimbabwe
3522	MWC	Lawrence J Timmerman	Milwaukee	United States
3523	MWD	Mianwali	Mianwali	Pakistan
3524	MWF	Maewo	Maewo	Vanuatu
3525	MWH	Grant County	Moseslake	United States
3526	MWK	Matak	Matak	Indonesia
3527	MWQ	Magwe	Magwe	Myanmar
3528	MWX	Muan	Muan	South Korea
3529	MWZ	Mwanza	Mwanza	Tanzania
3530	MXB	Masamba	Masamba	Indonesia
3531	MXH	Moro	Moro	Papua New Guinea
3532	MXL	Mexicali	Mexicali	Mexico
3534	MXN	Morlaix	Morlaix	France
3535	MXS	Maota Savaii Is	Maotasavaiiis	San Marino
3536	MXV	Moron	Moron	Mongolia
3537	MXX	Mora	Mora	Sweden
3538	MWB	Morawa	Morawa	Australia
3539	MUQ	Muccan	Muccan	Australia
3540	MYH	Marble Canyon	Marblecanyon	United States
3541	MYK	May Creek	Maycreek	United States
3542	MYM	Monkey Mountain	Monkeymountain	Guyana
3543	MYN	Mareb	Marib	Yemen
3544	MYO	Myroodah	Myroodah	Australia
3545	MYS	Moyale	Moyale	Ethiopia
3546	MYX	Menyamya	Menyamya	Papua New Guinea
3547	MYZ	Monkey Bay	Monkeybay	Malawi
3548	MZA	Muzaffarnagar	Muzaffarnagar	India
3549	MZC	Mitzic	Mitzic	Gabon
3550	MZD	Mendez	Mendez	Ecuador
3551	MZE	Manatee	Manatee	Belize
3552	MZF	Wild Coast Sun	Mzambawildcoastsun	South Africa
3553	MZN	Minj	Minj	Papua New Guinea
3554	MZS	Mostyn	Mostyn	Malaysia
3555	MZX	Mena	Mena	Ethiopia
3556	MZY	Mossel Bay	Mossel Bay	South Africa
3557	MZZ	Marion	Marion	United States
3558	NAC	Naracoorte	Naracoorte	Australia
3559	NAD	Macanal	Macanal	Colombia
3560	NAE	Natitingou	Natitingou	Benin
3561	NAF	Banaina	Banaina	Indonesia
3562	NAM	Namlea	Namlea	Indonesia
3563	NAR	Nare	Nare	Colombia
3564	NAU	Napuka Island	Napukaisland	French Polynesia
3565	NBA	Nambaiyufa	Nambaiyufa	Papua New Guinea
3566	NBB	Barrancominas	Barrancominas	Colombia
3567	NBH	Nambucca Heads	Nambucca Heads	Australia
3568	NBL	San Blas	San Blas	Panama
3569	NBR	Nambour	Nambour	Australia
3570	NBV	Cana Brava	Cana Brava	Brazil
3571	NCH	Nachingwea	Nachingwea	Tanzania
3572	NCI	Necocli	Necocli	Colombia
3573	NCP	Cubiptn Airport	Luzonisncp	Philippines
3574	MXZ	Meixian	Meixian	China
3575	MYA	Moruya	Moruya	Australia
3576	MYB	Mayoumba	Mayoumba	Gabon
3577	MYD	Malindi	Malindi	Kenya
3578	MYE	Miyake Jima	Miyakejima	Japan
3579	MYG	Mayaguana	Mayaguana	The Bahamas
3580	MYI	Murray Island	Murray Island	Australia
3581	MYJ	Matsuyama	Matsuyama	Japan
3582	MYP	Mary	Mary	Turkmenistan
3583	MYQ	Mysore	Mysore	India
3584	MYR	Myrtleafb Airport	Myrtlebeach	United States
3585	MYV	Yubacounty Airport	Marysville	United States
3586	MYW	Mtwara	Mtwara	Tanzania
3587	MYY	Miri	Miri	Malaysia
3588	MZB	Mocimboa Praia	Mocimboapraia	Mozambique
3589	MZG	Makung	Makung	Taiwan
3590	MZI	Mopti	Mopti	Mali
3591	MZJ	Marana	Marana	United States
3592	MZK	Marakei	Marakei	Kiribati
3593	MZM	Frescaty	Metz	France
3594	MZO	Sierra Maestra	Manzanillo	Cuba
3595	MZP	Motueka	Motueka	New Zealand
3596	MZQ	Mkuze	Mkuze	South Africa
3597	MZR	Mazar i sharif	Mazarisharif	Afghanistan
3598	MZU	Muzaffarpur	Muzaffarpur	India
3599	MZV	Sarawak	Mulu	Malaysia
3600	MZW	Mechria	Mechria	Algeria
3601	NAA	Narrabri	Narrabri	Australia
3602	NAH	Naha	Naha	Indonesia
3603	NAI	Annai	Annai	Guyana
3604	NAJ	Nakhichevan	Nakhichevan	Azerbaijan
3605	NAK	Nakhon Ratchasima	Nakhonratchasima	Thailand
3606	NAL	Nalchik	Nalchik	Russia
3607	NAN	Nadi	Nadi	Fiji Islands
3608	NAP	Capodichino	Naples	Italy
3609	NAQ	Qaanaaq	Qaanaaq	Greenland
3610	NAS	Nassau	Nassau	The Bahamas
3611	NAT	Augusto Severo	Natal	Brazil
3612	NAV	Nevsehir	Nevsehir	Turkey
3613	NAY	Nanyuan Airport	Beijing	China
3614	NBC	Naberevnye Chelny	Nizhnekamsk	Russia
3615	NBE	Enfidha-Hammamet International Airport	Enfidha	Tunisia
3616	NBX	Nabire	Nabire	Indonesia
3617	NCA	North Caicos	Northcaicos	Turks and Caicos Islands
3618	NCG	Nueva Casas Grandes	Nueva Casas Grandes	Mexico
3619	NCL	Newcastle	Newscastle	United Kingdom
3620	NCN	New Chenega	Newchenega	United States
3621	NCR	San Carlos	San Carlos	Nicaragua
3622	MYF	Montgomery Field	San Diego	United States
3623	MXY	Mccarthy	Mccarthy	United States
3624	NCT	Guanacaste	Nicoya	Costa Rica
3625	NDA	Bandanaira	Bandanaira	Indonesia
3626	NDD	Sumbe	Sumbe	Angola
3627	NDE	Mandera	Mandera	Kenya
3628	NDF	Ndalatandos	Ndalatandos	Angola
3629	NDI	Namudi	Namudi	Papua New Guinea
3630	NDL	Ndele	Ndele	Central African Republic
3631	NDM	Mendi	Mendi	Ethiopia
3632	NDN	Nadunumu	Nadunumu	Papua New Guinea
3633	NDO	La Palma Del Condado	La Palma Del Condado	Spain
3634	NDS	Sandstone	Sandstone	Australia
3635	NDZ	Cuxhaven	Nordholz Spieka	Germany
3636	NEF	Neftekamsk	Neftekamsk	Russia
3637	NEJ	Nejjo	Nejjo	Ethiopia
3638	NEK	Nekemt	Nekemt	Ethiopia
3639	NFR	Nafoora	Nafoora	Libya
3640	NGA	Young	Young	Australia
3641	NGC	North Rim	Grand Canyon	United States
3642	NGD	Anegada	Anegada	Virgin Islands (British)
3643	NGL	Ngala	Ngala	South Africa
3644	NGN	Nargana	Nargana	Panama
3757	NNR	Connemara	Connemara	Ireland
3645	NGR	Ningerum	Ningerum	Papua New Guinea
3646	NGV	Ngiva	Ngiva	Angola
3647	NGW	Cabaniss Field	Corpus Christi	United States
3648	NHF	New Halfa	Newhalfa	Sudan
3649	NHS	Nushki	Nushki	Pakistan
3650	NHX	Barin Olf Osn	Foley	United States
3651	NHZ	NAS	Brunswick	United States
3652	NIA	Nimba	Nimba	Liberia
3653	NIE	Niblack	Niblack	United States
3654	NIF	Nifty	Nifty	Australia
3655	NIK	Niokolo Koba	Niokolo Koba	Senegal
3656	NIN	Ninilchik	Ninilchik	United States
3657	NIS	Simberi Island	Simberi Island	Papua New Guinea
3658	NIX	Nioro	Nioro	Mali
3659	NKA	Nkan	Nkan	Gabon
3660	NKB	Noonkanbah	Noonkanbah	Australia
3661	NKD	Sinak	Sinak	Indonesia
3662	NKI	Naukiti	Naukiti	United States
3663	NKL	Nkolo	Nkolo	Democratic Republic of the Congo
3664	NKN	Nankina	Nankina	Papua New Guinea
3665	NKO	Ankokoambo	Ankokoambo	Madagascar
3666	NKS	Nkongsamba	Nkongsamba	Cameroon
3667	NKU	Nkaus	Nkaus	Lesotho
3668	NKV	Nichen Cove	Nichencove	United States
3669	NKY	Nkayi	Nkayi	Congo
3670	NLE	Jerry Tyler Memorial	Niles	United States
3671	NLL	Nullagine	Nullagine	Australia
3672	NLS	Nicholson	Nicholson	Australia
3673	NCU	Nukus	Nukus	Uzbekistan
3674	NCY	Annecy Meythe	Annecy	France
3675	NDB	Nouadhibou	Nouadhibou	Mauritania
3676	NDG	Qiqihar	Qiqihar	China
3677	NDJ	Ndjamena	Ndjamena	Chad
3678	NDR	Nador	Nador	Morocco
3679	NDU	Rundu	Rundu	Namibia
3680	NDY	Sanday	Sanday	United Kingdom
3681	NEG	Negril	Negril	Jamaica
3682	NER	Neryungri	Neryungri	Russia
3683	NEU	Sam Neua	Sam Neua	Laos
3684	NEW	Lakefront	New Orlean	United States
3685	NFG	Nefteyugansk	Nefteyugansk	Russia
3686	NFO	Niuafo ou	Niuafo'ou	Tonga
3687	NGB	Ningbo	Ningbo	China
3688	NGE	Ngaoundere	Ngaoundere	Cameroon
3689	NGI	Ngau Island	Ngauisland	Fiji Islands
3690	NGS	Nagasaki	Nagasaki	Japan
3691	NGX	Manang	Manang	Nepal
3692	NHA	Nha Trang	Nhatrang	Vietnam
3693	NHT	Northolt	Northolt	United Kingdom
3694	NIB	Nikolai	Nikolai	United States
3695	NIG	Nikunau	Nikunau	Kiribati
3696	NIM	Niamey	Niamey	Niger
3697	NIO	Nioki	Nioki	Democratic Republic of the Congo
3698	NIT	Niort	Niort	France
3699	NIU	Niau	Niau	French Polynesia
3700	NJF	Alashrafintl Airport	Alnajaf	Iraq
3701	NKC	Nouakchott	Nouakchott	Mauritania
3702	NKG	Lukou International Airport	Nanjing	China
3703	NKM	Komakiafb Airport	Nagoya	Japan
3704	NLA	Ndola	Ndola	Zambia
3705	NLF	Darnley Island	Darnley Island	Australia
3706	NLG	Nelson Lagoon	Nelsonlagoon	United States
3707	NLK	Norfolk Island	Norfolkisland	Norfolk Island
3708	NLO	N'Dolo	Kinshasa	Democratic Republic of the Congo
3709	NLT	Xinyuan	Xinyuan	China
3710	NIC	Nicosia	Nicosia	Cyprus
3711	NDK	Namdrik Island	Namdrikisland	Marshall Islands
3712	NLU	Santa Lucia	Mexico City	Mexico
3713	NMG	San Miguel	Sanmiguel	Panama
3714	NMN	Nomane	Nomane	Papua New Guinea
3715	NMP	New Moon	New Moon	Australia
3716	NMR	Nappa Merry	Nappamerry	Australia
3717	NMU	Namu	Namu	Marshall Islands
3718	NND	Nangade	Nangade	Mozambique
3719	NNI	Namutoni	Namutoni	Namibia
3720	NNK	Naknek	Naknek	United States
3721	NNU	Nanuque	Nanuque	Brazil
3722	NOE	Norddeich	Norddeich	Germany
3723	NOI	Novorossijsk	Novorossijsk	Russia
3724	NOK	Nova Xavantina	Nova Xavantina	Brazil
3725	NOL	Nakolik River	Nakolik River	United States
3726	NOM	Nomad River	Nomadriver	Papua New Guinea
3727	NOO	Naoro	Naoro	Papua New Guinea
3728	NPG	Nipa	Nipa	Papua New Guinea
3729	NPH	Nephi	Nephi	United States
3730	NPP	Napperby	Napperby	Australia
3731	NPT	Newport	Newport	United States
3732	NPU	San Pedro Uraba	San Pedro Uraba	Colombia
3733	NQL	Niquelandia	Niquelandia	Brazil
3734	NRE	Namrole	Namrole	Indonesia
3735	NRG	Narrogin	Narrogin	Australia
3736	NRI	Shangri la	Shangri-la	United States
3737	NRM	Nara	Nara	Mali
3738	NRY	Newry	Newry	Australia
3739	NSA	Noosa	Noosa	Australia
3740	NSM	Norseman	Norseman	Australia
3741	NSV	Noosaville	Noosaville	Australia
3742	NSZ	Nansha Ferry Port	Guangdong	China
3743	NTA	Natadola	Natadola	Fiji Islands
3744	NTJ	Manti Ephraim	Manti	United States
3745	NTM	Miracema Do Norte	Miracemadonorte	Brazil
3746	NTO	Santo Antao	Santoantaoisland	Cape Verde
3747	NLV	Nikolaev	Mykolaiv	Ukraine
3748	NMA	Namangan	Namangan	Uzbekistan
3749	NMB	Daman	Daman	India
3750	NMC	Norman's Cay	Norman's Cay	The Bahamas
3751	NME	Nightmute	Nightmute	United States
3752	NMS	Namsang	Namsang	Myanmar
3753	NNA	NAF	Kenitra	Morocco
3754	NNB	Santa Ana	Santaana	Solomon Islands
3755	NNL	Nondalton	Nondalton	United States
3756	NNM	Naryan Mar	Naryanmar	Russia
3758	NNT	Nan	Nan	Thailand
3759	NNX	Nunukan	Nunukan	Indonesia
3760	NOA	Nowra	Nowra	Australia
3761	NOB	Nosara Beach	Nosarabeach	Costa Rica
3762	NOC	Ireland West Airport	Knock	Ireland
3763	NOD	Norden	Norden	Germany
3764	NOJ	Nojabrxsk	Noyabrsk	Russia
3765	NON	Nonouti	Nonouti	Kiribati
3766	NOR	Nordfjordur	Nordfjordur	Iceland
3767	NOS	Fascene	Nossibe	Madagascar
3768	NOT	Novato	Novato	United States
3769	NOV	Huambo	Huambo	Angola
3770	NOZ	Novokuznetsk	Novokuznetsk	Russia
3771	NPE	Hawkes Bay	Napier	New Zealand
3772	NPL	New Plymouth	Newplymouth	New Zealand
3773	NQN	Neuquen	Neuquen	Argentina
3774	NQT	Nottingham	Nottingham	United Kingdom
3775	NQU	Nuqui	Nuqui	Colombia
3776	NRA	Narrandera	Narrandera	Australia
3777	NRD	Norderney	Norderney	Germany
3778	NRK	Kungsangen	Norrkoping	Sweden
3779	NRL	North Ronaldsay	North Ronaldsay	United Kingdom
3780	NSH	Now Shahr	Nowshahr	Iran
3781	NSK	Noril'sk	Norilsk	Russia
3782	NSN	Nelson	Nelson	New Zealand
3783	NSO	Scone	Scone	Australia
3784	NST	Nakhon Si Thammarat	Nakonsithammarat	Thailand
3785	NTB	Notodden	Notodden	Norway
3786	NTI	Bintuni	Bintuni	Indonesia
3787	NTL	Williamtown	Newcastle	Australia
3788	NTN	Normanton	Normanton	Australia
3789	NTQ	Noto Airport	Wajima	Japan
3790	NTT	Kuini Lavenia	Niuatoputapu	Tonga
3791	NTX	Natuna Ranai	Natuna Ranai	Indonesia
3792	NTY	Pilanesberg	Sun City	South Africa
3793	NNS	Naini–Saini Airport	Pithoragarh	India
3794	NTG	Nantong	Nantong	China
3795	NUA	Gregory's Lake	Gregory's Lake	Sri Lanka
3796	NUB	Numbulwar	Numbulwar	Australia
3797	NUD	En Nahud	Ennahud	Sudan
3798	NUG	Nuguria	Nuguria	Papua New Guinea
3799	NUH	Nunchia	Nunchia	Colombia
3800	NUJ	Nojeh	Nojeh	Iran
3801	NUK	Nukutavake	Nukutavake	French Polynesia
3802	NUT	Nutuve	Nutuve	Papua New Guinea
3803	NUU	Nakuru	Nakuru	Kenya
3804	NVD	Nevada	Nevada	United States
3805	NVG	Nueva Guinea	Nueva Guinea	Nicaragua
3806	NVR	Yerievo	Novgorod	Russia
3807	NVY	Neyveli	Neyveli	India
3808	NWH	Parlin Field	Newport	United States
3809	NWT	Nowata	Nowata	Papua New Guinea
3810	NWU	Naval Air Station Airport	Bermudaintl	Bermuda
3811	NYC	New York	New York City	United States
3812	NYN	Nyngan	Nyngan	Australia
3813	NZE	Nzerekore	Nzerekore	Guinea
3814	NZO	Nzoia	Nzoia	Kenya
3815	OAG	Orange Springhill	Orangespringhill	Australia
3816	OAN	Olanchito	Olanchito	Honduras
3817	OBA	Oban	Oban	Australia
3818	OBD	Obano	Obano	Indonesia
3819	OBI	Obidos	Obidos	Brazil
3820	OBM	Morobe	Morobe	Papua New Guinea
3821	OCE	Ocean City Municipal	Ocean City	United States
3822	OCH	A L Mangham Jr. Regional	Nacogdoches	United States
3823	OCI	Oceanic	Oceanic	United States
3824	ODA	Ouadda	Ouadda	Central African Republic
3825	ODD	Oodnadatta	Oodnadatta	Australia
3826	ODJ	Ouanda Djalle	Ouandadjalle	Central African Republic
3827	ODL	Cordillo Downs	Cordillo Downs	Australia
3828	ODM	Metropolitan Area	Oakland	United States
3829	ODR	Ord River	Ord River	Australia
3830	ODW	Oak Harbor	Oakharbor	United States
3831	OEA	Oneal	Vincennes	United States
3832	OEC	Ocussi	Ocussi	Indonesia
3833	OEL	Orel	Orel	Russia
3834	OEO	Osceola Municipal	Osceola Municipal	United States
3835	NUI	Nuiqsut	Nuiqsut	United States
3836	NUL	Nulato	Nulato	United States
3837	NUS	Norsup	Norsup	Vanuatu
3838	NUW	NAS Ault Field	Whidbey Island	United States
3839	NUX	Novy Urengoy	Novyurengoy	Russia
3840	NVA	La Marguita	Neiva	Colombia
3841	NVI	Navoi	Navoi	Uzbekistan
3842	NVP	Novo Aripuana	Novo Aripuana	Brazil
3843	NVS	Nevers	Nevers	France
3844	NVT	Navegantes	Navegantes	Brazil
3845	NWA	Moheli	Moheli	Comoros
3846	NYA	Nyagan	Nyagan	Russia
3847	NYE	Nyeri	Nyeri	Kenya
3848	NYI	Sunyani	Sunyani	Ghana
3849	NYK	Nanyuki	Nanyuki	Kenya
3850	NYM	Nadym	Nadym	Russia
3851	NYU	Nyaung u	Nyaung-u	Myanmar
3852	NZA	Nzagi	Nzagi	Angola
3853	NZH	Manzhouli	Manzhouli	China
3854	OAJ	Albert J Ellis	Jacksonville	United States
3855	OAK	Oakland	Oakland	United States
3856	OAM	Oamaru	Oamaru	New Zealand
3857	OAX	Xoxocotlan	Oaxaca	Mexico
3858	OBC	Obock	Obock	Djibouti
3859	OBF	Oberpfaffenhofen	Oberpfaffenhofen	Germany
3860	OBL	Zoerse	Zoerse	Belgium
3861	OBN	Oban	Oban	United Kingdom
3862	OBO	Obihiro	Obihiro	Japan
3863	OBS	Vals Lanas	Aubenas	France
3864	OBU	Kobuk	Kobuk	United States
3865	OCA	Ocean Reef	Oceanreef	United States
3866	OCC	Coca	Coca	Ecuador
3867	OCF	Taylor Field	Ocala	United States
3868	OCJ	Boscobel	Ochorios	Jamaica
3869	OCN	Oceanside Municipal	Oceanside Municipal	United States
3870	OCV	Aguasclaras	Ocana	Colombia
3871	ODB	Cordoba	Cordoba	Spain
3872	ODE	Beldringe	Odense	Denmark
3873	ODN	Long Seridan	Longseridan	Malaysia
3874	ODS	Odessa	Odesa	Ukraine
3875	ODY	Oudomxai	Oudomxay	Laos
3876	OER	Ornskoldsvik	Ornskoldsvik	Sweden
3877	OES	San Antonio Oeste	San Antonio Oeste	Argentina
3878	NUP	Nunapitchuk	Nunapitchuk	United States
3879	NUR	Nullarbor	Nullarbor	Australia
3880	OFI	Ouango Fitini	Ouango Fitini	Cote D'Ivoire (Ivory Coast)
3881	OFJ	Olafsfjordur	Olafsfjordur	Iceland
3882	OFK	Stefan Field	Norfolk	United States
3883	OGA	Searle Field	Ogallala	United States
3884	OGB	Orangeburg Municipal	Orangeburg Municipal	United States
3885	OGE	Ogeranang	Ogeranang	Papua New Guinea
3886	OGO	Abengourou	Abengourou	Cote D'Ivoire (Ivory Coast)
3887	OGR	Bongor	Bongor	Chad
3888	OGV	Ongavagamersv	Ongavagamersv	Namibia
3889	OHI	Oshakati	Oshakati	Namibia
3890	OHS	Sohar Airport	Sohar	Oman
3891	OHT	Kohat	Kohat	Pakistan
3892	OIL	Splanememorial Airport	Oil City	United States
3893	OKB	Fraser Island	Orchidbeach	Australia
3894	OKG	Okoyo	Okoyo	Congo
3895	OKK	Kokomo	Kokomo	United States
3896	OKL	Oksibil	Oksibil	Indonesia
3897	OKP	Oksapmin	Oksapmin	Papua New Guinea
3898	OKQ	Okaba	Okaba	Indonesia
3899	OKS	Oshkosh	Oshkosh	United States
3900	OKT	Oktiabrskij	Oktiabrskij	Russia
3901	OKV	Okao	Okao	Papua New Guinea
3902	OLD	Old Town	Old Town	United States
3903	OLE	Olean Municipal	Olean Municipal	United States
3904	OLI	Rif	Olafsvik	Iceland
3905	OLK	Fuerte Olimpo	Fuerte Olimpo	Paraguay
3906	OLO	Olomouc	Olomouc	Czech Republic
3907	OLQ	Olsobip	Olsobip	Papua New Guinea
3908	OLU	Columbus	Columbus	United States
3909	OLY	Noble	Olney	United States
3910	OMG	Omega	Omega	Namibia
3911	OMJ	Omura	Omura	Japan
3912	OMK	Omak Municipal	Omak Municipal	United States
3913	OML	Omkalai	Omkalai	Papua New Guinea
3914	OMN	Osmanabad	Osmanabad	India
3915	OMY	Oddor Meanche	Oddor Meanche	Cambodia
3916	ONA	Winona Municipal	Winona	United States
3917	ONE	Onepusu	Onepusu	Solomon Islands
3918	ONI	Moanamani	Moanamani	Indonesia
3919	ONM	Socorro	Socorro	United States
3920	ONN	Onion Bay	Onion Bay	United States
3921	OGG	Kapalua	Kahului	United States
3922	OGL	Ogle	Ogle	Guyana
3923	OGS	Ogdensburg	Ogdensburg	United States
3924	OGX	Ain Beida	Ouargla	Algeria
3925	OGZ	Vladikavkaz	Vladikavkaz	Russia
3926	OHD	Ohrid	Ohrid	North Macedonia
3927	OHE	Mohe	Mohe	China
3928	OIA	Ourilandia	Ourilandia	Brazil
3929	OIM	Oshima	Oshima	Japan
3930	OIR	Okushiri	Okushiri	Japan
3931	OIT	Oita	Oita	Japan
3932	OKA	Naha	Okinawa	Japan
3933	OKC	Will Rogers World Airport	Oklahoma	United States
3934	OKD	Okadama	Sapporo	Japan
3935	OKE	Okino Erabu	Okinoerabu	Japan
3936	OKF	Okaukuejo	Okaukuejo	Namibia
3937	OKI	Oki Island	Okiisland	Japan
3938	OKJ	Okayama	Okayama	Japan
3939	OKR	Yorke Island	Yorke Island	Australia
3940	OKU	Mokuti Lodge	Mokutilodge	Namibia
3941	OKY	Oakey	Oakey	Australia
3942	OLA	Orland	Orland	Norway
3943	OLB	Costa Smeralda	Olbia	Italy
3944	OLF	Wolf Point	Wolfpoint	United States
3945	OLM	Olympia	Olympia	United States
3946	OLP	Olympic Dam	Olympic Dam	Australia
3947	OLV	Olive Branch	Olive Branch	United States
3948	OMA	Eppley Airfield	Omaha	United States
3949	OMB	Omboue	Omboue	Gabon
3950	OMC	Ormoc	Ormoc	Philippines
3951	OMD	Oranjemund	Oranjemund	Namibia
3952	OMF	King Hussein	Mafraq	Jordan
3953	OMH	Urmieh	Urumiyeh	Iran
3954	OMI	Omidieh	Omidieh	Iran
3955	OMO	Mostar	Mostar	Bosnia and Herzegovina
3956	OMR	Oradea	Oradea	Romania
3957	OND	Ondangwa	Ondangwa	Namibia
3958	ONG	Mornington	Mornington	Australia
3959	ONJ	Odate Noshiro	Odatenoshiro	Japan
3960	ONH	Oneonta Municipal	Oneonta	United States
3961	OHR	Wyk Auf Foehr	Wyk Auf Foehr	Germany
3962	OLH	Oldharborsp	Oldharbor	United States
3963	OMM	Marmul	Marmul	Oman
3964	ONB	Ononge	Ononge	Papua New Guinea
3965	ONR	Monkira	Monkira	Australia
3966	ONU	Ono I Lau	Onoilau	Fiji Islands
3967	ONY	Olney	Olney	United States
3968	OOA	Oskaloosa Municipal	Oskaloosa Municipal	United States
3969	OOR	Mooraberree	Mooraberree	Australia
3970	OOT	Onotoa	Onotoa	Kiribati
3971	OPA	Kopasker	Kopasker	Iceland
3972	OPB	Open Bay	Openbay	Papua New Guinea
3973	OPI	Oenpelli	Oenpelli	Australia
3974	OPL	St Landry Parish	Opelousas	United States
3975	OPW	Opuwa	Opuwa	Namibia
3976	ORC	Orocue	Orocue	Colombia
3977	ORM	Northampton	Northampton	United Kingdom
3978	ORO	Yoro	Yoro	Honduras
3979	ORR	Yorketown	Yorktown	Australia
3980	ORY	Orly	Paris	France
3981	ORZ	Orange Walk	Orange Walk	Belize
3982	OSA	Osaka	Osaka	Japan
3983	OSB	Osage Beach	Osagebeach	United States
3984	OSE	Omora	Omora	Papua New Guinea
3985	OSG	Ossima	Ossima	Papua New Guinea
3986	OSX	Attala County	Kosciusko	United States
3987	OSZ	Koszalin	Koszalin	Poland
3988	OTA	Mota	Mota	Ethiopia
3989	OTC	Bol	Bol	Chad
3990	OTG	Worthington	Worthington	United States
3991	OTJ	Otjiwarongo	Otjiwarongo	Namibia
3992	OTL	Boutilimit	Boutilimit	Mauritania
3993	OTM	Industrial	Ottumwa	United States
3994	OTV	Ontong Java	Otongjava	Solomon Islands
3995	OTY	Oria	Oria	Papua New Guinea
3996	OUG	Ouahigouya	Ouahigouya	Burkina Faso
3997	OUI	Ban Houei	Ban Houel	Laos
3998	OUM	Oum Hadjer	Oum Hadjer	Chad
3999	OUN	Max Westheimer	Norman	United States
4000	OUR	Batouri	Batouri	Cameroon
4001	ONP	Newport	Newport	United States
4002	ONQ	Zonguldak	Zonguldak	Turkey
4003	ONT	Ontario	Ontario	United States
4004	ONX	Enrique Adolfo Jimenez	Colon	Panama
4005	OOK	Toksook Bay	Onotoa	United States
4006	OOM	Cooma	Cooma	Australia
4007	OTD	Contadora	Contadora	Panama
4008	OPF	Opa Locka	Miami	United States
4009	OPO	Francisco Sá Carneiro	Porto	Portugal
4010	OPS	Sinop	Sinop	Brazil
4011	OPU	Balimo	Balimo	Papua New Guinea
4012	ORB	Orebro bofors	Orebro	Sweden
4013	ORD	O'hare International	Chicago	United States
4014	ORE	Orleans	Orleans	France
4015	ORG	Zorg En Hoop	Paramaribo	Suriname
4016	ORH	Regional Airport	Worcester	United States
4017	ORJ	Orinduik	Orinduik	Guyana
4018	ORK	Cork	Cork	Ireland
4019	ORN	Es Senia	Oran	Algeria
4020	ORP	Orapa	Orapa	Botswana
4021	ORT	Northway	Northway	United States
4022	ORU	Oruro	Oruro	Bolivia
4023	ORV	Curtis Memorial	Noorvik	United States
4024	ORW	Ormara	Ormara	Pakistan
4025	OSD	Froesoe	Areostersund	Sweden
4026	OSH	Wittman Field	Oshkosh	United States
4027	OSI	Osijek	Osijek	Croatia
4028	OSL	Gardermoen	Oslo	Norway
4029	OSM	Mosul	Mosul	Iraq
4030	OSN	Osan	Osan	South Korea
4031	OSP	Redzikowo	Slupsk	Poland
4032	OSR	Mosnov	Ostrava	Czech Republic
4033	OSS	Osh	Osh	Kyrgyzstan
4034	OSW	Orsk	Orsk	Russia
4035	OSY	Namsos	Namsos	Norway
4036	OTH	North Bend	Northbend	United States
4037	OTI	Morotai Island	Morotaiisland	Indonesia
4038	OTR	Coto47	Coto47	Costa Rica
4039	OTU	Otu	Out	Colombia
4040	OTZ	Kotzebue	Kotzebue	United States
4041	OUA	Ouagadougou	Ouagadougou	Burkina Faso
4042	OUD	Les Angades	Oujda	Morocco
4043	OUE	Ouesso	Ouesso	Congo
4044	OUK	Outer Skerries	Outer Skerries	United Kingdom
4045	OUL	Oulu	Oulu	Finland
4046	OOO	Porur	Pori	Finland
4047	OTS	Anacortes	Anacortes	United States
4048	ORI	Portlions	Portlions	United States
4049	OUS	Ourinhos	Ourinhos	Brazil
4050	OUT	Bousso	Bousso	Chad
4051	OUU	Ouanga	Ouanga	Gabon
4052	OVE	Oroville	Oroville	United States
4053	OVL	Ovalle	Ovalle	Chile
4054	OWA	Owatonna	Owatonna	United States
4055	OXO	Orientos	Orientos	Australia
4056	OXY	Morney	Morney	Australia
4057	OYN	Ouyen	Ouyen	Australia
4058	OYS	Yosemite Ntl Park	Yosemitentlpark	United States
4059	OZI	Bobadilla	Bobadilla	Spain
4060	OZU	Montilla	Montilla	Spain
4061	PAF	Pakuba	Pakuba	Uganda
4062	PAI	Pailin	Pailin	Cambodia
4063	PAL	Palanquero	Palanquero	Colombia
4064	PAR	Charles de Gaulle	Paris	France
4065	PAU	Pauk	Pauk	Myanmar
4066	PAW	Pambwa	Pambwa	Papua New Guinea
4067	PAY	Pamol	Pamol	Malaysia
4068	PBA	Point Barrow	Barrow	United States
4069	PBB	Paranaiba	Paranaiba	Brazil
4070	PBE	Puerto Berrio	Puertoberrio	Colombia
4071	PBK	Pack Creek	Packcreek	United States
4072	PBQ	Pimenta Bueno	Pimenta Bueno	Brazil
4073	PBS	Patong Beach	Patong Beach	Thailand
4074	PBT	Puerto Leda	Puerto Leda	Paraguay
4075	PBV	Porto Dos Gauchos	Porto Dos Gauchos	Brazil
4076	PBX	Porto Alegre Do Norte	Porto Alegre Do Norte	Brazil
4077	PBY	Hamilton	Hamilton	Australia
4078	PCA	Portage Creek	Portagecreek	United States
4079	PCC	Puerto Rico	Puertorico	Colombia
4080	PCD	Prairie Du Chien Municipal	Prairie Du Chien Municipal	United States
4081	PCE	Painter Creek	Painter Creek	United States
4082	PCG	Paso Caballos	Paso Caballos	Guatemala
4083	PCH	Palacios	Palacios	Honduras
4084	PCJ	Puerto La Victoria	Puerto La Victoria	Paraguay
4085	OUZ	Zouerate	Zouerate	Mauritania
4086	OVA	Bekily	Bekily	Madagascar
4087	OVB	Tolmachevo	Novosibirsk	Russia
4088	OVR	Olavarria	Olavarria	Argentina
4089	OVS	Sovetsky	Sovetsky	Russia
4090	OWB	Daviess County	Owensboro	United States
4091	OXB	Osvaldo Vieira	Bissau	Guinea
4092	OXC	Waterbury oxford	Waterbury-Oxford	United States
4093	OXF	Kidlington	Oxford	United Kingdom
4094	OXR	Ventura	Oxnard	United States
4095	OYA	Goya	Goya	Argentina
4096	OYE	Oyem	Oyem	Gabon
4097	OYL	Moyale	Moyale	Kenya
4098	OYO	Tres Arroyos	Tres Arroyos	Argentina
4099	OYP	St. Georges de L	St. Georges de L	French Guiana
4100	OZA	Ozona	Ozona	United States
4101	OZC	Labo	Ozamis	Philippines
4102	OZP	Moron	Moron	Spain
4103	OZZ	Ouarzazate	Ouarzazate	Morocco
4104	PAA	Pa an	Pa-an	Myanmar
4105	PAD	lippstadt	Paderborn/lippstadt	Germany
4106	PAE	Snohomish County	Everett	United States
4107	PAG	Pagadian	Pagadian	Philippines
4108	PAH	Barkley Regional	Paducah	United States
4109	PAJ	Para Chinar	Parachinar	Pakistan
4110	PAO	Palo Alto	Palo Alto	United States
4111	PAP	Toussaint Louverture International	Portauprince	Haiti
4112	PAQ	Palmer Municipal	Palmer Municipal	United States
4113	PAS	Paros	Paros	Greece
4114	PAV	Paulo Afonso	Paulo Afonso	Brazil
4115	PAX	Port De Paix	Portdepaix	Haiti
4116	PAZ	Tajin	Pozarica	Mexico
4117	PBD	Porbandar	Porbandar	India
4118	PBF	Grider Field	Pinebluff	United States
4119	PBG	Plattsburgh	Plattsburgh	United States
4120	PBH	Paro	Paro	Bhutan
4121	PBI	Palm Beach International	Westpalmbeach	United States
4122	PBJ	Paama	Paama	Vanuatu
4123	PBM	Zanderij Intl	Paramaribo	Suriname
4124	PBN	Porto Amboim	Porto Amboim	Angola
4125	PBO	Paraburdoo	Paraburdoo	Australia
4126	PBP	Punta Islita	Puntaislita	Costa Rica
4127	PBR	Puerto Barrios	Puertobarrios	Guatemala
4128	PBU	Putao	Putao	Myanmar
4129	PCB	Pondok Cabe	Pondok Cabe	Indonesia
4130	OYG	Moyo	Moyo	Uganda
4131	PCK	Porcupine Creek	Porcupinecreek	United States
4132	PCO	Punta Colorada	Punta Colorada	Mexico
4133	PCQ	Bounneua	Bounneua	Laos
4134	PCS	Picos	Picos	Brazil
4135	PCT	Princeton	Princeton	United States
4136	PCU	Pearl River County	Picayune	United States
4137	PCV	Punta Chivato	Punta Chivato	Mexico
4138	PDC	Mueo	Mueo	New Caledonia
4139	PDD	Ponta de Ouro	Ponta De Ouro	Mozambique
4140	PDE	Pandie Pandie	Pandie Pandie	Australia
4141	PDF	Prado	Prado	Brazil
4142	PDI	Pindiu	Pindiu	Papua New Guinea
4143	PDN	Parndana	Parndana	Australia
4144	PDR	Presidente Dutra Municipal	Presidentedutra	Brazil
4145	PDU	Paysandu	Paysandu	Uruguay
4146	PDZ	Pedernales	Pedernales	Venezuela
4147	PEB	Pebane	Pebane	Mozambique
4148	PEJ	Peschiei	Peschiei	Italy
4149	PEK	Capital Int.	Beijing	China
4150	PEL	Pelaneng	Pelaneng	Lesotho
4151	PEP	Peppimenarti	Peppimenarti	Australia
4152	PEY	Penong	Penong	Australia
4153	PFA	Paf Warren	Paf Warren	United States
4154	PFC	Pacific City	Pacific City	United States
4155	PFD	Port Frederick	Port Frederick	United States
4156	PGB	Pangoa	Pangoa	Papua New Guinea
4157	PGC	Grant County	Petersburg	United States
4158	PGE	Yegepa	Yegepa	Papua New Guinea
4159	PGG	Progresso	Progresso	Brazil
4160	PGI	Chitato	Chitato	Angola
4161	PGL	Jackson County	Pascagoula	United States
4162	PGM	Port Graham	Portgraham	United States
4163	PGN	Pangia	Pangia	Papua New Guinea
4164	PGO	Stevens Field	Pagosa Springs	United States
4165	PGP	Porto Alegre	Portoalegre	Sao Tome and Principe
4166	PGS	Peach Springs	Peachsprings	United States
4167	PGZ	Sant'Ana	Pontagrossa	Brazil
4168	PHG	Port Harcourt City	Port Harcourt City	Nigeria
4169	PCN	Koromiko	Picton	New Zealand
4170	PCP	Principe	Principe	Sao Tome and Principe
4171	PDA	Puerto Inirida	Puertoinirida	Colombia
4172	PDG	Minangkabau International Airport	Padang	Indonesia
4173	PDK	Dekalb Peachtree	Atlanta	United States
4174	PDL	Nordela	Pontadelgadaazores	Portugal
4175	PDO	Pendopo	Pendopo	Indonesia
4176	PDS	Piedras Negras	Piedrasnegras	Mexico
4177	PDT	Pendleton	Pendleton	United States
4178	PDV	Plovdiv	Plovdiv	Bulgaria
4179	PDX	Portland	Portland	United States
4180	PED	Pardubice	Pardubice	Czech Republic
4181	PEE	Perm	Perm	Russia
4182	PEF	Peenemuende	Peenemuende	Germany
4183	PEH	Pehuajo	Pehuajo	Argentina
4184	PEI	Matecana	Pereira	Colombia
4185	PEM	Puerto Maldonado	Puertomaldonado	Peru
4186	PEN	Penang	Penang	Malaysia
4187	PER	Perth	Perth	Australia
4188	PES	Petrozavodsk	Petrozavodsk	Russia
4189	PET	Federal	Pelotas	Brazil
4190	PEU	Puerto Lempira	Puertolempira	Honduras
4191	PEV	Pecs	Pecs	Hungary
4192	PEX	Pechora	Pechora	Russia
4193	PEZ	Penza	Penza	Russia
4194	PFB	Passo Fundo	Passo Fundo	Brazil
4195	PFN	Bay County	Panama	United States
4196	PFO	Paphos	Paphos	Cyprus
4197	PFQ	Parsabad	Parsabad	Iran
4198	PFR	Ilebo	Ilebo	Democratic Republic of the Congo
4199	PGA	Page	Page	United States
4200	PGD	Charlotte County	Puntagorda	United States
4201	PGH	Pantnagar	Pantnagar	India
4202	PGK	Pangkalpinang	Pangkalpinang	Indonesia
4203	PGU	Persiangulfintl Airport	Asaloyeh	Iran
4204	PGV	Pitt Greenville	Pitt-Greenville	United States
4205	PGX	Bassillac	Perigueux	France
4206	PHB	Santos Dumont	Parnaiba	Brazil
4207	PHC	Port Harcourt	Portharcourt	Nigeria
4208	PHE	Port Hedland	Port Hedland	Australia
4209	PHF	Newport News	Newportnewshampton	United States
4210	PCM	Playa Del Carmen	Playa Del Carmen	Mexico
4211	PDB	Pedro Bay	Pedrobay	United States
4212	PEC	Pelican	Pelican	United States
4213	PHH	Phan Thiet	Phanthiet	Vietnam
4214	PHI	Pinheiro	Pinheiro	Brazil
4215	PHJ	Port Hunter	Port Hunter	Australia
4216	PHM	Boeblingen	Boeblingen	Germany
4217	PHR	Pacific Harbor	Pacificharbor	Fiji Islands
4218	PHU	Phu Vinh	Phu Vinh	Vietnam
4219	PHZ	Phi Phi Island	Phi Phi Island	Thailand
4220	PIC	Pine Cay	Pinecay	Turks and Caicos Islands
4221	PIG	Pitinga	Pitinga	Brazil
4222	PII	Phillips Field	Fairbanks	United States
4223	PIQ	Pipillipai	Pipillipai	Guyana
4224	PIV	Pirapora	Pirapora	Brazil
4225	PIW	Pikwitonei	Pikwitonei	Canada
4226	PJB	Payson	Payson	United States
4227	PJS	Port San Juan	Portsanjuan	United States
4228	PJZ	Puerto Vallarta	Puerto Juarez	Mexico
4229	PKD	Park Rapids	Park Rapids	United States
4230	PKJ	Playa Grande	Playa Grande	Guatemala
4231	PKL	Pakatoa Island	Pakatoa Island	New Zealand
4232	PKM	Port Kaituma	Port Kaituma	Guyana
4233	PKO	Parakou	Parakou	Benin
4234	PKS	Paksane	Paksane	Laos
4235	PKT	Port Keats	Port Keats	Australia
4236	PLA	Planadas	Planadas	Colombia
4237	PLB	Clinton County	Plattsburgh	United States
4238	PLC	Planeta Rica	Planeta Rica	Colombia
4239	PLE	Paiela	Paiela	Papua New Guinea
4240	PLF	Pala	Pala	Chad
4241	PLI	Palm Island	Palm Island	Saint Vincent and the Grenadines
4242	PLK	M Graham Clark	Branson Ptlookout	United States
4243	PLT	Plato	Plato	Colombia
4244	PHN	St Clair County Intl	Port Huron	United States
4245	PHS	Phitsanulok	Phitsanulok	Thailand
4246	PHW	Cape Town	Phalaborwa	South Africa
4247	PHX	Sky Harbor Intl	Phoenix	United States
4248	PHY	Phetchabun	Phetchabun	Thailand
4249	PIB	Hattiesburg	Laurel	United States
4250	PID	Paradise Island	Nassau	The Bahamas
4251	PIE	Clearwater International	Tampa	United States
4252	PIF	Pingtung	Pingtung	Taiwan
4253	PIH	Pocatello	Pocatello	United States
4254	PIL	Pilar	Pilar	Paraguay
4255	PIM	Garden Harris County	Pine Mountain	United States
4256	PIN	Parintins	Parintins	Brazil
4257	PIO	Pisco	Pisco	Peru
4258	PIP	Pilot Point	Pilotpoint	United States
4259	PIR	Pierre	Pierre	United States
4260	PIT	Pittsburgh	Pittsburgh	United States
4261	PIU	Piura	Piura	Peru
4262	PIX	Pico Island	Picoisland	Portugal
4263	PIZ	Dewstation Airport	Pointlay	United States
4264	PJC	Pedro Juan Caballero	Pedrojuancaball	Paraguay
4265	PJG	Panjgur	Panjgur	Pakistan
4266	PJM	Puerto Jimenez	Puertojimenez	Costa Rica
4267	PKA	Spb Airport	Napaskiak	United States
4268	PKC	Petropavlovsk Kamchats	Petropavlovsk	Russia
4269	PKE	Parkes	Parkes	Australia
4270	PKG	Pangkor	Pangkorperak	Malaysia
4271	PKH	Alexion	Portochelion	Greece
4272	PKK	Pakokku	Pakokku	Myanmar
4273	PKP	Puka Puka	Pukapuka	French Polynesia
4274	PKR	Pokhara	Pokhara	Nepal
4275	PKU	Sultan Syarif Kasim Ii	Pekanbaru	Indonesia
4276	PKV	Pskov	Pskov	Russia
4277	PKW	Selebi Phikwe	Selebiphikwe	Botswana
4278	PKZ	Pakse	Pakse	Laos
4279	PLD	Playa Samara	Playasamara	Costa Rica
4280	PLH	Plymouth	Plymouth	United Kingdom
4281	PLL	Ponta Pelada	Ponta Pelada	Brazil
4282	PLN	Emmet County	Pellston	United States
4283	PLO	Port Lincoln	Port Lincoln	Australia
4284	PLP	La Palma	Lapalma	Panama
4285	PLQ	Palanga	Klaipeda/palanga	Lithuania
4286	PLS	Providenciales	Providenciales	Turks and Caicos Islands
4287	PLV	Poltava	Poltava	Ukraine
4288	PLW	Mutiara	Palu	Indonesia
4289	PLX	Semipalatinsk	Semipalatinsk	Kazakhstan
4290	PLZ	Port Elizabeth	Portelizabeth	South Africa
4291	PLJ	Placencia	Placencia	Belize
4292	PHO	Point Hope	Pointhope	United States
4293	PME	Portsmouth	Portsmouth	United Kingdom
4294	PMH	Greater Portsmouth Regional	Portsmouth Regional	United States
4295	PMM	Phanom Sarakham	Phanom Sarakham	Thailand
4296	PMN	Pumani	Pumani	Papua New Guinea
4297	PMP	Pimaga	Pimaga	Papua New Guinea
4298	PMT	Paramakotoi	Paramakotoi	Guyana
4299	PMX	Metropolitan	Palmer	United States
4300	PNF	Peterson's Point	Peterson'spoint	United States
4301	PNG	Paranagua Municipal	Paranagua	Brazil
4302	PNJ	Peng Lai	Sha He Kou	China
4303	PNN	Princeton	Princeton	United States
4408	PUH	Pochutla	Pochutla	Mexico
4304	PNO	Pinotepa Nacional	Pinotepa Nacional	Mexico
4305	PNU	Panguitch	Panguitch	United States
4306	PNX	Grayson County	Shermandenison	United States
4307	POD	Podor	Podor	Senegal
4308	POH	Pocahontas Municipal	Pocahontas	United States
4309	PON	Poptun	Poptun	Guatemala
4310	POQ	Polk Inlet	Polkinlet	United States
4311	POU	Dutchess County	Poughkeepsie	United States
4312	POV	Presov	Presov	Slovakia
4313	POX	Paris Cergy Pontoise Airport	Paris	France
4314	POY	Powell	Powell	United States
4315	PPA	Perry Lefors Field	Pampa	United States
4316	PPD	Palmas Del Mar	Humacao	Puerto Rico
4317	PPF	Tri City	Independence	United States
4318	PPH	Peraitepuy	Peraitepuy	Venezuela
4319	PPI	Port Pirie	Port Pirie	Australia
4320	PPJ	Pulau Panjang	Pulau Panjang	Indonesia
4321	PPO	Powell Point	Powell Point	The Bahamas
4322	PPR	Pasir Pangarayan	Pasir Pangarayan	Indonesia
4323	PPU	Papun	Papun	Myanmar
4324	PMD	La Palmdale	La Palmdale	United States
4325	PMF	Giuseppe Verdi	Milan	Italy
4326	PMG	Ponta Pora	Pontapora	Brazil
4327	PMK	Palm Island	Palm Island	Australia
4328	PML	Afs Airport	Portmoller	United States
4329	PMO	Punta Raisi	Palermo	Italy
4330	PMR	Palmerston North	Palmerstonnorth	New Zealand
4331	PMS	Palmyra	Palmyra	Syria
4332	PMV	Del Caribe International Gen. Santiago Marino	Porlamar	Venezuela
4333	PMW	Palmas	Palmas	Brazil
4334	PMY	El Tehuelche	Puertomadryn	Argentina
4335	PMZ	Palmar Sur	Palmar	Costa Rica
4336	PNB	Porto Nacional	Porto Nacional	Brazil
4337	PNC	Ponca City	Ponca	United States
4338	PNE	Philadelphia	Philadelphia	United States
4339	PNH	Phnom Penh International	Phnompenh	Cambodia
4340	PNK	Supadio	Pontianak	Indonesia
4341	PNL	Pantelleria	Pantelleria	Italy
4342	PNP	Girua	Popondetta	Papua New Guinea
4343	PNR	Pointe Noire	Pointenoire	Congo
4344	PNS	Pensacola	Pensacola	United States
4345	PNT	Teniente J. Gallardo	Teniente J. Gallardo	Chile
4346	PNV	Panevezys	Panevezys	Lithuania
4347	PNZ	Petrolina	Petrolina	Brazil
4348	POA	Salgado Filho	Portoalegre	Brazil
4349	POC	Brackett Field	La Vernе	United States
4350	POF	Earl Fields Memorial	Poplarbluff	United States
4351	POG	Port Gentil	Portgentil	Gabon
4352	POJ	Patos De Minas	Patos De Minas	Brazil
4353	POL	Porto Amelia	Pemba	Mozambique
4354	POM	Jackson Fld	Portmoresby	Papua New Guinea
4355	POP	La Union	Puertoplata	Dominican Republic
4356	POS	Piarco International	Portofspain	Trinidad and Tobago
4357	POT	Ken Jones	Portantonio	Jamaica
4358	POW	Portoroz	Portoroz	Solomon Islands
4359	POZ	Lawica	Poznan	Poland
4360	PPC	Prospect Creek	Prospectcreek	United States
4361	PPE	Puerto Penasco	Puertopenasco	Mexico
4362	PPG	Pago Pago	Pagopago	American Samoa
4363	PPK	Petropavlovsk	Petropavlovsk	Kazakhstan
4364	PPL	Phaplu	Phaplu	Nepal
4365	PPN	Machangara	Popayan	Colombia
4366	PPP	Whitsunday Coast	Proserpine	Australia
4367	PPQ	Paraparaumu	Paraparaumu	New Zealand
4368	PPS	Puerto Princesa	Puertoprincesa	Philippines
4369	PPT	Faa'a	Papeete	French Polynesia
4370	PND	Punta Gorda	Punta Gorda	Belize
4371	PPV	Port Protection	Portprotection	United States
4372	PPY	Pouso Alegre	Pouso Alegre	Brazil
4373	PPZ	Puerto Paez	Puertopaez	Venezuela
4374	PQM	Palenque	Palenque	Mexico
4375	PRB	Paso Robles	Pasorobles	United States
4376	PRD	Pardoo	Pardoo	Australia
4377	PRE	Pore	Pore	Colombia
4378	PRF	Port Johnson	Portjohnson	United States
4379	PRH	Phrae	Phrae	Thailand
4380	PRJ	Capri	Capri	Italy
4381	PRK	Prieska	Prieska	South Africa
4382	PRL	Port Oceanic	Portoceanic	United States
4383	PRO	Perry Municipal	Perry Municipal	United States
4384	PRR	Paruima	Paruima	Guyana
4385	PRS	Parasi	Parasi	Solomon Islands
4386	PRW	Prentice	Prentice	United States
4387	PRX	Cox Field	Paris	United States
4388	PSB	Bellefonte	Philipsburg	United States
4389	PSF	Pittsfield	Pittsfield	United States
4390	PSK	New River Valley	Pulaski Dublin	United States
4391	PSN	Palestine	Palestine	United States
4392	PST	Preston	Preston	Cuba
4393	PSW	Passos	Passos	Brazil
4394	PTC	Port Alice	Portalice	United States
4395	PTD	Port Alexander	Portalexander	United States
4396	PTE	Port Stephens	Port Stephens	Australia
4397	PTI	Port Douglas	Port Douglas	Australia
4398	PTL	Port Armstrong	Port Armstrong	United States
4399	PTN	Williams Memorial	Morgan	United States
4400	PTO	Pato Branco Municipal	Patobranco	Brazil
4401	PTQ	Porto de Moz	Porto de Moz	Brazil
4402	PTR	Pleasant Harbour	Pleasant Harbor	United States
4403	PTS	Pittsburg Municipal	Pittsburg Municipal	United States
4404	PTT	Pratt	Pratt	United States
4405	PTV	Porterville	Porterville	United States
4406	PTW	Pottstown	Pottstown	United States
4407	PUA	Puas	Puas	Papua New Guinea
4409	PUI	Pureni	Pureni	Papua New Guinea
4410	PUK	Pukarua	Pukarua	French Polynesia
4411	PQI	Presque Isle Municipal	Presqueisle	United States
4412	PQQ	Port Macquarie	Portmacquarie	Australia
4413	PRA	Parana	Parana	Argentina
4414	PRG	Ruzyne	Prague	Czech Republic
4415	PRI	Praslin Island	Praslinisland	Seychelles
4416	PRM	Portimao	Portimao	Portugal
4417	PRP	Propriano	Propriano	France
4418	PRU	Prome	Prome	Myanmar
4419	PRV	Prerov	Prerov	Czech Republic
4420	PRY	Wonderboom Apt.	Pretoria	South Africa
4421	PRZ	Prineville	Prineville	United States
4422	PSA	Galileo Galilei	Pisa	Italy
4423	PSD	Port Said	Portsaid	Egypt
4424	PSE	Mercedita	Ponce	Puerto Rico
4425	PSG	Petersburg James A Johnson	Petersburg	United States
4426	PSH	St. Peter	Saintpeterording	Germany
4427	PSI	Pasni	Pasni	Pakistan
4428	PSL	Perth	Perth	United Kingdom
4429	PSM	Portsmouthpeaseintl Airport	Boston	United States
4430	PSO	Cano	Pasto	Colombia
4431	PSP	Palm Springs Municipal	Palmsprings	United States
4432	PSS	Posadas	Posadas	Argentina
4433	PSU	Putussibau	Putussibau	Indonesia
4434	PSX	Palacios	Palacios	United States
4435	PSY	Port Stanley	Portstanley	Falkland Islands
4436	PTA	Port Alsworth	Portalsworth	United States
4437	PTB	Petersburg Municipal	Petersburg	United States
4438	PTF	Malololailai	Malololailai	Fiji Islands
4439	PTH	Port Heiden	Portheiden	United States
4440	PTJ	Portland	Portland	Australia
4441	PTK	Pontiac	Pontiac	United States
4442	PTM	Palmarito	Palmarito	Venezuela
4443	PTP	Le Raizet	Point a Pitre	Guadeloupe
4444	PTU	Platinum	Platinum	United States
4445	PTY	Tocumen International	Panama	Panama
4446	PTZ	Pastaza	Pastaza	Ecuador
4447	PUB	Pueblo	Pueblo	United States
4448	PUC	Carbon County	Price	United States
4449	PUE	Puerto Obaldia	Puertoobaldia	Panama
4450	PUF	Pyrénées	Pau	France
4451	PUG	Port Augusta	Port Augusta	Australia
4452	PUJ	Punta Cana	Puntacana	Dominican Republic
4453	PQS	Pilotstation	Pilotstation	United States
4454	PUL	Poulsbo	Poulsbo	United States
4455	PUN	Punia	Punia	Democratic Republic of the Congo
4456	PUO	Prudhoe Bay	Prudhoebay	United States
4457	PUP	Po	Po	Burkina Faso
4458	PUT	Puttaprathe	Puttaparthi	India
4459	PUV	Poum	Poum	New Caledonia
4460	PUX	Puerto Varas	Puerto Varas	Chile
4461	PVF	Placerville	Placerville	United States
4462	PVI	Edu Chaves	Paranavai	Brazil
4463	PVN	Pleven	Pleven	Bulgaria
4464	PVW	County	Hale	United States
4465	PVY	Pope Vanoy	Pope Vanoy	United States
4466	PVZ	Casement	Painesville	United States
4467	PWE	Pevek	Pevek	Russia
4468	PWI	Beles	Pawi	Ethiopia
4469	PWL	Purwokerto	Purwokerto	Indonesia
4470	PWN	Pitts Town	Pitts Town	The Bahamas
4471	PWO	Pweto	Pweto	Democratic Republic of the Congo
4472	PWR	Port Walter	Port Walter	United States
4473	PXL	Polacca	Polacca	United States
4474	PXS	Puerto De Santa Maria	Puerto De Santa Maria	Spain
4475	PYA	Puerto Boyaca	Puertoboyaca	Colombia
4476	PYB	Jeypore	Jeypore	India
4477	PYG	Pakyong Airport	Pakyong	India
4478	PYN	Payan	Payan	Colombia
4479	PYO	Putumayo	Putumayo	Ecuador
4480	PYV	Yaviza	Yaviza	Panama
4481	PYX	Pattaya	Pattaya	Thailand
4482	PZA	Casanare	Pazdeariporo	Colombia
4483	PZK	Puka Puka Island	Puka Puka Island	Cook Islands
4484	PZL	Zulu Inyala	Phinda	South Africa
4485	QAD	Pordenone	Pordenone	Italy
4486	QAI	Aime	Aime	France
4487	QAJ	Ajman	Ajman	United Arab Emirates
4488	QAK	Barbacena	Barbacena	Brazil
4489	QAL	Alessandria	Alessandria	Italy
4490	QAM	Amiens	Amiens	France
4491	QAR	Arnhem	Arnhem	Netherlands
4492	QAX	Aba	Aba	Nigeria
4493	QBA	Budva	Budva	Montenegro
4494	QBE	Bega	Bega	Australia
4495	QBI	Bitola	Bitola	North Macedonia
4496	QBM	Bourg St Maurice	Bourg St Maurice	France
4497	QBO	Bochum	Bochum	Germany
4498	QBQ	Besancon	Besancon	France
4499	QBV	Benevento	Benevento	Italy
4500	QBW	Batemansbay	Batemansbay	Australia
4501	QBX	Sobral	Sobral	Brazil
4502	QCB	Chiba city	Chiba city	Japan
4503	QCE	Busstation Airport	Coppermountain	United States
4504	QCU	Heliport	Akunnaaq	Greenland
4505	QCW	Wilton	Wilton	United States
4506	QCX	Sao Caetano D Sul	Sao Caetano D Sul	Brazil
4507	PUS	Gimhae	Busan	South Korea
4508	PUU	Puerto Asis	Puertoasis	Colombia
4509	PUW	Regional Airport	Pullman	United States
4510	PUY	Pula	Pula	Croatia
4511	PVA	Providencia	Providencia	Colombia
4512	PVC	Provincetown	Provincetown	United States
4513	PVD	T. F. Green Airport	Providence	United States
4514	PVG	Pu Dong	Shanghai	China
4515	PVK	Aktion	Prevezalefkada	Greece
4516	PVO	Reales Tamarindos	Portoviejo	Ecuador
4966	RYB	Rybinsk	Rybinsk	Russia
4517	PVR	Licenciado Gustavo Díaz Ordaz International	Puertovallarta	Mexico
4518	PVS	Provideniya	Provideniya	Russia
4519	PVU	Provo	Provo	United States
4520	PWK	Pal Waukee	Chicago	United States
4521	PWM	Portland	Portland	United States
4522	PWQ	Pavlodar	Pavlodar	Kazakhstan
4523	PWT	Bremerton	Bremerton	United States
4524	PXO	Porto Santo	Portosanto	Portugal
4525	PXR	Surin	Surin	Thailand
4526	PXU	Pleiku	Pleiku	Vietnam
4527	PYE	Penrhyn Island	Penrhynisland	Cook Islands
4528	PYH	Puerto Ayacucho	Puertoayacucho	Venezuela
4529	PYJ	Polyarnyj	Polyarnyj	Russia
4530	PYR	Andravida	Pyrgos	Greece
4531	PZB	Oribi	Pietermaritzburg	South Africa
4532	PZE	Penzance	Penzance	United Kingdom
4533	PZH	Zhob	Zhob	Pakistan
4534	PZO	Puerto Ordaz	Puertoordaz	Venezuela
4535	PZU	Port Sudan	Portsudan	Sudan
4536	PZY	Piestany	Piestany	Slovakia
4537	QBC	Bella Coola	Bella Coola	Canada
4538	PUM	Pomala	Pomala	Indonesia
4539	PVE	El Porvenir	Elporvenir	Panama
4540	QDI	Dornbirn	Dornbirn	Austria
4541	QDM	Shek Mum	Shek Mum	Hong Kong S.A.R.
4542	QDN	Eden	Eden	Australia
4543	QDU	Duesseldorf	Duesseldorf	Germany
4544	QDV	Jundiai	Jundiai	Brazil
4545	QDW	Diadema	Diadema	Brazil
4546	QDY	Andong	Andong	South Korea
4547	QEV	Coubevoie	Coubevoie	France
4548	QEW	Nottingham	Leicester	United Kingdom
4549	QEX	Emmerich	Emmerich	Germany
4550	QEY	Qeertarsuatsiaat	Qeertarsuatsiaat	Greenland
4551	QFA	Aalsmeer	Aalsmeer	Netherlands
4552	QFB	Freiburg	Freiburg	Germany
4553	QFC	Creteil	Creteil	France
4554	QFE	Benning	Benning	United States
4555	QFI	Heliport	Iginniarfik	Greenland
4556	QFK	Selje Harbour	Selje Harbour	Norway
4557	QFQ	Maloy Harbour	Maloy Harbour	Norway
4558	QFR	Frosinone	Frosinone	Italy
4559	QFV	Bergen	Bergen	Norway
4560	QFW	Fort Wahinngton	Fort Wahinngton	United States
4561	QGB	Limeira	Limeira	Brazil
4562	QGN	Tarragona	Tarragona	Spain
4563	QGV	Neu Isenburg	Frankfurt	Germany
4564	QGY	Per	Gyor	Hungary
4565	QHA	Hasselt	Hasselt	Belgium
4566	QHD	Heidelberg	Heidelberg	Germany
4567	QHV	Novo Hamburgo	Novo Hamburgo	Brazil
4568	QIJ	Gijon	Dalton	Spain
4569	QIS	Mito	Mito	Japan
4570	QIW	Umm Alquwain	Kjellerup	United Arab Emirates
4571	QIZ	Bizerte	Bizerte	Tunisia
4572	QJA	Jaraqua do Sul	Jaraqua do Sul	Brazil
4573	QJC	Thimbi	Thimbu	Bhutan
4574	QJD	Jindabyne	Jindabyne	Australia
4575	QJG	Itilleq	Itilleq	Greenland
4576	QJH	Qassumiut	Qassumiut	Greenland
4577	QJM	Brusque	Brusque	Brazil
4578	QJS	Saeby	Saeby	Denmark
4579	QJU	Jullundur	Jullundur	India
4580	QJX	Nong Khai	Nong Khai	Thailand
4581	QJY	Kolobrzeg	Kolobrzeg	Poland
4582	QJZ	Nantes	Nantes	France
4583	QKA	Cachoeirinha	Cachoeirinha	Brazil
4584	QKB	Busstation Airport	Breckenridge	United States
4585	QKF	Krefeld	Krefeld	Germany
4586	QKH	Kharian	Kharian	Pakistan
4587	QKI	Kielce	Kielce	Poland
4588	QKK	Karasjok	Karasjok	Norway
4589	QKL	Cologne/bonn	Cologne/bonn	Germany
4590	QKR	Kourou	Kourou	French Guiana
4591	QKS	Busstation Airport	Keystone	United States
4592	QKT	Kangaamuit	Kortrijk-vevelgem	Belgium
4593	QKW	Kanazawa	Kanazawa	Japan
4594	QKZ	Konstanz	Konstanz	Germany
4595	QLI	Limassol	Limassol	Cyprus
4596	QLJ	Lucerne	Lucerne	Switzerland
4597	QLP	La Spezia	La Spezia	Italy
4598	QLX	Lauterach	Lauterach	Austria
4599	QME	Messina	Messina	Italy
4600	QML	Mirpur	Mirpur	Pakistan
4601	QMM	Marina Di Massa	Marina Di Massa	Italy
4602	QMN	Mbabane	Mbabane	Eswatini
4603	QMO	Mocamedes	Mocamedes	Angola
4604	QMQ	Murzuq	Muzuq	Libya
4605	QMR	Marsala	Marsala	Italy
4606	QMS	Masan	Masan	South Korea
4607	QMU	Moutiers	Moutiers	France
4608	QMV	Montvale	Montvale	United States
4609	QMZ	Mainz	Mainz	Germany
4610	QNB	Anand	Anand	India
4611	QND	Novisad	Novisad	Serbia
4612	QNF	Faridabad	Faridabad	India
4613	QNL	Neuilly sur Siene	Neuillysurseine	France
4614	QNM	Suarlã©e Airport	Namur	Belgium
4615	QNP	Ayia Napa	Ayia Napa	Cyprus
4616	QNT	Niteroi	Niteroi	Brazil
4617	QOC	Osasco	Osasco	Brazil
4618	QOG	Homburg	Homburg	Germany
4619	QOQ	Saarloq	Saarloq	Greenland
4620	QOS	Oristano	Oristano	Italy
4621	QOX	Memmingen	Memmingen	Germany
4622	QPB	Campobasso	Campobasso	Italy
4623	QPE	Petropolis	Petropolis	Brazil
4624	QPI	Palmira	Palmira	Bolivia
4625	QJB	Jubail	Jubail	Saudi Arabia
4626	QLF	Lahti	Lahti	Finland
4627	QLR	Leiria	Leiria	Portugal
4628	QNC	Neuchatel	Neuchatel	Switzerland
4629	QNJ	Annemasse	Annemasse	France
4630	QPA	Padova	Padova	Italy
4631	QPG	Paya Lebar	Singapore	Singapore
4632	QPL	Ploiesti	Ploiesti	Romania
4633	QQS	London Saint Pancras	Britrail Rail Zone S	United Kingdom
4634	QQW	Waterloo	London	United Kingdom
4635	QRG	Ragusa	Ragusa	Italy
4636	QRH	Rotterdam Metropolitan Area	Rotterdam Metropolitan Area	Netherlands
4637	QRL	Marbella	Marbella	Spain
4638	QRM	Narromine	Narromine	Australia
4639	QRR	Warren	Warren	Australia
4640	QRV	Arras	Arras	France
4641	QRZ	Resende	Resende	Brazil
4642	QSO	Sousse	Sousse	Tunisia
4643	QSQ	Sidon	Sidon	Lebanon
4644	QSS	Sassari	Sassari	Italy
4645	QSZ	Shizouka City	Shizouka City	Japan
4646	QTJ	Chartres	Chartres	France
4647	QTK	Rothenburg	Rothenburg	Germany
4648	QTP	Tana	Tana	Norway
4649	QTU	Itu	Itu	Brazil
4650	QTV	Traveso	Traveso	Italy
4651	QTW	Taejon	Taejon	South Korea
4652	QTZ	Coatzacoalcos	Coatzacoalcos	Mexico
4653	QUA	Puttgarden	Puttgarden	Germany
4654	QUC	Puerto La Gruz	Puerto La Gruz	Venezuela
4655	QUL	Ulm	Ulm	Germany
4656	QUN	Chun Chon City	Chun Chon City	South Korea
4657	QUQ	Caceres	Caceres	Spain
4658	QUT	Utsunomiya	Utsunomiya	Japan
4659	QUU	Chung Mu City	Chung Mu City	South Korea
4660	QVA	Varese	Varese	Italy
4661	QVD	Salo	Salo	Finland
4662	QVE	Forssa	Forssa	Finland
4663	QVF	Karkkila	Karkkila	Finland
4664	QVI	Valbonne	Valbonne	France
4665	QVK	Valkeakoski	Valkeakoski	Finland
4666	QVM	Hameenlinna	Hameenlinna	Finland
4667	QVN	Avellino	Avellino	Italy
4668	QVO	Havoeysund	Havoeysund	Norway
4669	QVS	Tervakoski	Tervakoski	Finland
4670	QVT	Riihimaki	Riihimaki	Finland
4671	QVU	Viru	Viru	Solomon Islands
4672	QVV	Heinola	Heinola	Finland
4673	QVW	Kotka	Kotka	Finland
4674	QVY	Bus Station	Kouvola	Finland
4675	QVZ	Hamina	Hamina	Finland
4676	QWG	Wilgrove Air Park	Charlotte	United States
4677	QWH	Lovelandbusstation Airport	Fortcollinsloveland	United States
4678	QWP	Van Service	Winter Park	United States
4679	QWT	Talavera De Reina	Talavera De Reina	Spain
4680	QWU	Wuerzburg	Wuerzburg	Germany
4681	QWW	Navalmoral Mata	Navalmoral Mata	Spain
4682	QWX	Merida	Merida	Spain
4683	QWY	Albanybus Airport	Corvallis	United States
4684	QXB	Aixlesmilles Airport	Aixenprovence	France
4685	QXD	Cachoeiro Itapemi	Cachoeiro Itapemi	Brazil
4686	QXG	Angers	Angers	France
4687	QXI	Loviisa	Loviisa	Finland
4688	QXJ	Porvoo	Porvoo	Finland
4689	QXP	Struga	Struga	North Macedonia
4690	QXY	Travelocity	Travelocity	United States
4691	QYR	Troyes	Troyes	France
4692	QYX	Uppsalac	Uppsalac	Sweden
4693	QZA	Zarqa	Zarqa	Jordan
4694	QZD	Czeged	Czeged	Hungary
4695	QZF	Font Romeu	Font Romeu	France
4696	QZH	Les Angles	Les Angles	France
4697	QZJ	Loimaa	Loimaa	Finland
4698	QZN	Relizane	Relizane	Algeria
4699	RAA	Rakanda	Rakanda	Papua New Guinea
4700	RAD	Road Town	Tortola	Virgin Islands (British)
4701	RAG	Raglan	Raglan	New Zealand
4702	RAN	La Spreta	Ravenna	Italy
4703	RAQ	Sugimanuru	Raha	Indonesia
4704	RAU	Rangpur	Rangpur	Bangladesh
4705	RAV	Cravo Norte	Cravonorte	Colombia
4706	QRO	Queretaro	Queretaro	Mexico
4707	QSF	Setif	Setif	Algeria
4708	QSR	Salerno	Salerno	Italy
4709	QUB	Ubari	Ubari	Libya
4710	RAB	Tokua	Rabaul	Papua New Guinea
4711	RAE	Arar	Arar	Saudi Arabia
4712	RAH	Rafha	Rafha	Saudi Arabia
4713	RAI	Francisco Mendes	Praia	Cape Verde
4714	RAK	Menara	Marrakech	Morocco
4715	RAM	Ramingining	Ramingining	Australia
4716	RAO	Leite Lopes	Ribeiraopreto	Brazil
4717	RAP	Rapid City	Rapid	United States
4718	RAR	Rarotonga	Rarotonga	Cook Islands
4719	RAT	Raduzhnyi	Raduzhny	Russia
4720	QUF	Pirita Harbour	Tallinn	Estonia
4721	RAF	Ras An Naqb	Rasannaqb	Egypt
4722	RAW	Arawa	Arawa	Papua New Guinea
4723	RAX	Oram	Oram	Papua New Guinea
4724	RBC	Robinvale	Robinvale	Australia
4725	RBF	Big Bear City	Bigbear	United States
4726	RBG	Roseburg	Roseburg	United States
4727	RBH	Brooks Lodge	Brookslodge	United States
4728	RBI	Rabi	Rabi	Fiji Islands
4729	RBJ	Rebun	Rebun	Japan
4730	RBN	Fort Jefferson	Fort Jefferson	United States
4731	RBO	Robore	Robore	Bolivia
4732	RBP	Rabaraba	Rabaraba	Papua New Guinea
4733	RBS	Orbost	Orbost	Australia
4734	RBT	Marsabit	Marsabit	Kenya
4735	RBU	Roebourne	Roebourne	Australia
4736	RCM	Richmond	Richmond	Australia
4737	RCN	American River	American River	Australia
4738	RCP	Cinder River	Cinder Park	United States
4739	RCT	Miller Field	Reed City	United States
4740	RDA	Rockhampton Downs	Rockhampton Downs	Australia
4741	RDB	Red Dog	Red Dog	United States
4742	RDE	Merdey	Merdey	Indonesia
4743	RDP	Kazi Nazrul Islam Airport	Durgapur	India
4744	RDT	Richard Toll	Richardtoll	Senegal
4745	REA	Reao	Reao	French Polynesia
4746	RED	Mifflin County	Reedsville	United States
4747	REH	Rehoboth Beach	Rehoboth Beach	United States
4748	REI	Regina	Regina	French Guiana
4749	REK	Reykjavik	Reykjavik	Iceland
4750	REW	Rewa	Rewa	India
4751	REZ	Resende	Resende	Brazil
4752	RFA	Rafai	Rafai	Central African Republic
4753	RFN	Raufarhofn	Raufarhofn	Iceland
4754	RFR	Rio Frio	Riofrio	Costa Rica
4755	RGE	Porgera	Porgera	Papua New Guinea
4756	RGH	Balurghat	Balurghat	India
4757	RGR	Ranger	Ranger	United States
4758	RHA	Reykholar	Reykholar	Iceland
4759	RHG	Ruhengeri	Ruhengeri	American Samoa
4760	RHL	Roy Hill	Roy Hill	Australia
4761	RHN	Rosh Pina	Roshpina	Namibia
4762	RBA	Sale	Rabat	Morocco
4763	RBB	Borba	Borba	Brazil
4764	RBE	Ratanakiri	Ratanakiri	Cambodia
4765	RBK	French Valley	Rancho California	United States
4766	RBL	Fss	Red Bluff	United States
4767	RBM	Wallmuhle	Straubing	Germany
4768	RBR	Pres. Medici	Riobranco	Brazil
4769	RBV	Ramata	Ramata	Solomon Islands
4770	RBY	Ruby	Ruby	United States
4771	RCB	Richards Bay	Richardsbay	South Africa
4772	RCL	Redcliffe	Redcliffe	Vanuatu
4773	RCO	Saint Agnant	Rochefort	France
4774	RCQ	Reconquista	Reconquista	Argentina
4775	RCS	Rochester	Rochester	United Kingdom
4776	RCU	Rio Cuarto	Rio Cuarto	Argentina
4777	RDC	Redencao	Redencao	Brazil
4778	RDD	Redding	Redding	United States
4779	RDM	Roberts Field	Redmond	United States
4780	RDN	LTS Pulau	Redang	Malaysia
4781	RDS	Rincon De Los Sauces	Rincon De Los Sauces	Argentina
4782	RDU	Raleigh	Raleighdurham	United States
4783	RDZ	Marcillac	Rodez	France
4784	REC	Guararapes Intl	Recife	Brazil
4785	REG	Tito Menniti	Reggiodicalabria	Italy
4786	REL	Trelew	Trelew	Argentina
4787	REN	Orenburg	Orenburg	Russia
4788	REP	Siem Reap	Siem Reap	Cambodia
4789	RES	Resistencia	Resistencia	Argentina
4790	RET	Stolport	Rost	Norway
4791	REU	Reus	Reus	Spain
4792	REX	Gen Lucio Blanco	Reynosa	Mexico
4793	REY	Reyes	Reyes	Bolivia
4794	RFP	Raiatea	Raiatea	French Polynesia
4795	RFS	Rosita	Rosita	Nicaragua
4796	RGA	Rio Grande	Rio Grande	Argentina
4797	RGI	Rangiroa	Rangiroa	French Polynesia
4798	RGK	Gorno Altaysk	Gorno Altaysk	Russia
4799	RGN	Mingaladon	Yangon	Myanmar
4800	RGS	Burgos	Burgos	Spain
4801	RGT	Japura	Rengat	Indonesia
4802	RHD	Rio Hondo	Rio Hondo	Argentina
4803	RHE	Reims	Reims	France
4804	RHI	Oneida County	Rhinelander	United States
4805	RDV	Red Devil	Reddevil	United States
4806	RHV	Reid hillview	San Jose	United States
4807	RID	Richmond	Richmond	United States
4808	RIE	Rice Lake	Ricelake	United States
4809	RIF	Reynolds	Richfield	United States
4810	RIJ	Rioja	Rioja	Peru
4811	RIK	Carrillo	Carrillo	Costa Rica
4812	RIM	Rodriguez De Mendoza	Rodriguez De Mendoza	Peru
4813	RIO	Rio De Janeiro	Riodejaneiro	Brazil
4814	RIT	Rio Tigre	Riotigre	Panama
4815	RIZ	Rio Alzucar	Rio Alzucar	Panama
4816	RJB	Rajbiraj	Rajbiraj	Nepal
4817	RJI	Rajouri	Rajouri	India
4818	RKI	Rokot	Rokot	Indonesia
4819	RKO	Sipora	Sipora	Indonesia
4820	RKU	Kairuku	Yuleisland	Papua New Guinea
4821	RKW	Rockwood	Rockwood	United States
4822	RKY	Rokeby	Rokeby	Australia
4823	RLA	National	Rolla	United States
4824	RLD	Richland	Richland	United States
4825	RLP	Rosella Plains	Rosella Plains	Australia
4826	RLT	Arlit	Arlit	Niger
4827	RLU	Upper	Bornite	United States
4828	RMB	Buraimi	Buraimi	Oman
4829	RMD	Ramagundam	Ramagundam	India
4830	RMN	Rumginae	Rumginae	Papua New Guinea
4831	RMT	Rimatara	Rimatara	French Polynesia
4832	RNC	Warren County	McMinnville	United States
4833	RNG	Rangely	Rangely	United States
4834	RNH	New Richmond	New Richmond	United States
4835	RNR	Robinson River	Robinsonriver	Papua New Guinea
4836	RNU	Ranau	Ranau	Malaysia
4837	RNZ	Rensselaer	Rensselaer	United States
4838	ROG	Rogers	Rogers	United States
4839	ROH	Robinhood	Robinhood	Australia
4840	ROL	Roosevelt	Roosevelt	United States
4841	ROM	Rome	Rome	Italy
4842	RON	Rondon	Rondon	Colombia
4843	RIA	Base Aerea De Santa Maria	Santamaria	Brazil
4844	RIB	Gen Buech	Riberalta	Bolivia
4845	RIC	Richmond	Richmond	United States
4846	RIN	Ringi Cove	Ringicove	Solomon Islands
4847	RIS	Rishiri	Rishiri	Japan
4848	RIW	Riverton	Riverton	United States
4849	RIX	Riga	Riga	Latvia
4850	RIY	Mukalla	Mukalla	Yemen
4851	RJA	Rajahmundry	Rajahmundry	India
4852	RJK	Rijeka	Rijeka	Croatia
4853	RJL	Agoncillo	Logrono	Spain
4854	RJN	Rafsanjan	Rafsanjan	Iran
4855	RKD	Knox County Regional	Rockland	United States
4856	RKH	Rock Hill	Rock Hill	United States
4857	RKP	Aransas County	Rockport	United States
4858	RKS	Sweetwater County	Rocksprings	United States
4859	RKT	Ras Al Khaimah	Rasalkhaimah	United Arab Emirates
4860	RKV	Keflavik	Reykjavik	Iceland
4861	RLG	Laage	Rostock	Germany
4862	RMF	Marsa Alam	Marsaalam	Egypt
4863	RMG	Richard B Russell	Rome	United States
4864	RMI	Miramare	Rimini	Italy
4865	RML	Ratmalana	Colombo	Sri Lanka
4866	RMQ	Chingchuankang	Taichung	China
4867	RMS	Ramstein	Ramstein	Germany
4868	RNA	Ulawa Airport	Arona	Solomon Islands
4869	RNB	Kallinge	Ronneby/karlskrona	Sweden
4870	RNI	Corn Island	Cornisland	Nicaragua
4871	RNJ	Yoronjima	Yoronjima	Japan
4872	RNL	Rennell	Rennell	Solomon Islands
4873	RNN	Bornholm	Bornholm	Denmark
4874	RNO	Reno	Reno	United States
4875	RNT	Renton	Renton	United States
4876	ROA	Regional Airport	Roanoke	United States
4877	ROB	Roberts Intl	Monrovia	Liberia
4878	ROD	Robertson	Robertson	South Africa
4879	ROI	Roi Et	Roietmuang	Thailand
4880	ROK	Rockhampton	Rockhampton	Australia
4881	ROO	Rondonopolis	Rondonopolis	Brazil
4882	ROP	Rota	Rota	Northern Mariana Islands
4883	ROS	Fisherton	Rosario	Argentina
4884	ROT	Rotorua	Rotorua	New Zealand
4885	RIG	Rio Grande	Rio Grande	Brazil
4886	RMP	Rampart	Rampart	United States
4887	RNP	Rongelap	Rongelapisland	Marshall Islands
4888	ROU	Rousse	Ruse	Bulgaria
4889	ROX	Roseau	Roseau	United States
4890	ROY	Rio Mayo	Riomayo	Argentina
4891	RPA	Rolpa	Rolpa	Nepal
4892	RPM	Ngukurr	Ngukurr	Australia
4893	RPV	Roper Valley	Roper Valley	Australia
4894	RRE	Marree	Marree	Australia
4895	RRI	Barora	Barora	Solomon Islands
4896	RRL	Merrill	Merrill	United States
4897	RRM	Marromeu	Marromeu	Mozambique
4898	RRN	Serra Norte	Serranorte	Brazil
4899	RRO	Sorrento	Sorrento	Italy
4900	RRR	Raroia	Raroia	French Polynesia
4901	RRT	Warroad	Warroad	United States
4902	RRV	Robinson River	Robinson River	Australia
4903	RSB	Roseberth	Roseberth	Australia
4904	RSE	Rose Bay	Sydney	Australia
4905	RSG	Serra Pelada	Serra Pelada	Brazil
4906	RSI	Rio Sidra	Rio Sidra	Panama
4907	RSK	Ransiki	Ransiki	Indonesia
4908	RSN	Ruston	Ruston	United States
4909	RSX	Rouses Point	Rouses Point	United States
4910	RTC	Ratnagiri	Ratnagiri	India
4911	RTD	Rotunda	Rotunda	United States
4912	RTE	Marguerite Bay	Marguerite Bay	United States
4913	RTI	Roti	Roti	Indonesia
4914	RTN	Crews Field	Raton	United States
4915	RTP	Rutland Plains	Rutland Plains	Australia
4916	RTY	Merty	Merty	Australia
4917	RUF	Yuruf	Yuruf	Indonesia
4918	RUG	Rugao	Rugao	China
4919	RUP	Rupsi	Rupsi	India
4920	RUR	Rurutu	Rurutu	French Polynesia
4921	RUU	Ruti	Ruti	Papua New Guinea
4922	RUV	Rubelsanto	Rubelsanto	Guatemala
4923	RUY	Ruinas de Copan	Ruinas de Copan	Honduras
4924	RVC	Rivercess	Rivercess	Liberia
4925	RVO	Reivilo	Reivilo	South Africa
4926	RVR	Green River	Green River	United States
4927	RWB	Rowan Bay	Rowan Bay	United States
4928	RWF	Muni	Redwood Falls	United States
4929	RWP	Rawalpindi	Rawalpindi	Pakistan
4930	RWS	Sumare	Sumare	Brazil
4931	RXA	Raudha	Raudha	Yemen
4932	RZN	Ryazan	Ryazan	Russia
4933	ROW	Industrial	Roosevelt	United States
4934	RPN	Rosh Pina	Roshpina	Israel
4935	RPR	Raipur	Raipur	India
4936	RRG	Rodrigues Island	Rodriguesis	Mauritius
4937	RRK	Rourkela	Rourkela	India
4938	RRS	Roros	Roros	Norway
4939	RSD	S Eleuthera	Rocksound	The Bahamas
4940	RSH	Russian Airport	Russianmission	United States
4941	RSS	Roseires	Damazin	Sudan
4942	RSU	Yeosu	Yeosu	South Korea
4943	RSW	Southwest Florida Reg	Fortmyers	United States
4944	RTA	Rotuma Island	Rotumaisland	Fiji Islands
4945	RTB	Roatan	Roatan	Honduras
4946	RTG	Ruteng	Ruteng	Indonesia
4947	RTS	Rottnest Island	Rottnest Island	Australia
4948	RTW	Saratov	Saratov	Russia
4949	RUA	Arua	Arua	Uganda
4950	RUD	Shahrud	Shahrud	Iran
4951	RUH	King Khaled Intl	Riyadh	Saudi Arabia
4952	RUK	Rukumkot	Rukumkot	Nepal
4953	RUM	Rumjatar	Rumjatar	Nepal
4954	RUN	Gillot	Saintdenisreunion	Reunion
4955	RUS	Marau Sound	Marausound	Solomon Islands
4956	RVA	Farafangana	Farafangana	Madagascar
4957	RVD	Rio Verde	Rio Verde	Brazil
4958	RVE	Los Colonizadores	Saravena	Colombia
4959	RVK	Ryumsjoen	Rorvik	Norway
4960	RVN	Rovaniemi	Rovaniemi	Finland
4961	RVV	Raivavae	Rairua	French Polynesia
4962	RVY	Rivera	Rivera	Uruguay
4963	RWI	Rocky Mount wilson	Rockymount	United States
4964	RWL	Rawlins	Rawlins	United States
4965	RWN	Rovno	Rivne	Ukraine
4967	RYG	Mossrygge Airport	Oslo	Norway
4968	RYK	Rahim Yar Khan	Rahimyarkhan	Pakistan
4969	RYN	Medis	Royan	France
4970	RZE	Jasionka	Rzeszow	Poland
4971	RRA	Ronda	Ronda	Spain
4972	RQY	Shivamogga Domestic Airport	Shivamogga	India
4973	RSJ	Rosario	Rosario	United States
4974	RZS	Sawan	Sawan	Pakistan
4975	RZY	Rezayieh	Rezayieh	Iran
4976	RZZ	Halifax County	Roanokerapids	United States
4977	SAE	Sangir	Sangir	Indonesia
4978	SAG	Shirdi Airport	Shirdi	India
4979	SAJ	Sirajganj	Sirajganj	Bangladesh
4980	SAM	Salamo	Salamo	Papua New Guinea
4981	SAO	Sao Paulo	Sao Paulo	Brazil
4982	SAS	Salton City	Salton City	United States
4983	SAZ	Sasstown	Sasstown	Liberia
4984	SBC	Selbang	Selbang	Papua New Guinea
4985	SBE	Suabi	Suabi	Papua New Guinea
4986	SBF	Sardeh Band	Sardeh Band	Afghanistan
4987	SBH	St. Barthelemy	St. Barthelemy	Guadeloupe
4988	SBI	Sambailo	Koundara	Guinea
4989	SBJ	Sao Mateus	Sao Mateus	Brazil
4990	SBO	Salina	Salina	United States
4991	SBQ	Sibi	Sibi	Pakistan
4992	SBT	Tri City	San Bernardino	United States
4993	SBV	Sabah	Sabah	Papua New Guinea
4994	SCA	Santa Catalina	Santacatalina	Colombia
4995	SCD	Sulaco	Sulaco	Honduras
4996	SCG	Spring Creek	Spring Creek	Australia
4997	SCJ	Smith Cove	Smithcove	United States
4998	SCP	St Crepin	Saint Crepin	France
4999	SCR	Scranton Municipal	Scranton Municipal	United States
5000	SDA	Baghdad	Baghdad	Iraq
5001	SDC	Sandcreek	Sandcreek	Guyana
5002	SDH	Santa Rosa Copan	Santa Rosa De Copan	Honduras
5003	SDI	Saidor	Saidor	Papua New Guinea
5004	SAA	Shively Field	Saratoga	United States
5005	SAD	Safford	Safford	United States
5006	SAF	Santa Fe	Santafe	United States
5007	SAH	El Rahaba Airport Sanaa Intenational	Sanaa	Yemen
5008	SAK	Saudarkrokur	Saudarkrokur	Iceland
5009	SAN	San Diego	Sandiego	United States
5010	SAP	Ramon Villeda Morales	Sanpedrosula	Honduras
5011	SAQ	San Andros	Sanandros	The Bahamas
5012	SAT	San Antonio	Sanantonio	United States
5013	SAV	Savannah	Savannah/hiltonhead	United States
5014	SAW	Sabiha Gokcen	Istanbul	Turkey
5015	SBA	Santa Barbara Municipal	Santabarbara	United States
5016	SBB	Santa Barbara Ba	Santa Barbara Ba	Venezuela
5017	SBG	Narita	Sabang	Indonesia
5018	SBK	Saint Brieuc Armor	Saintbrieuc	France
5019	SBL	Yacuma	Santaana	Bolivia
5020	SBM	Sheboygan	Sheboygan	United States
5021	SBN	South Bend Regional	Southbend	United States
5022	SBP	San Luis County Regional Airport	Sanluisobispo	United States
5023	SBS	Steamboat Springs	Steamboatsprings	United States
5024	SBU	Springbok	Springbok	South Africa
5025	SBW	Sibu	Sibu	Malaysia
5026	SBZ	Sibiu	Sibiu	Romania
5027	SCC	Prudhoe Bay	Prudhoebaydeadh	United States
5028	SCE	University Park	Statecollege	United States
5029	SCF	Scottsdale Municipal	Phoenix	United States
5030	SCH	County	Schenectady	United States
5031	SCK	Metropolitan Airport	Sacramento	United States
5032	SCL	Arturo Merino Benitez	Santiago	Chile
5033	SCM	SPB	Scammonbay	United States
5034	SCN	Ensheim	Saarbruecken	Germany
5035	SCQ	Santiago De Compostela	Santiagodecompostela	Spain
5036	SCS	Scatsta	Shetland Islands	United Kingdom
5037	SCT	Socotra	Socotra	Yemen
5038	SCU	Antonio Maceo	Santiago	Cuba
5039	SCV	Salcea	Suceava	Romania
5040	SCY	San Cristobal	Sancristobal	Ecuador
5041	SCZ	Santa Cruz Island	Santacruzis	Solomon Islands
5042	SDB	Langebaanweg	Saldanha	South Africa
5043	SDD	Lubango	Lubango	Angola
5044	SDF	International Standiford Field	Louisville	United States
5045	SDG	Sanandaj	Sanandaj	Iran
5046	SDJ	Sendai	Sendai	Japan
5047	SDK	Sandakan	Sandakan	Malaysia
5048	SDL	Sundsvall	Sundsvallharnosand	Sweden
5049	SAI	Siem Reap	Siem Reap	Cambodia
5050	SAU	Sawu	Sawu	Indonesia
5051	SAX	Sambu	Sambu	Panama
5052	SCX	Salina Cruz	Salinacruz	Mexico
5053	SDO	Ryotsu Sado Island	Ryotsu Sado Island	Japan
5054	SDW	Sandwip	Sandwip	Bangladesh
5055	SDZ	Shetland Islands	Shetland Islands	United Kingdom
5056	SEC	Serre Chevalier	Serre Chevalier	France
5057	SED	Min'hat Hashnayim	Sedom	Israel
5058	SEG	Penn Valley	Selinsgrove	United States
5059	SEI	Senhor Do Bonfim	Senhor Do Bonfim	Brazil
5060	SEJ	Seydisfjordur	Seydisfjordur	Iceland
5061	SEL	Seoul	Seoul	South Korea
5062	SEO	Seguela	Seguela	Cote D'Ivoire (Ivory Coast)
5063	SEQ	Sungai Pakning	Sungaipinang	Indonesia
5064	SER	Freeman Municipal	Seymour	United States
5065	SES	Selfield	Selma	United States
5066	SET	San Esteban	San Esteban	Honduras
5067	SEV	Severodoneck	Severodoneck	Ukraine
5068	SEW	Siwa	Siwa	Egypt
5069	SEX	Sembach	Sembach	Germany
5070	SFG	Esperance	Esperance	Guadeloupe
5071	SFI	Safi	Safi	Morocco
5072	SFP	Surfers Paradise	Surfers Paradise	Australia
5073	SFU	Safia	Safia	Papua New Guinea
5074	SFV	Santa Fe Do Sul	Santa Fe Do Sul	Brazil
5075	SFW	Santa Fe	Santafe	Panama
5076	SFX	San Felix	San Felix	Venezuela
5077	SFY	Springfield	Springfield	United States
5078	SGA	Sheghnan	Sheghnan	Afghanistan
5079	SGB	Singaua	Singaua	Papua New Guinea
5080	SGG	Simanggang	Simanggang	Malaysia
5081	SGI	Apt	Sargodha	Pakistan
5082	SGK	Sangapi	Sangapi	Papua New Guinea
5083	SGM	San Ignacio	San Ignacio	Mexico
5084	SGP	Shay Gap	Shay Gap	Australia
5085	SGQ	Sanggata	Sanggata	Indonesia
5086	SGS	Sanga Sanga	Sanga Sanga	Philippines
5087	SGT	Stuttgart	Stuttgart	United States
5088	SGW	Saginaw Bay	Saginaw Bay	United States
5089	SHF	Shanhaiguan	Shanhaiguan	China
5090	SDP	Sand Point Municipal	Sandpoint	United States
5091	SDQ	Las Americas	Santodomingo	Dominican Republic
5092	SDS	Sado Shima	Sadoshima	Japan
5093	SDT	Saidu Sharif	Saidusharif	Pakistan
5094	SDU	Santos Dumont	Riodejaneiro	Brazil
5095	SDV	Sde Dov	Telavivyafo	Israel
5096	SDX	Sedona	Sedona	United States
5097	SEA	Seattle	Seattle	United States
5098	SEB	Sebha	Sebha	Libya
5099	SEE	Gillespie Field	San Diego	United States
5100	SEF	Sebring	Sebring	United States
5101	SEK	Er Errachidia	Ksar Es Souk	Morocco
5102	SEN	London Southend	SOUTHEND	United Kingdom
5103	SEP	Clark Field	Stephenville	United States
5104	SEY	Selibaby	Selibaby	Mauritania
5105	SEZ	Seychelles International Airport	Maheisland	Sierra Leone
5106	SFA	Sfax Thyna	Sfax	Tunisia
5107	SFC	St Francois	Saint Francois	Guadeloupe
5108	SFD	Las Flecheras	Sanfernandodeapure	Venezuela
5109	SFE	San Fernando	Sanfernando	Philippines
5110	SFF	Felts Field	Spokane	United States
5111	SFJ	Kangerlussuaq	Kangerlussuaq	Greenland
5112	SFK	Soure	Soure	Brazil
5113	SFL	Sao Filipe	Saofilipe	Cape Verde
5114	SFN	Santa Fe	Santa Fe	Argentina
5115	SFQ	Sanliurfa	Sanliurfa	Turkey
5116	SFS	Subic Bay	Subicbay	Philippines
5117	SFT	Skelleftea	Skelleftea	Sweden
5118	SGC	Surgut	Surgut	Russia
5119	SGD	Sonderborg	Sonderborg	Denmark
5120	SGF	Springfield Branson Rg	Springfield	United States
5121	SGH	Springfield	Springfield	United States
5122	SGN	Tan Son Nhat International	Hochiminh	Vietnam
5123	SGO	St. George	Saintgeorge	Australia
5124	SGU	Saint George Municipal	Saintgeorge	United States
5125	SGV	Sierra Grande	Sierra Grande	Argentina
5126	SGX	Songea	Songea	Tanzania
5127	SGY	Skagway Municipal	Skagway	United States
5128	SGZ	Songkhla	Songkhla	Thailand
5129	SHB	Nakashibetsu	Nakashibetsu	Japan
5130	SHD	Shenandoah Valley	Staunton	United States
5131	SHE	Shenyang	Shenyang	China
5132	SFM	Sanford	Sanford	United States
5133	SGJ	Sagarai	Sagarai	Papua New Guinea
5134	SHK	Sehonghong	Sehonghong	Lesotho
5135	SHO	Seolak	Sokcho	South Korea
5136	SHQ	Southport	Southport	Australia
5137	SHS	Shashi	Shashi	China
5138	SHU	Smith Point	Smith Point	Australia
5139	SHZ	Seshutes	Seshutes	Lesotho
5140	SIC	Sinop	Sinop	Turkey
5141	SIE	Sines	Sines	Portugal
5142	SIH	Silgadi Doti	Silgadidoti	Nepal
5143	SII	Sidi Ifni	Sidiifni	Morocco
5144	SIL	Sila	Sila	Papua New Guinea
5145	SIO	Smithton	Smithton	Australia
5146	SIV	Sullivan	Sullivan County	United States
5147	SIX	Singleton	Singleton	Australia
5148	SIY	Siskiyou County	Montague	United States
5149	SIZ	Sissano	Sissano	Papua New Guinea
5150	SJA	San Juan	Sanjuan	Peru
5151	SJB	San Joaquin	San Joaquin	Bolivia
5152	SJF	St. John Island	Saintjohnisland	Virgin Islands (US)
5153	SJG	San Pedro Jagua	San Pedro Jagua	Colombia
5154	SJH	San Juan Del Cesar	Sanjuandelcesar	Colombia
5155	SJM	San Juan	San Juan	Dominican Republic
5156	SJN	St Johns	Saint Johns Municipal	United States
5157	SJQ	Sesheke	Sesheke	Zambia
5158	SJR	San Juan D Ur	San Juan De Uraba	Colombia
5159	SJS	San Jose	San Jose	Bolivia
5160	SJV	San Javier	San Javier	Bolivia
5161	SKI	Skikda	Skikda	Algeria
5162	SKJ	Sitkinak Cgs	Sitkinakisland	United States
5163	SKL	Broadford	Isle of Skye	United Kingdom
5164	SKM	Skeldon	Skeldon	Guyana
5165	SKQ	Sekakes	Sekakes	Lesotho
5166	SKR	Shakiso	Shakiso	Ethiopia
5167	SKW	Skwentna	Skwentna	United States
5168	SHI	Shimojishima	Shimojishima	Japan
5169	SHJ	Sharjah	Sharjah	United Arab Emirates
5170	SHL	Shillong	Shillong	India
5171	SHM	Shirahama	Shirahama	Japan
5172	SHP	Qinhuangdao	Qinhuangdao	China
5173	SHR	Sheridan	Sheridan	United States
5174	SHT	Shepparton	Shepparton	Australia
5175	SHV	Shreveport	Shreveport	United States
5176	SHW	Sharurah	Sharurah	Saudi Arabia
5177	SHY	Shinyanga	Shinyanga	Tanzania
5178	SIA	Xiguan	Xian	China
5179	SIF	Simara	Simara	Nepal
5180	SIG	Isla Grande	San Juanisla	Puerto Rico
5181	SIJ	Siglufjordur	Siglufjordur	Iceland
5182	SIK	Sikeston	Sikeston	United States
5183	SIN	Changi	Singapore	Singapore
5184	SIQ	Dabo	Singkep	Indonesia
5185	SIR	Sion	Sion	Switzerland
5186	SIS	Sishen	Sishen	South Africa
5187	SIT	Sitka	Sitka	United States
5188	SIU	Siuna	Siuna	Nicaragua
5189	SJD	Los Cabos	Sanjosecabo	Mexico
5190	SJE	San Jose Del Gua	Sanjosedelgua	Colombia
5191	SJI	Mcguire Fld	Sanjose	Philippines
5192	SJJ	Sarajevo	Sarajevo	Bosnia and Herzegovina
5193	SJK	Sao Jose Dos Campos	Sao Jose Dos Campos	Brazil
5194	SJL	Da Cachoeira	Saogabriel	Brazil
5195	SJP	Sao Jose Do Rio Preto	Sao Jose Do Rio Preto	Brazil
5196	SJT	Mathis Fld	Sanangelo	United States
5197	SJU	Luis Munoz Marin Intl	Sanjuan	Puerto Rico
5198	SJY	Ilmajoki	Seinajoki	Finland
5199	SJZ	Sao Jorge Island	Saojorgeisland	Portugal
5200	SKB	Robert L Bradshaw International	Golden Rock	Saint Kitts and Nevis
5201	SKD	Samarkand	Samarkand	Uzbekistan
5202	SKE	Skien	Skien	Norway
5203	SKH	Kadmandu	Surkhet	Nepal
5204	SKK	Shaktoolik	Shaktoolik	United States
5205	SKN	Skagen	Stokmarknes	Norway
5206	SKO	Sokoto	Sokoto	Nigeria
5207	SKP	Skopje	Skopje	North Macedonia
5208	SKS	Vojens	Vojens	Denmark
5209	SKU	Skiros	Skyros	Greece
5210	SKV	Mount Sinai	Santakatarina	Egypt
5211	SKX	Saransk	Saransk	Russia
5212	SKY	Griffing Sandusky	Sandusky	United States
5213	SKZ	Sukkur	Sukkur	Pakistan
5214	SIM	Simbai	Simbai	Papua New Guinea
5215	SJX	Sartaneja	Sartaneja	Belize
5216	SKC	Suki	Suki	Papua New Guinea
5217	SLB	Storm Lake Municipal	Storm Lake Municipal	United States
5218	SLI	Solwezi	Solwezi	Zambia
5219	SLO	Leckrone	Salem	United States
5220	SLR	Sulphur Springs	Sulphur Springs	United States
5221	SLS	Silistra	Silistra	Bulgaria
5222	SLT	Salida	Salida	United States
5223	SMB	Cerro Sombrero	Cerrosombrero	Chile
5224	SMC	Santa Maria	Santa Maria	Colombia
5225	SMG	Santa Maria	Santa Maria	Peru
5226	SMH	Sapmanga	Sapmanga	Papua New Guinea
5227	SMJ	Sim	Sim	Papua New Guinea
5228	SMM	Semporna	Semporna	Malaysia
5229	SMP	Stockholm	Stockholm	Papua New Guinea
5230	SMT	Sun Moon Lake	Sun Moon Lake	Taiwan
5231	SMY	Simenti	Simenti	Senegal
5232	SNB	Snake Bay	Snake Bay	Australia
5233	SND	Seno	Seno	Laos
5234	SNG	San Ignacio De Velasco	Sanignaciodeve	Bolivia
5235	SNH	Stanthorpe	Stanthorpe	Australia
5236	SNI	R.E. Murray	Sinoe	Liberia
5237	SNJ	San Julian	San Julian	Cuba
5238	SNK	Winston Field	Winston Field	United States
5239	SNM	San Ignacio De Moxos	Sanignaciodem	Bolivia
5240	SNQ	San Quintin	San Quintin	Mexico
5241	SNS	Salinas	Salinas	United States
5242	SNT	Sabana De Torres	Sabana De Torres	Colombia
5243	SNX	Sabana De Mar	Sabana De Mar	Dominican Republic
5244	SOA	Soc Trang	Soc Trang	Vietnam
5245	SOE	Souanke	Souanke	Congo
5246	SOH	Solita	Solita	Colombia
5247	SOI	South Molle Island	Southmolleislan	Australia
5248	SOK	Semongkong	Semongkong	Lesotho
5249	SOL	Solomon	Solomon	United States
5250	SOR	Al Thaurah	Al Thaurah	Syria
5251	SOV	Seldovia	Seldovia	United States
5252	SLC	Salt Lake City	Saltlake	United States
5253	SLD	Sliac	Sliac	Slovakia
5254	SLF	Sulayel	Sulayel	Saudi Arabia
5255	SLH	Sola	Sola	Vanuatu
5256	SLJ	Stellar Air Park	Chandler	United States
5257	SLK	Adirondack	Saranaclake	United States
5258	SLL	Salalah	Salalah	Oman
5259	SLN	Salina	Salina	United States
5260	SLP	San Luis Potosi	Sanluispotosi	Mexico
5261	SLQ	Sleetmute	Sleetmute	United States
5262	SLV	Simla	Simla	India
5263	SLW	Saltillo	Saltillo	Mexico
5264	SLX	Salt Cay	Saltcay	Turks and Caicos Islands
5265	SLY	Salekhard	Salekhard	Russia
5266	SMA	Vila Do Porto	Santamariaisland	Portugal
5267	SME	Pulaski County	Somerset	United States
5268	SMF	Sacramento International	Sacramento	United States
5269	SMI	Samos	Samos	Greece
5270	SMK	St. Michael	Saintmichael	United States
5271	SMN	Salmon	Salmon	United States
5272	SMO	Santa Monica	Santa Monica	United States
5273	SMQ	Sampit	Sampit	Indonesia
5274	SMR	Simon Bolivar	Santamarta	Colombia
5275	SMV	Samedan	Saintmoritz	Switzerland
5276	SMW	Smara	Smara	Morocco
5277	SMX	Santa Maria	Santamaria	United States
5278	SMZ	Stoelmans Eiland	Stoelmanseiland	Suriname
5279	SNC	Salinas	Salinas	Ecuador
5280	SNE	Preguica	Saonicolauisland	Cape Verde
5281	SNF	San Felipe	Sanfelipe	Venezuela
5282	SNN	Shannon	Shannon	Ireland
5283	SNP	Saint Paul Island	Saintpaulisland	United States
5284	SNR	Montoir	Saintnazaire	France
5285	SNU	Abel Santa Maria	Santaclara	Cuba
5286	SNV	Santa Elena	Santaelena	Venezuela
5287	SNW	Thandwe	Thandwe	Myanmar
5288	SNZ	Santa Cruz	Santa Cruz	Brazil
5289	SOB	Saarmelleek	Balaton	Hungary
5290	SOC	Adi Sumarmo	Solo	Indonesia
5291	SOF	Vrazhdebna	Sofia	Bulgaria
5292	SOG	Haukasen	Sogndal	Norway
5293	SOJ	Sorkjosen	Sorkjosen	Norway
5294	SOM	Edmundo Barrios	Santome	Venezuela
5295	SON	Pekoa	Espiritusanto	Vanuatu
5296	SOO	Soderhamn	Soderhamn	Sweden
5297	SOQ	Jefman	Sorong	Indonesia
5298	SOT	Sodankyla	Sodankyla	Finland
5299	SOU	Southampton Airport	Southampton	United Kingdom
5300	SOX	Alberto Lleras Camargo	Sogamoso	Colombia
5301	SPA	Downtown Memorial	Greenville	United States
5302	SPE	Sepulot	Sepulot	Malaysia
5303	SPH	Sopu	Sopu	Papua New Guinea
5304	SPK	Sapporo	Sapporo	Japan
5305	SPL	Schipholrailstation	Schipholrailstation	Netherlands
5306	SPO	San Pablo	San Pablo	Spain
5307	SPQ	Catalinaspb Airport	Sanpedro	United States
5308	SPT	Sipitang	Sipitang	Malaysia
5309	SPV	Sepik Plains	Sepik Plains	Papua New Guinea
5310	SPZ	Springdale	Springdale	United States
5311	SQA	Santa Ynez	Santa Ynez	United States
5312	SQB	Santa Ana	Santa Ana	Colombia
5313	SQC	Southern Cross	Southern Cross	Australia
5314	SQE	San Luis De Pale	San Luis De Pale	Colombia
5315	SQF	Solano	Solano	Colombia
5316	SQI	County	Sterlingrockfalls	United States
5317	SQJ	Shehdi	Shehdi	Ethiopia
5318	SQK	Sidi Barani	Sidibarani	Egypt
5319	SQM	Sao Miguel Azores	Sao Miguel Araguaia	Brazil
5320	SQN	Sanana	Sanana	Indonesia
5321	SQP	Starcke	Starcke	Australia
5322	SQS	Matthew Spain	Matthew Spain	Belize
5323	SQT	China Straits Airstrip	Samaraiisl	Papua New Guinea
5324	SQU	Saposoa	Saposoa	Peru
5325	SQV	Sequim Valley	Sequim	United States
5326	SQX	Sao Miguel Do Oeste	Sao Miguel Do Oeste	Brazil
5327	SQY	Sao Lourenco Do Sul	Sao Lourenco Do Sul	Brazil
5328	SRB	Santa Rosa	Santa Rosa	Bolivia
5329	SRC	Searcy	Searcy	United States
5330	SRD	San Ramon	San Ramon	Bolivia
5331	SRF	Hamilton Field	San Rafael	United States
5332	SRK	Sierra Leone	Sierraleone	Sierra Leone
5333	SRL	Santa Rosalia	Santa Rosalia	Mexico
5334	SRM	Sandringham	Sandringham	Australia
5335	SRO	Santana Ramos	Santana Ramos	Colombia
5336	SRS	Cartagena	San Marcos	Colombia
5337	SRU	Skypark	Santa Cruz	United States
5338	SRW	Rowan County	Salisbury	United States
5339	SSD	San Felipe	Sanfelipe	Colombia
5340	SSF	Stinson Municipal	San Antonio	United States
5341	SSK	Sturt Creek	Sturt Creek	Australia
5342	SSL	Santa Rosalia	Santarosalia	Colombia
5343	SSM	Sault Ste. Marie	Sault Ste Marie	United States
5344	SSO	Sao Lourenco	Saolourenco	Brazil
5345	SSP	Silver Plains	Silver Planes	Australia
5346	SSQ	La Sarre	La Sarre	Canada
5347	SSS	Siassi	Siassi	Papua New Guinea
5348	SOY	Stronsay	Stronsay	United Kingdom
5349	SOZ	Solenzara	Solenzara	France
5350	SPC	La Palma	Santacruzdelapalma	Spain
5351	SPF	Black Hills	Black Hills	United States
5352	SPI	Capital	Springfield	United States
5353	SPJ	Eleftherios Venizelos	Sparta	Greece
5354	SPN	Saipan	Saipan	Northern Mariana Islands
5355	SPR	San Pedro	San Pedro	Belize
5356	SPS	Sheppard Airport	Wichitafalls	United States
5357	SPU	Split	Split	Croatia
5358	SPW	Spencer Municipal	Spencer	United States
5359	SPY	San Pedro	Sanpedro	Cote D'Ivoire (Ivory Coast)
5360	SQH	Na San	Sonla	Vietnam
5361	SQL	San Carlos	San Carlos	United States
5362	SQO	Gunnarn	Storuman	Sweden
5363	SQQ	Siauliai	Siauliai	Lithuania
5364	SQR	Soroako	Soroako	Indonesia
5365	SRA	Santa Rosa	Santa Rosa	Brazil
5366	SRE	Juana Azurduy de Padilla	Sucre	Bolivia
5367	SRG	Achmad Yani	Semarang	Indonesia
5368	SRH	Sarh	Sarh	Chad
5369	SRJ	Capitan G Q Guardia	Sanborja	Bolivia
5370	SRN	Strahan	Strahan	Australia
5371	SRP	Stord	Stord	Norway
5372	SRT	Soroti	Soroti	Uganda
5373	SRX	Sert	Sert	Libya
5374	SRY	Dashte Naz	Sari	Iran
5375	SRZ	El Trompillo	Santacruz	Bolivia
5376	SSA	Luis Eduardo Magalhaes	Salvador	Brazil
5377	SSC	Shawafb Airport	Sumter	United States
5378	SSE	Sholapur	Sholapur	India
5379	SSH	Ophira International	Sharmelsheikh	Egypt
5380	SSI	Mckinnon	Brunswick	United States
5381	SSJ	Stokka	Sandnessjoen	Norway
5382	SSN	Seoul Ab	Seoul Ab	South Korea
5383	SSR	Sara	Sara	Vanuatu
5384	SSV	Siasi	Siasi	Philippines
5385	SSW	Stuart Island	Stuart Island	United States
5386	SSX	Samsun	Samsun	Turkey
5387	STF	Stephen Island	Stephen Island	Australia
5388	STH	Strathmore	Strathmore	Australia
5389	STN	Stansted	London	United Kingdom
5390	STO	Stockholm	Stockholm	Sweden
5391	STQ	St. Marys	Saintmarys	United States
5392	STU	Santa Cruz	Santa Cruz	Belize
5393	SUC	Schloredt	Sundance	United States
5394	SUD	Stroud	Stroud	United States
5395	SUH	Sur	Sur	Oman
5396	SUK	Samcheok	Samcheok	South Korea
5397	SUM	Sumter	Sumter	United States
5398	SUO	Sun River	Sun River	United States
5399	SUP	Trunojoyo	Sumenep	Indonesia
5400	SUQ	Sucua	Sucua	Ecuador
5401	SUT	Sumbawanga	Sumbawanga	Tanzania
5402	SUW	Richard I Bong Arpt	Superior Wibong	United States
5403	SUZ	Suria	Suria	Papua New Guinea
5404	SVF	Save	Save	Benin
5405	SVM	St. Paul's Mission	Saintpaul'smission	Australia
5406	SVO	Sheremetyevo	Moscow	Russia
5407	SVR	Svay Rieng	Svay Rieng	Cambodia
5408	SVT	Savuti	Savuti	Botswana
5409	SVV	San Salvador	San Salvador	Venezuela
5410	SVY	Savo	Savo	Solomon Islands
5411	SWB	Shaw River	Shaw River	Australia
5412	SWC	Stawell	Stawell	Australia
5413	SWE	Siwea	Siwea	Papua New Guinea
5414	SWG	Satwag	Satwag	Papua New Guinea
5415	SWH	Swan Hill	Swan Hill	Australia
5416	SWI	Gypsy	Swindon	United Kingdom
5417	SWK	Segrate	Milan	Italy
5418	SWM	Suia Missu	Suia-Missu	Brazil
5419	SWN	Sahiwal	Sahiwal	Pakistan
5420	SSY	M'banza Congo	M'banza Congo	Angola
5421	STA	Vestjyllands Airport	Stauning	Denmark
5422	STB	L Delicias	Santabarbaraed	Venezuela
5423	STC	St. Cloud Municipal	Saintcloud	United States
5424	STD	Mayo Guerrero	Santodomingo	Venezuela
5425	STG	St. George Island	Saintgeorgeisland	United States
5426	STI	Cibao International Airport	Santiago	Dominican Republic
5427	STJ	Rosecrans Memorial	St Josep	United States
5428	STK	Crosson Field	Crosson Field	United States
5429	STM	Eduardo Gomes	Santarem	Brazil
5430	STP	St. Paul Downtown	St. Paul Downtown	United States
5431	STR	Echterdingen	Stuttgart	Germany
5432	STT	Cyril E King Airport	Aintthomasisland	Virgin Islands (US)
5433	STV	Surat	Surat	India
5434	STW	Stavropol	Stavropol	Russia
5435	STX	Henry E Rohlsen	Saintcroixisland	Virgin Islands (US)
5436	STY	Salto	Salto	Uruguay
5437	SUA	Witham Field	Stuart	United States
5438	SUB	Juanda	Surabaya	Indonesia
5439	SUF	S Eufemia	Lameziaterme	Italy
5440	SUG	Surigao	Surigao	Philippines
5441	SUI	Babusheri	Sokhumi	Georgia
5442	SUJ	Satu Mare	Satumare	Romania
5443	SUN	Sun Valley	Hailey	United States
5444	SUR	Summer Beaver	Summer Beaver	Canada
5445	SUV	Nausori	Suva	Fiji Islands
5446	SUX	Sioux Gateway	Sioux	United States
5447	SUY	Sudureyri	Sudureyri	Iceland
5448	SVA	Savoonga	Savoonga	United States
5449	SVB	Sambava	Sambava	Madagascar
5450	SVD	E. T. Joshua	St Vicent	Saint Vincent and the Grenadines
5451	SVH	Statesville	Statesville	United States
5452	SVI	San Vicente	Sanvicente	Colombia
5453	SVJ	Helle	Svolvaer	Norway
5454	SVL	Savonlinna	Savonlinna	Finland
5455	SVQ	San Pablo	Sevilla	Spain
5456	SVU	Savusavu	Savusavu	Fiji Islands
5457	SVZ	San Antonio	Sanantonio	Venezuela
5458	SWA	Shantou	Shantou	China
5459	SWD	Seward	Seward	United States
5460	SWF	Stewart	Newburgh	United States
5461	SWJ	South West Bay	Southwestbay	Vanuatu
5462	SWO	Searcy Fld	Stillwater	United States
5463	SWP	Swakopmund	Swakopmund	Namibia
5464	SUE	Door County	Sturgeonbay	United States
5465	SVK	Silver Creek	Silver Creek	Belize
5466	SVS	Stevens Village	Stevensvillage	United States
5467	SWR	Silur	Silur	Papua New Guinea
5468	SWV	Shikarpur	Shikarpur	Pakistan
5469	SWW	Sweetwater	Sweetwater	United States
5470	SWY	Sitiawan	Sitiawan	Malaysia
5471	SWZ	West	Sydney	Australia
5472	SXA	Sialum	Sialum	Papua New Guinea
5473	SXC	Avalo Vor WP	Avalon	United States
5474	SXD	Sophia Antipolis	Sophiaantipolis	France
5475	SXE	Sale	Sale	Australia
5476	SXG	Senanga	Senanga	Zambia
5477	SXH	Sehulea	Sehulea	Papua New Guinea
5478	SXJ	Shanshan	Shanshan	China
5479	SXK	Saumlaki	Saumlaki	Indonesia
5480	SXN	Suapan	Suapan	Botswana
5481	SXS	Sahabat	Sahabat16	Malaysia
5482	SXT	Taman Negara	Tamannegara	Malaysia
5483	SXU	Soddu	Soddu	Ethiopia
5484	SXW	Sauren	Sauren	Papua New Guinea
5485	SXY	Sidney	Sidney	United States
5486	SYE	Sadah	Sadah	Yemen
5487	SYF	Silva Bay	Silva Bay	Canada
5488	SYG	Spitsberg	Spitsberg	Norway
5489	SYI	Bomar Field	Shelbyville	United States
5490	SYK	Stykkisholmur	Stykkisholmur	Iceland
5491	SZC	Guanacaste	Santacruz	Costa Rica
5492	SZD	Sheffield City	Sheffield	United Kingdom
5493	SZH	Senipah	Senipah	Indonesia
5494	SZM	Sesriem	Sesriem	Namibia
5495	SZN	Santa Cruz Island	Santa Cruz Island	United States
5496	SZO	Shanzhou	Shanzhou	China
5497	SZP	Oxnard	Santa Paula	United States
5498	SZQ	Saenz Pena	Saenz Pena	Argentina
5499	SZU	Segou	Segou	Mali
5500	SZY	Mazury	Mazury	Poland
5501	TAA	Tarapaina	Tarapaina	Solomon Islands
5502	TAD	Las Animas	Las Animas	United States
5503	TAJ	Tadji	Aitape	Papua New Guinea
5504	TAN	Tangalooma	Tangalooma	Australia
5505	SWT	Strzhewoi	Strezhevoy	Russia
5506	SWU	Suwon	Suwon	South Korea
5507	SWX	Shakawe	Shakawe	Botswana
5508	SXB	Entzheim	Strasbourg	France
5509	SXI	Sirri Island	Sirri Island	Iran
5510	SXL	Collooney	Sligo	Ireland
5511	SXO	Sao Felix Do Araguaia	Saofelixdoarag	Brazil
5512	SXQ	Soldotna	Soldotna	United States
5513	SXR	Srinagar	Srinagar	India
5514	SXV	Salem	Salem	India
5515	SXX	Sao Felix Do Xingu	Saofelixdoxing	Brazil
5516	SXZ	Siirt	Siirt	Turkey
5517	SYD	Kingsford Smith	Sydney	Australia
5518	SYJ	Sirjan	Sirjan	Iran
5519	SYM	Simao	Simao	China
5520	SYO	Shonai	Shonai	Japan
5521	SYQ	Tobias Bolaños International	San Jose	Costa Rica
5522	SYR	Syracuse International Airport	Syracuse	United States
5523	SYS	Yeosu	Suncheon	South Korea
5524	SYU	Warraber Island	Sueisland	Australia
5525	SYW	Sehwen Sharif	Sehwensharif	Pakistan
5526	SYX	Sanya	Sanya	China
5527	SYY	Stornoway	Stornoway	United Kingdom
5528	SYZ	Shiraz	Shiraz	Iran
5529	SZA	Soyo	Soyo	Angola
5530	SZF	Carsamba	Samsun	Turkey
5531	SZG	Salzburg	Salzburg	Austria
5532	SZJ	Siguanea	Siguanea	Cuba
5533	SZK	Skukuza	Skukuza	South Africa
5534	SZR	Stara Zagora	Stara Zagora	Bulgaria
5535	SZT	San Cristobal Airport	Sancristobaldelascas	Mexico
5536	SZV	Suzhou	Suzhou	China
5537	SZW	Parchim	Parchim	Germany
5538	SZX	Shenzhen	Shenzhen	China
5539	TAB	Crown Point Airport	Tobago	Trinidad and Tobago
5540	TAC	D.Z. Romualdez	Tacloban	Philippines
5541	TAE	Daegu	Daegu	South Korea
5542	TAF	Tafaraoui	Oran	Algeria
5543	TAG	Tagbilaran	Tagbilaran	Philippines
5544	TAH	Tanna	Tanna	Vanuatu
5545	TAK	Takamatsu	Takamatsu	Japan
5546	TAM	Gen F Javier Mina	Tampico	Mexico
5547	SZE	Semera	Semera	Ethiopia
5548	SXP	Sheldons Airport	Sheldonpoint	United States
5549	SYB	Seal Bay	Seal Bay	United States
5550	SZI	Zaisan	Zaisan	Kazakhstan
5551	TAL	Ralph Calhoun	Tanana	United States
5552	TAQ	Tarcoola	Tarcoola	Australia
5553	TAU	Tauramena	Tauramena	Colombia
5554	TAV	Tau Island	Tau	Samoa
5555	TAW	Tacuarembo	Tacuarembo	Uruguay
5556	TAX	Taliabu	Taliabu	Indonesia
5557	TBA	Tabibuga	Tabibuga	Papua New Guinea
5558	TBC	Tuba City	Tuba City	United States
5559	TBD	Timbiqui	Timbiqui	Colombia
5560	TBE	Timbunke	Timbunke	Papua New Guinea
5561	TBF	North	Tabiteueanorth	Kiribati
5562	TBK	Timber Creek	Timber Creek	Australia
5563	TBL	Tableland	Tableland	Australia
5564	TBM	Tumbang Samba	Tumbang Samba	Indonesia
5565	TBR	Bulloch County Airport	Statesboro	United States
5566	TBV	Tabal	Tabal	Marshall Islands
5567	TBY	Tsabong	Tsabong	Botswana
5568	TCF	Tocoa	Tocoa	Honduras
5569	TCI	Tenerife Metro	Tenerife Metro	Spain
5570	TCJ	Torembi	Torembi	Papua New Guinea
5571	TCK	Tinboli	Tinboli	Papua New Guinea
5572	TCU	Thaba Nchu	Thabanchu	South Africa
5573	TCV	Tete	Tete	Mozambique
5574	TCW	Tocumwal	Tocumwal	Australia
5575	TDA	Trinidad	Trinidad	Colombia
5576	TDB	Tetabedi	Tetabedi	Papua New Guinea
5577	TDK	Taldy Kurgan	Taldy-Kurgan	Kazakhstan
5578	TDT	Tanda Tula	Tanda Tula	South Africa
5579	TDV	Tanandava	Tanandava	Madagascar
5580	TDW	Tradewind	Amarillo	United States
5581	TEG	Tenkodogo	Tenkodogo	Burkina Faso
5582	TEH	Tetlin	Tetlin	United States
5583	TEI	Tezu	Tezu	India
5584	TEL	Telupid	Telupid	Malaysia
5585	TEO	Terapo	Terapo	Papua New Guinea
5586	TEP	Teptep	Teptep	Papua New Guinea
5587	TES	Tessenei	Tessenei	Eritrea
5588	TEW	Tohid	Tohid	Iran
5589	TEY	Thingeyri	Thingeyri	Iceland
5590	TFB	Tifalmin	Tifalmin	Papua New Guinea
5591	TFC	Harbour	Taormina	Italy
5592	TAR	M. A. Grottag	Taranto	Italy
5593	TAS	Yuzhny	Tashkent	Uzbekistan
5594	TAT	Poprad	Poprad	Slovakia
5595	TAY	Tartu	Tartu	Estonia
5596	TAZ	Dashoguz	Dashoguz	Turkmenistan
5597	TBB	Tuy Hoa	Tuyhoa	Vietnam
5598	TBH	Romblon	Tablas	Philippines
5599	TBI	New Bright	The Bight	The Bahamas
5600	TBJ	Tabarka 7 Novembre Airport	Tabarka	Tunisia
5601	TBO	Tabora	Tabora	Tanzania
5602	TBP	Tumbes	Tumbes	Peru
5603	TBT	Tabatinga	Tabatinga	Brazil
5604	TBU	Fua'Amotu	Tongatapu	Tonga
5605	TBW	Tambov	Tambov	Russia
5606	TBZ	Tabriz	Tabriz	Iran
5607	TCA	Tennant Creek	Tennant Creek	Australia
5608	TCE	Tulcea	Tulcea	Romania
5609	TCG	Tacheng	Tacheng	China
5610	TCH	Tchibanga	Tchibanga	Gabon
5611	TCL	Van De Graaf	Tuscaloosa	United States
5612	TCO	La Florida	Tumaco	Colombia
5613	TCP	Taba	Taba	Egypt
5614	TCQ	Tacna	Tacna	Peru
5615	TCX	Tabas	Tabas	Iran
5616	TDD	Trinidad	Lubango	Bolivia
5617	TDG	Tandag	Tandag	Philippines
5618	TDJ	Tadjoura	Tadjoura	Djibouti
5619	TDL	Tandil	Tandil	Argentina
5620	TDR	Theodore	Theodore	Australia
5621	TDX	Trat	Trat	Thailand
5622	TEA	Tela	Tela	Honduras
5623	TEC	Telemaco Borba	Telemaco Borba	Brazil
5624	TED	Thisted	Thisted	Denmark
5625	TEE	Tbessa	Tbessa	Algeria
5626	TEM	Temora	Temora	Australia
5627	TEN	Tongren	Tongren	China
5628	TEQ	Corlu	Tekirdag	Turkey
5629	TER	Lajes Ab	Terceiraisland	Portugal
5630	TEU	Manapouri	Teanau	New Zealand
5631	TEX	Telluride	Telluride	United States
5632	TEZ	Tezpur	Tezpur	India
5633	TFF	Tefe	Tefe	Brazil
5634	TCD	Tarapaca	Tarapaca	Colombia
5635	TCT	Takotna	Takotna	United States
5636	TCY	Terrace Bay	Terrace Bay	Namibia
5637	TEK	Tatitlek	Tatitlek	United States
5638	TFI	Tufi	Tufi	Papua New Guinea
5639	TFL	Teofilo Otoni	Teofilo Otoni	Brazil
5640	TFN	Norte Los Rodeos	Tenerife Metro	Spain
5641	TFR	Ramadan	Ramadan	Egypt
5642	TFS	Sur Reina Sofia	Tenerife Metro	Spain
5643	TFT	Taftan	Taftan	Pakistan
5644	TFY	Tarfaya	Tarfaya	Morocco
5645	TGB	Tagbita	Tagbita	Philippines
5646	TGE	Sharpe Field	Tuskegee	United States
5647	TGF	Tignes	Tignes	France
5648	TGL	Tagula	Tagula	Papua New Guinea
5649	TGN	La Trobe Regional	Traralgon	Australia
5650	TGQ	Tangara da Serra	Tangara Da Serra	Brazil
5651	TGS	Chokwe	Trjgo de Morais	Mozambique
5652	TGV	Targovishte	Targovishte	Bulgaria
5653	TGX	Tingrela	Tingrela	Cote D'Ivoire (Ivory Coast)
5654	THA	William Northern Field	Tullahoma	United States
5655	THB	Thaba Tseka	Thabatseka	Lesotho
5656	THC	Tchien	Tchien	Liberia
5657	THH	Taharoa	Taharoa	New Zealand
5658	THI	Tichitt	Tichitt	Mauritania
5659	THK	Thakhek	Thakhek	Laos
5660	THP	Hot Springs	Thermopolis	United States
5661	THT	Tamchakett	Tamchakett	Mauritania
5662	THV	York	York	United States
5663	THY	Thohoyandou	Thohoyandou	South Africa
5664	TIB	Tibu	Tibu	Colombia
5665	TIG	Tingwon	Tingwon	Papua New Guinea
5666	TIO	Tilin	Tilin	Myanmar
5667	TIS	Thursday Island	Thursday Island	Australia
5668	TJB	Tanjung Balai	Tanjungbalai	Indonesia
5669	TJC	Ticantiki	Ticantiki	Panama
5670	TJN	Takume	Takume	French Polynesia
5671	TKB	Tekadu	Tekadu	Papua New Guinea
5672	TGA	Tengah	Tengah	Slovenia
5673	TGD	Golubovci	Podgorica	Montenegro
5674	TGG	Sultan Mahmood	Kualaterengganu	Malaysia
5675	TGH	Tongoa	Tongoa	Vanuatu
5676	TGJ	Tiga	Tiga	New Caledonia
5677	TGK	Taganrog Yuzhny Airport	Taganrog	Russia
5678	TGM	Transilvania	Tirgumures	Romania
5679	TGR	Touggourt	Touggourt	Algeria
5680	TGT	Tanga	Tanga	Tanzania
5681	TGU	Toncontin	Tegucigalpa	Honduras
5682	TGZ	Llano San Juan	Tuxtlagutierrez	Mexico
5683	THF	Tempelhof	Berlin	Germany
5684	THG	Thangool	Thangool	Australia
5685	THL	Tachilek	Tachilek	Myanmar
5686	THN	Trollhattan	Trollhattan/vanersborg	Sweden
5687	THO	Thorshofn	Thorshofn	Iceland
5688	THS	Sukhothai	Sukhothai	Thailand
5689	THU	Pituffik	Thule	Greenland
5690	THX	Turukhansk	Turukhansk	Russia
5691	THZ	Tahoua	Tahoua	Niger
5692	TID	Bouchekif Abde Al hafidh Boussof	Tiaret	Algeria
5693	TIE	Tippi	Tippi	Ethiopia
5694	TIF	Taif	Taif	Saudi Arabia
5695	TIH	Tikehau Atoll	Tikehauatoll	French Polynesia
5696	TII	Tirinkot	Tirinkot	Afghanistan
5697	TIM	Timika	Tembagapura	Indonesia
5698	TIN	Tindouf	Tindouf	Algeria
5699	TIP	Tripoli	Tripoli	Libya
5700	TIQ	Tinian	Tinian	Northern Mariana Islands
5701	TIR	Tirupati	Tirupati	India
5702	TIU	Timaru	Timaru	New Zealand
5703	TIW	Industrial	Tacoma	United States
5704	TIY	Tidjikja	Tidjikja	Mauritania
5705	TJA	Tarija	Tarija	Bolivia
5706	TJG	Tanjung Warukin	Tanjung Warukin	Indonesia
5707	TJH	Tajima	Toyooka	Japan
5708	TJI	Capiro	Trujillo	Honduras
5709	TJK	Tokat	Tokat	Turkey
5710	TJQ	Bulutumbang	Tanjungpendan	Indonesia
5711	TJS	Tanjung Selor	Tanjungselor	Indonesia
5712	TJU	Kulab	Kulyab	Russia
5713	TJV	Thanjavur	Thanjavur	India
5714	TKC	Tiko	Tiko	Cameroon
5715	TKD	Takoradi	Takoradi	Ghana
5716	TKF	Tahoe	Truckee	United States
5717	TKG	Branti	Bandarlampung	Indonesia
5718	TFM	Telefomin	Telefomin	Papua New Guinea
5719	TGC	Tanjungmanis	Tanjungmanis	Malaysia
5720	TIC	Tinak	Tinakisland	Marshall Islands
5721	TKE	Spb Airport	Tenakeesprings	United States
5722	TKI	Tokeen	Tokeen	United States
5723	TKL	Taku SPB	Taku Lodge	United States
5724	TKM	El Peten	Tikal	Guatemala
5725	TKO	Tlokoeng	Tlokoeng	Lesotho
5726	TKR	Thakurgaon	Thakurgaon	Bangladesh
5727	TKV	Tatakoto	Tatakoto	French Polynesia
5728	TKW	Tekin	Tekin	Papua New Guinea
5729	TKY	Turkey Creek	Turkey Creek	Australia
5730	TKZ	Tokoroa	Tokoroa	New Zealand
5731	TLB	Tarbela	Tarbela	Pakistan
5732	TLF	Telida	Telida	United States
5733	TLI	Tolitoli	Tolitoli	Indonesia
5734	TLK	Talknafjordur	Talknafjordur	Iceland
5735	TLO	Tol	Tol	Papua New Guinea
5736	TLP	Tumolbil	Tumolbil	Papua New Guinea
5737	TLW	Talasea	Talasea	Papua New Guinea
5738	TLX	Talca	Talca	Chile
5739	TLZ	Catalao	Catalao	Brazil
5740	TMD	Timbedra	Timbedra	Mauritania
5741	TMH	Tanahmerah	Tanahmerah	Indonesia
5742	TMQ	Tambao	Tambao	Burkina Faso
5743	TMY	Tiom	Tiom	Indonesia
5744	TMZ	Thames	Thames	New Zealand
5745	TNB	Tanah Grogot	Tanahgrogot	Indonesia
5746	TNL	Ternopol	Ternopil	Ukraine
5747	TNO	Tamarindo	Tamarindo	Costa Rica
5748	TNP	Twentynine Palms	Twentynine Palms	United States
5749	TNQ	Teraina	Washington Island	Kiribati
5750	TNS	Tungsten	Tungsten	Canada
5751	TNV	Tabuaeran	Fanning Island	Kiribati
5752	TNZ	Tosontsengel	Tosontsengel	Mongolia
5753	TOK	Torokina	Torokina	Papua New Guinea
5754	TLM	Zenata	Tlemcen	Algeria
5755	TKJ	Tok	Tok	United States
5756	TKK	Truk	Truk	Micronesia
5757	TKP	Takapoto	Takapoto	French Polynesia
5758	TKQ	Kigoma	Kigoma	Tanzania
5759	TKS	Tokushima	Tokushima	Japan
5760	TKT	Tak	Tak	Thailand
5761	TKX	Takaroa	Takaroa	French Polynesia
5762	TLA	Teller	Teller	United States
5763	TLD	Limpopo Valley	Tulilodge	Botswana
5764	TLE	Tulear	Tulear	Madagascar
5765	TLH	Regional Airport	Tallahassee	United States
5766	TLL	Ulemiste	Tallinn	Estonia
5767	TLN	Le Palyvestre	Toulon	France
5768	TLS	Blagnac	Toulouse	France
5769	TLU	Tolu	Tolu	Colombia
5770	TMA	Henry Tift Myers	Tifton	United States
5771	TMB	Tamiami	Miami	United States
5772	TMC	Tjilik Riwut	Tambolaka	Indonesia
5773	TME	Tame	Tame	Colombia
5774	TMG	Tomanggong	Tomanggong	Malaysia
5775	TMJ	Termez	Termezuz	Uzbekistan
5776	TML	Tamale	Tamale	Ghana
5777	TMM	Tamatave	Tamatave	Madagascar
5778	TMN	Tamana Island	Tamanaisland	Kiribati
5779	TMP	Tampere pirkkala	Tampere	Finland
5780	TMR	Aguemar	Tamanrasset	Algeria
5781	TMS	Sao Tome Island	Saotomeis	Senegal
5782	TMT	Trombetas	Trombetas	Brazil
5783	TMW	Regional Airport	Tamworth	Australia
5784	TMX	Timimoun	Timimoun	Algeria
5785	TNA	Jinan	Jinan	China
5786	TNC	Tin	Tin	United States
5787	TNE	Tanegashima	Tanegashima	Japan
5788	TNF	Toussus le noble	Paris	France
5789	TNG	Boukhalef	Tangier	Morocco
5790	TNH	Liuhe	Tonghua	China
5791	TNI	Satna	Satna	India
5792	TNM	Martin	Teniente R. Marsh	Antarctica
5793	TNN	Tainan	Tainan	Taiwan
5794	TNR	Antananarivo	Antananarivo	Madagascar
5795	TNX	Stung Treng	Stung Treng	Cambodia
5796	TOA	Torrance	Torrance	United States
5797	TOB	Tobruk	Tobruk	Libya
5798	TOC	Toccoa	Toccoa	United States
5799	TOD	Tioman	Tioman	Malaysia
5800	TOF	Tomsk	Tomsk	Russia
5801	TOG	Togiak Village	Togiakvillage	United States
5802	TOH	Torres Airstrip	Torres	Vanuatu
5803	TLT	Tuluksak	Tuluksak	United States
5804	TMK	Tamky	Tamky	Vietnam
5805	TNK	Tununak	Tununak	United States
5806	TON	Tonu	Tonu	Papua New Guinea
5807	TOQ	Barriles	Tocopilla	Chile
5808	TOV	Westendspb Airport	Tortola	Virgin Islands (British)
5809	TOX	Tobolsk	Tobolsk	Russia
5810	TOZ	Touba	Touba	Cote D'Ivoire (Ivory Coast)
5811	TPG	Taiping	Taiping	Malaysia
5812	TPH	Tonopah	Tonopah	United States
5813	TPK	Tapaktuan	Tapaktuan	Indonesia
5814	TPR	Tom Price	Tom Price	Australia
5815	TPT	Tapeta	Tapeta	Liberia
5816	TPU	Tikapur	Tikapur	Nepal
5817	TPX	Tupai	Tupai	French Polynesia
5818	TQN	Taluqan	Taluqan	Afghanistan
5819	TQR	San Domino Island	Sandominotremitiisla	Italy
5820	TQS	Tres Esquinas	Tresesquinas	Colombia
5821	TRB	Gonzalo	Turbo	Colombia
5822	TRH	Trona	Trona	United States
5823	TRJ	Tarakbits	Tarakbits	Papua New Guinea
5824	TRT	Tremonton	Tremonton	United States
5825	TRY	Tororo	Tororo	Uganda
5826	TSC	Taisha	Taisha	Ecuador
5827	TSD	Tshipise	Tshipise	South Africa
5828	TSG	Intermediate	Tanacross	United States
5829	TSI	Tsili Tsili	Tsilitsili	Papua New Guinea
5830	TSK	Taskul	Taskul	Papua New Guinea
5831	TSM	Taos	Taos	United States
5832	TSO	Tresco	Scilly	United Kingdom
5833	TSP	Kern County	Tehachapi	United States
5834	TSQ	Torres	Torres	Brazil
5835	TSS	East34thhpt Airport	New York Heliport	United States
5836	TSW	Tsewi	Tsewi	Papua New Guinea
5837	TSZ	Tsetserleg	Tsetserleg	Mongolia
5838	TTC	Taltal	Taltal	Chile
5839	TTL	Turtle Island	Turtle Island	Fiji Islands
5840	TTM	Tablon De Tamara	Tablon De Tamara	Colombia
5841	TTO	Britton	Britton	United States
5842	TOM	Tombouctou	Tombouctou	Mali
5843	TOP	Philip Billard	Topeka	United States
5844	TOS	Tromso	Tromso	Norway
5845	TOT	Coronie	Totness	Suriname
5846	TOU	Touho	Touho	New Caledonia
5847	TOY	Toyama	Toyama	Japan
5848	TPA	Tampa	Tampa	United States
5849	TPC	Tarapoa	Tarapoa	Ecuador
5850	TPE	Chiang Kai Shek	Taipei	Taiwan
5851	TPL	Draughon miller Central Texas Regional	Temple	United States
5852	TPN	Tiputini	Tiputini	Ecuador
5853	TPP	Tarapoto	Tarapoto	Peru
5854	TPQ	Tepic	Tepic	Mexico
5855	TPS	Birgi	Trapani	Italy
5856	TRA	Tarama	Taramajima	Japan
5857	TRD	Værnes	Trondheim	Norway
5858	TRE	Tiree Island	Tiree Island	United Kingdom
5859	TRF	Sandefjord	Oslo	Norway
5860	TRG	City	Tauranga	New Zealand
5861	TRK	Juwata	Tarakan	Indonesia
5862	TRM	Thermal	Thermal	United States
5863	TRN	Sandro Pertini caselle	Turin	Italy
5864	TRO	Taree	Taree	Australia
5865	TRR	China Bay	Trincomalee	Sri Lanka
5866	TRS	Ronchi Dei Legionari	Trieste	Italy
5867	TRU	Trujillo	Trujillo	Peru
5868	TRW	Bonriki	Tarawa	Kiribati
5869	TRZ	Civil Airport	Tiruchirapally	India
5870	TSA	Songshan Sung Shan	Taipei	Taiwan
5871	TSB	Tsumeb	Tsumeb	Namibia
5872	TSE	Astana	Astana	Kazakhstan
5873	TSF	S. Angelo	Venice	Italy
5874	TSH	Tshikapa	Tshikapa	Democratic Republic of the Congo
5875	TSL	Tamuin	Tamuin	Mexico
5876	TSN	Binhai International	Tianjin	China
5877	TSR	traian Vuia International	Timisoara	Romania
5878	TST	Trang	Trang	Thailand
5879	TSV	Townsville	Townsville	Australia
5880	TSX	Tanjung Santan	Tanjung Santan	Indonesia
5881	TSY	Tasikmalaya	Tasikmalaya	Indonesia
5882	TTA	Tan Tan	Tantan	Morocco
5883	TTB	Arbatax	Tortoli	Italy
5884	TTG	Tartagal	Tartagal	Argentina
5885	TTH	Thumrait	Thumrait	Oman
5886	TTI	Tetiaroa Island	Tetiaroa Island	French Polynesia
5887	TTJ	Tottori	Tottori	Japan
5888	TPI	Tapini	Tapini	Papua New Guinea
5889	TTS	Tsaratanana	Tsaratanana	Madagascar
5890	TUE	Tupile	Tupile	Panama
5891	TUJ	Tum	Tum	Ethiopia
5892	TUM	Tumut	Tumut	Australia
5893	TUQ	Tougan	Tougan	Burkina Faso
5894	TUT	Tauta	Tauta	Papua New Guinea
5895	TUX	Tumbler Ridge	Tumbler Ridge	Canada
5896	TUY	Tulum	Tulum	Mexico
5897	TUZ	Tucuma	Tucuma	Brazil
5898	TWE	Taylor	Taylor	United States
5899	TWH	Two Harbors	Avalon	United States
5900	TWN	Tewantin	Tewantin	Australia
5901	TWP	Torwood	Torwood	Australia
5902	TWY	Tawa	Tawa	Papua New Guinea
5903	TXF	Teixeira de Freitas	Teixeira Freitas	Brazil
5904	TXM	Teminabuan	Teminabuan	Indonesia
5905	TXR	Tanbar	Tanbar	Australia
5906	TXU	Tabou	Tabou	Cote D'Ivoire (Ivory Coast)
5907	TYB	Tibooburra	Tibooburra	Australia
5908	TYD	Tynda	Tynda	Russia
5909	TYG	Thylungra	Thylungra	Australia
5910	TYP	Tobermorey	Tobermorey	Australia
5911	TYT	Treinta y Tres	Treinta-y-Tres	Uruguay
5912	TYZ	Taylor	Taylor	United States
5913	TZM	Tizimin	Tizimin	Mexico
5914	TZN	South Andros	South Andros	The Bahamas
5915	UAC	San Luis Rio Colorado	San Luis Colorado	Mexico
5916	UAE	Mount Aue	Mountaue	Papua New Guinea
5917	UAL	Luau	Luau	Angola
5918	UAX	Uaxactun	Uaxactun	Guatemala
5919	UBI	Buin	Buin	Papua New Guinea
5920	UBR	Ubrub	Ubrub	Indonesia
5921	UBS	Lowndes County	Columbus	United States
5922	UBT	Ubatuba	Ubatuba	Brazil
5923	TTQ	Tortuquero	Tortuquero	Costa Rica
5924	TTR	Tana Toraja	Tanatoraja	Indonesia
5925	TTU	Sania Ramel	Tetouan	Morocco
5926	TUA	Tulcan	Tulcan	Ecuador
5927	TUB	Tubuai Island	Tubuai	French Polynesia
5928	TUC	Benj Matienzo	Tucuman	Argentina
5929	TUF	St Symphorien	Tours	France
5930	TUG	Tuguegarao	Tuguegarao	Philippines
5931	TUI	Turaif	Turaif	Saudi Arabia
5932	TUK	Turbat	Turbat	Pakistan
5933	TUL	Tulsa	Tulsa	United States
5934	TUN	Carthage	Tunis	Tunisia
5935	TUP	Lemons Municipal	Tupelo	United States
5936	TUR	Tucurui	Tucurui	Brazil
5937	TUS	Tucson	Tucson	United States
5938	TUU	Tabuk	Tabuk	Saudi Arabia
5939	TVA	Morafenobe	Morafenobe	Madagascar
5940	TVC	Cherry Capital Airport	Traverse	United States
5941	TVF	Thief River Falls	Thiefriverfalls	United States
5942	TVI	Thomasville	Thomasville	United States
5943	TVU	Matei	Taveuni	Fiji Islands
5944	TVY	Dawe	Dawe	Myanmar
5945	TWB	Toowoomba	Toowoomba	Australia
5946	TWF	Joslin Field Magic Valley Regional	Twinfalls	United States
5947	TWT	Tawitawi	Tawitawi	Philippines
5948	TWU	Tawau	Tawau	Malaysia
5949	TXG	Taichung	Taichung	Taiwan
5950	TXK	Texarkana	Texarkana	United States
5951	TXL	Tegel	Berlin	Germany
5952	TXN	Tunxi	Tunxi	China
5953	TYL	Talara	Talara	Peru
5954	TYM	Staniel Cay	Staniel Cay	The Bahamas
5955	TYN	Taiyuan	Taiyuan	China
5956	TYR	Pounds Regional Airport	Tyler	United States
5957	TZL	Tuzla	Tuzla	Bosnia and Herzegovina
5958	TZX	Trabzon	Trabzon	Turkey
5959	UAH	Ua Huka	Uahuka	French Polynesia
5960	UAI	Suai	Suai	Indonesia
5961	UAK	Narsarsuaq	Narsarsuaq	Greenland
5962	UAP	Ua Pou	Uapou	French Polynesia
5963	UAS	Samburu	Samburu	Kenya
5964	UBA	Uberaba	Uberaba	Brazil
5965	UBB	Mabuiag Island	Mabuiag Island	Australia
5966	UBJ	Ube	Ube	Japan
5967	TYA	Tula	Tula	Russia
5968	TZA	Belize City	Belize City	Belize
5969	TUW	Tubala	Tubala	Panama
5970	TWA	Twin Hills	Twinhills	United States
5971	TYE	Tyonek	Tyonek	United States
5972	UBN	Chinggis Khaan International Airport	Ulaanbaatar	Mongolia
5973	UBU	Kalumburu	Kalumburu	Australia
5974	UCA	Oneida County	Utica	United States
5975	UCE	Eunice	Eunice	United States
5976	UCN	Buchanan	Buchanan	Liberia
5977	UCY	Everett Stewart	Union City	United States
5978	UDA	Undarra	Undarra	Australia
5979	UDN	Udine	Udine	Italy
5980	UDO	Udomxay	Udomxay	Laos
5981	UEE	Queenstown	Queenstown	Australia
5982	UER	Puertollano	Puertollano	Spain
5983	UGB	Ugashik Bay	Pilot-Point	United States
5984	UGI	Uganik	Uganik	United States
5985	UGS	Ugashik	Ugashik	United States
5986	UGT	Umnugobitour	Umnugobitour	Mongolia
5987	UGU	Zugapa	Zugapa	Indonesia
5988	UIL	Quillayute	Quillayute	United States
5989	UIQ	Quine Hill	Quine Hill	Vanuatu
5990	UIR	Quirindi	Quirindi	Australia
5991	UIZ	Berz Macomb	Utica	United States
5992	UKI	Ukiah	Ukiah	United States
5993	UKN	Waukon	Waukon	United States
5994	UKR	Mukeiras	Mukeiras	Yemen
5995	UKT	Upper Bucks	Quaker Town	United States
5996	UKY	Kansai	Kyoto	Japan
5997	ULC	Los Cerrillos	Santiago	Chile
5998	ULE	Sule	Sule	Papua New Guinea
5999	ULL	Mull	Mull	United Kingdom
6000	ULM	New Ulm	New Ulm	United States
6001	ULS	Mulatos	Mulatos	Colombia
6002	UMB	North Shore	Umnak	United States
6003	UMC	Umba	Umba	Papua New Guinea
6004	UMI	Quincemil	Quincemil	Peru
6005	UMM	Summit	Summit	United States
6006	UMT	Umiat	Umiat	United States
6007	UMY	Sumy	Sumy	Ukraine
6008	UNC	Unguia	Unguia	Colombia
6009	UNE	Nek	Qachasnek	Lesotho
6010	UNR	Underkhaan	Underkhaan	Mongolia
6011	UNS	Umnak Island	Umnak Island	United States
6012	UNU	Dodge County	Juneau	United States
6013	UCT	Ukhta	Ukhta	Russia
6014	UDD	Bermuda Dunes	Palm Springs	United States
6015	UDI	Eduardo Gomes	Uberlandia	Brazil
6016	UDJ	Uzhgorod	Uzhhorod	Ukraine
6017	UEL	Quelimane	Quelimane	Mozambique
6018	UEO	Kumejima	Kumejima	Japan
6019	UET	Quetta	Quetta	Pakistan
6020	UFA	Ufa	Ufa	Russia
6021	UGC	Urgench	Urgench	Uzbekistan
6022	UGN	Waukegan	Waukegan	United States
6023	UGO	Uige	Uige	Angola
6024	UHE	Kunovice	Uherskehradiste	Czech Republic
6025	UIB	Quibdo	Quibdo	Colombia
6026	UII	Utila	Utila	Honduras
6027	UIK	Ust Ilimsk	Ustilimsk	Russia
6028	UIN	Quincy	Quincy	United States
6029	AAA	Anaa	Anaa	French Polynesia
6030	UJE	Ujae Island	Ujaeisland	Marshall Islands
6031	UKA	Ukunda	Ukanda	Kenya
6032	UKB	Kobe	Osaka	Japan
6033	UKK	Ust kamenogorsk	Ustkamenogorsk	Kazakhstan
6034	UKX	Ust Kut	Ust-Kut	Russia
6035	ULA	San Julian	San Julian	Argentina
6036	ULB	Ulei	Ulei	Vanuatu
6037	ULG	Ulgit	Ulgit	Mongolia
6038	ULH	Al-Ula International Airport	Al-Ula	Saudi Arabia
6039	ULK	Lensk	Lensk	Russia
6040	ULO	Ulaangom	Ulaangom	Mongolia
6041	ULP	Quilpie	Quilpie	Australia
6042	ULQ	Farfan	Tulua	Colombia
6043	ULV	Baratayevka Airport	Ulyanovsk	Russia
6044	ULY	Vostochny	Ulyanovsk	Russia
6045	ULZ	Uliastai	Uliastai	Mongolia
6046	UME	Umea	Umea	Sweden
6047	UMR	Woomera	Woomera	Australia
6048	UMU	Ernesto Geisel	Umuarama	Brazil
6049	UNA	Una	Ilhacomandatuba/una	Brazil
6050	UND	Kunduz	Kunduz	Afghanistan
6051	UNI	Union Island	Union Island	Saint Vincent and the Grenadines
6052	UNK	Unalakleet	Unalakleet	United States
6053	UNN	Ranong	Ranong	Thailand
6054	UNT	Baltasound	Unst	United Kingdom
6055	UES	Waukesha	Waukesha	United States
6056	UKU	Nuku	Nuku	Papua New Guinea
6057	UIT	Jaluit	Jaluitisland	Marshall Islands
6058	ULI	Ulithi	Ulithi	Micronesia
6059	ULX	Ulusaba	Ulusaba	South Africa
6060	UON	Muong Sai	Muong Sai	Laos
6061	UOX	University Oxford	Oxford	United States
6062	UPA	Punta Alegre	Punta Alegre	Cuba
6063	UPC	Puerto La Cruz	Puerto La Cruz	Spain
6064	UPF	Pforheim	Pforheim	Germany
6065	UPL	Upala	Upala	Costa Rica
6066	UPR	Upiara	Upiara	Papua New Guinea
6067	UPV	Upavon	Upavon	United Kingdom
6068	UQE	Queen	Queen	United States
6069	URB	Ernesto Pochler	Urubupunga	Brazil
6070	URI	Uribe	Uribe	Colombia
6071	URM	Uriman	Uriman	Venezuela
6072	URN	Urgoon	Urgoon	Afghanistan
6073	URR	Urrao	Urrao	Colombia
6074	URU	Uroubi	Uroubi	Papua New Guinea
6075	URZ	Uruzgan	Uruzgan	Afghanistan
6076	USL	Useless Loop	Useless Loop	Australia
6077	USO	Usino	Usino	Papua New Guinea
6078	UTB	Muttaburra	Muttaburra	Australia
6079	UTD	Nutwood Downs	Nutwood Downs	Australia
6080	UTE	Butterworth	Butterworth	South Africa
6081	UTG	Quthing	Quthing	Lesotho
6082	UTL	Torremolinos	Torremolinos	Spain
6083	UTR	Uttaradit	Uttaradit	Thailand
6084	UUN	Baruun Urt	Baruun-Urt	Mongolia
6085	UVL	Kharga	Kharga	Egypt
6086	UVO	Uvol	Uvol	Papua New Guinea
6087	VAB	Yavarate	Yavarate	Colombia
6088	VAP	Valparaiso	Valparaiso	Chile
6089	VAT	Vatomandry	Vatomandry	Madagascar
6090	VAU	Vatukoula	Vatukoula	Fiji Islands
6091	VAZ	Val-d'isere	Val-d'isere	France
6092	VCB	Viewcove	Viewcove	United States
6093	VCF	Valcheta	Valcheta	Argentina
6094	VCH	Vichadero	Vichadero	Uruguay
6095	UPG	Hasanudin	Ujungpandang	Indonesia
6096	UPN	Uruapan	Uruapan	Mexico
6097	UPP	Upolu Point	Upolupoint	United States
6098	URA	Podstepnyy	Uralsk	Kazakhstan
6099	URD	Burg Feuerstein	Burg Feuerstein	Germany
6100	URE	Kuressaare	Kuressaare	Estonia
6101	URG	Ruben Berta	Uruguaiana	Brazil
6102	URO	Boos	Rouen	France
6103	URS	Kursk	Kursk	Russia
6104	URT	Surat Thani	Suratthani	Thailand
6105	URY	Gurayat	Gurayat	Saudi Arabia
6106	USI	Mabaruma	Mabaruma	Guyana
6107	USK	Usinsk	Usinsk	Russia
6108	USM	Koh Samui	Kohsamui	Thailand
6109	USN	Ulsan	Ulsan	South Korea
6110	USQ	Usak	Usak	Turkey
6111	USS	Sancti Spiritus	Sancti Spiritus	Cuba
6112	USU	Puerto Princessa	Busuanga	Philippines
6113	UTA	Mutare	Mutare	Zimbabwe
6114	UTC	Soesterberg	Utrecht	Netherlands
6115	UTH	Udon Thani	Udonthani	Thailand
6116	UTI	Utti	Kouvola	Finland
6117	UTK	Utirik Island	Utirikisland	Marshall Islands
6118	UTO	Indian Mountain AFS	Utopiacreek	United States
6119	UTP	Utapao	Utapao	Thailand
6120	UTT	Umtata	Umtata	South Africa
6121	UTW	Queenstown	Queenstown	South Africa
6122	UUD	Mukhino	Ulanude	Russia
6123	UUK	Kuparuk	Kuparuk	United States
6124	UUS	Yuzhno Sakhalinsk	Yuzhnosakhalinsk	Russia
6125	UVE	Ouvea	Ouvea	New Caledonia
6126	UYL	Nyala	Nyala	Sudan
6127	UYN	Yulin	Yulin	China
6128	UZU	Curuzu Cuatia	Curuzu Cuatia	Argentina
6129	VAF	Chabeuil Airport	Valence	France
6130	VAG	Maj. Brig. Trompowsky Airport	Varginha	Brazil
6131	VAI	Vanimo	Vanimo	Papua New Guinea
6132	VAK	Chevak	Chevak	United States
6133	VAN	Ferit Melen Airport	Van	Turkey
6134	VAR	Varna	Varna	Bulgaria
6135	VAS	Sivas	Sivas	Turkey
6136	VAV	Vava U	Vanuabalavu	French Polynesia
6137	VAW	Vardoe	Vardo	Norway
6138	VBV	Vanuabalavu	Vanuabalavu	Fiji Islands
6139	VBY	Visby	Visby	Sweden
6140	VCA	Cantho	Cantho	Vietnam
6141	VCD	Victoria River Downs Airport	Victoriariverdo	Australia
6142	VCL	Chulai	Tamky	Vietnam
6143	UTU	Ustupo	Ustupo	Panama
6144	UUU	Manumu	Manumu	Papua New Guinea
6145	VDY	Vidyanagar Airport	Vidyanagar	India
6146	VEG	Maikwak	Maikwak	Guyana
6147	VEV	Barakoma	Barakoma	Solomon Islands
6148	VGS	General Villegas	General Villegas	Argentina
6149	VHZ	Vahitahi	Vahitahi	French Polynesia
6150	VIA	Videira	Videira	Brazil
6151	VIQ	Viqueque	Viqueque	Indonesia
6152	VIU	Viru harbour Airport	Viru	Solomon Islands
6153	VIV	Vivigani	Vivigani	Papua New Guinea
6154	VKO	Vnukovo	Moscow	Russia
6155	VLK	Volgodonsk	Volgodonsk	Russia
6156	VLP	Vila Rica Municipal Airport	Vilarica	Brazil
6157	VMI	Vallemi	Vallemi	Paraguay
6158	VNR	Vanrook	Vanrook	Australia
6159	VOI	Voinjama	Voinjama	Liberia
6160	VPZ	Portercounty Airport	Valparaiso	United States
6161	VRS	Versailles	Versailles	United States
6162	VSA	Capitan Carlos Rovirosa	Villahermosa	Mexico
6163	VCS	Coong Airport	Condao	Vietnam
6164	VCT	County Foster	Victoria	United States
6165	VDA	Ovda	Ovda	Israel
6166	VDB	Valdres	Fagernes	Norway
6167	VDE	Hierro	Valverde	Spain
6168	VDM	Viedma	Viedma	Argentina
6169	VDP	Valledepascua	Valledepascua	Venezuela
6170	VDR	Villa Dolores	Villa Dolores	Argentina
6171	VDS	Vadso	Vadso	Norway
6172	VEE	Venetie	Venetie	United States
6173	VEL	Vernal	Faroeislands	Faroe Islands
6174	VER	Las Bajadas	Veracruz	Mexico
6175	VFA	Victoria Falls	Ufa	Zimbabwe
6176	VGA	Vijayawada	Vijayawada	India
6177	VGD	Vologda	Vologda	Russia
6178	VGO	Vigo	Vigo	Spain
6179	VGZ	Villagarzon	Villagarzon	Colombia
6180	VHC	Saurimo	Saurimo	Angola
6181	VHM	Vilhelmina	Vilhelmina	Sweden
6182	VHY	Charmeil Airport	Vichy	France
6183	VIE	Schwechat International	Vienna	Austria
6184	VIG	Elvigia	Elvigia	Venezuela
6185	VII	Vinh City	Vinh	Vietnam
6186	VIL	Dakhla	Dakhla	Morocco
6187	VIN	Vinnica	Vinnytsia	Ukraine
6188	VIS	Visalia	Visalia	United States
6189	VIT	Vitoria	Vitoria	Spain
6190	VKG	Rach Gia	Rachgia	Vietnam
6191	VKT	Vorkuta	Vorkuta	Russia
6192	VLC	Valencia	Valencia	Spain
6193	VLG	Villa Gesell	Villa Gesell	Argentina
6194	VLI	Bauerfield	Portvila	Vanuatu
6195	VLL	Valladolid	Valladolid	Spain
6196	VLM	Villamontes	Villamontes	Bolivia
6197	VLS	Valesdir	Valesdir	Vanuatu
6198	VLU	Velikiye Luki	Velikiye Luki	Russia
6199	VLV	Carvajal	Valera	Venezuela
6200	VME	Villa Mercedes	Villa Mercedes	Argentina
6201	VMU	Baimuru	Baimuru	Papua New Guinea
6202	VNO	Vilnius	Vilnius	Lithuania
6203	VNS	Lal Bahadur Shastri Airport	Varanasi	India
6204	VNT	Ventspils	Ventspils	Latvia
6205	VNX	Vilanculos	Vilanculos	Mozambique
6206	VOH	Vohemar	Vohemar	Madagascar
6207	VOL	Neaanghialos Airport	Volos	Greece
6208	VOZ	Chertovitskoye	Voronezh	Russia
6209	VPE	Ongiva Airport	Ondjiva	Angola
6210	VPN	Vopnafjordur	Vopnafjordur	Iceland
6211	VPY	Chimoio	Chimoio	Mozambique
6212	VQS	Vieques	Vieques	Puerto Rico
6213	VRA	Juan Gualberto Gomez	Varadero	Cuba
6214	VRB	Verobeach	Verobeach	United States
6215	VRE	Vredendal	Vredendal	South Africa
6216	VRK	Varkaus	Varkaus	Finland
6217	VRL	Vilareal	Vilareal	Portugal
6218	VRU	Vryburg	Vryburg	South Africa
6219	VRY	Stolport	Vaeroy	Norway
6220	VSE	Viseu	Viseu	Portugal
6221	VSG	Lugansk	Luhansk	Ukraine
6222	VSF	State Airport	Springfield	United States
6223	VTF	Vatulele	Vatulele	Fiji Islands
6224	VTG	Vungtau	Vungtau	Vietnam
6225	VVB	Mahanoro	Mahanoro	Madagascar
6226	VVK	Vastervik	Vastervik	Sweden
6227	VYD	Vryheid	Vryheid	South Africa
6228	WAB	Wabag	Wabag	Papua New Guinea
6229	WAD	Andriamena	Andriamena	Madagascar
6230	WAK	Ankazoabo	Ankazoabo	Madagascar
6231	WAO	Wabo	Wabo	Papua New Guinea
6232	WAS	Washington	Baltimore	United States
6233	WAV	Kalkgurung Airport	Wavehill	Australia
6234	WAY	Green County Airport	Waynesburg	Australia
6235	WAZ	Warwick	Warwick	Australia
6236	WBC	Wapolu	Wapolu	Papua New Guinea
6237	WBD	Befandriana	Befandriana	Madagascar
6238	WBE	Bealanana	Bealanana	Madagascar
6239	WBN	Cummingspark Airport	Woburn	United States
6240	WBO	Beroroha	Beroroha	Madagascar
6241	WBR	Bigrapids	Bigrapids	United States
6242	WCR	Chandalar	Chandalar	United States
6243	WDB	Deepbay	Deepbay	United States
6244	WDG	Woodring Mun.	Enid	United States
6245	WED	Wedau	Wedau	Papua New Guinea
6246	WEL	Welkom	Welkom	South Africa
6247	WEP	Weam	Weam	Papua New Guinea
6248	WET	Wagethe	Wagethe	Indonesia
6249	WEW	Wee Waa	Wee Waa	Australia
6250	WGT	Wangaratta	Wangaratta	Australia
6251	WHL	Welshpool	Welshpool	Australia
6252	WHT	Wharton	Wharton	United States
6253	WIK	Surfdale	Surfdale	New Zealand
6254	WIT	Wittenoom	Wittenoom	Australia
6255	WIU	Witu	Witu	Papua New Guinea
6256	WJF	Lancaster	Lancaster	United States
6257	WKB	Warracknabeal	Warracknabeal	Australia
6258	WKI	Hwange	Hwange	Zimbabwe
6259	WKN	Wakunai	Wakunai	Papua New Guinea
6260	WKR	Walkers Cay Airport	Walker'scay	The Bahamas
6261	WLB	Laboucherebay	Laboucherebay	United States
6262	WLM	Waltham	Waltham	United States
6263	WLR	Loring	Loring	United States
6264	WMB	Warrnambool	Warrnambool	Australia
6265	VTE	Wattay	Vientiane	Laos
6266	VTU	Las Tunas	Lastunas	Cuba
6267	VTZ	Vishakhapatnam	Vishakhapatnam	India
6268	VUP	Valledupar	Valledupar	Colombia
6269	VUS	Velikij Ustyug	Velikij Ustyug	Russia
6270	VVI	Viru Viru Intl	Santacruz	Bolivia
6271	VVO	Vladivostok	Vladivostok	Russia
6272	VVZ	Illizi	Illizi	Algeria
6273	VXC	Lichinga	Lichinga	Mozambique
6274	VXE	San Pedro	Saovicenteisland	Cape Verde
6275	VYS	Illinoisvalleyreg Airport	Peru	United States
6276	WAA	Wales	Wales	United States
6277	WAE	Wadi Ad Dawasir	Wadi Ad Dawasir	Saudi Arabia
6278	WAG	Wanganui	Wanganui	New Zealand
6279	WAM	Ambatondrazaka	Ambatondrazaka	Madagascar
6280	WAQ	Antsalova	Antsalova	Madagascar
6281	WAT	Waterford	Waterford	Ireland
6282	WBM	Wapenamanda	Wapenamanda	Papua New Guinea
6283	WBQ	Beaver	Beaver	United States
6284	WCH	Chaiten	Chaiten	Chile
6285	WDH	Windhoek	Windhoek	Namibia
6286	WEH	Weihai	Weihai	China
6287	WEI	Weipa	Weipa	Australia
6288	WFI	Fianarantsoa	Fianarantsoa	Madagascar
6289	WGA	Forrest Hill	Waggawagga	Australia
6290	WGE	Walgett	Walgett	Australia
6291	WHF	Wadi Halfa	Wadihalfa	Sudan
6292	WHK	Whakatane	Whakatane	New Zealand
6293	WIC	Wick	Wick	United Kingdom
6294	WIL	Wilson	Nairobi	Kenya
6295	WIN	Winton	Winton	Australia
6296	WJR	Wajir	Wajir	Kenya
6297	WJU	Wonju	Wonju	South Korea
6298	WKA	Wanaka	Wanaka	New Zealand
6299	WKJ	Hokkaido	Wakkanai	Japan
6300	WKL	Waikoloa	Waikoloa	United States
6301	WLG	Wellington	Wellington	New Zealand
6302	WLH	Walaha	Walaha	Vanuatu
6303	WLK	Selawik	Selawik	United States
6304	WMA	Mandritsara	Mandritsara	Madagascar
6305	WBB	Stebbins	Stebbins	United States
6306	WHD	Spb Airport	Hyder	United States
6307	WJA	Woja	Woja	Marshall Islands
6308	WMC	Winnemucca	Winnemucca	United States
6309	WMD	Mandabe	Mandabe	Madagascar
6310	WMH	Mountainhome	Mountainhome	United States
6311	WMK	SPB	Meyers Chuck	United States
6312	WML	Malaimbandy	Malaimbandy	Madagascar
6313	WNC	Nichencove Airport	Tuxekanisl	United States
6314	WNU	Wanuma	Wanuma	Papua New Guinea
6315	WOI	Wologissi	Wologissi	Liberia
6316	WON	Wondoola	Wondoola	Australia
6317	WPK	Wrotham Park	Wrotham Park	Australia
6318	WPO	Northfrkvalley Airport	Paonia	United States
6319	WPS	Pitalito	Pitalito	Colombia
6320	WRA	Warder	Warder	Ethiopia
6321	WSA	Wasua	Wasua	Papua New Guinea
6322	WSB	Spb Airport	Steamboatbay	United States
6323	WSG	County Airport	Washington	United States
6324	WSH	Brookhaven Airport	Shirley	United States
6325	WSM	Wiseman	Wiseman	United States
6326	WSU	Wasu	Wasu	Papua New Guinea
6327	WTD	West End	West End	The Bahamas
6328	WTT	Wantoat	Wantoat	Papua New Guinea
6329	WUD	Wudinna	Wudinna	Australia
6330	WUG	Wau	Wau	Papua New Guinea
6331	WUM	Wasum	Wasum	Papua New Guinea
6332	WUV	Wuvuluis	Wuvuluis	Papua New Guinea
6333	WVL	Robertlafle Airport	Waterville	United States
6334	WWY	West Wyalong	West Wyalong	Australia
6335	WYB	Spb Airport	Yesbay	United States
6336	XAH	Silkeborg	Silkeborg	Denmark
6337	XAK	Silkeborg	Silkeborg	Denmark
6338	XAL	Alamos	Alamos	Mexico
6339	XAR	Aribinda	Aribinda	Burkina Faso
6340	XBB	Blubber Bay	Blubber Bay	Canada
6341	XBL	Bunobedelle	Bunobedelle	Ethiopia
6342	XBN	Biniguni	Biniguni	Papua New Guinea
6343	XBO	Boulsa	Boulsa	Burkina Faso
6344	XBR	Brockville	Brockville	Canada
6345	XCL	Cluff Lake	Cluff Lake	Canada
6346	XCN	Coron	Coron	Philippines
6347	WMN	Maroantsetra	Maroantsetra	Madagascar
6348	WMP	Mampikony	Mampikony	Madagascar
6349	WMR	Mananara	Mananara	Madagascar
6350	WMX	Wamena	Wamena	Indonesia
6351	WNA	SPB	Napakiak	United States
6352	WNP	Naga	Naga	Philippines
6353	WNR	Windorah	Windorah	Australia
6354	WNS	Nawabshah	Nawabshah	Pakistan
6355	WNZ	Longwan International Airport	Wenzhou	China
6356	WPB	Portberge	Portberge	Madagascar
6357	WRE	Whangarei	Whangarei	New Zealand
6358	WRG	Wrangell	Wrangell	United States
6359	WRL	Worland	Worland	United States
6360	WRO	Copernicus Airport	Wroclaw	Poland
6361	WSN	South Naknek	Southnaknek	United States
6362	WSO	Washabo	Washabo	Suriname
6363	WSP	Waspam	Waspam	Nicaragua
6364	WSR	Wasior	Wasior	Indonesia
6365	WSY	Whitsunday Airstrip Airport	Airliebeach	Australia
6366	WSZ	Westport	Westport	New Zealand
6367	WTA	Tambohorano	Tambohorano	Madagascar
6368	WTK	Noatak	Noatak	United States
6369	WUA	Wu Hai	Wu Hai	China
6370	WUH	Tianhe International	Wuhan	China
6371	WUN	Wiluna	Wiluna	Australia
6372	WUS	Wuyishan	Wuyishan	China
6373	WUU	Wau	Wau	Sudan
6374	WUX	Wuxi	Wuxi	China
6375	WVK	Manakara	Manakara	Madagascar
6376	WWD	Capemaycounty Airport	Wildwood	United States
6377	WWK	Boram	Wewak	Papua New Guinea
6378	WYA	Whyalla	Whyalla	Australia
6379	WYE	Yengema	Yengema	Singapore
6380	WYN	Wyndham	Wyndham	Australia
6381	WYS	Yellow Airport	Westyellowstone	United States
6382	XBE	Bearskin Lake	Bearskin Lake	Canada
6383	XBJ	Birjand	Birjand	Iran
6384	XCH	Christmas Island	Christmas Island	Christmas Island
6385	XCM	Chatham	Chatham	Canada
6386	WSX	Westsound	Westsound	United States
6387	WTE	Wotje	Wotjeisland	Marshall Islands
6388	WTL	Tuntutuliak	Tuntutuliak	United States
6389	WTP	Woitape	Woitape	Papua New Guinea
6390	WWP	Whale Pass	Whale Pass	United States
6391	WWT	Newtok	Newtok	United States
6392	XCR	Champagnevatry Airport	Paris	France
6393	XDB	Lille	Lille	France
6394	XDE	Diebougou	Diebougou	Burkina Faso
6395	XDJ	Djibo	Djibo	Burkina Faso
6396	XDT	Paris	Paris	France
6397	XEZ	Sodertalje	Sodertalje	Sweden
6398	XFU	Tierp	Tierp	Switzerland
6399	XFZ	Charny	Quebec	Canada
6400	XGA	Gaoua	Gaoua	Burkina Faso
6401	XGC	Lund	Lund	Sweden
6402	XGG	Goromgorom	Goromgorom	Burkina Faso
6403	XGL	Granville Lake	Granville Lake	Canada
6404	XHK	Valence	Valence	France
6405	XKA	Kantchari	Kantchari	Burkina Faso
6406	XKO	Kemano	Kemano	Canada
6407	XKY	Kaya	Kaya	Burkina Faso
6408	XLU	Leo	Leo	Burkina Faso
6409	XMB	Marina Mall EY	Marina Mall EY	United Arab Emirates
6410	XMG	Mahendranagar	Mahendranagar	Nepal
6411	XMI	Masasi	Masasi	Tanzania
6412	XML	Minlaton	Minlaton	Australia
6413	XNB	Chelsea Twr EY	Chelsea Twr EY	United Arab Emirates
6414	XNG	Quangngai	Quangngai	Vietnam
6415	XNU	Nouna	Nouna	Burkina Faso
6416	XOP	Poitiers	Poitiers	France
6417	XPA	Pama	Pama	Burkina Faso
6418	XPG	Gare du Nord Rail Stn	Paris	France
6419	XPJ	Montpellier	Montpellier	France
6420	XPK	Pukatawagan	Pukatawagan	Canada
6421	XRE	Reading	Reading	United Kingdom
6422	XRF	Marseille	Marseille	France
6423	XRR	Ross River	Ross River	Canada
6424	XSE	Sebba	Sebba	Burkina Faso
6425	XSH	Tours	Tours	France
6426	XSZ	Setubal	Setubal	Portugal
6427	XVE	Herning	Herning	Denmark
6428	XYD	Lyon	Lyon	France
6429	XZA	Zabre	Zabre	Burkina Faso
6430	XZM	Ferry	Ferry	Macau S.A.R.
6431	XZV	Toulon	Toulon	France
6432	YAF	Asbestos Hill	Asbestos Hill	Canada
6433	YAJ	Lyall Harbour	Lyall Harbour	Canada
6434	YAL	Alert Bay	Alert Bay	Canada
6435	YAQ	Maple Bay	Maple Bay	Canada
6436	YAV	Miner's Bay Airport	Minersbay	Canada
6437	YBA	Banff	Banff	Canada
6438	YBF	Bamfield	Bamfield	Canada
6439	YBJ	Baiejohanbeetz	Baiejohanbeetz	Canada
6440	YBM	Bronsoncreek	Bronsoncreek	Canada
6441	YBQ	Telegraphharbour	Telegraphharbour	Canada
6442	XGR	Kangiqsualujjuaq	Kangiqsualujjuaq	Canada
6443	XIC	Xichang	Xichang	China
6444	XIL	Xilinhot	Xilinhot	China
6445	XKH	Xieng Khouang	Xieng Khouang	Laos
6446	XKS	Kasabonika	Kasabonika	Canada
6447	XLB	Lac Brochet	Lac Brochet	Canada
6448	XLS	St. Louis	Saintlouis	Senegal
6449	XMH	Manihi	Manihi	French Polynesia
6450	XMN	Xiamen	Xiamen	China
6451	XMS	Macas	Macas	Ecuador
6452	XMY	Yam Island	Yam Island	Australia
6453	XNN	Xining	Xining	China
6454	XQP	Quepos	Quepos	Costa Rica
6455	XRY	Jerez De La Frontera	Jerez	Spain
6456	XSC	South Caicos	Southcaicos	Turks and Caicos Islands
6457	XSI	South Indian Lake	South Indian Lake	Canada
6458	XSP	Seletar	Singapore	Singapore
6459	XTL	Tadoule Lake	Tadoule Lake	Canada
6460	XUZ	Xuzhou	Xuzhou	China
6461	XYA	Yandina	Yandina	Somalia
6462	YAA	Anahim Lake	Anahim Lake	Canada
6463	YAC	Cat Lake	Cat Lake	Canada
6464	YAI	Chillan	Chillan	Chile
6465	YAK	Yakutat	Yakutat	United States
6466	YAM	Sault Ste Marie	Saultstemarie	Canada
6467	YAO	Yaounde	Yaounde	Cameroon
6468	YAP	Yap	Yap	Micronesia
6469	YAY	St. Anthony	Saintanthony	Canada
6470	YAZ	Tofino	Tofino	Canada
6471	YBB	Kugaaruk	Pellybay	Canada
6472	YBE	Uranium City	Uranium City	Canada
6473	YBG	Bagotville	Bagotville	Canada
6474	YBI	Black Tickle	Blacktickle	Canada
6475	YBK	Baker Lake	Bakerlake	Canada
6476	YBP	Yibin	Yibin	China
6477	YBR	Brandon	Brandon	Canada
6478	YBT	Brochet	Brochet	Canada
6479	XQU	Qualicum Beach	Qualicum	Canada
6480	YBZ	Toronto	Toronto	Canada
6481	YCQ	Chetwynd	Chetwynd	Canada
6482	YCZ	Fairmountsprings	Fairmountsprings	Canada
6483	YDE	Paradiseriver	Paradiseriver	Canada
6484	YDG	Digby	Digby	Canada
6485	YDI	Davisinlet	Davisinlet	Canada
6486	YDO	Saintmethode Airport	Dolbeau	Canada
6487	YDS	Desolationsound	Desolationsound	Canada
6488	YDV	Bloodvein	Bloodvein	Canada
6489	YDX	Doccreek	Doccreek	Canada
6490	YEA	Edmonton	Edmonton	Canada
6491	YEQ	Yenkis	Yenkis	Papua New Guinea
6492	YEY	Amos	Amos	Canada
6493	YGA	Gagnon	Gagnon	Canada
6494	YGC	Grandecache	Grandecache	Canada
6495	YGE	Gorgeharbor	Gorgeharbor	Canada
6496	YGN	Greenwaysound	Greenwaysound	Canada
6497	YHC	Hakaipass	Hakaipass	Canada
6498	YHG	Charlottetown	Charlottetown	Canada
6499	YIA	Yogyakarta	Yogyakarta	Indonesia
6500	YBX	Blanc Sablon	Blancsablon	Canada
6501	YCB	Cambridge Bay	Cambridgebay	Canada
6502	YCC	Cornwall	Cornwall	Canada
6503	YCD	Nanaimo	Nanaimo	Canada
6504	YCG	Castlegar	Castlegar	Canada
6505	YCK	Colville Lake	Colville Lake	Canada
6506	YCL	Charlo	Charlo	Canada
6507	YCM	St. Catharines	Saintcatharines	Canada
6508	YCN	Cochrane	Cochrane	Canada
6509	YCR	Crosslake	Crosslake	Canada
6510	YCS	Chesterfield Inlet	Chesterfieldinlet	Canada
6511	YCY	Clyde River	Clyderiver	Canada
6512	YDA	Dawson City	Dawson	Canada
6513	YDL	Deaselake	Deaselake	Canada
6514	YDN	Dauphin	Dauphin	Canada
6515	YDP	Nain	Nain	Canada
6516	YEC	Yecheon	Yecheon	South Korea
6517	YEG	Edmonton	Edmonton	Canada
6518	YEI	Yenisehir Airport	Bursa	Turkey
6519	YEK	Arviat	Arviat	Canada
6520	YER	Fortsevern	Fortsevern	Canada
6521	YES	Yasouj	Yasouj	Iran
6522	YET	Edson	Edson	Canada
6523	YEV	Inuvik	Inuvik	Canada
6524	YFB	Iqaluit	Iqaluit	Canada
6525	YFC	Fredericton	Fredericton	Canada
6526	YFE	Forestville	Forestville	Canada
6527	YFH	Fort Hope	Forthope	Canada
6528	YFO	Flin Flon	Flinflon	Canada
6529	YFR	Fortresolution	Fortresolution	Canada
6530	YFS	Fort Simpson	Fortsimpson	Canada
6531	YFX	St Lewis	Foxharbour	Canada
6532	YGH	Fort Good Hope	Fortgoodhope	Canada
6533	YGJ	Miho	Yonago	Japan
6534	YGK	Kingston	Kingston	Canada
6535	YGL	La Grande	Lagrande	Canada
6536	YGP	Gaspe Metropolitan Area	Gaspe	Canada
6537	YGQ	Geraldton	Geraldton	Canada
6538	YGR	Iles De La Madeleine	Ilesdelamadele	Canada
6539	YGT	Igloolik	Igloolik	Canada
6540	YGW	Kuujjuarapik	Kuujjuarapik	Canada
6541	YGX	Gillam	Gillam	Canada
6542	YGZ	Grise Fiord	Grisefiord	Canada
6543	YHA	Porthopesimpson	Porthopesimpson	Canada
6544	YHF	Hearst	Hearst	Canada
6545	YHI	Holman	Holman	Canada
6546	YHK	Gjoa Haven	Gjoahaven	Canada
6547	YHM	John C. Munroe Airport	Mounthope	Canada
6548	YHO	Hopedale	Hopedale	Canada
6549	YHP	Poplarhill	Poplarhill	Canada
6550	YHR	Chevery	Chevery	Canada
6551	YHU	Sainthubert Airport	Montreal	Canada
6552	YHZ	Halifax	Halifax	Canada
6553	YIB	Atikokan	Atikokan	Canada
6554	YIF	Pakuashipi	Pakuashipi	Canada
6555	YIK	Ivujivik	Ivujivik	Canada
6556	YIN	Yining	Yining	China
6557	YIO	Pond Inlet	Pondinlet	Canada
6558	YIV	Islandlkgardenhill	Islandlkgardenhill	Canada
6559	YHS	Sechelt	Sechelt	Canada
6560	YKE	Kneelake	Kneelake	Canada
6561	YKJ	Keylake	Keylake	Canada
6562	YKK	Kitkatla	Kitkatla	Canada
6563	YLG	Yalgoo	Yalgoo	Australia
6564	YLP	Mingan	Mingan	Canada
6565	YLR	Leafrapids	Leafrapids	Canada
6566	YLS	Lebelsurquevillon	Lebelsurquevillon	Canada
6567	YMB	Merritt	Merritt	Canada
6568	YME	Matane	Matane	Canada
6569	YMK	Mys Kamennyy	Mys Kamennyy	Russia
6570	YML	Charlevoix Airport	Murraybay	Canada
6571	YMQ	Montreal	Montreal	Canada
6572	YNK	Nootkasound	Nootkasound	Canada
6573	YOK	Yokohama	Yokohama	Japan
6574	YOT	Yotvata	Yotvata	Israel
6575	YPB	Portalberni	Portalberni	Canada
6576	YPP	Pinepoint	Pinepoint	Canada
6577	YPS	Porthawkesbury	Porthawkesbury	Canada
6578	YKA	Kamloops	Kamloops	Canada
6579	YKF	Waterloo Regional	Kitchener	Canada
6580	YKG	Kangirsuk	Kangirsuk	Canada
6581	YKL	Schefferville	Schefferville	Canada
6582	YKN	Changurney Airport	Yankton	United States
6583	YKQ	Waskaganish	Waskaganish	Canada
6584	YKS	Yakutsk	Yakutsk	Russia
6585	YKU	Chisasibi	Chisasibi	Canada
6586	YKX	Kirklandlake	Kirklandlake	Canada
6587	YLC	Kimmirut	Kimmirutlakeharbour	Canada
6588	YLD	Chapleau	Chapleau	Canada
6589	YLE	Wha Ti	Whatilaclamartre	Canada
6590	YLH	Lansdowne House	Lansdownehouse	Canada
6591	YLI	Ylivieska	Ylivieska	Finland
6592	YLL	Lloydminster	Lloydminster	Canada
6593	YLW	Kelowna	Kelowna	Canada
6594	YMA	Mayo	Mayo	Canada
6595	YMH	Mary's Harbour	Mary'sharbour	Canada
6596	YMM	Fort Mcmurray	Fortmcmurray	Canada
6597	YMN	Makkovik	Makkovik	Canada
6598	YMO	Moosonee	Moosonee	Canada
6599	YMS	Yurimaguas	Yurimaguas	Peru
6600	YMX	Mirabel Airport	Montreal	Canada
6601	YNA	Natashquan	Natashquan	Canada
6602	YNB	Yanbu	Yanbu	Saudi Arabia
6603	YNC	Wemindji	Wemindji	Canada
6604	YNE	Norwayhouse	Norwayhouse	Canada
6605	YNG	Youngstownwarren	Youngstownwarren	United States
6606	YNJ	Yanji	Yanji	China
6607	YNL	Pointsnorthland	Pointsnorthland	Canada
6608	YNM	Matagami	Matagami	Canada
6609	YNO	Northspiritlake	Northspiritlake	Canada
6610	YNS	Nemiscau	Nemiscau	Canada
6611	YNT	Yantai	Yantai	China
6612	YNY	Yangyang	Yangyang	South Korea
6613	YNZ	Yancheng	Yancheng	China
6614	YOA	Ekati	Ekati	Canada
6615	YOD	Coldlake	Coldlake	Canada
6616	YOG	Ogoki	Ogoki	Canada
6617	YOH	Oxfordhouse	Oxfordhouse	Canada
6618	YOL	Yola	Yola	Nigeria
6619	YOO	Oshawa Municipal	Oshawa	Canada
6620	YOP	Rainbow Lake	Rainbowlake	Canada
6621	YPA	Glass Field	Princealbert	Canada
6622	YPC	Paulatuk	Paulatuk	Canada
6623	YPD	Parrysound	Parrysound	Canada
6736	ZFQ	Bordeaux	Bordeaux	France
6624	YPE	Peaceriver	Peaceriver	Canada
6625	YPH	Inukjuak	Inukjuak	Canada
6626	YPJ	Aupaluk	Aupaluk	Canada
6627	YPL	Picklelake	Picklelake	Canada
6628	YPN	Portmenier	Portmenier	Canada
6629	YPO	Peawanuck	Peawanuck	Canada
6630	YPQ	Peterborough	Peterborough	Canada
6631	YPR	Digby Island	Princerupert	Canada
6632	YPX	Puvirnituq	Povungnituk	Canada
6633	YPY	Fortchipewyan	Fortchipewyan	Canada
6634	YQB	Quebec	Quebec	Canada
6635	YQC	Quaqtaq	Quaqtaq	Canada
6636	YQG	Windsor	Windsor	Canada
6637	YKT	Klemtu	Klemtu	Canada
6638	YMP	Portmcneil	Portmcneil	Canada
6639	YPT	Penderharbour	Penderharbour	Canada
6640	YQS	Pembrokearea Airport	Saintthomas	Canada
6641	YRD	Deanriver	Deanriver	Canada
6642	YRN	Riversinlet Airport	Owekenovillage	Canada
6643	YSG	Lutselke	Lutselkesnowdrift	Canada
6644	YSH	Smith Falls	Smithfalls	Canada
6645	YSK	Sanikiluaq	Sanikiluaq	Canada
6646	YSL	St Leonard	Saintleonard	Canada
6647	YSN	Salmonarm	Salmonarm	Canada
6648	YSX	Shearwater	Shearwater	Canada
6649	YSZ	Squirrelcove	Squirrelcove	Canada
6650	YTB	Hartleybay	Hartleybay	Canada
6651	YTC	Sturdee	Sturdee	Canada
6652	YTD	Thicketportage	Thicketportage	Canada
6653	YTJ	Terracebay	Terracebay	Canada
6654	YTK	Tulugak	Tulugak	Canada
6655	YTO	Toronto Pearson International	Toronto	Canada
6656	YTT	Tisdale	Tisdale	Canada
6657	YTU	Tasu	Tasu	Canada
6658	YTX	Telegraphcreek	Telegraphcreek	Canada
6659	YUF	Pelly Bay Dewline	Cortesbay	Canada
6660	YVD	Yeva	Yeva	Papua New Guinea
6661	YVE	Vernon	Vernon	Canada
6662	YWN	Winisk	Winisk	Canada
6663	YQI	Yarmouth	Yarmouth	Canada
6664	YQK	Kenora	Kenora	Canada
6665	YQM	Moncton	Moncton	Canada
6666	YQN	Nakina	Nakina	Canada
6667	YQQ	Comox	Comox	Canada
6668	YQR	Regina	Regina	Canada
6669	YQU	Grande Prairie	Grandeprairie	Canada
6670	YQV	Yorkton	Yorkton	Canada
6671	YQW	Northbattleford	Northbattleford	Canada
6672	YQX	Gander	Gander	Canada
6673	YQZ	Quesnel	Quesnel	Canada
6674	YRA	Rae Lakes	Raelakes	Canada
6675	YRB	Resolute	Resolute	Canada
6676	YRF	Cartwright	Cartwright	Canada
6677	YRI	Riviereduloup	Riviereduloup	Canada
6678	YRJ	Roberval	Roberval	Canada
6679	YRL	Red Lake	Redlake	Canada
6680	YRT	Nuuk	Rankininlet	Canada
6681	YSB	Sudbury	Sudbury	Canada
6682	YSC	Sherbrooke	Sherbrooke	Canada
6683	YSF	Stony Rapids	Stonyrapids	Canada
6684	YSJ	Saint John	Saintjohn	Canada
6685	YSO	Postville	Postville	Canada
6686	YSP	Marathon	Marathon	Canada
6687	YSR	Nanisivik	Nanisivik	Canada
6688	YSY	Sachs Harbour	Sachsharbour	Canada
6689	YTA	Pembroke	Pembroke	Canada
6690	YTE	Cape Dorset	Capedorset	Canada
6691	YTF	Alma	Alma	Canada
6692	YTH	Thompson	Thompson	Canada
6693	YTM	La Macaza	Monttremblant	Canada
6694	YTQ	Tasiujuaq	Tasiujuaq	Canada
6695	YTR	Trenton	Trenton	Canada
6696	YTZ	City Centre Airport	Toronto	Canada
6697	YUB	Tuktoyaktuk	Tuktoyaktuk	Canada
6698	YUD	Umiujaq	Umiujaq	Canada
6699	YUE	Yuendumu	Yuendumu	Australia
6700	YUL	Pierre Elliott Trudeau	Montreal	Canada
6701	YUT	Repulse Bay	Repulsebay	Canada
6702	YUX	Hall Beach	Hallbeach	Canada
6703	YUY	Noranda	Rouyn-noranda	Canada
6704	YVA	Iconi	Moroni	Comoros
6705	YVC	La Ronge	Laronge	Canada
6706	YVM	Qikiqtarjuaq	Qikiqtarjuaq	Canada
6707	YVO	Val D'Or	Vald'or	Canada
6708	YVP	Kuujjuaq	Kuujjuaq	Canada
6709	YVR	Vancouver	Vancouver	Canada
6710	YVT	Buffalonarrows	Buffalonarrows	Canada
6711	YVZ	Deerlake	Deerlake	Canada
6712	YWB	Kangiqsujuaq	Kangiqsujuaq	Canada
6713	YWH	Victoria Inner Harbor	Victoria Harbour	Canada
6714	YWJ	Deline	Deline	Canada
6715	YWK	Wabush	Wabush	Canada
6716	YWL	Williams Lake	Williamslake	Canada
6717	YWM	Williams Harbour	Williamsharbour	Canada
6718	YWP	Webequie	Webequie	Canada
6719	YWY	Wrigley	Wrigley	Canada
6720	YRR	Stuartisland	Stuartisland	Canada
6721	YYA	Bigbayyachtclub	Bigbayyachtclub	Canada
6722	ZAA	Alicearm	Alicearm	Canada
6723	ZAV	Aveiro	Aveiro	Portugal
6724	ZBE	Dolnibenesov Airport	Zabreh	Czech Republic
6725	ZBJ	Fredericia	Fredericia	Denmark
6726	ZBL	Biloela	Biloela	Australia
6727	ZBO	Bowen	Bowen	Australia
6728	ZBT	Kolding	Kolding	Denmark
6729	ZCO	Maquehue	Temuco	Chile
6730	ZEG	Senggo	Senggo	Indonesia
6731	ZEI	Garmisch Prtnkrch	Garmisch Prtnkrch	Germany
6732	ZEL	Bella Bella	Bellabella	Canada
6733	ZEP	Victoria Railway Stn  Airport	London	United Kingdom
6734	ZFB	Oldfortbay	Oldfortbay	Canada
6735	ZFJ	Rennes	Rennes	France
6737	ZGF	Grandforks	Grandforks	Canada
6738	ZGL	South Galway	South Galway	Australia
6739	ZGM	Ngoma	Ngoma	Zambia
6740	ZGX	Viborg	Viborg	Denmark
6741	ZIB	Nyborg	Nyborg	Tanzania
6742	ZIE	Vulcanoisland	Vulcanoisland	Italy
6743	ZIJ	Nykoingsjaelland	Nykoingsjaelland	Denmark
6744	ZIL	Horsens	Horsens	Denmark
6745	ZIP	Lipariisland	Lipariisland	Italy
6746	ZIR	Randers	Randers	Denmark
6747	ZJE	Panareaisland	Panareaisland	Italy
6748	ZJF	Jebel Ali	Jebel Ali	United Arab Emirates
6749	YXD	Edmonton City Center Airport	Edmonton	Canada
6750	YXH	Medicinehat	Medicinehat	Canada
6751	YXJ	Fort St John	Fortstjohn	Canada
6752	YXK	Rimouski	Rimouski	Canada
6753	YXL	Sioux Lookout	Siouxlookout	Canada
6754	YXN	Whale Cove	Whalecove	Canada
6755	YXP	Pangnirtung	Pangnirtung	Canada
6756	YXR	Earlton	Earlton	Canada
6757	YXT	Terrace	Terrace	Canada
6758	YXU	London	London	Canada
6759	YXX	Abbotsford	Abbotsford	Canada
6760	YXZ	Wawa	Wawa	Canada
6761	YYB	North Bay	Northbay	Canada
6762	YYC	Calgary	Calgary	Canada
6763	YYD	Smithers	Smithers	Canada
6764	YYF	Penticton	Penticton	Canada
6765	YYG	Charlottetown	Charlottetown	Canada
6766	YYH	Taloyoak	Taloyoak	Canada
6767	YYJ	Victoria	Victoria	Canada
6768	YYL	Lynnlake	Lynnlake	Canada
6769	YYR	Goose Bay	Goosebay	Canada
6770	YYT	St. John's	Saintjohns	Canada
6771	YYU	Kapuskasing	Kapuskasing	Canada
6772	YYY	Mont Joli	Montjoli	Canada
6773	YZE	Gorebay	Gorebay	Canada
6774	YZF	Yellowknife	Yellowknife	Canada
6775	YZG	Salluit	Salluit	Canada
6776	YZP	Sandspit	Sandspit	Canada
6777	YZR	Sarnia	Sarnia	Canada
6778	YZS	Coral Harbour	Coralharbour	Canada
6779	YZU	Whitecourt	Whitecourt	Canada
6780	YZV	Sept Iles	Septiles	Canada
6781	YZZ	Trail	Trail	Canada
6782	ZAD	Zadar	Zadar	Croatia
6783	ZAG	Pleso	Zagreb	Croatia
6784	ZAH	Zahedan	Zahedan	Iran
6785	ZAL	Pichoy	Valdivia	Chile
6786	ZAM	Zamboanga	Zamboanga	Philippines
6787	ZAZ	Zaragoza	Zaragoza	Canada
6788	ZBF	Bathurst	Bathurst	Canada
6789	ZBM	Bromont	Bromont	Canada
6790	ZBR	Chah Bahar	Chahbahar	Iran
6791	ZEM	Eastmain	Eastmain	Canada
6792	ZFA	Faro	Faro	Canada
6793	ZFD	Fond Du Lac	Fonddulac	Canada
6794	ZFM	Fort Mcpherson	Fortmcpherson	Canada
6795	ZFN	Tulita	Tulitafortnorman	Canada
6796	ZGI	Godsriver	Godsriver	Canada
6797	ZGS	Gethsemani	Gethsemani	Canada
6798	ZGU	Gaua	Gaua	Vanuatu
6799	ZHA	Zhanjiang	Zhanjiang	China
6800	ZIG	Ziguinchor	Ziguinchor	Serbia
6801	ZIN	Ost Interlaken	Ost Interlaken	Switzerland
6802	ZJX	Stromboli Island	Stromboliisland	Italy
6803	ZJY	Ponza	Ponza	Italy
6804	ZKN	Skive	Skive	Denmark
6805	ZLG	Elgouera	Elgouera	Mauritania
6806	ZLN	Lemans	Lemans	France
6807	ZLX	British Rail Terminal Airport	London	United Kingdom
6808	ZNC	Nyac	Nyac	United States
6809	ZNU	Namu	Namu	Canada
6810	ZOF	Oceanfalls	Oceanfalls	Canada
6811	ZPY	Siegburg	Siegburg	Germany
6812	ZRC	Sanpedroalcantara	Sanpedroalcantara	Spain
6813	ZRI	Serui	Serui	Indonesia
6814	ZRM	Sarmi	Sarmi	Indonesia
6815	ZRS	Flexenpassheliport Airport	Zurslech	Austria
6816	ZSS	Sassandra	Sassandra	Cote D'Ivoire (Ivory Coast)
6817	ZST	Stewart	Stewart	Canada
6818	ZTA	Tureia	Tureia	French Polynesia
6819	ZTS	Tahsis	Tahsis	Canada
6820	ZUC	Ignace	Ignace	Canada
6821	ZWC	Stavanger	Stavanger	Norway
6822	ZXM	Rognan	Rognan	Norway
6823	ZXT	Heydar Aliyev	Baku	Azerbaijan
6824	ZYK	Shekou Port Airport	Shekou	China
6825	ZYN	Nimes	Nimes	France
6826	AAB	Arrabury	Arrabury	Australia
6827	BOM	Chhatrapati Shivaji Intl Airport	Mumbai	India
6828	AAL	Aalborg	Aalborg	Denmark
6829	AAT	Altay	Altay	China
6830	ABD	Abadan	Abadan	Iran
6831	ABK	Kabri Dar	Kabridar	Ethiopia
6832	ABR	Aberdeen	Aberdeen	United States
6833	ACA	General Juan N. Alvarez International	Acapulco	Mexico
6834	ACR	Araracuara	Araracuara	Colombia
6835	ACY	Atlantic City	Atlantic City	United States
6836	ADJ	Marka International Airport	Amman	Jordan
6837	ADZ	Sanandresisland	Sanandresisland	Colombia
6838	AET	Allakaket	Allakaket	United States
6839	AFL	Alta Floresta	Alta Floresta	Brazil
6840	AFZ	Sabzevar	Sabzevar	Iran
6841	AGH	Angelholm	Angelholm/helsingborg	Sweden
6842	AGJ	Aguni	Aguni	Japan
6843	AGN	Angoon	Angoon	United States
6844	AGS	Bush Field	Augusta	United States
6845	AGZ	Aggeneys	Aggeneys	South Africa
6846	AHS	Ahuas	Ahuas	Honduras
6847	AIT	Aitutaki	Aitutaki	Cook Islands
6848	AJL	Aizawl	Aizawl	India
6849	AKA	Ankang	Ankang	China
6850	AKJ	Asahikawa	Asahikawa	Japan
6851	ZWA	Andapa	Andapa	Madagascar
6852	ZJN	Swan River	Swanriver	Canada
6853	ZKE	Kaschechewan	Kaschechewan	Canada
6854	ZKG	Kegaska	Kegaska	Canada
6855	ZLT	La Tabatiere	Latabatiere	Canada
6856	ZMT	Masset	Masset	Canada
6857	ZNA	Nanaimo Harbour	Nanaimo Harbour	Canada
6858	ZND	Zinder	Zinder	Niger
6859	ZNE	Newman	Newman	Australia
6860	ZOS	Canal Balo	Osorno	Chile
6861	ZPB	Sachigolake	Sachigolake	Canada
6862	ZPC	Pucon	Pucon	Chile
6863	ZQN	Queenstown	Queenstown	New Zealand
6864	ZRH	Zürich Kloten	Zurich	Switzerland
6865	ZRJ	Roundlake	Roundlake	Canada
6866	ZSA	San Salvador	San Salvador	The Bahamas
6867	ZSJ	Sandylake	Sandylake	Canada
6868	ZTB	Tete a La Baleine	Tetealabaleine	Canada
6869	ZTH	Zakinthos	Zakinthosisland	Greece
6870	ZTM	Shamattawa	Shamattawa	Canada
6871	ZTR	Zhitomir	Zhitomir	Ukraine
6872	ZUH	Zhuhai	Zhuhai	China
6873	ZVA	Miandrivazo	Miandrivazo	Madagascar
6874	ZVJ	Abu Dhabi	Abudhabi	United Arab Emirates
6875	ZWL	Wollaston Lake	Wollastonlake	Canada
6876	ZYL	Osmani International	Sylhet	Bangladesh
6877	ZZU	Mzuzu	Mzuzu	Malawi
6878	AAC	Alarish	Alarish	Egypt
6879	NBO	Jomo Kenyatta International	Nairobi	Kenya
6880	DXB	Dubai	Dubai	United Arab Emirates
6881	FJR	Fujairah Intl	Fujairah	United Arab Emirates
6882	AKS	Auki	Auki	Solomon Islands
6883	ALB	Albany	Albany	United States
6884	ALJ	Kortdoorn Airport	Alexanderbay	South Africa
6885	ALS	Alamosa	Alamosa	United States
6886	AMA	Rick Husband Amarillo International	Amarillo	United States
6887	AMM	Queen Alia Intl	Amman	Jordan
6888	AMS	Schiphol	Amsterdam	Netherlands
6889	ANC	Ted Stevens Anchorage International Airport	Anchorage	United States
6890	ANS	Andahuaylas	Andahuaylas	Peru
6891	AOG	Anshan	Anshan	China
6892	AOO	Martinsburg	Altoona	United States
6893	APL	Nampula	Nampula	Mozambique
6894	AQA	Araraquara	Araraquara	Brazil
6895	ARE	Arecibo	Arecibo	Puerto Rico
6896	ARR	Alto Rio Senguerr	Altoriosenguerr	Argentina
6897	ASB	Ashgabat	Ashgabad	Canada
6898	ASK	Yamoussoukro	Yamoussoukro	Cote D'Ivoire (Ivory Coast)
6899	ASR	Erkilet International Airport	Kayseri	Turkey
6900	ASW	Aswan	Aswan	Egypt
6901	ATF	Chachoan Airport	Ambato	Ecuador
6902	AUC	Arauca	Arauca	Colombia
6903	AUO	Auburn-Opelika Airport	Auburn	United States
6904	AUX	Araguaina	Araguaina	Brazil
6905	AVL	Regional Airport	Asheville	United States
6906	AWZ	Ahwaz	Ahwaz	Iran
6907	AXD	Dimokritos	Alexandroupolis	Greece
6908	AYK	Arkalyk	Arkalyk	Kazakhstan
6909	AZO	Battle Creek Intl	Kalamazoo	United States
6910	BAF	Barnes Airport	Westfield	United States
6911	BAI	Buenosaires	Buenosaires	Costa Rica
6912	BAU	Bauru	Bauru	Brazil
6913	BBG	Butaritari	Butaritari	Kiribati
6914	BBO	Berbera	Berbera	Somalia
6915	BBX	Wingsfield Airport	Philadelphia	United States
6916	BCN	El Prat De Llobregat	Barcelona	Spain
6917	BDH	Bandar Lengeh	Bandarlengeh	Iran
6918	BDQ	Vadodara	Vadodara	India
6919	BEB	Benbecula	Benbecula	United Kingdom
6920	BEK	Bareilly Airport	Bareilly	India
6921	BES	Lesquin	Brest	France
6922	BEY	Rafic Hariri Airport	Beirut	Lebanon
6923	BFD	Bradford	Bradford	United States
6924	BFI	King County International Airport	Seattle	United States
6925	BGI	Grantley Adams International	Bridgetown	Barbados
6926	BFS	Aldergrove International Airport	Belfast	United Kingdom
6927	BHD	George Best Belfast City	Belfast	United Kingdom
6928	BHM	Birmingham	Birmingham	United States
6929	BHU	Bhavnagar	Bhavnagar	India
6930	BIG	Allenaaf Airport	Bigdelta	United States
6931	BIO	Sondica	Bilbao	Spain
6932	BJA	Bejaia	Bejaia	Algeria
6933	BJI	Bemidji	Bemidji	United States
6934	BJV	Milas	Bodrum	Turkey
6935	BKB	Nal Airport	Bikaner	India
6936	BKI	Kota Kinabalu	Kotakinabalu	Malaysia
6937	BKS	Padangkemiling	Bengkulu	Indonesia
6938	BLE	Dala Airport	Borlange/falun	Sweden
6939	BLI	Bellingham	Bellingham	United States
6940	BLV	Belleville	Belleville	United States
6941	BMG	Bloomington	Bloomington	United States
6942	BMV	Phung Duc	Banmethuot	Vietnam
6943	BNE	Brisbane	Brisbane	Australia
6944	BNS	Barinas	Barinas	Venezuela
6945	BOC	Bocas Del Toro	Bocasdeltoro	Panama
6946	BOW	Bartow	Bartow	United States
6947	BOY	Borgo	Bobodioulass	Burkina Faso
6948	BPS	Porto Seguro	Porto Seguro	Brazil
6949	ESB	Esenboga	Ankara	Turkey
6950	GYD	Heydar Aliyev	Baku	Azerbaijan
6951	ATL	Hartsfield jackson Atlanta International	Atlanta	United States
6952	KZC	Kompong Chhna	Kompong-Chhna	Cambodia
6953	LAA	Field	Lamar	United States
6954	LAK	Aklavik	Aklavik	Canada
6955	BQK	Glynco Jetport	Brunswick	United States
6956	BRC	San Carlos De Bariloche	San Carlos De Bariloche	Argentina
6957	BRO	South Padre Is. Intl	Brownsville	United States
6958	BRU	Brussels	Brussels	Belgium
6959	BSB	Presidente Juscelino Kubitschek	Brasilia	Brazil
6960	BSL	Euroairport Basel Mulhouse Freiburg	Baselmulhouse	Switzerland
6961	BTI	Barter Island	Barterisland	United States
6962	BTS	M. R. tefánika	Bratislava	Slovakia
6963	BUD	Ferihegy	Budapest	Hungary
6964	BUP	Bathinda	Bhatinda	India
6965	BUQ	Bulawayo	Bulawayo	Zimbabwe
6966	BUS	Batum	Batumi	Georgia
6967	BVH	Vilhena	Vilhena	Brazil
6968	BWE	Braunschweig	Braunschweig/wolfsburg	Germany
6969	BWT	Wynyard	Burnie	Australia
6970	BXR	Bam	Bam	Iran
6971	BYM	C.M. de Cespedes	Bayamo	Cuba
6972	BZI	Balikesir	Balikesir	Turkey
6973	BZU	Buta	Buta	Democratic Republic of the Congo
6974	CAB	Cabinda	Cabinda	Angola
6975	CAJ	Canaima	Canaima	Venezuela
6976	CAQ	Caucasia	Caucasia	Colombia
6977	CAW	Bartolomeu Lisandro	Campos	Brazil
6978	CAZ	Cobar	Cobar	Australia
6979	CBN	Penggung Airport	Cirebon	Indonesia
6980	CCF	Salvaza Airport	Carcassonne	France
6981	CCR	Buchananfld Airport	Concord	United States
6982	CDJ	Conceicao Do Araguaia Airport	Conceicaodoarag	Brazil
6983	CDW	Caldwell	Caldwell	United States
6984	CEG	Chester	Chester	United Kingdom
6985	CES	Cessnock	Cessnock	Australia
6986	CFN	Donegal	Donegal	Ireland
6987	CGB	Marechal Rondon Intl. Airpt. 	Cuiaba	Brazil
6988	CGO	Zhengzhou	Zhengzhou	China
6989	CHA	Lovell Field	Chattanooga	United States
6990	CHC	Christchurch	Christchurch	New Zealand
6991	CHO	Albemarle	Charlottesville	United States
6992	CHY	Choiseul Bay	Choiseulbay	Solomon Islands
6993	CIH	Changzhi	Changzhi	China
6994	CIW	Canouan Island	Canouan Island	Saint Vincent and the Grenadines
6995	CJC	El Loa	Calama	Chile
6996	CKB	Benedum	Clarksburg	United States
6997	CLD	Mc Clellan Palomar Airport	Sandiego	United States
6998	CLN	Carolina	Carolina	Brazil
6999	CLW	Executive Airport	Clearwater	United States
7000	CMG	Corumba	Corumba	Brazil
7001	CMN	Mohamed V	Casablanca	Morocco
7002	CNB	Coonamble	Coonamble	Australia
7003	CNC	Coconut Island	Coconut Island	Australia
7004	CNM	Carlsbad	Carlsbad	United States
7005	COC	Concordia	Concordia	Argentina
7006	COJ	Coonabarabran	Coonabarabran	Australia
7007	COU	Columbia	Columbia	United States
7008	CPE	Campeche	Campeche	Mexico
7009	CPX	Culebra	Culebra	Puerto Rico
7010	CRC	Cartago	Cartago	Colombia
7011	CRL	Charleroi Brussels South	Brussels	Belgium
7012	CSG	Metropolitan	Columbus	United States
7013	CSY	Cheboksary	Cheboksary	Russia
7014	CTL	Charleville	Charleville	Australia
7015	CTN	Cooktown	Cooktown	Australia
7016	CUA	Ciudadconstitucion	Ciudadconstitucion	Mexico
7017	CUP	Carupano	Carupano	Venezuela
7018	CUU	Gen Fierro Villalobos	Chihuahua	Mexico
7019	CVM	Ciudad Victoria	Ciudadvictoria	Mexico
7020	CWA	Central Wisconsin	Wausau	United States
7021	CXB	Coxs Bazar	Cox'sbazar	Bangladesh
7022	CYB	Gerrard Smith	Caymanbracis	Cayman Islands
7023	CYS	Cheyenne	Cheyenne	United States
7024	CZF	Caperomanzof	Caperomanzof	United States
7025	CZS	Campo Internacional Airport	Cruzeirodosul	Brazil
7026	DAN	Danville	Danville	United States
7027	TFU	Chengdu Tianfu International Airport	Chengdu	China
7028	DAY	James Cox Dayton Intl	Dayton	United States
7029	DBO	Dubbo	Dubbo	Australia
7030	DCA	Reagan Washington National	Washington	United States
7031	DED	Jollygrant Airport	Dehradun	India
7032	DFW	Fort Worth International	Dallas	United States
7033	DHN	Dothan	Dothan	United States
7034	DIK	Dickinson	Dickinson	United States
7035	DIY	Diyarbakir	Diyarbakir	Turkey
7036	DKI	Dunk Island	Dunk Island	Australia
7037	DLM	Dalaman	Dalaman	Turkey
7038	DMD	Doomadgee	Doomadgee	Australia
7039	DMK	Don Mueang Airport	Bangkok	Thailand
7040	DOD	Dodoma	Dodoma	Tanzania
7041	DOU	Dourados	Dourados	Brazil
7042	DRE	Drummondisland	Drummondisland	United States
7043	DRW	Darwin	Darwin	Australia
7044	DSN	Dongsheng	Dongsheng	China
7045	DTW	Metropolitan Wayne County	Detroit	United States
7046	DUR	Durban King Shaka International Airport	Durban	South Africa
7047	DYU	Dushanbe	Dushanbe	Tajikistan
7048	EAM	Nejran	Nejran	Saudi Arabia
7049	EBA	Marinadicampo Airport	Elbaisland	Italy
7050	EBJ	Esbjerg	Esbjerg	Denmark
7051	ECG	Elizabeth	Elizabeth	United States
7052	EDM	Lesajoncs Airport	Larochesuryon	France
7053	EEN	Dillanthopkins Airport	Keene	United States
7054	EGN	Geneina	Geneina	Sudan
7055	EHM	Cape Newenham	Capenewenham	United States
7056	EJA	Variguies	Barrancabermeja	Colombia
7057	EKT	Eskilstuna	Eskilstuna	Sweden
7058	ELH	North Eleuthera	Northeleuthera	The Bahamas
7059	ELQ	Regional Airport	Gassim	Saudi Arabia
7060	ELY	Yelland	Ely	United States
7061	EMP	Emporia	Emporia	United States
7062	ENS	Twenthe Airport	Enschede	Netherlands
7063	EPL	Mirecourt Airport	Epinal	France
7064	ERF	Erfurt	Erfurt	Germany
7065	ERM	Comandante Kraemer Airport	Erechim	Brazil
7066	ESF	Esler Field	Alexandria	United States
7067	ESS	Essen	Essen	Germany
7068	EUG	Eugene	Eugene	United States
7069	EVN	Zvartnots	Yerevan	Armenia
7070	EWR	Newark Liberty International	Newark Liberty International Airport	United States
7071	FAB	Farnborough	Farnborough	United Kingdom
7072	FAR	Hector Field	Fargo	United States
7073	FBE	Francisco Beltrao	Francisco Beltrao	Brazil
7074	FDH	Friedrichshafen	Friedrichshafen	Germany
7075	FGI	Fagali I	Apia Faleolo	Samoa
7076	FIZ	Fitzroy Crossing	Fitzroy Crossing	Australia
7077	FLF	Schaeferhaus Airport	Flensburg	Germany
7078	FLR	Peretola	Florence	Italy
7079	FMI	Kalemie	Kalemie	Democratic Republic of the Congo
7080	FNA	Lungi International	Freetown	Sierra Leone
7081	FOD	Fort Dodge	Fort Dodge	United States
7082	FPO	Grand Bahama International	Freeport	The Bahamas
7083	FRO	Flora	Flora	Norway
7084	FSD	Regionaljoefossfield Airport	Siouxfalls	United States
7085	FTI	Fitiuta	Fitiuta	American Samoa
7086	FTX	Owando	Owando	Congo
7087	FUG	Fuyang	Fuyang	China
7088	FUT	Futuna Island	Futuna Island	Wallis and Futuna Islands
7089	FYV	Municipal Drake Fld	Fayetteville	United States
7090	GAO	Los Canos	Guantanamo	Cuba
7091	GBA	Bigbay	Bigbay	Vanuatu
7092	GBE	Sir Seretse Khama International	Gaborone	Botswana
7093	GCM	Owen Roberts International	Grandcaymanis	Cayman Islands
7094	GDQ	Gondar	Gondar	Ethiopia
7095	GEG	Spokane	Spokane	United States
7096	GET	Geraldton	Geraldton	Australia
7097	GFO	Bartica	Bartica	Guyana
7098	GGS	Gobernador Gregores	Gobernador Gregores	Argentina
7099	GGW	Glasgow	Glasgow	United States
7100	PAC	Paitilla Marcos A. Gelabert	Panama City	Panama
7101	GIC	Boigu Island	Boigu Island	Australia
7102	GJA	Guanaja	Guanaja	Honduras
7103	GKL	Great Keppel Island Airport	Greatkeppelisla	Australia
7104	GLT	Gladstone	Gladstone	Australia
7105	GMR	Gambier Island	Gambieris	French Polynesia
7106	GNM	Guanambi	Guanambi	Brazil
7107	GOA	Cristoforo Colombo	Genoa	Italy
7108	GON	Groton	Groton	United States
7109	GOU	Garoua	Garoua	Cameroon
7110	GPB	Tancredo Thomaz Faria Airport	Guarapuava	Brazil
7111	GPZ	Grand Rapids	Grand Rapids	United States
7112	GRR	Kent County Intl	Grandrapids	United States
7113	GSE	City Airport	Gothenburg	Sweden
7114	GTE	Alyangula	Grooteeylandt	Australia
7115	GUB	Guerrero Negro	Guerreronegro	Mexico
7116	GUM	Antonio B. Won Pat International Airport	Guam	Guam
7117	GWD	Gwadar	Gwadar	Pakistan
7118	GXQ	Tenvidal Airport	Coyhaique	Chile
7119	GYM	Gen Jose M Yanez	Guaymas	Mexico
7120	GZT	Gaziantep	Gaziantep	Turkey
7121	HAJ	Hanover	Hannover	Germany
7122	HAU	Haugesund	Haugesund	Norway
7123	HCN	Hengchun	Hengchun	Taiwan
7124	HCR	Holy Cross	Holycross	United States
7125	HDM	Hamadan	Hamadan	Iran
7126	HEI	Heide/buesum	Heide/buesum	Germany
7127	HEX	Herrera	Santo Domingo	Dominican Republic
7128	HGD	Hughenden	Hughenden	Australia
7129	HGR	Wash. County Regional	Hagerstown	United States
7130	HIB	Chisholm	Hibbing	United States
7131	HKD	Hakodate	Hakodate	Japan
7132	HKY	Hickory	Hickory	United States
7133	HLH	Ulanhot	Ulanhot	China
7134	HME	Oued Irara Apt	Hassi Messaoud	Algeria
7135	HNL	Honolulu	Honolulu	United States
7136	HOD	Hodeidah	Hodeidah	Yemen
7137	HOH	Hohenems Airport	Hohenemsdornbirn	Austria
7138	HOR	Horta	Horta	Portugal
7139	HPA	Haapai	Ha'apai	Tonga
7140	HQM	Aberdeen	Aberdeen	United States
7141	HRS	Harrismith	Harrismith	South Africa
7142	HSV	Decatur	Huntsville	United States
7143	HUE	Humera	Humera	Ethiopia
7144	HUN	Hualien	Hualien	Taiwan
7145	HUV	Hudiksvall	Hudiksvall	Sweden
7146	HVB	Hervey Bay	Hervey Bay	Australia
7147	HYA	Barnstable	Hyannis	United States
7148	HZL	Hazleton	Hazleton	United States
7149	IAO	Sayak Airport	Delcarmen	Philippines
7150	IBE	Ibague	Ibague	Colombia
7151	IBR	Ibaraki	Ibaraki	Japan
7152	ICT	Mid Continent	Wichita	United States
7153	IFL	Innisfail	Innisfail	Australia
7154	IGB	Ingeniero Jacobacci	Ingeniero Jacobacci	Argentina
7155	IJK	Izhevsk	Izhevsk	Russia
7156	IKS	Tiksi	Tiksi	Russia
7157	ILG	Greater Wilmington	Wilmington	United States
7158	ILR	Ilorin	Ilorin	Nigeria
7159	IMK	Simikot	Simikot	Nepal
7160	IND	Indianapolis	Indianapolis	United States
7161	ING	Lago Argentino	Lago Argentino	Argentina
7162	INL	Falls	Internationalfalls	United States
7163	INT	Smith Reynolds	Winstonsalem	United States
7164	IOM	Isle Of Man	Isle Of Man	United Kingdom
7165	IPC	Mataveri Intl	Easterisland	Chile
7166	IPL	Imperial County	Elcentro	United States
7167	IQQ	Cavancha	Iquique	Chile
7168	IRG	Lockhart River	Lockhart River	Australia
7169	ISE	Isparta	Isparta	Turkey
7170	ISL	Isabel Pass	Isabel Pass	United States
7171	ISP	Longislandmacarthur Airport	Islip	United States
7172	ITR	Hidroeletrica	Itumbiara	Brazil
7173	IWA	Ivanova	Ivanovo	Russia
7174	IXC	Chandigarh	Chandigarh	India
7175	TYO	Tokyo	Tokyo	Japan
7176	IXJ	Satwari Airport	Jammu	India
7177	IXR	Birsa Munda Intl Airport	Ranchi	India
7178	IYK	Kern County	Inyokern	United States
7179	JAD	Jandakot	Jandakot	Australia
7180	JAO	Beaver Ruin	Atlanta	United States
7181	JAP	Punta Renes	Punta Renes	Costa Rica
7182	JBR	Jonesboro	Jonesboro	United States
7183	JCR	Jacareacanga	Jacareacanga	Brazil
7184	JED	King Abdulaziz International	Jeddah	Saudi Arabia
7185	JFK	John F Kennedy Intl	New York John F Kennedy Airport	United States
7186	JGO	Qeqertarsuaq	Qeqertarsuaq	Greenland
7187	JHB	Sultan Ismail Intl	Johorbahru	Malaysia
7188	JHS	Sisimiut	Sisimiut	Greenland
7189	JIU	Jiujiang	Jiujiang	China
7190	JKH	Chios	Chios	Greece
7191	JMS	Jamestown	Jamestown	United States
7192	JNN	Nanortalik	Nanortalik	Greenland
7193	JOE	Joensuu	Joensuu	Finland
7194	JOT	Joliet	Joliet	United States
7195	JRB	Downmanhhpt Airport	New York Downtown Manhattan Heliport	United States
7196	JSM	Jose De San Martin	Josedsanmartin	Argentina
7197	JTR	Santorini	Thira	Greece
7198	JUL	Juliaca	Juliaca	Peru
7199	JVL	Rock County	Janesville	United States
7200	JZH	Jiu Zhai Huang Long	Songpan	China
7201	KAG	Gangneung	Gangneung	South Korea
7202	KAO	Kuusamo	Kuusamo	Finland
7203	KBL	Khwaja Rawash	Kabul	Afghanistan
7204	KBP	Borispol	Kiev	Ukraine
7205	KCA	Kuqa	Kuqa	China
7206	KCT	Koggala	Koggala	Sri Lanka
7207	KDL	Kardla	Kardla	Estonia
7208	KDT	Kamphangsaen	Kamphangsaen	Thailand
7209	KEF	Keflavik International	Reykjavik	Iceland
7210	KEV	Halli	Halli	Finland
7211	KFA	Kiffa	Kiffa	Mauritania
7212	KGC	Kingscote	Kingscote	Australia
7213	KGI	Kalgoorlie	Kalgoorlie	Australia
7214	KGP	Kogalym	Kogalym	Russia
7215	KHH	Kaoshiung International Airport	Kaohsiung	Taiwan
7216	KHV	Novyy	Khabarovsk	Russia
7217	KIJ	Niigata	Niigata	Japan
7218	KIK	Kirkuk	Kirkuk	Iraq
7219	KIR	Kerry County	Kerrycounty	Ireland
7220	KIW	Southdowns	Kitwe	Zambia
7221	KKE	Bay of Islands	Kerikeri	New Zealand
7222	KKW	Kikwit	Kikwit	Democratic Republic of the Congo
7223	KLH	Kolhapur	Kolhapur	India
7224	KLS	Longview	Kelso	United States
7225	KMA	Kerema	Kerema	Papua New Guinea
7226	KMI	Miyazaki	Miyazaki	Japan
7227	KMS	Kumasi	Kumasi	Ghana
7228	KND	Kindu	Kindu	Democratic Republic of the Congo
7229	KNG	Kaimana	Kaimana	Indonesia
7230	KNH	Shang Yi	Kinmen	Taiwan
7231	KNS	King Island	King Island	Australia
7232	KOI	Orkney Island	Kirkwall	United Kingdom
7233	KOS	Sihanoukville	Sihanoukville	Cambodia
7234	KPC	Port Clarence	Portclarence	United States
7235	KRF	Kramfors	Kramforssolleftea	Sweden
7236	KRO	Kurgan	Kurgan	Russia
7237	KRW	Turkmanbashi	Turkmanbashi	Turkmenistan
7238	KSD	Karlstad	Karlstad	Sweden
7239	KSF	Kassel Calden	Kassel	Germany
7240	KSH	Kermanshah	Kermanshah	Iran
7241	KSM	Saint Marys	Saintmarys	United States
7242	KSU	Kvernberget	Kristiansund	Norway
7243	KTF	Takaka	Takaka	New Zealand
7244	KTN	Ketchikan	Ketchikan	United States
7245	KTU	Kota	Kota	India
7246	KUF	Kurumoch	Samara	Russia
7247	KUM	Yakushima	Yakushima	Japan
7248	KVA	Megas Alexandros International	Kavala	Greece
7249	KVL	Kivalina	Kivalina	United States
7250	KWJ	Gwangju	Gwangju	South Korea
7251	KWZ	Kolwezi	Kolwezi	Democratic Republic of the Congo
7252	KXE	Klerksdorp	Klerksdorp	South Africa
7253	KYI	Yalata Mission	Yalata Mission	Australia
7254	LAQ	La Braq	Beida	Libya
7255	LAW	Lawton Municipal	Lawton	United States
7256	LAZ	Bom Jesus Da Lapa	Bom Jesus Da Lapa	Brazil
7257	LBJ	Mutiara	Labuanbajo	Indonesia
7258	LBT	Lumberton	Lumberton	United States
7259	LCA	Larnaca	Larnaca	Cyprus
7260	LCJ	Lodz Lublinek	Lodz	Poland
7261	LCX	Liancheng	Liancheng	China
7262	LDB	Londrina	Londrina	Brazil
7263	LDN	Lamidanda	Lamidanda	Nepal
7264	LDX	St Laurent du Maroni	Saint Laurent du Maroni	French Guiana
7265	LEJ	Leipzig	Leipzig/halle	Germany
7266	LER	Leinster	Leinster	Australia
7267	LEX	Blue Grass	Lexington	United States
7268	LFT	Lafayette	Lafayette	United States
7269	LGH	Leigh Creek	Leigh Creek	Australia
7270	LGP	Legazpi	Legaspi	Philippines
7271	LHG	Lightning Ridge	Lightning Ridge	Australia
7272	LIF	Lifou	Lifou	New Caledonia
7273	LIL	Lesquin	Lille	France
7274	LIX	Likoma	Likomaisland	Malawi
7275	LJN	Linate Airport	Milan	Italy
7276	LKG	Lokichoggio	Lokichoggio	Kenya
7277	LKP	Lake Placid	Lakeplacid	United States
7278	LLF	LingLing	Ling Ling	China
7279	LLW	Kumuzu International Airport	Lilongwe	Malawi
7280	LMT	Klamathfalls	Klamathfalls	United States
7281	LNK	Lincoln	Lincoln	United States
7282	LOH	Camilo Ponce Enríquez Airport	Loja	Ecuador
7283	LOP	Selaparang	Mataram	Indonesia
7284	LPC	Lompoc	Lompoc	United States
7285	LPK	Lipetsk	Lipetsk	Russia
7286	LPS	Lopez Island	Lopezisland	United States
7287	LRE	Longreach	Longreach	Australia
7288	LRT	Lann Bihoue	Lorient	France
7289	LSE	La Crosse Municipal	Lacrosse	United States
7290	LSS	Terre de Haut	Terre-de-Haut	Guadeloupe
7291	LTA	Letaba	Tzaneen	South Africa
7292	LTO	Loreto	Loreto	Mexico
7293	LUG	Lugano	Lugano	Switzerland
7294	LUK	Municipal Lunken Field	Cincinnati	United States
7295	LUQ	San Luis	San Luis	Argentina
7296	LVA	Entrammes	Laval	France
7297	LVP	Lavan Island	Lavan Island	Iran
7298	LWK	Lerwick Tingwall	Shetland Islands	United Kingdom
7299	LXA	Gonggar	Gonggar	China
7300	LYB	Little Cayman	Littlecayman	Cayman Islands
7301	LYN	Bron	Lyon	France
7302	LYX	Lydd	Lydd	United Kingdom
7303	LZR	Lizard Island	Lizard Island	Australia
7304	MAF	Midland International	Midland	United States
7305	MAN	Manchester	Manchester	United Kingdom
7306	MAQ	Mae Sot	Maesot	Thailand
7307	MAR	La Chinita	Maracaibo	Venezuela
7308	MAY	Mangrove Cay	Mangrove Cay	The Bahamas
7309	MBD	Mafikeng International Airport	Mmabatho	South Africa
7310	MBU	Mbambanakira	Mbambanakira	Solomon Islands
7311	MCE	Merced	Merced	United States
7312	MCL	Mt Mckinley	Mountmckinley	United States
7313	MCS	Monte Caseros	Monte Caseros	Argentina
7314	MCZ	Palmares	Maceio	Brazil
7315	MDK	Mbandaka	Mbandaka	Democratic Republic of the Congo
7316	MDT	Harrisburg	Harrisburg	United States
7317	MEB	Essendon	Melbourne	Australia
7318	MEI	Key Field	Meridian	United States
7319	MEK	Meknes	Meknes	Morocco
7320	MEO	Dare County Regional	Manteo	United States
7321	MFD	Lahm Municipal	Mansfield	United States
7322	MFM	Macau	Macau	Macau S.A.R.
7323	MFR	Rogue Valley International Medford Airport	Medford	United States
7324	MGJ	Orange County	Montgomery	United States
7325	MGT	Milingimbi	Milingimbi	Australia
7326	MHG	Mannheim	Mannheim	Germany
7327	MHT	Manchester	Manchester	United States
7328	MIA	Miami	Miami	United States
7329	MII	Dr Gastao Vidigal	Marilia	Brazil
7330	MIJ	Mili Island	Miliisland	Marshall Islands
7331	MIS	Misima Island	Misimaisland	Papua New Guinea
7332	MJD	Mohenjodaro	Mohenjodaro	Pakistan
7333	MJM	Mbuji Mayi	Mbujimayi	Democratic Republic of the Congo
7334	MKE	General Mitchell International	Milwaukee	United States
7335	MKR	Meekatharra	Meekatharra	Australia
7336	MKZ	Batu Berendam	Malacca	Malaysia
7337	MLG	Abdul Rahman Saleh	Malang	Indonesia
7338	MLS	Miles City	Miles	United States
7339	MLY	Manley Hot Springs	Manleyhotspring	United States
7340	MMG	Mount Magnet	Mount Magnet	Australia
7341	MMJ	Matsumoto	Matsumoto	Japan
7342	MMZ	Maimana	Stow	Afghanistan
7343	MNG	Maningrida	Maningrida	Australia
7344	MNM	Menominee	Menominee	United States
7345	MNZ	Manassas	Manassas	United States
7346	MOF	Waioti	Maumere	Indonesia
7347	MOO	Moomba	Moomba	Australia
7348	MOU	Mountain Village	Mountainvillage	United States
7349	MPN	Mount Pleasant	Mountpleasant	Falkland Islands
7350	MQF	Magnitogorsk	Magnitogorsk	Russia
7351	MQH	Minacu	Minacu	Brazil
7352	MQP	Kruger Mpumalanga	Nelspruit	South Africa
7353	MQY	Smyrna	Smyrna	United States
7354	MRI	Merrill Field	Anchorage	United States
7355	MRS	Provence Airport	Marseille	France
7356	MRZ	Moree	Moree	Australia
7357	MSL	Sheffield	Muscleshoals	United States
7358	MSQ	International	Minsk	Belarus
7359	MSY	Louis Armstrong	Neworleans	United States
7360	MTK	Makin Island	Makinisland	Kiribati
7361	MTS	Matsapha Intl	Manzini	Eswatini
7362	MTY	Gen Mariano Escobedo	Monterrey	Mexico
7363	MUC	Franz Josef Strauss	Munich	Germany
7364	MUW	Mascara	Mascara	Algeria
7365	MVB	Franceville	Franceville	Gabon
7366	MVS	Aeroporto Max Feffer	Mucuri	Brazil
7367	MWA	Williamson County	Marion	United States
7368	MWL	Mineral Wells	Mineral Wells	United States
7369	MXJ	Minna	Minna	Nigeria
7370	MXT	Maintirano	Maintirano	Madagascar
7371	MYC	Maracay	Maracay	Venezuela
7372	MYL	Mccall	Mc Call	United States
7373	MYT	Myitkyina	Myitkyina	Myanmar
7374	MZH	Merzifon	Amasya	Turkey
7375	MZL	Santaguida	Manizales	Colombia
7376	MZT	Gen Rafael Buelna	Mazatlan	Mexico
7377	NAG	Dr. Ambedkar Intl Airport	Nagpur	India
7378	NAO	Nanchong	Nanchong	China
7379	NAW	Narathiwat	Narathiwat	Thailand
7380	NCE	Cote D'azur International Airport	Nice	France
7381	NCS	Newcastle	Newcastle	South Africa
7382	NDC	Nanded	Nanded	India
7383	NEC	Necochea	Necochea	Argentina
7384	NEV	Newcastle	Newcastle	Saint Kitts and Nevis
7385	NGO	Nagoya	Nagoya	Japan
7386	NHV	Nuku Hiva	Nukuhiva	French Polynesia
7387	NJC	Nizhnevartovsk	Nizhnevartovsk	Russia
7388	NLD	Intl Quetzalcoatl	Nuevolaredo	Mexico
7389	NLP	Nelspruit	Nelspruit	South Africa
7390	NMT	Namtu	Namtu	Myanmar
7391	NNG	Nanning	Nanning	China
7392	NNY	Nanyang	Nanyang	China
7393	NOG	Nogales	Nogales	Mexico
7394	NOU	Tontouta	Noumea	New Caledonia
7395	NPO	Nangapinoh	Nangapinoh	Indonesia
7396	NQY	Cornwall Airport	Newquay	United Kingdom
7397	NRN	Weeze	Dusseldorf	Germany
7398	NSI	Nsimalen International	Yaounde	Cameroon
7399	NTE	Nantes Atlantique	Nantes	France
7400	NTR	Tuxtla Gutierrez	Monterrey	Mexico
7401	NUE	Nürnberg	Nuremberg	Germany
7402	NUQ	Moffett Field	Mountain View	United States
7403	NVK	Framnes	Narvik	Norway
7404	NWI	Norwich	Norwich	United Kingdom
7405	NYO	Skavsta	Stockholm	Sweden
7406	OAL	Cacoal	Cacoal	Brazil
7407	OBE	Okeechobee County	Okeechobee County	United States
7408	OBY	Ittoqqortoormiit	Ittoqqortoormiit	Greenland
7409	OCW	Warren Field	Washington	United States
7410	OEM	Vincent Fayks	Paloemeo	Suriname
7411	OGD	Ogden Municipal	Ogden Municipal	United States
7412	OGN	Yonaguni Jima	Yonagunijima	Japan
7413	OHO	Okhotsk	Okhotsk	Russia
7414	OJC	Johnson Executive	Kansas City	United States
7415	OKN	Okondja	Okondja	Gabon
7416	OLJ	Olpoi	Olpoi	Vanuatu
7417	OLS	Nogales	Nogales	United States
7418	OME	Nome	Nome	United States
7419	OMS	Omsk	Omsk	Russia
7420	ONO	Ontario	Ontario	United States
7421	ONS	Onslow	Onslow	Australia
7422	OOL	coolangatta	Gold Coast	Australia
7423	ORA	Oran	Oran	Argentina
7424	ORF	Norfolk	Norfolk	United States
7425	ORL	Executive	Orlando	United States
7426	ORX	Oriximina	Oriximina	Brazil
7427	OSK	Oskarshamn	Oskarshamn	Sweden
7428	OST	Bruges International Airport	Oostendebrugge	Belgium
7429	OTP	Henri Coanda International	Bucharest	Romania
7430	OUH	Oudtshoorn	Oudtshoorn	South Africa
7431	OVD	Asturias	Oviedo	Spain
7432	OWD	Norwood Memorial	Norwood	United States
7433	OYK	Oiapoque	Oiapoque	Brazil
7434	OZH	Zaporozhye	Zaporizhzhia	Ukraine
7435	PAB	Bilaspur	Bilaspur	India
7436	ECP	Northwest Florida Beaches International Airport	Panama City	Panama
7437	PAN	Pattani	Pattani	Thailand
7438	PAT	Jai Prakash Narayan Airport	Patna	India
7439	PBC	Hermanos Serdan International	Puebla	Mexico
7440	PBL	Puerto Cabello	Puertocabello	Venezuela
7441	PBZ	Bay	Plettenbergbay	South Africa
7442	PCL	Captain Rolden International Airport	Pucallpa	Peru
7443	PCR	Puerto Carreno	Puertocarreno	Colombia
7444	PDP	Punta Del Este	Puntadeleste	Uruguay
7445	PEA	Penneshaw	Penneshaw	Australia
7446	PEG	Sant Egidio	Perugia	Italy
7447	PEQ	Pecos City	Pecos City	United States
7448	PEW	Peshawar	Peshawar	Pakistan
7449	PFJ	Patreksfjordur	Patreksfjordur	Iceland
7450	PGF	Llabanere	Perpignan	France
7451	PHA	Phan Rang	Phan Rang	Vietnam
7452	PHD	Harry Clever	New Philadelphia	United States
7453	PHK	Palm Beach Co Glades	Pahokee	United States
7454	PHL	Philadelphia	Philadelphia	United States
7455	PIA	Greater Peoria	Peoria	United States
7456	PIK	Prestwick	Prestwick	United Kingdom
7457	PIS	Biard	Poitiers	France
7458	PJA	Pajala	Pajala	Sweden
7459	PKB	Wood County	Parkersburg	United States
7460	PKN	Pangkalanbuun	Pangkalanbuun	Indonesia
7461	PKY	Palangkaraya	Palangkaraya	Indonesia
7462	PLM	Mahmud Badaruddin Ii	Palembang	Indonesia
7463	PLU	Pampulha Domestic	Belohorizonte	Brazil
7464	PMC	Tepual	Puertomontt	Chile
7465	PMI	Son Sant Joan Airport	Palmamallorca	Spain
7466	PMQ	Perito Moreno	Perito Moreno	Argentina
7467	PNA	Pamplona	Pamplona	Spain
7468	PNI	Pohnpei	Pohnpei	Micronesia
7469	PNQ	Lohegaon Airport	Pune	India
7470	PNY	Pondicherry Airport	Pondicherry	India
7471	POI	Potosi	Potosi	Bolivia
7472	POO	Pocos De Caldas	Pocos De Caldas	Brazil
7473	POR	Pori	Pori	Finland
7474	PPB	Presidente Prudente Airport	Presidentepruden	Brazil
7475	PPM	Pompano Beach	Pompano Beach	United States
7476	PPW	Papa Westray	Papa Westray	United Kingdom
7477	PQC	Duong Dong	Phuquoc	Vietnam
7478	PRC	Prescott	Prescott	United States
7479	PRQ	Pres. Roque Saenz Pena	Presroquesaenz	Argentina
7480	PSC	Tri cities	Pasco	United States
7481	PSJ	Poso	Poso	Indonesia
7482	PSR	Liberi	Pescara	Italy
7483	PSZ	Puerto Suarez	Puerto Suarez	Bolivia
7484	PTG	Polokwane	Polokwane	South Africa
7485	PTX	Pitalito	Pitalito	Colombia
7486	PUD	Puerto Deseado	Puerto Deseado	Argentina
7487	PUQ	Pres Ibanez	Puntaarenas	Chile
7488	PUR	Puerto Rico	Puerto Rico	Bolivia
7489	PUZ	Puerto Cabezas	Puertocabezas	Nicaragua
7490	PVH	Governador Jorge Teixeira	Portovelho	Brazil
7491	PWA	Wiley Post	Oklahoma City	United States
7492	PXM	Puerto Escondido	Puertoescondido	Mexico
7493	PYM	Plymouth	Plymouth	United States
7494	PZI	Pan Zhi Hua Bao AnYing	Panzhihua	China
7495	QIG	Iguatu	Iguatu	Brazil
7496	QLS	Lausanne	Lausanne	Switzerland
7497	QRA	Rand	Johannesburg	South Africa
7498	QRW	Warri	Warri	Nigeria
7499	RAC	Horlick	Racine	United States
7500	RAL	Riverside	Riverside	United States
7501	RAS	Rasht	Rasht	Iran
7502	RAZ	Rawala Kot	Rawalakot	Pakistan
7503	RBD	Redbird	Dallas FT Worth	United States
7504	RBQ	Rurrenabaque	Rurrenabaque	Bolivia
7505	RCH	Riohacha	Riohacha	Colombia
7506	RCY	Rum Cay	Rum Cay	The Bahamas
7507	RDG	Municipal Spaatz Fld	Reading	United States
7508	REB	Rechlin	Rechlin	Germany
7509	RER	Base Aerea Del Sur	Retalhuleu	Guatemala
7510	RFD	Greater Rockford Airport	Chicagorockford	United States
7511	RGL	Rio Gallegos	Riogallegos	Argentina
7512	RHO	Diagoras	Rhodes	Greece
7513	RHP	Ramechhap	Ramechhap	Nepal
7514	RIL	Garfield County	Rifle	United States
7515	RJH	Rajshahi	Rajshahi	Bangladesh
7516	RKE	Roskilde Airport	Copenhagen	Denmark
7517	RMA	Roma	Roma	Australia
7518	RMK	Renmark	Renmark	Australia
7519	RNE	Renaison	Roanne	France
7520	RNS	St Jacques	Rennes	France
7521	ROC	Greater Rochester International	Rochester	United States
7522	ROR	Babelthuap	Koror	Palau
7523	ROV	Rostov	Rostov	Russia
7524	RPB	Roper Bar	Roper Bar	Australia
7525	RSA	Santa Rosa	Santa Rosa	Argentina
7526	RST	Rochester	Rochester	United States
7527	RTM	Zestienhoven	Rotterdam	Netherlands
7528	RUI	Ruidoso	Ruidoso	United States
7529	RUT	Rutland	Rutland	United States
7530	RVS	R.Lloyd Jones	Tulsa	United States
7531	RXS	Roxas City	Roxas	Philippines
7532	RZA	Santa Cruz	Santa Cruz	Argentina
7533	RZR	Ramsar	Ramsar	Iran
7534	SAC	Executive	Sacramento	United States
7535	SAL	El Salvador International	San Salvador	El Salvador
7536	SAY	Siena	Siena	Italy
7537	SBD	Norton Afb	San Bernardino	United States
7538	SBR	Saibai Island	Saibai Island	Australia
7539	SBY	Wicomico Regional	Salisbury	United States
7540	SCI	San Cristobal	Sancristobal	Venezuela
7541	SCO	Shevchenko	Aktau	Kazakhstan
7542	SCW	Syktyvkar	Syktyvkar	Russia
7543	SDE	Santiago Del Estero	Santiago	Argentina
7544	SDM	Brown Field Municipal	San Diego	United States
7545	SDN	Sandane	Sandane	Norway
7546	SDR	Santander	Santander	Spain
7547	SDY	Richland Municipal	Sidney	United States
7548	SEH	Senggeh	Senggeh	Indonesia
7549	SEU	Seronera	Seronera	Tanzania
7550	SFB	Sanford Intl	Orlando	United States
7551	SFH	San Felipe	Sanfelipe	Mexico
7552	SFO	San Francisco	Sanfrancisco	United States
7553	SGE	Siegerland	Siegen	Germany
7554	SGR	Sugar Land Regional	Houston	United States
7555	SHA	Hongqiao	Shanghai	China
7556	SHG	Shungnak	Shungnak	United States
7557	SHH	Shishmaref	Shishmaref	United States
7558	SHN	Sanderson Field	Shelton	United States
7559	SHX	Shageluk	Shageluk	United States
7560	SID	Amilcar Cabral Intl	Salisland	Cape Verde
7561	SIP	Simferopol	Simferopol	Ukraine
7562	SJC	Mineta San Jose International Airport	Sanjose	United States
7563	SJO	Juan Santamaría International	Sanjose	Costa Rica
7564	SJW	Daguocun	Shijiazhuang	China
7565	SKG	Macedonia International	Thessaloniki	Greece
7566	SKT	Sialkot	Sialkot	Pakistan
7567	SLA	Gen Belgrano	Salta	Argentina
7568	SLE	Mcnary Field	Salem	United States
7569	SLM	Matacan	Salamanca	Spain
7570	SLU	George F L Charles	St Lucia	Saint Lucia
7571	SLZ	Marechal Cunha Machado	Saoluiz	Brazil
7572	SML	Estate Airstrip	Stellamaris	The Bahamas
7573	SMS	Sainte Marie	Saintemarie	Madagascar
7574	SNA	John Wayne	Santaana	United States
7575	SNO	Sakon Nakhon	Sakonnakhon	Thailand
7576	SNY	Sidney	Sidney	United States
7577	SOD	Sorocaba	Sorocaba	Brazil
7578	SOP	Pinehurst S. Pines	Southernpines	United States
7579	SOW	Show Low	Showlow	United States
7580	SPD	Saidpur	Saidpur	Bangladesh
7581	SPP	Menongue	Menongue	Angola
7582	SQG	Sintang	Sintang	Indonesia
7583	SQW	Skive	Skive	Denmark
7584	SRI	Samarinda	Samarinda	Indonesia
7585	SRQ	Bradenton International Airport	Sarasota	United States
7586	SSG	Santa Isabel	Malabo	Equatorial Guinea
7587	SST	Santa Teresita	Santa Teresita	Argentina
7588	SSZ	Santos	Santos	Brazil
7589	STE	Stevens Point	Stevenspoint	United States
7590	STL	St. Louis	Saintlouis	United States
7591	STS	Sonoma County	Santarosa	United States
7592	STZ	Confresa	Santaterezinha	Brazil
7593	SUL	Sui	Sui	Pakistan
7594	SUS	Spirit Of St Louis	St. Louis	United States
7595	SVG	Sola	Stavanger	Norway
7596	SVP	Silva Porto	Kuito	Angola
7597	SVX	Koltsovo International Airport	Yekaterinburg	Russia
7598	SWQ	Brang Bidji	Sumbawa	Indonesia
7599	SWS	Fairwood Comm	Swansea	United Kingdom
7600	SYA	Shemya	Shemya	United States
7601	SYP	Santiago	Santiago	Panama
7602	SYT	Charolais Bourgogne Sud	Charolais Bourgogne Sud	France
7603	SZB	Sultan Abdul Aziz Shah	Sultan Abdul Aziz Shah	Malaysia
7604	SZS	Stewart Island	Stewartisland	New Zealand
7605	SZZ	Goleniow	Szczecin	Poland
7606	TAI	Al Janad	Taizz	Yemen
7607	TAO	Qingdao	Qingdao	China
7608	TAP	Tapachula	Tapachula	Mexico
7609	TBG	Tabubil	Tabubil	Papua New Guinea
7610	TBS	Lochini novo Alexeyevka	Tbilisi	Georgia
7611	TCB	Treasure Cay	Treasure Cay	The Bahamas
7612	TCN	Tehuacan	Tehuacan	Mexico
7613	TCS	Truth Or Consequences	Truth Or Consequences	United States
7614	TEB	Teterboro	Teterboro	United States
7615	TEF	Telfer	Telfer	Australia
7616	TET	Matundo	Tete	Mozambique
7617	TGI	Tingo Maria	Tingomaria	Peru
7618	TGO	Tongliao	Tongliao	China
7619	THE	Senador Petrônio Portella	Teresina	Brazil
7620	THR	Mehrabad	Tehran	Iran
7621	TIA	Rinas Mother Teresa	Tirana	Albania
7622	TIJ	General A. L. Rodriguez Intl	Tijuana	Mexico
7623	TIV	Tivat	Tivat	Seychelles
7624	TIZ	Tari	Tari	Papua New Guinea
7625	TJM	Roschino	Tyumen	Russia
7626	TKA	Talkeetna	Talkeetna	United States
7627	TKH	Nakhon Sawan	Takhli	Thailand
7628	TKN	Tokunoshima	Tokunoshima	Japan
7629	TKU	Turku	Turku	Finland
7630	TLC	Licenciado Adolfo Lopez Mateos International	Mexico	Mexico
7631	TLV	Ben Gurion Intl	Telavivyafo	Israel
7632	TMI	Tumling Tar	Tumlingtar	Nepal
7633	TMO	Tumeremo	Tumeremo	Venezuela
7634	TMU	Tambor	Tambor	Costa Rica
7635	TND	Trinidad	Trinidad	Cuba
7636	TNJ	Kidjang	Tanjungpinang	Indonesia
7637	TNT	Dade Collier	Miami	United States
7638	TOE	Tozeur	Tozeur	Tunisia
7639	TOJ	Torrejon Afb	Madrid	Spain
7640	TOL	Express	Toledo	United States
7641	TOO	San Vito	San Vito	Costa Rica
7642	TOW	Toledo	Toledo	Brazil
7643	TPJ	Suketar	Taplejung	Nepal
7644	TRC	Francisco Sarabia	Torreon	Mexico
7645	TRI	Tri cities	Bristol/johnson/kin	United States
7646	TRQ	Tarauaca	Tarauaca	Brazil
7647	TRV	Thiruvananthapuram	Thiruvananthapuram	India
7648	TSJ	Tsushima	Tsushima	Japan
7649	TSU	Tabiteuea South	Tabiteueasouth	Kiribati
7650	TTE	Babullah	Ternate	Indonesia
7651	TTN	Mercer Airport	Trenton	United States
7652	TTT	Taitung	Taitung	Taiwan
7653	TUD	Tambacounda	Tambacounda	Senegal
7654	TUO	Taupo	Taupo	New Zealand
7655	TUV	Tucupita	Tucupita	Venezuela
7656	TVL	Lake Tahoe	Laketahoesouth	United States
7657	TWZ	Pukaki	Mount Cook	New Zealand
7658	TYF	Torsby Airport	Torsby	Sweden
7659	HND	Haneda International	Tokyo	Japan
7660	NRT	New Tokyo International Airport	Tokyo	Japan
7661	TYS	Mc Ghee Tyson	Knoxville	United States
7662	UAQ	San Juan	San Juan	Argentina
7663	UBP	Muang Ubon	Ubonratchathani	Thailand
7664	UCK	Lutsk	Lutsk	Ukraine
7665	UDR	Maharana Pratap Airport	Udaipur	India
7666	UGA	Bulgan	Bulgan	Mongolia
7667	UIH	Qui Nhon	Quinhon	Vietnam
7668	UIP	Pluguffan	Quimper	France
7669	UKS	Belbek	Sevastopol	Ukraine
7670	ULD	Ulundi	Ulundi	South Africa
7671	ULU	Gulu	Gulu	Uganda
7672	UMD	Uummannaq	Uummannaq	Greenland
7673	UNG	Kiunga	Kiunga	Papua New Guinea
7674	UPB	Playa Baracoa	Havana	Cuba
7675	URC	Urumqi	Urumqi	China
7676	URJ	Uraj	Uray	Russia
7677	USH	Islas Malvinas	Ushuaia	Argentina
7678	UST	St. Augustine	St. Augustine	United States
7679	UTN	Upington	Upington	South Africa
7680	UUA	Bugulma	Bugulma	Russia
7681	UVF	Hewanorra	St Lucia	Saint Lucia
7682	VAA	Vaasa	Vaasa	Finland
7683	VAO	Suavanao	Suavanao	Solomon Islands
7684	VBS	Brescia Montichiari	Verona	Italy
7685	VCE	Marco Polo	Venice	Italy
7686	VCP	Viracopos Airport	Saopaulo	Brazil
7687	VDC	Vitoria Da Conquista	Vitoria Da Conquista	Brazil
7688	VDZ	Valdez	Valdez	United States
7689	VEY	Vestmannaeyjar	Vestmannaeyjar	Iceland
7690	VGT	North Air Terminal	Las Vegas	United States
7691	VIJ	Virgin Gorda	Virgingorda	Virgin Islands (British)
7692	VIX	Eurico Sales	Vitoria	Brazil
7693	VLD	Valdosta	Valdosta	United States
7694	VLN	Valencia	Valencia	Venezuela
7695	VNE	Meucon Airport	Vannes	France
7696	VOG	Volgograd	Volgograd	Russia
7697	VPS	Eglin AFB	Valparaiso	United States
7698	VRC	Virac	Virac	Philippines
7699	VRN	Valerio Catullo	Verona	Italy
7700	VST	Vasteras	Stockholm	Sweden
7701	VTB	Vitebsk	Vitebsk	Belarus
7702	VVC	La Vanguardia	Villavicencio	Colombia
7703	VXO	Smaland Airport	Vaxjo	Sweden
7704	WAI	Antsohihy	Antsohihy	Madagascar
7705	WAW	Frederic Chopin	Warsaw	Poland
7706	WEF	Weifang	Weifang	China
7707	WGP	Waingapu	Waingapu	Indonesia
7708	WIO	Wilcannia	Wilcannia	Australia
7709	WKK	Aleknagik	Aleknagik	United States
7710	WLS	Wallis Island	Wallisisland	Wallis and Futuna Islands
7711	WME	Mount Keith	Mount Keith	Australia
7712	WMO	White Mountain	Whitemountain	United States
7713	WNN	Wunnummin Lake	Wunnummin Lake	Canada
7714	WOL	Wollongong	Wollongong	Australia
7715	WRZ	Wirawila	Weerawila	Sri Lanka
7716	WST	Westerly	Westerly	United States
7717	WTS	Tsiroanomandidy	Tsiroanomandidy	Madagascar
7718	WVB	Rooikop	Walvisbay	Namibia
7719	WXN	Wanxian	Wanxian	China
7720	XAP	Aeroporto Municipal	Chapeco	Brazil
7721	XFN	Xiangfan	Xiangfan	China
7722	XIY	Xianyang	Xi An	China
7723	XMC	Mallacoota	Mallacoota	Australia
7724	XNA	Northwest Arkansas Regional	Fayetteville	United States
7725	XTG	Thargomindah	Thargomindah	Australia
7726	YAG	Fort Frances	Fortfrances	Canada
7727	YAT	Attawapiskat	Attawapiskat	Canada
7728	YBC	Baie Comeau	Baiecomeau	Canada
7729	YBL	Campbell River	Campbellriver	Canada
7730	YBV	Berensriver	Berensriver	Canada
7731	YBY	Bonnyville	Bonnyville	Canada
7732	YCH	Miramichi	Miramichi	Canada
7733	YCO	Kugluktuk	Kugluktukcoppermine	Canada
7734	YDF	Deer Lake	Deerlake	Canada
7735	YDQ	Dawson Creek	Dawsoncreek	Canada
7736	YEL	Elliotlake	Elliotlake	Canada
7737	YFA	Fort Albany	Fortalbany	Canada
7738	YFJ	Snare Lake	Snare Lake	Canada
7739	YGB	Gillies Bay	Gilliesbay	Canada
7740	YGO	Godsnarrows	Godsnarrows	Canada
7741	YGV	Havre St Pierre	Havrestpierre	Canada
7742	YHD	Dryden	Dryden	Canada
7743	YHN	Hornepayne	Hornepayne	Canada
7744	YHY	Hay River	Hayriver	Canada
7745	YIH	Yichang	Yichang	China
7746	YIW	Yiwu	Yiwu	China
7747	YJT	Stephenville	Stephenville	Canada
7748	YKM	Yakima	Yakima	United States
7749	YKZ	Buttonville Airport	Toronto	Canada
7750	YLJ	Meadowlake	Meadowlake	Canada
7751	YMG	Manitouwadge	Manitouwadge	Canada
7752	YMT	Chibougamau	Chibougamau	Canada
7753	YND	Executive Gatineau	Ottawa	Canada
7754	YNP	Natuashish	Natuashish	Canada
7755	YOC	Old Crow	Oldcrow	Canada
7756	YOJ	Footnerlake Airport	Highlevel	Canada
7757	YOW	Macdonald Cartier International	Ottawa	Canada
7758	YPM	Pikangikum	Pikangikum	Canada
7759	YPW	Powell River	Powellriver	Canada
7760	YQD	The Pas	Thepas	Canada
7761	YQH	Watsonlake	Watsonlake	Canada
7762	YQL	Lethbridge	Lethbridge	Canada
7763	YQT	Thunder Bay	Thunderbay	Canada
7764	YQY	Sydney	Sydney	Canada
7765	YRG	Rigolet	Rigolet	Canada
7766	YRS	Redsuckerlake	Redsuckerlake	Canada
7767	YSM	Fortsmith	Fortsmith	Canada
7768	YST	Saintetheresepoint	Saintetheresepoint	Canada
7769	YTL	Bigtrout	Bigtrout	Canada
7770	YTS	Timmins	Timmins	Canada
7771	YUM	Yuma	Yuma	United States
7772	YVB	Bonaventure	Bonaventure	Canada
7773	YVQ	Norman Wells	Normanwells	Canada
7774	YWG	James Armstrong Richardson International Airport	Winnipeg	Canada
7775	YWS	Whistler	Whistler	Canada
7776	YXC	Cranbrook	Cranbrook	Canada
7777	YXE	J.G. Diefenbaker International Airport	Saskatoon	Canada
7778	YXS	Prince George	Princegeorge	Canada
7779	YXY	Whitehorse	Whitehorse	Canada
7780	YYE	Fort Nelson	Fort Nelson	Canada
7781	YYQ	Metropolitan Area	Churchill	Canada
7782	YYZ	Lester B. Pearson International	Toronto	Canada
7783	YZT	Porthardy	Porthardy	Canada
7784	ZAC	Yorklanding	Yorklanding	Canada
7785	ZAT	Zhaotong	Zhaotong	China
7786	ZCL	La Calera	Zacatecas	Mexico
7787	ZGR	Littlegrandrapids	Littlegrandrapids	Canada
7788	ZIH	Extap	Ixtapazihuatanej	Mexico
7789	ZKB	Kasababay	Kasababay	Zambia
7790	ZLO	Manzanillo	Manzanillo	Mexico
7791	ZNZ	Kisauni	Zanzibar	Tanzania
7792	ZQW	Zweibruecken	Zweibruecken	Germany
7793	ZSE	St Pierre dela Reunion	Saintpierrereunion	Reunion
7794	ZUM	Churchill Falls	Churchill Falls	Canada
7795	UIO	Mariscal Sucre	Quito	Ecuador
7796	ZWE	Central railway station airport	Antwerp	Belgium
7797	AYJ	Ayodhya International Airport	Ayodhya	India
7798	CIL	Melsingcreek Airport	Council	United States
7799	DBR	Darbhanga Airport	Darbhanga	India
7800	GDB	Birsi Airport Gondia INDIA	Gondia	India
7801	GOX	MOPA International Airport	North Goa	India
7802	HSR	Rajkot Greenfield International Airport	Rajkot	India
7803	IST	Ataturk	Istanbul	Turkey
7804	KAS	Karasburg	Karasburg	Namibia
7805	MGR	Moultrie Municipal	Moultrie	United States
7806	MPP	Mulatupo	Mulatupo	Panama
7807	OFU	Ofu	Ofu	American Samoa
7808	PLY	Plymouth	Plymouth	United States
7809	RLO	Valle Del Conlara	Merlo	Argentina
7810	SIB	Sibiti	Sibiti	Congo
7811	SVC	Grant County	Silver City	United States
7812	SXF	Schönefeld	Berlin	Germany
7813	UDE	Volkel	Volkel	Netherlands
7814	AIM	Ailuk Island	Ailukisland	Marshall Islands
7815	AOS	Amook	Amook	United States
7816	BHF	Bahiacupica	Bahiacupica	Colombia
7817	BZB	Bazaruto Island	Bazarutoisland	Mozambique
7818	CDK	Lewis Airport	Cedarkey	United States
7819	FDE	Bringeland	Forde	Norway
7820	GTA	Aerodrom	Gatokae	Solomon Islands
7821	IIS	Nissan Island	Nissanisland	Papua New Guinea
7822	KCC	Coffmanco Airport	Coffmancove	United States
7823	KEZ	Kelaniya River	Kelaniya River	Sri Lanka
7824	KKI	Spb Airport	Akiachak	United States
7825	KPB	Point Baker Sea Plane Base Airport	Pointbaker	Australia
7826	KTB	Thorne Bay	Thornebay	United States
7827	KZB	Zacharbay	Zacharbay	United States
7828	LES	Lesobeng	Lesobeng	Lesotho
7829	LIK	Likiep	Likiepisland	Marshall Islands
7830	LMC	Lamacarena	Lamacarena	Colombia
7831	LSA	Losuia	Losuia	Papua New Guinea
7832	NQZ	Nursultan Nazarbayev International Airport	Astana	Kazakhstan
7833	OBX	Obo	Obo	Papua New Guinea
7834	OLN	Coloniasarmiento	Coloniasarmiento	Argentina
7835	ORS	Waterport	Orpheusisland	Australia
7836	PFT	Ferry Terminal airport	Pazhou	China
7837	PSV	Papa Stour	Papa Stour	United Kingdom
7838	PYC	Playon Chico	Playonchico	Panama
7839	RCE	Roche Harbor	Rocheharbor	United States
7840	RYO	Rio Turbio	Rio Turbio	Argentina
7841	SHC	Indaselassie	Indaselassie	Ethiopia
7842	SRV	Stony River	Stonyriver	United States
7843	TCR	Tuticorin	Tuticorin	India
7844	TLG	Tulagi Island	Tulagiisland	Solomon Islands
7845	TWD	Port Townsend	Porttownsend	United States
7846	WPM	Wipim	Wipim	Papua New Guinea
7847	WTO	Wotho	Wothoisland	Marshall Islands
7848	XBG	Bogande	Bogande	Burkina Faso
7849	YPI	Portsimpson	Portsimpson	Canada
7850	DOH	Doha	Doha	Qatar
\.


--
-- Name: airports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.airports_id_seq', 7850, true);


--
-- Name: airports airports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict hqYqTwfLRl2sa3puQUFy1JO3vgNHHPQ8hbVqD6UELo3IKCsh7TG8e7NcHaQPmS0

