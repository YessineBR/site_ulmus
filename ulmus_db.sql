--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-27 15:30:11

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

--
-- TOC entry 5473 (class 0 OID 16430)
-- Dependencies: 224
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 5475 (class 0 OID 16438)
-- Dependencies: 226
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 5471 (class 0 OID 16424)
-- Dependencies: 222
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can use Structure mode	1	use_structure
2	Can change page	2	change_page
3	Can add log entry	11	add_logentry
4	Can change log entry	11	change_logentry
5	Can delete log entry	11	delete_logentry
6	Can view log entry	11	view_logentry
7	Can add permission	12	add_permission
8	Can change permission	12	change_permission
9	Can delete permission	12	delete_permission
10	Can view permission	12	view_permission
11	Can add group	13	add_group
12	Can change group	13	change_group
13	Can delete group	13	delete_group
14	Can view group	13	view_group
15	Can add user	14	add_user
16	Can change user	14	change_user
17	Can delete user	14	delete_user
18	Can view user	14	view_user
19	Can add content type	15	add_contenttype
20	Can change content type	15	change_contenttype
21	Can delete content type	15	delete_contenttype
22	Can view content type	15	view_contenttype
23	Can add session	16	add_session
24	Can change session	16	change_session
25	Can delete session	16	delete_session
26	Can view session	16	view_session
27	Can add site	17	add_site
28	Can change site	17	change_site
29	Can delete site	17	delete_site
30	Can view site	17	view_site
31	Can add cms plugin	18	add_cmsplugin
32	Can change cms plugin	18	change_cmsplugin
33	Can delete cms plugin	18	delete_cmsplugin
34	Can view cms plugin	18	view_cmsplugin
35	Can add alias plugin model	19	add_aliaspluginmodel
36	Can change alias plugin model	19	change_aliaspluginmodel
37	Can delete alias plugin model	19	delete_aliaspluginmodel
38	Can view alias plugin model	19	view_aliaspluginmodel
39	Can add Page global permission	20	add_globalpagepermission
40	Can change Page global permission	20	change_globalpagepermission
41	Can delete Page global permission	20	delete_globalpagepermission
42	Can view Page global permission	20	view_globalpagepermission
43	Can add page	2	add_page
44	Can delete page	2	delete_page
45	Can view page	2	view_page
46	Can edit static placeholders	2	edit_static_placeholder
47	Can add Page permission	21	add_pagepermission
48	Can change Page permission	21	change_pagepermission
49	Can delete Page permission	21	delete_pagepermission
50	Can view Page permission	21	view_pagepermission
51	Can add User (page)	22	add_pageuser
52	Can change User (page)	22	change_pageuser
53	Can delete User (page)	22	delete_pageuser
54	Can view User (page)	22	view_pageuser
55	Can add User group (page)	23	add_pageusergroup
56	Can change User group (page)	23	change_pageusergroup
57	Can delete User group (page)	23	delete_pageusergroup
58	Can view User group (page)	23	view_pageusergroup
59	Can add placeholder reference	24	add_placeholderreference
60	Can change placeholder reference	24	change_placeholderreference
61	Can delete placeholder reference	24	delete_placeholderreference
62	Can view placeholder reference	24	view_placeholderreference
63	Can add static placeholder	8	add_staticplaceholder
64	Can change static placeholder	8	change_staticplaceholder
65	Can delete static placeholder	8	delete_staticplaceholder
66	Can view static placeholder	8	view_staticplaceholder
67	Can add user setting	9	add_usersettings
68	Can change user setting	9	change_usersettings
69	Can delete user setting	9	delete_usersettings
70	Can view user setting	9	view_usersettings
71	Can add urlconf revision	25	add_urlconfrevision
72	Can change urlconf revision	25	change_urlconfrevision
73	Can delete urlconf revision	25	delete_urlconfrevision
74	Can view urlconf revision	25	view_urlconfrevision
75	Can add cache key	28	add_cachekey
76	Can change cache key	28	change_cachekey
77	Can delete cache key	28	delete_cachekey
78	Can view cache key	28	view_cachekey
79	Can add text	29	add_text
80	Can change text	29	change_text
81	Can delete text	29	delete_text
82	Can view text	29	view_text
83	Can add alias	30	add_alias
84	Can change alias	30	change_alias
85	Can delete alias	30	delete_alias
86	Can view alias	30	view_alias
87	Can add alias content	31	add_aliascontent
88	Can change alias content	31	change_aliascontent
89	Can delete alias content	31	delete_aliascontent
90	Can view alias content	31	view_aliascontent
91	Can add alias plugin model	32	add_aliasplugin
92	Can change alias plugin model	32	change_aliasplugin
93	Can delete alias plugin model	32	delete_aliasplugin
94	Can view alias plugin model	32	view_aliasplugin
95	Can add category	33	add_category
96	Can change category	33	change_category
97	Can delete category	33	delete_category
98	Can view category	33	view_category
99	Can add version	35	add_version
100	Can change version	35	change_version
101	Can delete version	35	delete_version
102	Can view version	35	view_version
103	Can unlock verision	35	delete_versionlock
104	Can add state tracking	36	add_statetracking
105	Can change state tracking	36	change_statetracking
106	Can delete state tracking	36	delete_statetracking
107	Can view state tracking	36	view_statetracking
108	Can add alias content version	37	add_aliascontentversion
109	Can change alias content version	37	change_aliascontentversion
110	Can delete alias content version	37	delete_aliascontentversion
111	Can view alias content version	37	view_aliascontentversion
112	Can add page content version	38	add_pagecontentversion
113	Can change page content version	38	change_pagecontentversion
114	Can delete page content version	38	delete_pagecontentversion
115	Can view page content version	38	view_pagecontentversion
116	Can add clipboard	39	add_clipboard
117	Can change clipboard	39	change_clipboard
118	Can delete clipboard	39	delete_clipboard
119	Can view clipboard	39	view_clipboard
120	Can add clipboard item	40	add_clipboarditem
121	Can change clipboard item	40	change_clipboarditem
122	Can delete clipboard item	40	delete_clipboarditem
123	Can view clipboard item	40	view_clipboarditem
124	Can add file	41	add_file
125	Can change file	41	change_file
126	Can delete file	41	delete_file
127	Can view file	41	view_file
128	Can add Folder	42	add_folder
129	Can change Folder	42	change_folder
130	Can delete Folder	42	delete_folder
131	Can view Folder	42	view_folder
132	Can use directory listing	42	can_use_directory_listing
133	Can add folder permission	43	add_folderpermission
134	Can change folder permission	43	change_folderpermission
135	Can delete folder permission	43	delete_folderpermission
136	Can view folder permission	43	view_folderpermission
137	Can add image	44	add_image
138	Can change image	44	change_image
139	Can delete image	44	delete_image
140	Can view image	44	view_image
141	Can add thumbnail option	45	add_thumbnailoption
142	Can change thumbnail option	45	change_thumbnailoption
143	Can delete thumbnail option	45	delete_thumbnailoption
144	Can view thumbnail option	45	view_thumbnailoption
145	Can add source	46	add_source
146	Can change source	46	change_source
147	Can delete source	46	delete_source
148	Can view source	46	view_source
149	Can add thumbnail	47	add_thumbnail
150	Can change thumbnail	47	change_thumbnail
151	Can delete thumbnail	47	delete_thumbnail
152	Can view thumbnail	47	view_thumbnail
153	Can add thumbnail dimensions	48	add_thumbnaildimensions
154	Can change thumbnail dimensions	48	change_thumbnaildimensions
155	Can delete thumbnail dimensions	48	delete_thumbnaildimensions
156	Can view thumbnail dimensions	48	view_thumbnaildimensions
157	Can add UI item	3	add_frontenduiitem
158	Can change UI item	3	change_frontenduiitem
159	Can delete UI item	3	delete_frontenduiitem
160	Can view UI item	3	view_frontenduiitem
161	Can add Accordion	4	add_accordion
162	Can change Accordion	4	change_accordion
163	Can delete Accordion	4	delete_accordion
164	Can view Accordion	4	view_accordion
165	Can add Accordion item	5	add_accordionitem
166	Can change Accordion item	5	change_accordionitem
167	Can delete Accordion item	5	delete_accordionitem
168	Can view Accordion item	5	view_accordionitem
169	Can add Alert	6	add_alert
170	Can change Alert	6	change_alert
171	Can delete Alert	6	delete_alert
172	Can view Alert	6	view_alert
173	Can add Badge	49	add_badge
174	Can change Badge	49	change_badge
175	Can delete Badge	49	delete_badge
176	Can view Badge	49	view_badge
177	Can add Card	50	add_card
178	Can change Card	50	change_card
179	Can delete Card	50	delete_card
180	Can view Card	50	view_card
181	Can add Card inner	51	add_cardinner
182	Can change Card inner	51	change_cardinner
183	Can delete Card inner	51	delete_cardinner
184	Can view Card inner	51	view_cardinner
185	Can add Card layout	52	add_cardlayout
186	Can change Card layout	52	change_cardlayout
187	Can delete Card layout	52	delete_cardlayout
188	Can view Card layout	52	view_cardlayout
189	Can add Carousel	53	add_carousel
190	Can change Carousel	53	change_carousel
191	Can delete Carousel	53	delete_carousel
192	Can view Carousel	53	view_carousel
193	Can add Carousel slide	54	add_carouselslide
194	Can change Carousel slide	54	change_carouselslide
195	Can delete Carousel slide	54	delete_carouselslide
196	Can view Carousel slide	54	view_carouselslide
197	Can add Collapse	55	add_collapse
198	Can change Collapse	55	change_collapse
199	Can delete Collapse	55	delete_collapse
200	Can view Collapse	55	view_collapse
201	Can add Collapse container	56	add_collapsecontainer
202	Can change Collapse container	56	change_collapsecontainer
203	Can delete Collapse container	56	delete_collapsecontainer
204	Can view Collapse container	56	view_collapsecontainer
205	Can add Collapse trigger	57	add_collapsetrigger
206	Can change Collapse trigger	57	change_collapsetrigger
207	Can delete Collapse trigger	57	delete_collapsetrigger
208	Can view Collapse trigger	57	view_collapsetrigger
209	Can add Blockquote	58	add_blockquote
210	Can change Blockquote	58	change_blockquote
211	Can delete Blockquote	58	delete_blockquote
212	Can view Blockquote	58	view_blockquote
213	Can add Code block	59	add_codeblock
214	Can change Code block	59	change_codeblock
215	Can delete Code block	59	delete_codeblock
216	Can view Code block	59	view_codeblock
217	Can add Figure	60	add_figure
218	Can change Figure	60	change_figure
219	Can delete Figure	60	delete_figure
220	Can view Figure	60	view_figure
221	Can add Column	61	add_gridcolumn
222	Can change Column	61	change_gridcolumn
223	Can delete Column	61	delete_gridcolumn
224	Can view Column	61	view_gridcolumn
225	Can add Container	62	add_gridcontainer
226	Can change Container	62	change_gridcontainer
227	Can delete Container	62	delete_gridcontainer
228	Can view Container	62	view_gridcontainer
229	Can add Row	63	add_gridrow
230	Can change Row	63	change_gridrow
231	Can delete Row	63	delete_gridrow
232	Can view Row	63	view_gridrow
233	Can add Icon	64	add_icon
234	Can change Icon	64	change_icon
235	Can delete Icon	64	delete_icon
236	Can view Icon	64	view_icon
237	Can add Image	65	add_image
238	Can change Image	65	change_image
239	Can delete Image	65	delete_image
240	Can view Image	65	view_image
241	Can add Jumbotron	66	add_jumbotron
242	Can change Jumbotron	66	change_jumbotron
243	Can delete Jumbotron	66	delete_jumbotron
244	Can view Jumbotron	66	view_jumbotron
245	Can add Link	67	add_link
246	Can change Link	67	change_link
247	Can delete Link	67	delete_link
248	Can view Link	67	view_link
249	Can add List group	68	add_listgroup
250	Can change List group	68	change_listgroup
251	Can delete List group	68	delete_listgroup
252	Can view List group	68	view_listgroup
253	Can add List group item	69	add_listgroupitem
254	Can change List group item	69	change_listgroupitem
255	Can delete List group item	69	delete_listgroupitem
256	Can view List group item	69	view_listgroupitem
257	Can add Media	70	add_media
258	Can change Media	70	change_media
259	Can delete Media	70	delete_media
260	Can view Media	70	view_media
261	Can add Media body	71	add_mediabody
262	Can change Media body	71	change_mediabody
263	Can delete Media body	71	delete_mediabody
264	Can view Media body	71	view_mediabody
265	Can add Brand	72	add_navbrand
266	Can change Brand	72	change_navbrand
267	Can delete Brand	72	delete_navbrand
268	Can view Brand	72	view_navbrand
269	Can add Navigation container	73	add_navcontainer
270	Can change Navigation container	73	change_navcontainer
271	Can delete Navigation container	73	delete_navcontainer
272	Can view Navigation container	73	view_navcontainer
273	Can add Navigation	74	add_navigation
274	Can change Navigation	74	change_navigation
275	Can delete Navigation	74	delete_navigation
276	Can view Navigation	74	view_navigation
277	Can add Navigation Link	75	add_navlink
278	Can change Navigation Link	75	change_navlink
279	Can delete Navigation Link	75	delete_navlink
280	Can view Navigation Link	75	view_navlink
281	Can add Page tree	76	add_pagetree
282	Can change Page tree	76	change_pagetree
283	Can delete Page tree	76	delete_pagetree
284	Can view Page tree	76	view_pagetree
285	Can add Tab	77	add_tab
286	Can change Tab	77	change_tab
287	Can delete Tab	77	delete_tab
288	Can view Tab	77	view_tab
289	Can add Tab item	78	add_tabitem
290	Can change Tab item	78	change_tabitem
291	Can delete Tab item	78	delete_tabitem
292	Can view Tab item	78	view_tabitem
293	Can add Heading	79	add_heading
294	Can change Heading	79	change_heading
295	Can delete Heading	79	delete_heading
296	Can view Heading	79	view_heading
297	Can add Spacing	80	add_spacing
298	Can change Spacing	80	change_spacing
299	Can delete Spacing	80	delete_spacing
300	Can view Spacing	80	view_spacing
301	Can add Table of contents	81	add_tableofcontents
302	Can change Table of contents	81	change_tableofcontents
303	Can delete Table of contents	81	delete_tableofcontents
304	Can view Table of contents	81	view_tableofcontents
305	Can add about us list item	82	add_aboutuslistitem
306	Can change about us list item	82	change_aboutuslistitem
307	Can delete about us list item	82	delete_aboutuslistitem
308	Can view about us list item	82	view_aboutuslistitem
309	Can add about us section	83	add_aboutussection
310	Can change about us section	83	change_aboutussection
311	Can delete about us section	83	delete_aboutussection
312	Can view about us section	83	view_aboutussection
313	Can add Contact Request	84	add_contactrequest
314	Can change Contact Request	84	change_contactrequest
315	Can delete Contact Request	84	delete_contactrequest
316	Can view Contact Request	84	view_contactrequest
317	Can add contact section	85	add_contactsection
318	Can change contact section	85	change_contactsection
319	Can delete contact section	85	delete_contactsection
320	Can view contact section	85	view_contactsection
321	Can add feature element	86	add_featureelement
322	Can change feature element	86	change_featureelement
323	Can delete feature element	86	delete_featureelement
324	Can view feature element	86	view_featureelement
325	Can add Service	87	add_service
326	Can change Service	87	change_service
327	Can delete Service	87	delete_service
328	Can view Service	87	view_service
329	Can add services section	88	add_servicessection
330	Can change services section	88	change_servicessection
331	Can delete services section	88	delete_servicessection
332	Can view services section	88	view_servicessection
333	Can add counter section	89	add_countersection
334	Can change counter section	89	change_countersection
335	Can delete counter section	89	delete_countersection
336	Can view counter section	89	view_countersection
337	Can add cta section	90	add_ctasection
338	Can change cta section	90	change_ctasection
339	Can delete cta section	90	delete_ctasection
340	Can view cta section	90	view_ctasection
341	Can add features section	91	add_featuressection
342	Can change features section	91	change_featuressection
343	Can delete features section	91	delete_featuressection
344	Can view features section	91	view_featuressection
345	Can add hero section	92	add_herosection
346	Can change hero section	92	change_herosection
347	Can delete hero section	92	delete_herosection
348	Can view hero section	92	view_herosection
349	Can add service card	93	add_servicecard
350	Can change service card	93	change_servicecard
351	Can delete service card	93	delete_servicecard
352	Can view service card	93	view_servicecard
353	Can add technology element	94	add_technologyelement
354	Can change technology element	94	change_technologyelement
355	Can delete technology element	94	delete_technologyelement
356	Can view technology element	94	view_technologyelement
\.


--
-- TOC entry 5477 (class 0 OID 16444)
-- Dependencies: 228
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$720000$UKwReaHNszf2n5F4HWnux2$BmeDGPE9iBjTj80e1EJb6Iy+T15LChOse6K3345QHdI=	2024-06-27 11:53:36+01	t	yasyn	Yessine	Ben Rhouma	ben.rhouma.yessine0610@gmail.com	t	t	2024-06-26 16:07:36+01
\.


--
-- TOC entry 5479 (class 0 OID 16452)
-- Dependencies: 230
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 5481 (class 0 OID 16458)
-- Dependencies: 232
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 5549 (class 0 OID 17412)
-- Dependencies: 300
-- Data for Name: base_aboutuslistitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_aboutuslistitem (cmsplugin_ptr_id, text) FROM stdin;
3	Expertise de Pointe : Notre équipe d'experts chevronnés maîtrise les technologies les plus récentes pour concevoir des solutions sur mesure.
4	Approche Collaborative : Nous travaillons main dans la main avec nos clients pour comprendre leurs besoins spécifiques et y répondre efficacement.
5	Qualité et Fiabilité : Nos produits sont soumis à des normes strictes de qualité et de fiabilité, assurant une performance durable et constante.
26	Expertise de Pointe : Notre équipe d'experts chevronnés maîtrise les technologies les plus récentes pour concevoir des solutions sur mesure.
27	Approche Collaborative : Nous travaillons main dans la main avec nos clients pour comprendre leurs besoins spécifiques et y répondre efficacement.
28	Qualité et Fiabilité : Nos produits sont soumis à des normes strictes de qualité et de fiabilité, assurant une performance durable et constante.
62	Expertise de Pointe : Notre équipe d'experts chevronnés maîtrise les technologies les plus récentes pour concevoir des solutions sur mesure.
63	Approche Collaborative : Nous travaillons main dans la main avec nos clients pour comprendre leurs besoins spécifiques et y répondre efficacement.
64	Qualité et Fiabilité : Nos produits sont soumis à des normes strictes de qualité et de fiabilité, assurant une performance durable et constante.
\.


--
-- TOC entry 5550 (class 0 OID 17417)
-- Dependencies: 301
-- Data for Name: base_aboutussection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_aboutussection (cmsplugin_ptr_id, description_1, description_2, description_3) FROM stdin;
2	À Ulmus Technologie, nous sommes déterminés à repousser les frontières de l'innovation technologique. Notre engagement envers l'excellence se reflète dans chaque solution logicielle que nous développons.	Notre Engagement en Trois Points :	Explorez notre parcours passionnant et notre évolution vers l'excellence technologique. Découvrez comment Ulmus Technologie peut transformer votre entreprise. Contactez-nous dès aujourd'hui pour discuter de vos besoins en solutions logicielles.
25	À Ulmus Technologie, nous sommes déterminés à repousser les frontières de l'innovation technologique. Notre engagement envers l'excellence se reflète dans chaque solution logicielle que nous développons.	Notre Engagement en Trois Points :	Explorez notre parcours passionnant et notre évolution vers l'excellence technologique. Découvrez comment Ulmus Technologie peut transformer votre entreprise. Contactez-nous dès aujourd'hui pour discuter de vos besoins en solutions logicielles.
61	À Ulmus Technologie, nous sommes déterminés à repousser les frontières de l'innovation technologique. Notre engagement envers l'excellence se reflète dans chaque solution logicielle que nous développons.	Notre Engagement en Trois Points :	Explorez notre parcours passionnant et notre évolution vers l'excellence technologique. Découvrez comment Ulmus Technologie peut transformer votre entreprise. Contactez-nous dès aujourd'hui pour discuter de vos besoins en solutions logicielles.
\.


--
-- TOC entry 5552 (class 0 OID 17425)
-- Dependencies: 303
-- Data for Name: base_contactrequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_contactrequest (id, name, email, subject, message) FROM stdin;
\.


--
-- TOC entry 5553 (class 0 OID 17432)
-- Dependencies: 304
-- Data for Name: base_contactsection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_contactsection (cmsplugin_ptr_id, description, company_address, company_email, company_phone_number) FROM stdin;
22	Pour toute question, demande de devis ou pour en savoir plus sur nos services, n'hésitez pas à nous contacter. Notre équipe est à votre disposition pour vous aider à atteindre vos objectifs technologiques.	Malek Centre, Bloc A 1er étage, Appartement n°5, Centre Urbain Nord.	contact@ulmus.tn	+216 29 25 77 38
45	Pour toute question, demande de devis ou pour en savoir plus sur nos services, n'hésitez pas à nous contacter. Notre équipe est à votre disposition pour vous aider à atteindre vos objectifs technologiques.	Malek Centre, Bloc A 1er étage, Appartement n°5, Centre Urbain Nord.	contact@ulmus.tn	+216 29 25 77 38
46	Pour toute question, demande de devis ou pour en savoir plus sur nos services, n'hésitez pas à nous contacter. Notre équipe est à votre disposition pour vous aider à atteindre vos objectifs technologiques.	Malek Centre, Bloc A 1er étage, Appartement n°5, Centre Urbain Nord.	contact@ulmus.tn	+216 29 25 77 38
90	Pour toute question, demande de devis ou pour en savoir plus sur nos services, n'hésitez pas à nous contacter. Notre équipe est à votre disposition pour vous aider à atteindre vos objectifs technologiques.	Malek Centre, Bloc A 1er étage, Appartement n°5, Centre Urbain Nord.	contact@ulmus.tn	+216 29 25 77 38
\.


--
-- TOC entry 5558 (class 0 OID 17461)
-- Dependencies: 309
-- Data for Name: base_countersection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_countersection (cmsplugin_ptr_id, title, description, clients_max_counter, projects_max_counter, workers_max_counter, background_image_id) FROM stdin;
21	Engagement en Chiffres	Découvrez nos réalisations jusqu'à présent :	56	41	13	\N
44	Engagement en Chiffres	Découvrez nos réalisations jusqu'à présent :	56	41	13	15
89	Engagement en Chiffres	Découvrez nos réalisations jusqu'à présent :	56	41	13	15
\.


--
-- TOC entry 5559 (class 0 OID 17466)
-- Dependencies: 310
-- Data for Name: base_ctasection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_ctasection (cmsplugin_ptr_id, header, text, button_text, button_link, background_image_id) FROM stdin;
13	Transformez Votre Entreprise Avec Ulmus Technologie	Découvrez comment nos solutions logicielles innovantes peuvent optimiser vos opérations et stimuler votre croissance. Contactez-nous dès aujourd'hui pour une consultation personnalisée.	Contactez-nous maintenant		\N
36	Transformez Votre Entreprise Avec Ulmus Technologie	Découvrez comment nos solutions logicielles innovantes peuvent optimiser vos opérations et stimuler votre croissance. Contactez-nous dès aujourd'hui pour une consultation personnalisée.	Contactez-nous maintenant	/fr/contact/	14
72	Transformez Votre Entreprise Avec Ulmus Technologie	Découvrez comment nos solutions logicielles innovantes peuvent optimiser vos opérations et stimuler votre croissance. Contactez-nous dès aujourd'hui pour une consultation personnalisée.	Contactez-nous maintenant	/fr/contact/	14
\.


--
-- TOC entry 5554 (class 0 OID 17439)
-- Dependencies: 305
-- Data for Name: base_featureelement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_featureelement (cmsplugin_ptr_id, icon_class, title, description) FROM stdin;
15	bx bx-desktop	Interface Utilisateur Intuitive	Une interface utilisateur conviviale qui améliore l'expérience utilisateur.
16	bx bx-code-alt	Compatibilité Multiplateforme	Solutions adaptées à différentes plateformes pour une accessibilité maximale.
17	bx bx-tachometer	Performances Optimisées	Des performances optimales pour des opérations fluides et rapides.
18	bx bx-shield-alt-2	Sécurité Renforcée	Mesures de sécurité avancées pour protéger vos données sensibles.
19	bx bx-chat	Support Client Dédié	Support client réactif et personnalisé pour répondre à vos besoins spécifiques.  Mises à Jour Régulières
20	bx bx-refresh	Mises à Jour Régulières	Mises à jour régulières pour garantir la stabilité et la compatibilité de nos solutions.
38	bx bx-desktop	Interface Utilisateur Intuitive	Une interface utilisateur conviviale qui améliore l'expérience utilisateur.
39	bx bx-code-alt	Compatibilité Multiplateforme	Solutions adaptées à différentes plateformes pour une accessibilité maximale.
40	bx bx-tachometer	Performances Optimisées	Des performances optimales pour des opérations fluides et rapides.
41	bx bx-shield-alt-2	Sécurité Renforcée	Mesures de sécurité avancées pour protéger vos données sensibles.
42	bx bx-chat	Support Client Dédié	Support client réactif et personnalisé pour répondre à vos besoins spécifiques.  Mises à Jour Régulières
43	bx bx-refresh	Mises à Jour Régulières	Mises à jour régulières pour garantir la stabilité et la compatibilité de nos solutions.
74	bx bx-desktop	Interface Utilisateur Intuitive	Une interface utilisateur conviviale qui améliore l'expérience utilisateur.
75	bx bx-code-alt	Compatibilité Multiplateforme	Solutions adaptées à différentes plateformes pour une accessibilité maximale.
76	bx bx-tachometer	Performances Optimisées	Des performances optimales pour des opérations fluides et rapides.
77	bx bx-shield-alt-2	Sécurité Renforcée	Mesures de sécurité avancées pour protéger vos données sensibles.
78	bx bx-chat	Support Client Dédié	Support client réactif et personnalisé pour répondre à vos besoins spécifiques.  Mises à Jour Régulières
79	bx bx-refresh	Mises à Jour Régulières	Mises à jour régulières pour garantir la stabilité et la compatibilité de nos solutions.
\.


--
-- TOC entry 5560 (class 0 OID 17473)
-- Dependencies: 311
-- Data for Name: base_featuressection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_featuressection (cmsplugin_ptr_id, features_image_id) FROM stdin;
14	\N
37	\N
73	16
\.


--
-- TOC entry 5561 (class 0 OID 17478)
-- Dependencies: 312
-- Data for Name: base_herosection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_herosection (cmsplugin_ptr_id, title, subtitle, created_at, updated_at, background_image_id) FROM stdin;
1	Transformez Votre Entreprise Avec Ulmus Technologie	Nous sommes passionnés par la création de solutions logicielles sur mesure qui aident les entreprises à atteindre leurs objectifs commerciaux.	2024-06-26 16:08:48.377423+01	2024-06-26 16:20:53.696324+01	\N
24	Transformez Votre Entreprise Avec Ulmus Technologie	Nous sommes passionnés par la création de solutions logicielles sur mesure qui aident les entreprises à atteindre leurs objectifs commerciaux.	2024-06-26 16:44:13.466781+01	2024-06-27 11:24:57.612458+01	13
60	Transformez Votre Entreprise Avec Ulmus Technologie	Nous sommes passionnés par la création de solutions logicielles sur mesure qui aident les entreprises à atteindre leurs objectifs commerciaux.	2024-06-27 12:34:19.327745+01	2024-06-27 12:34:19.327745+01	13
\.


--
-- TOC entry 5556 (class 0 OID 17447)
-- Dependencies: 307
-- Data for Name: base_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_service (id, title, description, icon_class, date_created) FROM stdin;
1	Développement de Logiciels Personnalisés	Du concept à la réalisation, nous créons des logiciels robustes et personnalisés pour répondre à vos besoins spécifiques.	bx bx-code-block	2024-06-26 16:29:07.580185+01
2	Intégration de Systèmes	Intégrez harmonieusement vos systèmes existants pour améliorer l'efficacité et optimiser les opérations.	bx bx-server	2024-06-26 16:29:28.354562+01
3	Conseil en Informatique	Bénéficiez de notre expertise pour optimiser votre infrastructure IT et développer une stratégie adaptée à votre croissance.	bx bx-line-chart	2024-06-26 16:30:13.766148+01
4	Gestion de Données	Transformez vos données en informations stratégiques pour prendre des décisions éclairées et stimuler la croissance.	bx bx-data	2024-06-26 16:30:40.83382+01
5	Sécurité Informatique	Protégez votre entreprise contre les menaces numériques avec nos solutions avancées de cybersécurité.	bx bx-shield	2024-06-26 16:31:10.080351+01
6	Support et Maintenance	Assurez le bon fonctionnement de vos systèmes avec notre support technique dédié et nos services de maintenance proactive.	bx bx-support	2024-06-26 16:31:29.4051+01
\.


--
-- TOC entry 5562 (class 0 OID 17485)
-- Dependencies: 313
-- Data for Name: base_servicecard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_servicecard (cmsplugin_ptr_id, service_id) FROM stdin;
7	1
8	2
9	3
10	4
11	5
12	6
30	1
31	2
32	3
33	4
34	5
35	6
66	1
67	2
68	3
69	4
70	5
71	6
\.


--
-- TOC entry 5557 (class 0 OID 17454)
-- Dependencies: 308
-- Data for Name: base_servicessection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base_servicessection (cmsplugin_ptr_id, description) FROM stdin;
6	À Ulmus Technologie, nous offrons une gamme complète de services conçus pour répondre aux défis technologiques de votre entreprise. Découvrez comment nous pouvons vous aider à atteindre vos objectifs grâce à nos solutions innovantes.
23	Chez Ulmus Technologie, nous offrons une gamme complète de services conçus pour répondre aux besoins variés de votre entreprise. De la conception de logiciels personnalisés à l'intégration de systèmes, en passant par le conseil en informatique et la cybersécurité, nous sommes votre partenaire de confiance pour toutes vos solutions technologiques. Notre équipe d'experts travaille en étroite collaboration avec vous pour garantir des solutions innovantes et adaptées à vos défis spécifiques, vous permettant ainsi de vous concentrer sur la croissance et le succès de votre entreprise. Découvrez ci-dessous nos services en détail et comment nous pouvons vous aider à atteindre vos objectifs.
29	À Ulmus Technologie, nous offrons une gamme complète de services conçus pour répondre aux défis technologiques de votre entreprise. Découvrez comment nous pouvons vous aider à atteindre vos objectifs grâce à nos solutions innovantes.
65	À Ulmus Technologie, nous offrons une gamme complète de services conçus pour répondre aux défis technologiques de votre entreprise. Découvrez comment nous pouvons vous aider à atteindre vos objectifs grâce à nos solutions innovantes.
\.


--
-- TOC entry 5563 (class 0 OID 17570)
-- Dependencies: 314
-- Data for Name: base_technologyelement; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.base_technologyelement (cmsplugin_ptr_id, label, technology_image_id) FROM stdin;
50	Oracle	1
51	PostgreSQL	2
52	Django	3
54	DjangoCMS	5
56	Java	8
57	NodeJS	10
58	Git	11
59	ProXmoX	12
81	Oracle	1
82	PostgreSQL	2
83	Django	3
84	DjangoCMS	5
85	Java	8
86	NodeJS	10
87	Git	11
88	ProXmoX	12
\.


--
-- TOC entry 5484 (class 0 OID 16526)
-- Dependencies: 235
-- Data for Name: cms_aliaspluginmodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
\.


--
-- TOC entry 5483 (class 0 OID 16516)
-- Dependencies: 234
-- Data for Name: cms_cmsplugin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id) FROM stdin;
24	1	fr	HeroSectionPlugin	2024-06-26 16:08:48.369874+01	2024-06-27 11:24:57.612458+01	\N	11
1	1	fr	HeroSectionPlugin	2024-06-26 16:08:48.369874+01	2024-06-26 16:20:53.696324+01	\N	5
2	2	fr	AboutUsSectionPlugin	2024-06-26 16:22:35.980449+01	2024-06-26 16:22:35.980449+01	\N	5
3	3	fr	AboutUsListItemPlugin	2024-06-26 16:22:47.980708+01	2024-06-26 16:22:47.980708+01	2	5
4	4	fr	AboutUsListItemPlugin	2024-06-26 16:22:58.498869+01	2024-06-26 16:22:58.498869+01	2	5
5	5	fr	AboutUsListItemPlugin	2024-06-26 16:23:08.059504+01	2024-06-26 16:23:08.059504+01	2	5
6	6	fr	ServicesSectionPlugin	2024-06-26 16:23:39.134186+01	2024-06-26 16:23:39.134186+01	\N	5
7	7	fr	ServiceCardPlugin	2024-06-26 16:31:43.534782+01	2024-06-26 16:31:43.534782+01	6	5
8	8	fr	ServiceCardPlugin	2024-06-26 16:31:48.333927+01	2024-06-26 16:31:48.333927+01	6	5
9	9	fr	ServiceCardPlugin	2024-06-26 16:31:54.325846+01	2024-06-26 16:31:54.325846+01	6	5
10	10	fr	ServiceCardPlugin	2024-06-26 16:32:00.559537+01	2024-06-26 16:32:00.559537+01	6	5
11	11	fr	ServiceCardPlugin	2024-06-26 16:32:07.962766+01	2024-06-26 16:32:07.962766+01	6	5
12	12	fr	ServiceCardPlugin	2024-06-26 16:32:15.802744+01	2024-06-26 16:32:15.802744+01	6	5
13	13	fr	CTASectionPlugin	2024-06-26 16:33:45.159076+01	2024-06-26 16:33:45.159076+01	\N	5
14	14	fr	FeaturesSectionPlugin	2024-06-26 16:34:11.598852+01	2024-06-26 16:34:11.604815+01	\N	5
15	15	fr	FeatureElementPlugin	2024-06-26 16:35:02.657891+01	2024-06-26 16:35:02.657891+01	14	5
16	16	fr	FeatureElementPlugin	2024-06-26 16:35:32.090239+01	2024-06-26 16:35:32.090239+01	14	5
17	17	fr	FeatureElementPlugin	2024-06-26 16:35:57.380402+01	2024-06-26 16:35:57.380402+01	14	5
18	18	fr	FeatureElementPlugin	2024-06-26 16:36:21.108182+01	2024-06-26 16:36:21.108182+01	14	5
19	19	fr	FeatureElementPlugin	2024-06-26 16:36:52.16418+01	2024-06-26 16:36:52.179814+01	14	5
20	20	fr	FeatureElementPlugin	2024-06-26 16:37:20.218469+01	2024-06-26 16:37:20.218469+01	14	5
21	21	fr	CounterSectionPlugin	2024-06-26 16:38:18.996274+01	2024-06-26 16:38:19.01248+01	\N	5
22	22	fr	ContactSectionPlugin	2024-06-26 16:38:58.827426+01	2024-06-26 16:38:58.840938+01	\N	5
23	1	fr	ServicesSectionPlugin	2024-06-26 16:40:22.664907+01	2024-06-26 16:40:22.681184+01	\N	7
25	2	fr	AboutUsSectionPlugin	2024-06-26 16:22:35.980449+01	2024-06-26 16:44:13.466781+01	\N	11
26	3	fr	AboutUsListItemPlugin	2024-06-26 16:22:47.980708+01	2024-06-26 16:44:13.466781+01	25	11
27	4	fr	AboutUsListItemPlugin	2024-06-26 16:22:58.498869+01	2024-06-26 16:44:13.466781+01	25	11
28	5	fr	AboutUsListItemPlugin	2024-06-26 16:23:08.059504+01	2024-06-26 16:44:13.466781+01	25	11
29	6	fr	ServicesSectionPlugin	2024-06-26 16:23:39.134186+01	2024-06-26 16:44:13.466781+01	\N	11
30	7	fr	ServiceCardPlugin	2024-06-26 16:31:43.534782+01	2024-06-26 16:44:13.466781+01	29	11
31	8	fr	ServiceCardPlugin	2024-06-26 16:31:48.333927+01	2024-06-26 16:44:13.466781+01	29	11
32	9	fr	ServiceCardPlugin	2024-06-26 16:31:54.325846+01	2024-06-26 16:44:13.466781+01	29	11
33	10	fr	ServiceCardPlugin	2024-06-26 16:32:00.559537+01	2024-06-26 16:44:13.466781+01	29	11
45	31	fr	ContactSectionPlugin	2024-06-26 16:38:58.827426+01	2024-06-26 16:44:13.482411+01	\N	11
46	1	fr	ContactSectionPlugin	2024-06-26 16:38:58.827426+01	2024-06-26 16:45:05.336821+01	\N	12
47	1	fr	Alias	2024-06-26 16:46:29.703802+01	2024-06-26 16:46:29.712311+01	\N	14
60	1	fr	HeroSectionPlugin	2024-06-26 16:08:48.369874+01	2024-06-27 12:34:19.327745+01	\N	16
61	2	fr	AboutUsSectionPlugin	2024-06-26 16:22:35.980449+01	2024-06-27 12:34:19.327745+01	\N	16
62	3	fr	AboutUsListItemPlugin	2024-06-26 16:22:47.980708+01	2024-06-27 12:34:19.327745+01	61	16
63	4	fr	AboutUsListItemPlugin	2024-06-26 16:22:58.498869+01	2024-06-27 12:34:19.327745+01	61	16
64	5	fr	AboutUsListItemPlugin	2024-06-26 16:23:08.059504+01	2024-06-27 12:34:19.327745+01	61	16
65	6	fr	ServicesSectionPlugin	2024-06-26 16:23:39.134186+01	2024-06-27 12:34:19.327745+01	\N	16
66	7	fr	ServiceCardPlugin	2024-06-26 16:31:43.534782+01	2024-06-27 12:34:19.327745+01	65	16
67	8	fr	ServiceCardPlugin	2024-06-26 16:31:48.333927+01	2024-06-27 12:34:19.327745+01	65	16
68	9	fr	ServiceCardPlugin	2024-06-26 16:31:54.325846+01	2024-06-27 12:34:19.327745+01	65	16
69	10	fr	ServiceCardPlugin	2024-06-26 16:32:00.559537+01	2024-06-27 12:34:19.327745+01	65	16
70	11	fr	ServiceCardPlugin	2024-06-26 16:32:07.962766+01	2024-06-27 12:34:19.34338+01	65	16
71	12	fr	ServiceCardPlugin	2024-06-26 16:32:15.802744+01	2024-06-27 12:34:19.34338+01	65	16
72	13	fr	CTASectionPlugin	2024-06-26 16:33:45.159076+01	2024-06-27 12:34:19.34338+01	\N	16
74	15	fr	FeatureElementPlugin	2024-06-26 16:35:02.657891+01	2024-06-27 12:34:19.34338+01	73	16
75	16	fr	FeatureElementPlugin	2024-06-26 16:35:32.090239+01	2024-06-27 12:34:19.34338+01	73	16
76	17	fr	FeatureElementPlugin	2024-06-26 16:35:57.380402+01	2024-06-27 12:34:19.34338+01	73	16
77	18	fr	FeatureElementPlugin	2024-06-26 16:36:21.108182+01	2024-06-27 12:34:19.34338+01	73	16
78	19	fr	FeatureElementPlugin	2024-06-26 16:36:52.16418+01	2024-06-27 12:34:19.34338+01	73	16
79	20	fr	FeatureElementPlugin	2024-06-26 16:37:20.218469+01	2024-06-27 12:34:19.34338+01	73	16
73	14	fr	FeaturesSectionPlugin	2024-06-26 16:34:11.598852+01	2024-06-27 15:03:45.677507+01	\N	16
34	11	fr	ServiceCardPlugin	2024-06-26 16:32:07.962766+01	2024-06-26 16:44:13.466781+01	29	11
35	12	fr	ServiceCardPlugin	2024-06-26 16:32:15.802744+01	2024-06-26 16:44:13.482411+01	29	11
36	13	fr	CTASectionPlugin	2024-06-26 16:33:45.159076+01	2024-06-27 11:31:09.471299+01	\N	11
37	14	fr	FeaturesSectionPlugin	2024-06-26 16:34:11.598852+01	2024-06-26 16:44:13.482411+01	\N	11
38	15	fr	FeatureElementPlugin	2024-06-26 16:35:02.657891+01	2024-06-26 16:44:13.482411+01	37	11
39	16	fr	FeatureElementPlugin	2024-06-26 16:35:32.090239+01	2024-06-26 16:44:13.482411+01	37	11
40	17	fr	FeatureElementPlugin	2024-06-26 16:35:57.380402+01	2024-06-26 16:44:13.482411+01	37	11
41	18	fr	FeatureElementPlugin	2024-06-26 16:36:21.108182+01	2024-06-26 16:44:13.482411+01	37	11
42	19	fr	FeatureElementPlugin	2024-06-26 16:36:52.16418+01	2024-06-26 16:44:13.482411+01	37	11
43	20	fr	FeatureElementPlugin	2024-06-26 16:37:20.218469+01	2024-06-26 16:44:13.482411+01	37	11
49	21	fr	TechnologiesSectionPlugin	2024-06-27 10:16:43.682943+01	2024-06-27 10:16:43.698565+01	\N	11
50	22	fr	TechnologyElementPlugin	2024-06-27 10:31:44.009679+01	2024-06-27 10:31:44.025307+01	49	11
51	23	fr	TechnologyElementPlugin	2024-06-27 10:35:11.906052+01	2024-06-27 10:35:11.906052+01	49	11
52	24	fr	TechnologyElementPlugin	2024-06-27 10:39:50.323148+01	2024-06-27 10:39:50.3388+01	49	11
54	25	fr	TechnologyElementPlugin	2024-06-27 10:47:11.743212+01	2024-06-27 10:47:11.764472+01	49	11
56	26	fr	TechnologyElementPlugin	2024-06-27 10:53:34.198742+01	2024-06-27 10:55:08.028621+01	49	11
57	27	fr	TechnologyElementPlugin	2024-06-27 10:56:45.79842+01	2024-06-27 10:58:03.317747+01	49	11
58	28	fr	TechnologyElementPlugin	2024-06-27 11:01:06.439694+01	2024-06-27 11:01:06.447322+01	49	11
59	29	fr	TechnologyElementPlugin	2024-06-27 11:08:47.505748+01	2024-06-27 11:08:47.51594+01	49	11
44	30	fr	CounterSectionPlugin	2024-06-26 16:38:18.996274+01	2024-06-27 11:33:23.684868+01	\N	11
80	21	fr	TechnologiesSectionPlugin	2024-06-27 12:34:19.34338+01	2024-06-27 12:34:19.34338+01	\N	16
81	22	fr	TechnologyElementPlugin	2024-06-27 10:31:44.009679+01	2024-06-27 12:34:19.34338+01	80	16
82	23	fr	TechnologyElementPlugin	2024-06-27 10:35:11.906052+01	2024-06-27 12:34:19.34338+01	80	16
83	24	fr	TechnologyElementPlugin	2024-06-27 10:39:50.323148+01	2024-06-27 12:34:19.34338+01	80	16
84	25	fr	TechnologyElementPlugin	2024-06-27 10:47:11.743212+01	2024-06-27 12:34:19.34338+01	80	16
85	26	fr	TechnologyElementPlugin	2024-06-27 10:53:34.198742+01	2024-06-27 12:34:19.34338+01	80	16
86	27	fr	TechnologyElementPlugin	2024-06-27 10:56:45.79842+01	2024-06-27 12:34:19.34338+01	80	16
87	28	fr	TechnologyElementPlugin	2024-06-27 11:01:06.439694+01	2024-06-27 12:34:19.34338+01	80	16
88	29	fr	TechnologyElementPlugin	2024-06-27 11:08:47.505748+01	2024-06-27 12:34:19.359004+01	80	16
89	30	fr	CounterSectionPlugin	2024-06-26 16:38:18.996274+01	2024-06-27 12:34:19.359004+01	\N	16
90	31	fr	ContactSectionPlugin	2024-06-26 16:38:58.827426+01	2024-06-27 12:34:19.359004+01	\N	16
\.


--
-- TOC entry 5486 (class 0 OID 16537)
-- Dependencies: 237
-- Data for Name: cms_globalpagepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
\.


--
-- TOC entry 5488 (class 0 OID 16543)
-- Dependencies: 239
-- Data for Name: cms_globalpagepermission_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
\.


--
-- TOC entry 5490 (class 0 OID 16549)
-- Dependencies: 241
-- Data for Name: cms_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, reverse_id, navigation_extenders, login_required, is_home, application_urls, application_namespace, languages, is_page_type, node_id) FROM stdin;
1	yasyn	yasyn	2024-06-26 16:08:25.964139+01	2024-06-26 16:08:26.027161+01	\N	\N	f	t	\N	\N	fr	f	1
2	yasyn	yasyn	2024-06-26 16:39:31.667403+01	2024-06-26 16:39:31.667403+01	\N	\N	f	f	\N	\N	fr	f	2
3	yasyn	yasyn	2024-06-26 16:43:12.288517+01	2024-06-26 16:43:12.288517+01	\N	\N	f	f	\N	\N	fr	f	3
\.


--
-- TOC entry 5501 (class 0 OID 16720)
-- Dependencies: 252
-- Data for Name: cms_pagecontent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pagecontent (id, language, title, page_title, menu_title, meta_description, redirect, creation_date, page_id, changed_by, changed_date, created_by, in_navigation, limit_visibility_in_menu, template, xframe_options, soft_root) FROM stdin;
1	fr	Acceuil	Acceuil	Acceuil		\N	2024-06-26 16:08:25.979774+01	1	yasyn	2024-06-26 16:08:36.169188+01	yasyn	t	\N	base/index.html	0	f
2	fr	Services	Services	Services		\N	2024-06-26 16:39:31.667403+01	2	yasyn	2024-06-26 16:39:38.614664+01	yasyn	t	\N	base/blank_page.html	0	f
3	fr	Contact	Contact	Contact		\N	2024-06-26 16:43:12.288517+01	3	yasyn	2024-06-26 16:43:41.46817+01	yasyn	t	\N	base/blank_page.html	0	f
4	fr	Acceuil	Acceuil	Acceuil		\N	2024-06-26 16:44:13.403341+01	1	yasyn	2024-06-26 16:44:13.403341+01	yasyn	t	\N	base/index.html	0	f
5	fr	Contact	Contact	Contact		\N	2024-06-26 16:45:18.516672+01	3	yasyn	2024-06-26 16:45:18.516672+01	yasyn	t	\N	base/blank_page.html	0	f
6	fr	Acceuil	Acceuil	Acceuil		\N	2024-06-27 12:34:19.280358+01	1	yasyn	2024-06-27 12:34:19.280358+01	yasyn	t	\N	base/index.html	0	f
\.


--
-- TOC entry 5492 (class 0 OID 16564)
-- Dependencies: 243
-- Data for Name: cms_pagepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
\.


--
-- TOC entry 5512 (class 0 OID 16999)
-- Dependencies: 263
-- Data for Name: cms_pageurl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pageurl (id, slug, path, language, managed, page_id) FROM stdin;
2	services	services	fr	t	2
3	contact	contact	fr	t	3
1	acceuil		fr	t	1
\.


--
-- TOC entry 5493 (class 0 OID 16667)
-- Dependencies: 244
-- Data for Name: cms_pageuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
\.


--
-- TOC entry 5494 (class 0 OID 16672)
-- Dependencies: 245
-- Data for Name: cms_pageusergroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
\.


--
-- TOC entry 5496 (class 0 OID 16678)
-- Dependencies: 247
-- Data for Name: cms_placeholder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_placeholder (id, slot, default_width, content_type_id, object_id) FROM stdin;
1	clipboard	\N	\N	\N
2	Page Content	\N	10	1
3	Footer	\N	\N	\N
4	Footer	\N	\N	\N
5	Contenu	\N	10	1
6	Page Content	\N	10	2
7	Contenu	\N	10	2
8	Page Content	\N	10	3
9	Contenu	\N	10	3
10	Page Content	\N	10	4
11	Contenu	\N	10	4
12	content	\N	31	1
13	Page Content	\N	10	5
14	Contenu	\N	10	5
15	Page Content	\N	10	6
16	Contenu	\N	10	6
\.


--
-- TOC entry 5497 (class 0 OID 16704)
-- Dependencies: 248
-- Data for Name: cms_placeholderreference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
\.


--
-- TOC entry 5499 (class 0 OID 16710)
-- Dependencies: 250
-- Data for Name: cms_staticplaceholder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
1		Footer	f	template	3	4	\N
\.


--
-- TOC entry 5507 (class 0 OID 16883)
-- Dependencies: 258
-- Data for Name: cms_treenode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
1	0001	1	0	\N	1
2	0002	1	0	\N	1
3	0003	1	0	\N	1
\.


--
-- TOC entry 5505 (class 0 OID 16865)
-- Dependencies: 256
-- Data for Name: cms_urlconfrevision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_urlconfrevision (id, revision) FROM stdin;
\.


--
-- TOC entry 5503 (class 0 OID 16732)
-- Dependencies: 254
-- Data for Name: cms_usersettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
1	fr	1	1
\.


--
-- TOC entry 5510 (class 0 OID 16932)
-- Dependencies: 261
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-06-26 16:08:26.042833+01	1	Acceuil	1	La traduction de la page a été ajoutée.	2	1
2	2024-06-26 16:08:48.578175+01	1		2	Bloc ajouté	2	1
3	2024-06-26 16:20:53.867307+01	1		2	Bloc modifié	2	1
4	2024-06-26 16:22:36.01174+01	1		2	Bloc ajouté	2	1
5	2024-06-26 16:22:48.149992+01	1		2	Bloc ajouté	2	1
6	2024-06-26 16:22:58.688185+01	1		2	Bloc ajouté	2	1
7	2024-06-26 16:23:08.232313+01	1		2	Bloc ajouté	2	1
8	2024-06-26 16:23:39.149195+01	1		2	Bloc ajouté	2	1
9	2024-06-26 16:29:07.580185+01	1	Développement de Logiciels Personnalisés	1	[{"added": {}}]	87	1
10	2024-06-26 16:29:28.354562+01	2	Intégration de Systèmes	1	[{"added": {}}]	87	1
11	2024-06-26 16:30:13.766148+01	3	Conseil en Informatique	1	[{"added": {}}]	87	1
12	2024-06-26 16:30:40.83382+01	4	Gestion de Données	1	[{"added": {}}]	87	1
13	2024-06-26 16:31:10.080351+01	5	Sécurité Informatique	1	[{"added": {}}]	87	1
14	2024-06-26 16:31:29.4051+01	6	Support et Maintenance	1	[{"added": {}}]	87	1
15	2024-06-26 16:31:43.694403+01	1		2	Bloc ajouté	2	1
16	2024-06-26 16:31:48.523639+01	1		2	Bloc ajouté	2	1
17	2024-06-26 16:31:54.514227+01	1		2	Bloc ajouté	2	1
18	2024-06-26 16:32:00.732767+01	1		2	Bloc ajouté	2	1
19	2024-06-26 16:32:08.135627+01	1		2	Bloc ajouté	2	1
20	2024-06-26 16:32:16.00303+01	1		2	Bloc ajouté	2	1
21	2024-06-26 16:33:45.300226+01	1		2	Bloc ajouté	2	1
22	2024-06-26 16:34:11.627934+01	1		2	Bloc ajouté	2	1
23	2024-06-26 16:35:02.800563+01	1		2	Bloc ajouté	2	1
24	2024-06-26 16:35:32.247565+01	1		2	Bloc ajouté	2	1
25	2024-06-26 16:35:57.538388+01	1		2	Bloc ajouté	2	1
26	2024-06-26 16:36:21.265764+01	1		2	Bloc ajouté	2	1
27	2024-06-26 16:36:52.337095+01	1		2	Bloc ajouté	2	1
28	2024-06-26 16:37:20.367534+01	1		2	Bloc ajouté	2	1
29	2024-06-26 16:38:19.138407+01	1		2	Bloc ajouté	2	1
30	2024-06-26 16:38:58.966521+01	1		2	Bloc ajouté	2	1
31	2024-06-26 16:39:31.698697+01	2	Services	1	La traduction de la page a été ajoutée.	2	1
32	2024-06-26 16:40:22.696731+01	2		2	Bloc ajouté	2	1
33	2024-06-26 16:43:12.318336+01	3	Contact	1	La traduction de la page a été ajoutée.	2	1
34	2024-06-26 16:44:58.198497+01	1	contenu ulmus	1	[{"added": {}}]	33	1
35	2024-06-26 16:46:29.759253+01	3	Contact	2	Bloc ajouté	2	1
36	2024-06-26 16:48:07.687771+01	1	ulmus.tn	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	17	1
37	2024-06-26 18:58:17.447469+01	1	Acceuil	2	Bloc ajouté	2	1
38	2024-06-26 18:58:53.644979+01	1	Acceuil	2	Bloc supprimé	2	1
39	2024-06-27 10:16:43.754112+01	1	Acceuil	2	Bloc ajouté	2	1
40	2024-06-27 10:19:00.710928+01	1	Acceuil	2	Bloc déplacé	2	1
41	2024-06-27 10:31:44.057957+01	1	Acceuil	2	Bloc ajouté	2	1
42	2024-06-27 10:35:11.937301+01	1	Acceuil	2	Bloc ajouté	2	1
43	2024-06-27 10:39:50.370063+01	1	Acceuil	2	Bloc ajouté	2	1
44	2024-06-27 10:40:43.506348+01	1	Acceuil	2	Bloc ajouté	2	1
45	2024-06-27 10:46:21.87797+01	1	Acceuil	2	Bloc supprimé	2	1
46	2024-06-27 10:46:59.69021+01	4	djangocms.png	3		44	1
47	2024-06-27 10:47:11.79008+01	1	Acceuil	2	Bloc ajouté	2	1
48	2024-06-27 10:49:01.089937+01	1	Acceuil	2	Bloc ajouté	2	1
49	2024-06-27 10:49:16.549872+01	1	Acceuil	2	Bloc supprimé	2	1
50	2024-06-27 10:53:03.540505+01	6	java.png	3		44	1
51	2024-06-27 10:53:34.229183+01	1	Acceuil	2	Bloc ajouté	2	1
52	2024-06-27 10:54:58.008356+01	7	Asset 1.png	3		44	1
53	2024-06-27 10:55:08.05836+01	1	Acceuil	2	Bloc modifié	2	1
54	2024-06-27 10:56:45.838226+01	1	Acceuil	2	Bloc ajouté	2	1
55	2024-06-27 10:57:53.988103+01	9	nodejs.png	3		44	1
56	2024-06-27 10:58:03.348389+01	1	Acceuil	2	Bloc modifié	2	1
57	2024-06-27 11:01:06.477519+01	1	Acceuil	2	Bloc ajouté	2	1
58	2024-06-27 11:08:47.545519+01	1	Acceuil	2	Bloc ajouté	2	1
59	2024-06-27 11:24:57.633226+01	1	Acceuil	2	Bloc modifié	2	1
60	2024-06-27 11:30:40.037611+01	1	Acceuil	2	Bloc modifié	2	1
61	2024-06-27 11:31:09.491439+01	1	Acceuil	2	Bloc modifié	2	1
62	2024-06-27 11:33:23.710728+01	1	Acceuil	2	Bloc modifié	2	1
63	2024-06-27 11:54:55.704457+01	1	yasyn	2	[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]	14	1
64	2024-06-27 15:03:45.774258+01	1	Acceuil	2	Bloc modifié	2	1
\.


--
-- TOC entry 5469 (class 0 OID 16416)
-- Dependencies: 220
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	cms	placeholder
2	cms	page
3	djangocms_frontend	frontenduiitem
4	accordion	accordion
5	accordion	accordionitem
6	alert	alert
7	cms	pagetype
8	cms	staticplaceholder
9	cms	usersettings
10	cms	pagecontent
11	admin	logentry
12	auth	permission
13	auth	group
14	auth	user
15	contenttypes	contenttype
16	sessions	session
17	sites	site
18	cms	cmsplugin
19	cms	aliaspluginmodel
20	cms	globalpagepermission
21	cms	pagepermission
22	cms	pageuser
23	cms	pageusergroup
24	cms	placeholderreference
25	cms	urlconfrevision
26	cms	treenode
27	cms	pageurl
28	menus	cachekey
29	djangocms_text_ckeditor	text
30	djangocms_alias	alias
31	djangocms_alias	aliascontent
32	djangocms_alias	aliasplugin
33	djangocms_alias	category
34	djangocms_alias	categorytranslation
35	djangocms_versioning	version
36	djangocms_versioning	statetracking
37	djangocms_versioning	aliascontentversion
38	djangocms_versioning	pagecontentversion
39	filer	clipboard
40	filer	clipboarditem
41	filer	file
42	filer	folder
43	filer	folderpermission
44	filer	image
45	filer	thumbnailoption
46	easy_thumbnails	source
47	easy_thumbnails	thumbnail
48	easy_thumbnails	thumbnaildimensions
49	badge	badge
50	card	card
51	card	cardinner
52	card	cardlayout
53	carousel	carousel
54	carousel	carouselslide
55	collapse	collapse
56	collapse	collapsecontainer
57	collapse	collapsetrigger
58	content	blockquote
59	content	codeblock
60	content	figure
61	grid	gridcolumn
62	grid	gridcontainer
63	grid	gridrow
64	icon	icon
65	image	image
66	jumbotron	jumbotron
67	link	link
68	listgroup	listgroup
69	listgroup	listgroupitem
70	media	media
71	media	mediabody
72	navigation	navbrand
73	navigation	navcontainer
74	navigation	navigation
75	navigation	navlink
76	navigation	pagetree
77	tabs	tab
78	tabs	tabitem
79	utilities	heading
80	utilities	spacing
81	utilities	tableofcontents
82	base	aboutuslistitem
83	base	aboutussection
84	base	contactrequest
85	base	contactsection
86	base	featureelement
87	base	service
88	base	servicessection
89	base	countersection
90	base	ctasection
91	base	featuressection
92	base	herosection
93	base	servicecard
94	base	technologyelement
\.


--
-- TOC entry 5465 (class 0 OID 16402)
-- Dependencies: 216
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	sites	0001_initial	2024-06-26 16:00:34.210525+01
2	contenttypes	0001_initial	2024-06-26 16:00:34.226886+01
3	auth	0001_initial	2024-06-26 16:00:34.342986+01
4	cms	0001_initial	2024-06-26 16:00:34.554063+01
5	cms	0002_auto_20140816_1918	2024-06-26 16:00:34.951165+01
6	cms	0003_auto_20140926_2347	2024-06-26 16:00:34.985721+01
7	cms	0004_auto_20140924_1038	2024-06-26 16:00:35.060922+01
8	cms	0005_auto_20140924_1039	2024-06-26 16:00:35.102116+01
9	cms	0006_auto_20140924_1110	2024-06-26 16:00:35.251221+01
10	cms	0007_auto_20141028_1559	2024-06-26 16:00:35.278668+01
11	cms	0008_auto_20150208_2149	2024-06-26 16:00:35.285728+01
12	cms	0008_auto_20150121_0059	2024-06-26 16:00:35.325219+01
13	cms	0009_merge	2024-06-26 16:00:35.325847+01
14	cms	0010_migrate_use_structure	2024-06-26 16:00:35.375747+01
15	cms	0011_auto_20150419_1006	2024-06-26 16:00:35.412554+01
16	cms	0012_auto_20150607_2207	2024-06-26 16:00:35.475508+01
17	cms	0013_urlconfrevision	2024-06-26 16:00:35.475508+01
18	cms	0014_auto_20160404_1908	2024-06-26 16:00:35.508944+01
19	cms	0015_auto_20160421_0000	2024-06-26 16:00:35.53252+01
20	cms	0016_auto_20160608_1535	2024-06-26 16:00:35.593412+01
21	cms	0017_pagetype	2024-06-26 16:00:35.653084+01
22	cms	0018_pagenode	2024-06-26 16:00:35.868841+01
23	cms	0019_set_pagenode	2024-06-26 16:00:35.95864+01
24	cms	0020_old_tree_cleanup	2024-06-26 16:00:36.170751+01
25	cms	0021_auto_20180507_1432	2024-06-26 16:00:36.18639+01
26	cms	0022_auto_20180620_1551	2024-06-26 16:00:36.205632+01
27	djangocms_frontend	0001_initial	2024-06-26 16:00:36.251446+01
28	accordion	0001_initial	2024-06-26 16:00:36.251446+01
29	admin	0001_initial	2024-06-26 16:00:36.310937+01
30	admin	0002_logentry_remove_auto_add	2024-06-26 16:00:36.328868+01
31	admin	0003_logentry_add_action_flag_choices	2024-06-26 16:00:36.348017+01
32	alert	0001_initial	2024-06-26 16:00:36.352365+01
33	contenttypes	0002_remove_content_type_name	2024-06-26 16:00:36.393391+01
34	auth	0002_alter_permission_name_max_length	2024-06-26 16:00:36.430991+01
35	auth	0003_alter_user_email_max_length	2024-06-26 16:00:36.451222+01
36	auth	0004_alter_user_username_opts	2024-06-26 16:00:36.469078+01
37	auth	0005_alter_user_last_login_null	2024-06-26 16:00:36.493381+01
38	auth	0006_require_contenttypes_0002	2024-06-26 16:00:36.495372+01
39	auth	0007_alter_validators_add_error_messages	2024-06-26 16:00:36.51362+01
40	auth	0008_alter_user_username_max_length	2024-06-26 16:00:36.542771+01
41	auth	0009_alter_user_last_name_max_length	2024-06-26 16:00:36.563818+01
42	auth	0010_alter_group_name_max_length	2024-06-26 16:00:36.607505+01
43	auth	0011_update_proxy_permissions	2024-06-26 16:00:36.66031+01
44	auth	0012_alter_user_first_name_max_length	2024-06-26 16:00:36.682033+01
45	badge	0001_initial	2024-06-26 16:00:36.689589+01
46	card	0001_initial	2024-06-26 16:00:36.695715+01
47	carousel	0001_initial	2024-06-26 16:00:36.699891+01
48	cms	0023_placeholder_source_field	2024-06-26 16:00:36.75946+01
49	cms	0024_set_plugin_absolute_position	2024-06-26 16:00:36.798438+01
50	cms	0025_remove_plugin_tree_fields	2024-06-26 16:00:36.923504+01
51	cms	0026_title_placeholders	2024-06-26 16:00:37.054442+01
52	cms	0027_title_placeholders_data_migration	2024-06-26 16:00:37.124148+01
53	cms	0028_remove_page_placeholders	2024-06-26 16:00:37.17412+01
54	cms	0029_create_title_fields_and_url_model	2024-06-26 16:00:37.40071+01
55	cms	0030_auto_20180810_0629	2024-06-26 16:00:37.47544+01
56	cms	0031_remove_fields	2024-06-26 16:00:37.752355+01
57	cms	0032_remove_title_to_pagecontent	2024-06-26 16:00:37.872607+01
58	cms	0033_placeholder_source_data_migration	2024-06-26 16:00:37.91481+01
59	cms	0034_remove_pagecontent_placeholders	2024-06-26 16:00:37.964941+01
60	cms	0035_auto_20230822_2208	2024-06-26 16:00:38.025556+01
61	collapse	0001_initial	2024-06-26 16:00:38.041412+01
62	content	0001_initial	2024-06-26 16:00:38.045236+01
63	sites	0002_alter_domain_unique	2024-06-26 16:00:38.1557+01
64	djangocms_alias	0001_initial	2024-06-26 16:00:38.288871+01
65	djangocms_alias	0002_auto_20200723_1424	2024-06-26 16:00:38.425346+01
66	djangocms_alias	0003_auto_20230725_1547	2024-06-26 16:00:38.491344+01
67	djangocms_alias	0004_alter_aliascontent_language	2024-06-26 16:00:38.491344+01
68	djangocms_text_ckeditor	0001_initial	2024-06-26 16:00:38.553572+01
69	djangocms_text_ckeditor	0002_remove_related_name_for_cmsplugin_ptr	2024-06-26 16:00:38.59965+01
70	djangocms_text_ckeditor	0003_set_related_name_for_cmsplugin_ptr	2024-06-26 16:00:38.647198+01
71	djangocms_text_ckeditor	0004_auto_20160706_1339	2024-06-26 16:00:38.691463+01
72	djangocms_text_ckeditor	0005_alter_text_cmsplugin_ptr	2024-06-26 16:00:38.730808+01
73	djangocms_versioning	0001_initial	2024-06-26 16:00:38.741875+01
74	djangocms_versioning	0002_delete_campaign	2024-06-26 16:00:38.754656+01
75	djangocms_versioning	0003_version	2024-06-26 16:00:38.820814+01
76	djangocms_versioning	0004_auto_20180730_1135	2024-06-26 16:00:38.922357+01
77	djangocms_versioning	0005_remove_version_label	2024-06-26 16:00:38.930369+01
78	djangocms_versioning	0006_auto_20180809_1714	2024-06-26 16:00:38.943635+01
79	djangocms_versioning	0007_auto_20180813_1407	2024-06-26 16:00:38.991148+01
80	djangocms_versioning	0008_auto_20180820_1754	2024-06-26 16:00:39.042513+01
81	djangocms_versioning	0009_cms_pagecontent_remove_unique_constraint	2024-06-26 16:00:39.092673+01
82	djangocms_versioning	0010_version_proxies	2024-06-26 16:00:39.097178+01
83	djangocms_versioning	0011_version_number	2024-06-26 16:00:39.126698+01
84	djangocms_versioning	0012_create_version_numbers	2024-06-26 16:00:39.171473+01
85	djangocms_versioning	0013_auto_20181005_1404	2024-06-26 16:00:39.195723+01
86	djangocms_versioning	0014_version_source	2024-06-26 16:00:39.320703+01
87	djangocms_versioning	0015_version_modified	2024-06-26 16:00:39.34885+01
88	djangocms_versioning	0016_auto_20230505_0934	2024-06-26 16:00:39.424568+01
89	djangocms_versioning	0016_alter_version_content_type	2024-06-26 16:00:39.460791+01
90	djangocms_versioning	0017_merge_20230514_1027	2024-06-26 16:00:39.460791+01
91	easy_thumbnails	0001_initial	2024-06-26 16:00:39.524905+01
92	easy_thumbnails	0002_thumbnaildimensions	2024-06-26 16:00:39.545602+01
93	filer	0001_initial	2024-06-26 16:00:40.062778+01
94	filer	0002_auto_20150606_2003	2024-06-26 16:00:40.105723+01
95	filer	0003_thumbnailoption	2024-06-26 16:00:40.121371+01
96	filer	0004_auto_20160328_1434	2024-06-26 16:00:40.139292+01
97	filer	0005_auto_20160623_1425	2024-06-26 16:00:40.300994+01
98	filer	0006_auto_20160623_1627	2024-06-26 16:00:40.460859+01
99	filer	0007_auto_20161016_1055	2024-06-26 16:00:40.469869+01
100	filer	0008_auto_20171117_1313	2024-06-26 16:00:40.537577+01
101	filer	0009_auto_20171220_1635	2024-06-26 16:00:40.606516+01
102	filer	0010_auto_20180414_2058	2024-06-26 16:00:40.675461+01
103	filer	0011_auto_20190418_0137	2024-06-26 16:00:40.80322+01
104	filer	0012_file_mime_type	2024-06-26 16:00:40.887175+01
105	filer	0013_image_width_height_to_float	2024-06-26 16:00:40.943166+01
106	filer	0014_folder_permission_choices	2024-06-26 16:00:41.022639+01
107	filer	0015_alter_file_owner_alter_file_polymorphic_ctype_and_more	2024-06-26 16:00:41.185131+01
108	filer	0016_alter_folder_index_together_remove_folder_level_and_more	2024-06-26 16:00:41.319442+01
109	filer	0017_image__transparent	2024-06-26 16:00:41.335071+01
110	grid	0001_initial	2024-06-26 16:00:41.344159+01
111	icon	0001_initial	2024-06-26 16:00:41.346753+01
112	image	0001_initial	2024-06-26 16:00:41.35138+01
113	jumbotron	0001_initial	2024-06-26 16:00:41.355927+01
114	link	0001_initial	2024-06-26 16:00:41.359929+01
115	listgroup	0001_initial	2024-06-26 16:00:41.365758+01
116	media	0001_initial	2024-06-26 16:00:41.372761+01
117	menus	0001_initial	2024-06-26 16:00:41.38681+01
118	navigation	0001_initial	2024-06-26 16:00:41.396077+01
119	sessions	0001_initial	2024-06-26 16:00:41.41519+01
120	tabs	0001_initial	2024-06-26 16:00:41.423601+01
121	utilities	0001_initial	2024-06-26 16:00:41.431682+01
122	cms	0018_create_pagenode	2024-06-26 16:00:41.434808+01
123	base	0001_initial	2024-06-26 16:02:35.51665+01
124	link	0002_alter_link_options	2024-06-26 16:02:35.53177+01
125	base	0002_technologyelement	2024-06-27 10:05:11.052198+01
\.


--
-- TOC entry 5548 (class 0 OID 17402)
-- Dependencies: 299
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
eb20je5qqqi95i83p833lxpluxowdc7p	eyJjbXNfdG9vbGJhcl9kaXNhYmxlZCI6ZmFsc2V9:1sMlsJ:4cr_xCfga6kxzKUxqV9Si5RKkb8kHnV9eHZfeQ8S5I8	2024-07-11 10:57:07.48512+01
dfhkes21otu3c8gwsyd50dnm5o0shnfh	eyJjbXNfdG9vbGJhcl9kaXNhYmxlZCI6ZmFsc2V9:1sMlUZ:KG9Jq-qNLOIf3ezdnlpVMukMTY0bIfkL5MyqxaZSEOQ	2024-07-11 10:32:35.037227+01
krd0gnhp7e0jbwckzfwwp52ecviqazmj	eyJjbXNfdG9vbGJhcl9kaXNhYmxlZCI6ZmFsc2V9:1sMlwW:byQ_Xnp9Y-91vYzyAWvFWeb4YkQpBWDFAtQLNYo-V6Q	2024-07-11 11:01:28.840413+01
juck0zyg01k79kj2eg5tsihwhbbm212l	.eJxVjr0OwiAUhd-F2RCgFqiju89A7uWCRbEkhU7Gd5cmXbqc4fx8OV_mP9W1UjLC6ihVwByI3SLkGi7MwdZmt9WwutRdJtnJQ_DvsOwBvWB5Fu7L0taEfK_wI638USjk-9E9AWaoc197UKMeB0Na66vSk1EoojIehRTWhGilkl3iEAINUgsCJCstCBslRjF1aEy58zLU5mLJdBxWvz-fBUtU:1sMpj3:wPVzKEbYPi6CgDqxPW7UMScVJVxvKErIsdvypL_c2X8	2024-07-11 15:03:49.457474+01
\.


--
-- TOC entry 5467 (class 0 OID 16410)
-- Dependencies: 218
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	ulmus.tn	Ulmus technologie
\.


--
-- TOC entry 5514 (class 0 OID 17030)
-- Dependencies: 265
-- Data for Name: djangocms_alias_alias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_alias_alias (id, "position", category_id, creation_method, site_id, static_code) FROM stdin;
1	0	1	code	1	\N
\.


--
-- TOC entry 5516 (class 0 OID 17037)
-- Dependencies: 267
-- Data for Name: djangocms_alias_aliascontent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_alias_aliascontent (id, name, language, alias_id) FROM stdin;
1	Contactez-nous	fr	1
\.


--
-- TOC entry 5517 (class 0 OID 17042)
-- Dependencies: 268
-- Data for Name: djangocms_alias_aliasplugin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_alias_aliasplugin (cmsplugin_ptr_id, template, alias_id) FROM stdin;
47	default	1
\.


--
-- TOC entry 5519 (class 0 OID 17048)
-- Dependencies: 270
-- Data for Name: djangocms_alias_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_alias_category (id) FROM stdin;
1
\.


--
-- TOC entry 5521 (class 0 OID 17054)
-- Dependencies: 272
-- Data for Name: djangocms_alias_category_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_alias_category_translation (id, language_code, name, master_id) FROM stdin;
1	fr	contenu ulmus	1
\.


--
-- TOC entry 5508 (class 0 OID 16919)
-- Dependencies: 259
-- Data for Name: djangocms_frontend_frontenduiitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_frontend_frontenduiitem (cmsplugin_ptr_id, ui_item, tag_type, config) FROM stdin;
\.


--
-- TOC entry 5522 (class 0 OID 17111)
-- Dependencies: 273
-- Data for Name: djangocms_text_ckeditor_text; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
\.


--
-- TOC entry 5526 (class 0 OID 17152)
-- Dependencies: 277
-- Data for Name: djangocms_versioning_statetracking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_versioning_statetracking (id, date, old_state, new_state, user_id, version_id) FROM stdin;
1	2024-06-26 16:41:55.003223+01	draft	published	1	1
2	2024-06-26 16:42:11.813923+01	draft	published	1	2
3	2024-06-26 16:43:50.412037+01	draft	published	1	3
4	2024-06-26 16:46:08.687569+01	draft	published	1	5
5	2024-06-26 16:46:40.031644+01	draft	published	1	6
6	2024-06-26 16:46:40.031644+01	published	unpublished	1	3
7	2024-06-27 11:34:06.18549+01	draft	published	1	4
8	2024-06-27 11:34:06.190493+01	published	unpublished	1	1
9	2024-06-27 15:04:01.111438+01	draft	published	1	7
10	2024-06-27 15:04:01.127065+01	published	unpublished	1	4
\.


--
-- TOC entry 5524 (class 0 OID 17137)
-- Dependencies: 275
-- Data for Name: djangocms_versioning_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_versioning_version (id, created, object_id, content_type_id, state, created_by_id, number, source_id, modified, locked_by_id) FROM stdin;
1	2024-06-26 16:08:26.011066+01	1	10	unpublished	1	1	\N	2024-06-27 11:34:06.189455+01	\N
7	2024-06-27 12:34:19.359004+01	6	10	published	1	3	4	2024-06-27 15:04:01.111438+01	\N
4	2024-06-26 16:44:13.501545+01	4	10	unpublished	1	2	1	2024-06-27 15:04:01.127065+01	\N
2	2024-06-26 16:39:31.683683+01	2	10	published	1	1	\N	2024-06-26 16:42:11.813923+01	\N
5	2024-06-26 16:45:05.306529+01	1	31	published	1	1	\N	2024-06-26 16:46:08.687569+01	\N
6	2024-06-26 16:45:18.532181+01	5	10	published	1	2	3	2024-06-26 16:46:40.015359+01	\N
3	2024-06-26 16:43:12.302062+01	3	10	unpublished	1	1	\N	2024-06-26 16:46:40.031644+01	\N
\.


--
-- TOC entry 5528 (class 0 OID 17193)
-- Dependencies: 279
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
1	0d677af76ca5bf5575d614e04932c3a4	filer_public/28/33/2833a4a8-13cf-4fad-8254-05ec8d0a0919/oracle.png	2024-06-27 10:31:41.514432+01
2	0d677af76ca5bf5575d614e04932c3a4	filer_public/a3/8a/a38a5299-9f27-4bc1-b3c9-d7497562966d/postgres.png	2024-06-27 10:35:10.127702+01
13	0d677af76ca5bf5575d614e04932c3a4	filer_public/54/5a/545ad43c-47e0-439b-8a52-f0e8cba6f4fc/hero_bg.jpg	2024-06-27 11:29:59.54436+01
3	0d677af76ca5bf5575d614e04932c3a4	filer_public/de/20/de208e02-fb1f-41fe-92f6-31d1d1de273a/django.png	2024-06-27 10:39:49.03827+01
14	0d677af76ca5bf5575d614e04932c3a4	filer_public/08/f0/08f0db6f-b294-4b86-ae36-f292c50aee10/handshake.jpg	2024-06-27 11:33:10.061075+01
5	0d677af76ca5bf5575d614e04932c3a4	filer_public/81/40/81400d46-6a50-4a3d-91df-918394af3be0/djangocms.png	2024-06-27 10:47:10.400058+01
15	0d677af76ca5bf5575d614e04932c3a4	filer_public/39/0b/390b2104-de0b-495a-b8bd-7bd8de7a6ef4/avenue_bourguiba.jpg	2024-06-27 12:34:25.930897+01
16	0d677af76ca5bf5575d614e04932c3a4	filer_public/f2/92/f292edce-2444-44a5-8084-a87bf5450e1b/coding.jpg	2024-06-27 15:03:44.690262+01
8	0d677af76ca5bf5575d614e04932c3a4	filer_public/11/c8/11c8dfbe-6c41-4639-8fc5-03343dde41e2/java.png	2024-06-27 10:55:06.924608+01
10	0d677af76ca5bf5575d614e04932c3a4	filer_public/4b/3e/4b3ee1ee-69aa-4eb0-8991-440dc47f9e70/nodejs.png	2024-06-27 10:59:51.317633+01
11	0d677af76ca5bf5575d614e04932c3a4	filer_public/b0/82/b08240df-78ec-45f9-8e51-a8f1fca98117/git.png	2024-06-27 11:01:02.687247+01
12	0d677af76ca5bf5575d614e04932c3a4	filer_public/71/43/71434689-5d9f-428a-8043-64215a6608c5/proxmox.png	2024-06-27 11:08:46.105917+01
\.


--
-- TOC entry 5530 (class 0 OID 17199)
-- Dependencies: 281
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
1	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/28/33/2833a4a8-13cf-4fad-8254-05ec8d0a0919\\oracle.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 10:31:34.547002+01	1
3	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/28/33/2833a4a8-13cf-4fad-8254-05ec8d0a0919\\oracle.png__80x80_crop_subsampling-2.png	2024-06-27 10:31:41.530038+01	1
2	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/28/33/2833a4a8-13cf-4fad-8254-05ec8d0a0919\\oracle.png__40x40_crop_subsampling-2.png	2024-06-27 10:34:58.802602+01	1
4	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/a3/8a/a38a5299-9f27-4bc1-b3c9-d7497562966d\\postgres.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 10:35:08.277238+01	2
6	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/a3/8a/a38a5299-9f27-4bc1-b3c9-d7497562966d\\postgres.png__80x80_crop_subsampling-2.png	2024-06-27 10:35:10.143293+01	2
5	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/a3/8a/a38a5299-9f27-4bc1-b3c9-d7497562966d\\postgres.png__40x40_crop_subsampling-2.png	2024-06-27 10:39:30.328397+01	2
7	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/de/20/de208e02-fb1f-41fe-92f6-31d1d1de273a\\django.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 10:39:46.430405+01	3
9	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/de/20/de208e02-fb1f-41fe-92f6-31d1d1de273a\\django.png__80x80_crop_subsampling-2.png	2024-06-27 10:39:49.053893+01	3
8	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/de/20/de208e02-fb1f-41fe-92f6-31d1d1de273a\\django.png__40x40_crop_subsampling-2.png	2024-06-27 10:40:32.237966+01	3
46	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/54/5a/545ad43c-47e0-439b-8a52-f0e8cba6f4fc\\hero_bg.jpg__420x280_q85_subsampling-2_upscale.jpg	2024-06-27 11:29:59.591653+01	13
32	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/4b/3e/4b3ee1ee-69aa-4eb0-8991-440dc47f9e70\\nodejs.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 10:57:59.619742+01	10
15	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/81/40/81400d46-6a50-4a3d-91df-918394af3be0\\djangocms.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 10:47:08.390175+01	5
17	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/81/40/81400d46-6a50-4a3d-91df-918394af3be0\\djangocms.png__80x80_crop_subsampling-2.png	2024-06-27 10:47:10.414208+01	5
16	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/81/40/81400d46-6a50-4a3d-91df-918394af3be0\\djangocms.png__40x40_crop_subsampling-2.png	2024-06-27 10:48:52.629634+01	5
25	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/11/c8/11c8dfbe-6c41-4639-8fc5-03343dde41e2\\java.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 10:55:05.318231+01	8
27	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/11/c8/11c8dfbe-6c41-4639-8fc5-03343dde41e2\\java.png__80x80_crop_subsampling-2.png	2024-06-27 10:55:06.938523+01	8
26	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/11/c8/11c8dfbe-6c41-4639-8fc5-03343dde41e2\\java.png__40x40_crop_subsampling-2.png	2024-06-27 10:56:30.718408+01	8
41	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/71/43/71434689-5d9f-428a-8043-64215a6608c5\\proxmox.png__80x80_crop_subsampling-2.png	2024-06-27 11:08:46.11565+01	12
34	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/4b/3e/4b3ee1ee-69aa-4eb0-8991-440dc47f9e70\\nodejs.png__80x80_crop_subsampling-2.png	2024-06-27 10:58:01.988007+01	10
35	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/4b/3e/4b3ee1ee-69aa-4eb0-8991-440dc47f9e70\\nodejs.png__160x160_crop_subsampling-2.png	2024-06-27 10:59:51.322668+01	10
33	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/4b/3e/4b3ee1ee-69aa-4eb0-8991-440dc47f9e70\\nodejs.png__40x40_crop_subsampling-2.png	2024-06-27 11:00:52.559857+01	10
36	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/b0/82/b08240df-78ec-45f9-8e51-a8f1fca98117\\git.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 11:00:59.098171+01	11
40	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/71/43/71434689-5d9f-428a-8043-64215a6608c5\\proxmox.png__40x40_crop_subsampling-2.png	2024-06-27 11:24:12.233397+01	12
38	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/b0/82/b08240df-78ec-45f9-8e51-a8f1fca98117\\git.png__80x80_crop_subsampling-2.png	2024-06-27 11:01:02.707429+01	11
37	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/b0/82/b08240df-78ec-45f9-8e51-a8f1fca98117\\git.png__40x40_crop_subsampling-2.png	2024-06-27 11:08:38.575723+01	11
39	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/71/43/71434689-5d9f-428a-8043-64215a6608c5\\proxmox.png__180x180_crop_subsampling-2_upscale.png	2024-06-27 11:08:44.155652+01	12
42	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/54/5a/545ad43c-47e0-439b-8a52-f0e8cba6f4fc\\hero_bg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2024-06-27 11:24:27.917257+01	13
43	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/54/5a/545ad43c-47e0-439b-8a52-f0e8cba6f4fc\\hero_bg.jpg__40x40_q85_crop_subsampling-2.jpg	2024-06-27 11:30:24.516369+01	13
44	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/54/5a/545ad43c-47e0-439b-8a52-f0e8cba6f4fc\\hero_bg.jpg__80x80_q85_crop_subsampling-2.jpg	2024-06-27 11:24:56.064578+01	13
45	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/54/5a/545ad43c-47e0-439b-8a52-f0e8cba6f4fc\\hero_bg.jpg__210x140_q85_subsampling-2_upscale.jpg	2024-06-27 11:29:59.554532+01	13
47	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/08/f0/08f0db6f-b294-4b86-ae36-f292c50aee10\\handshake.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2024-06-27 11:30:36.321219+01	14
49	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/08/f0/08f0db6f-b294-4b86-ae36-f292c50aee10\\handshake.jpg__80x80_q85_crop_subsampling-2.jpg	2024-06-27 11:31:08.460123+01	14
50	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/08/f0/08f0db6f-b294-4b86-ae36-f292c50aee10\\handshake.jpg__160x160_q85_crop_subsampling-2.jpg	2024-06-27 11:33:10.070606+01	14
51	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/39/0b/390b2104-de0b-495a-b8bd-7bd8de7a6ef4\\avenue_bourguiba.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2024-06-27 11:33:20.234326+01	15
48	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/08/f0/08f0db6f-b294-4b86-ae36-f292c50aee10\\handshake.jpg__40x40_q85_crop_subsampling-2.jpg	2024-06-27 11:33:15.057189+01	14
52	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/39/0b/390b2104-de0b-495a-b8bd-7bd8de7a6ef4\\avenue_bourguiba.jpg__40x40_q85_crop_subsampling-2.jpg	2024-06-27 15:03:37.3529+01	15
53	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/39/0b/390b2104-de0b-495a-b8bd-7bd8de7a6ef4\\avenue_bourguiba.jpg__80x80_q85_crop_subsampling-2.jpg	2024-06-27 11:33:22.67694+01	15
54	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/39/0b/390b2104-de0b-495a-b8bd-7bd8de7a6ef4\\avenue_bourguiba.jpg__160x160_q85_crop_subsampling-2.jpg	2024-06-27 12:34:25.942441+01	15
55	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/f2/92/f292edce-2444-44a5-8084-a87bf5450e1b\\coding.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2024-06-27 15:03:42.258698+01	16
56	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/f2/92/f292edce-2444-44a5-8084-a87bf5450e1b\\coding.jpg__40x40_q85_crop_subsampling-2.jpg	2024-06-27 15:03:42.802888+01	16
57	0d677af76ca5bf5575d614e04932c3a4	filer_public_thumbnails\\filer_public/f2/92/f292edce-2444-44a5-8084-a87bf5450e1b\\coding.jpg__80x80_q85_crop_subsampling-2.jpg	2024-06-27 15:03:44.721514+01	16
\.


--
-- TOC entry 5532 (class 0 OID 17223)
-- Dependencies: 283
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- TOC entry 5534 (class 0 OID 17238)
-- Dependencies: 285
-- Data for Name: filer_clipboard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_clipboard (id, user_id) FROM stdin;
1	1
\.


--
-- TOC entry 5536 (class 0 OID 17244)
-- Dependencies: 287
-- Data for Name: filer_clipboarditem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
\.


--
-- TOC entry 5538 (class 0 OID 17250)
-- Dependencies: 289
-- Data for Name: filer_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id, mime_type) FROM stdin;
1	filer_public/28/33/2833a4a8-13cf-4fad-8254-05ec8d0a0919/oracle.png	41116	d66c37d96cc6367abd127946337e7d4fdcce0e49	f	oracle.png		\N	2024-06-27 10:31:34.42118+01	2024-06-27 10:31:34.42118+01	t	1	1	44	image/png
2	filer_public/a3/8a/a38a5299-9f27-4bc1-b3c9-d7497562966d/postgres.png	20484	e531d47a101ac609311432eae379d061b3dd8a4d	f	postgres.png		\N	2024-06-27 10:35:08.243494+01	2024-06-27 10:35:08.243494+01	t	1	1	44	image/png
3	filer_public/de/20/de208e02-fb1f-41fe-92f6-31d1d1de273a/django.png	12874	d7354b1e041afc4c76ffb9795f51ce451f408798	f	django.png		\N	2024-06-27 10:39:46.367487+01	2024-06-27 10:39:46.367487+01	t	1	1	44	image/png
5	filer_public/81/40/81400d46-6a50-4a3d-91df-918394af3be0/djangocms.png	16097	190a7101dcfb924f28fa9c5057980248ee9303c6	f	djangocms.png		\N	2024-06-27 10:47:08.373235+01	2024-06-27 10:47:08.373235+01	t	1	1	44	image/png
8	filer_public/11/c8/11c8dfbe-6c41-4639-8fc5-03343dde41e2/java.png	71060	cc9cf57f34144ed80366c837100c173f0a09ee8f	f	java.png		\N	2024-06-27 10:55:05.248312+01	2024-06-27 10:55:05.248312+01	t	1	1	44	image/png
10	filer_public/4b/3e/4b3ee1ee-69aa-4eb0-8991-440dc47f9e70/nodejs.png	14436	ed0679bfd85a4c8f98292f062e68941813df0d8c	f	nodejs.png		\N	2024-06-27 10:57:59.597713+01	2024-06-27 10:57:59.597713+01	t	1	1	44	image/png
11	filer_public/b0/82/b08240df-78ec-45f9-8e51-a8f1fca98117/git.png	73105	bcc22f3065fb30b42f4a6d296a2f493bc020f5d4	f	git.png		\N	2024-06-27 11:00:59.024226+01	2024-06-27 11:00:59.024226+01	t	1	1	44	image/png
12	filer_public/71/43/71434689-5d9f-428a-8043-64215a6608c5/proxmox.png	7320	5c13642ac90c701483d1111cbc093841487fa7b7	f	proxmox.png		\N	2024-06-27 11:08:44.130614+01	2024-06-27 11:08:44.130614+01	t	1	1	44	image/png
13	filer_public/54/5a/545ad43c-47e0-439b-8a52-f0e8cba6f4fc/hero_bg.jpg	274558	ccc8275cfaa3f675c2e8f57ccb870b0bbc949e26	f	hero_bg.jpg		\N	2024-06-27 11:24:27.872348+01	2024-06-27 11:24:27.872348+01	t	2	1	44	image/jpeg
14	filer_public/08/f0/08f0db6f-b294-4b86-ae36-f292c50aee10/handshake.jpg	615121	e50a117a02f07fbe4d4fac581ac7ab4bbe9e8d57	f	handshake.jpg		\N	2024-06-27 11:30:36.283757+01	2024-06-27 11:30:36.283757+01	t	2	1	44	image/jpeg
15	filer_public/39/0b/390b2104-de0b-495a-b8bd-7bd8de7a6ef4/avenue_bourguiba.jpg	387986	6705801ec623a9d52ebd111b245477b46dcaa27a	f	avenue_bourguiba.jpg		\N	2024-06-27 11:33:20.166595+01	2024-06-27 11:33:20.166595+01	t	2	1	44	image/jpeg
16	filer_public/f2/92/f292edce-2444-44a5-8084-a87bf5450e1b/coding.jpg	169864	36ec47bc3bd1f81281b05899bee89dc540efd308	f	coding.jpg		\N	2024-06-27 15:03:42.148873+01	2024-06-27 15:03:42.148873+01	t	2	1	44	image/jpeg
\.


--
-- TOC entry 5540 (class 0 OID 17258)
-- Dependencies: 291
-- Data for Name: filer_folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, owner_id, parent_id) FROM stdin;
1	Technologies	2024-06-27 10:31:23.566326+01	2024-06-27 10:31:23.566326+01	2024-06-27 10:31:23.566326+01	1	\N
2	Backgrounds	2024-06-27 11:24:22.142821+01	2024-06-27 11:24:22.142821+01	2024-06-27 11:24:22.142821+01	1	\N
\.


--
-- TOC entry 5542 (class 0 OID 17268)
-- Dependencies: 293
-- Data for Name: filer_folderpermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
\.


--
-- TOC entry 5543 (class 0 OID 17300)
-- Dependencies: 294
-- Data for Name: filer_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location, _transparent) FROM stdin;
1	1067	1600	2024-06-27 10:31:34.405554+01	\N	\N	\N	f	f		t
2	359	765	2024-06-27 10:35:08.243494+01	\N	\N	\N	f	f		t
3	960	1920	2024-06-27 10:39:46.367487+01	\N	\N	\N	f	f		t
5	208	780	2024-06-27 10:47:08.360245+01	\N	\N	\N	f	f		t
8	710	1518	2024-06-27 10:55:05.231218+01	\N	\N	\N	f	f		t
10	400	720	2024-06-27 10:57:59.587637+01	\N	\N	\N	f	f		t
11	1055	2500	2024-06-27 11:00:59.016694+01	\N	\N	\N	f	f		t
12	60	400	2024-06-27 11:08:44.11586+01	\N	\N	\N	f	f		t
13	1277	1920	2024-06-27 11:24:27.862241+01	\N	\N	\N	f	f		f
14	974	1920	2024-06-27 11:30:36.271271+01	\N	\N	\N	f	f		f
15	1054	1600	2024-06-27 11:33:20.15844+01	\N	\N	\N	f	f		f
16	853	1280	2024-06-27 15:03:42.148873+01	\N	\N	\N	f	f		f
\.


--
-- TOC entry 5545 (class 0 OID 17358)
-- Dependencies: 296
-- Data for Name: filer_thumbnailoption; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
\.


--
-- TOC entry 5547 (class 0 OID 17394)
-- Dependencies: 298
-- Data for Name: menus_cachekey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menus_cachekey (id, language, site, key) FROM stdin;
19	fr	1	cms_4.1.1_menu_nodes_fr_1_1_user:public
\.


--
-- TOC entry 5569 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 5570 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 5571 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 356, true);


--
-- TOC entry 5572 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 5573 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 5574 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 5575 (class 0 OID 0)
-- Dependencies: 302
-- Name: base_contactrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.base_contactrequest_id_seq', 1, false);


--
-- TOC entry 5576 (class 0 OID 0)
-- Dependencies: 306
-- Name: base_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.base_service_id_seq', 6, true);


--
-- TOC entry 5577 (class 0 OID 0)
-- Dependencies: 233
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 90, true);


--
-- TOC entry 5578 (class 0 OID 0)
-- Dependencies: 236
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);


--
-- TOC entry 5579 (class 0 OID 0)
-- Dependencies: 238
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);


--
-- TOC entry 5580 (class 0 OID 0)
-- Dependencies: 240
-- Name: cms_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_page_id_seq', 3, true);


--
-- TOC entry 5581 (class 0 OID 0)
-- Dependencies: 242
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);


--
-- TOC entry 5582 (class 0 OID 0)
-- Dependencies: 262
-- Name: cms_pageurl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_pageurl_id_seq', 3, true);


--
-- TOC entry 5583 (class 0 OID 0)
-- Dependencies: 246
-- Name: cms_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 16, true);


--
-- TOC entry 5584 (class 0 OID 0)
-- Dependencies: 249
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 1, true);


--
-- TOC entry 5585 (class 0 OID 0)
-- Dependencies: 251
-- Name: cms_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_title_id_seq', 6, true);


--
-- TOC entry 5586 (class 0 OID 0)
-- Dependencies: 257
-- Name: cms_treenode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_treenode_id_seq', 3, true);


--
-- TOC entry 5587 (class 0 OID 0)
-- Dependencies: 255
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, false);


--
-- TOC entry 5588 (class 0 OID 0)
-- Dependencies: 253
-- Name: cms_usersettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 1, true);


--
-- TOC entry 5589 (class 0 OID 0)
-- Dependencies: 260
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 64, true);


--
-- TOC entry 5590 (class 0 OID 0)
-- Dependencies: 219
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 94, true);


--
-- TOC entry 5591 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 125, true);


--
-- TOC entry 5592 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- TOC entry 5593 (class 0 OID 0)
-- Dependencies: 264
-- Name: djangocms_alias_alias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.djangocms_alias_alias_id_seq', 1, true);


--
-- TOC entry 5594 (class 0 OID 0)
-- Dependencies: 266
-- Name: djangocms_alias_aliascontent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.djangocms_alias_aliascontent_id_seq', 1, true);


--
-- TOC entry 5595 (class 0 OID 0)
-- Dependencies: 269
-- Name: djangocms_alias_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.djangocms_alias_category_id_seq', 1, true);


--
-- TOC entry 5596 (class 0 OID 0)
-- Dependencies: 271
-- Name: djangocms_alias_category_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.djangocms_alias_category_translation_id_seq', 1, true);


--
-- TOC entry 5597 (class 0 OID 0)
-- Dependencies: 276
-- Name: djangocms_versioning_statetracking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.djangocms_versioning_statetracking_id_seq', 10, true);


--
-- TOC entry 5598 (class 0 OID 0)
-- Dependencies: 274
-- Name: djangocms_versioning_version_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.djangocms_versioning_version_id_seq', 7, true);


--
-- TOC entry 5599 (class 0 OID 0)
-- Dependencies: 278
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 16, true);


--
-- TOC entry 5600 (class 0 OID 0)
-- Dependencies: 280
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 57, true);


--
-- TOC entry 5601 (class 0 OID 0)
-- Dependencies: 282
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- TOC entry 5602 (class 0 OID 0)
-- Dependencies: 284
-- Name: filer_clipboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, true);


--
-- TOC entry 5603 (class 0 OID 0)
-- Dependencies: 286
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);


--
-- TOC entry 5604 (class 0 OID 0)
-- Dependencies: 288
-- Name: filer_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_file_id_seq', 16, true);


--
-- TOC entry 5605 (class 0 OID 0)
-- Dependencies: 290
-- Name: filer_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_folder_id_seq', 2, true);


--
-- TOC entry 5606 (class 0 OID 0)
-- Dependencies: 292
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);


--
-- TOC entry 5607 (class 0 OID 0)
-- Dependencies: 295
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);


--
-- TOC entry 5608 (class 0 OID 0)
-- Dependencies: 297
-- Name: menus_cachekey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 19, true);


-- Completed on 2024-06-27 15:30:11

--
-- PostgreSQL database dump complete
--

