--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: vocab; Type: TABLE; Schema: public; Owner: ChrisSon
--

CREATE TABLE vocab (
    vocab_id integer NOT NULL,
    korean text NOT NULL,
    english text NOT NULL
);


ALTER TABLE vocab OWNER TO "ChrisSon";

--
-- Name: vocab_vocab_id_seq; Type: SEQUENCE; Schema: public; Owner: ChrisSon
--

CREATE SEQUENCE vocab_vocab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vocab_vocab_id_seq OWNER TO "ChrisSon";

--
-- Name: vocab_vocab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ChrisSon
--

ALTER SEQUENCE vocab_vocab_id_seq OWNED BY vocab.vocab_id;


--
-- Name: vocab_id; Type: DEFAULT; Schema: public; Owner: ChrisSon
--

ALTER TABLE ONLY vocab ALTER COLUMN vocab_id SET DEFAULT nextval('vocab_vocab_id_seq'::regclass);


--
-- Data for Name: vocab; Type: TABLE DATA; Schema: public; Owner: ChrisSon
--

COPY vocab (vocab_id, korean, english) FROM stdin;
1	것	A thing or  an object
2	하다	To do
3	있다	To be
4	수	way, method, Number
5	하다	To do
6	나	I
7	없다	Do not exist, absent
8	않다	To not do
9	사람	Person
10	우리	we, our
11	그	He, That
12	아니다	To not be
13	보다	To try
14	거	thing
15	보다	To see
16	같다	To be similar
17	주다	To give, to do for a person
18	대하다	Face, confront
19	가다	To go
20	년	Year
21	한	One, a single
22	말	words,speaking
23	일	Work
24	이	A person, This
25	말하다	Speak
26	위하다	To do for the sake of
27	그러나	However or  but still
28	오다	To come
29	알다	To know
30	씨	~ Mr.
31	그렇다	That is right or  yes.
32	크다	To be big, large
33	일	One day
34	사회	culture,society
35	많다	many, much
36	안	~ not ~ + VERB
37	좋다	To be good
38	더	More
39	받다	Receive
40	그것	That thing
41	집	House
42	나오다	Come out
43	그리고	And or  and then
44	문제	question,problem
45	그런	Such a
46	살다	To live
47	저	That
48	못하다	Be impossible
49	생각하다	To think
50	모르다	To not know
51	속	The inside
52	만들다	To make
53	데	Place, point, instance
54	앞	In front of, before
55	경우	A case or  an instance
56	중	The center, the middle
57	어떤	What kind of, what sort of
58	잘	Well
59	그녀	She
60	먹다	Eat, chow down on
61	자신	one’s own self, one\\’s own body
62	문화	culture
63	원	A unit of south korean  money, KRW
64	생각	Thought
65	어떻다	how,what.. do you think of
66	명	Person counter
67	통하다	Run, lead; flow; go through
68	그러다	and so, and then, well
69	그러다	and so, and then, well
70	소리	A sound,noise
71	다시	Again
72	다른	Different
73	이런	Such, like this
74	여자	woman,female
75	개	Unit or  piece
76	정도	grade,degree
77	다	All, everything
78	좀	A little
79	싶다	want,hope
80	보이다	see,catch sight of
81	가지다	To have or  take or  hold
82	함께	Together, with
83	아이	Child
84	지나다	pass,elapse,go on
85	많이	A lot
86	시간	Time
87	너	You
88	인간	A person, a human being
89	사실	The truth, a fact
90	나다	To be born
91	이렇다	Like this
92	어머니	Mom
93	눈	Eyes
94	뭐	Huh? (2) something
95	점	Store
96	의하다	To be due to, owing to
97	시대	An age,period
98	다음	Next
99	이러하다	Be this way, be like follows
100	누구	Who
101	곳	Place
102	여러	many,various
103	안	Inside
104	하나	One
105	세계	World
106	버리다	(following a verb) the verb\\’s action is over, perhaps in a sad way
107	위	The upper part, above
108	운동	Motion, movement
109	퍼센트	Percent
110	학교	School
111	자기	Oneself, number one, numerouno, self
112	가장	Most
113	대통령	The president
114	가지	One of the kind or  a sort
115	시작하다	To start,begin
116	바로	Right, correctly
117	어느	Some, a certain
118	그래서	And so accordingly
119	무엇	That thing,whatever
120	정부	Government
121	모든	Every one
122	번	Number, how many times
123	그거	That thing
124	돈	Money
125	국가	A state or  a nation
126	그런데	But or  however
127	날	Day
128	여기	A hobby
129	모두	Everybody
130	여성	Female
131	친구	A friend
132	마음	Heart
133	후	After
134	놓다	Put, place
135	관계	Connection or  relation
136	아버지	Father
137	남자	Boy
138	어디	Where?
139	몸	body,physique
140	얼굴	Face
141	왜	Why?
142	나타나다	Come out, appear
143	지역	An area, region
144	다르다	Be different
145	모습	shape,body
146	물	Water
147	만나다	Meet
148	내다	produce something
149	보이다	show,let see
150	쓰다	To write
151	이것	This thing
152	없이	Without
153	이번	This time
154	길	Road
155	생활	lifestyle,livelihood
156	쓰다	Take (medicine)
157	뿐	only,alone,merely
158	사이	space between 2 points; the relationship between 2 people
159	방법	Way, method
160	새롭다	To be new,novel
161	내다	to see through, to make it through sth
162	앉다	To sit down
163	처음	First
164	손	The hand
165	몇	A few
166	그때	Then or  at that time
167	과정	Process or  course
168	삶	Life
169	갖다	To hold
170	찾다	seek,look for
171	특히	Especially
172	시	Time
173	이상	More than, above
174	지금	Now
175	나가다	To go out
176	이야기	Conversation, talk
177	교육	Education
178	사다	To buy, purchase
179	경제	Economy
180	아직	Still
181	잡다	seize,catch
182	같이	Together
183	선생님	Teacher
184	예술	Art, an art
185	서다	To stand
186	못	Cannot
187	역사	History
188	읽다	To read
189	결과	Result
190	내용	Contents
191	물론	Of course
192	책	A book
193	일어나다	To rise, get up
194	당신	Formal you
195	시장	market,fair
196	넣다	Put in, set in
197	중요하다	To be important,weighty
198	무슨	What, what kind of
199	느끼다	To feel
200	어렵다	To be hard, difficult
201	힘	Power
202	너무	Too much
203	나라	A country
204	부르다	To call
205	의미	A meaning, a sense
206	자리	seat,spot
207	밝히다	To light up
208	죽다	die,pass away
209	이미	Already
210	쪽	Way, direction
211	정치	Politics
212	국민	The people or  a nationality
213	생명	Life
214	얘기	Story
215	학생	Student
216	연구	Research
217	엄마	Mamma
218	이름	Name
219	하나	One
220	내리다	Descend
221	사건	An event,incident
222	및	As well as
223	쉽다	To be easy
224	짓다	To make, build ; to form a line (a group)
225	이유	Reason
226	필요하다	To need
227	글	words, a verse
228	생기다	arise,occur,happen
229	사용하다	To use
230	남편	Husband
231	밖	The outside
232	세상	The world,society
233	작다	Small
234	타다	Ride (bus)
235	대학	University
236	작품	A work of art
237	상황	State of things
238	가운데	In the middle
239	보내다	Send
240	즉	namely,that is to say
241	상태	condition,state
242	이후	After that
243	당시	At that time
244	문학	Literature
245	더욱	More and more
246	아주	Extremely
247	지방	A locality, district
248	밤	Night
249	높다	High
250	최근	Recently
251	채	As it is, no change
252	현실	Actuality, reality
253	환경	Environment
254	컴퓨터	Computer
255	먼저	First
256	다니다	Go to and from a aplace
257	얼마나	How many, how much
258	자체	one’s own body
259	열다	Open
260	머리	Head
261	묻다	to Ask
262	남다	Remain, be left over
263	부분	part,portion
264	기업	An enterprise or business
265	변화	Change, transformation
266	아들	son,baby
267	아	Oh dear
268	선거	An election
269	관하다	Refer to or  be about
270	분	Minutes
271	그냥	Just because or  in that condition
272	나누다	To divide
273	이용하다	To use, make use of
274	거의	Almost or  nearly
275	곧	Soon
276	중심	The nucleus, the focus, the heart
277	활동	Activity
278	오늘	Today
279	서로	mutually,one another
280	관심	Concern or  interest
281	역시	As expected, likewise
282	이거	This thing
283	애	A baby, or a slightly derogative word for person
284	광고	Advertisement
285	나다	To come out, grow, spring up
286	방	A room
287	정신	mind,spirit
288	이르다	To reach, arrive, get at
289	이루다	Accomplish, complete
290	아침	Morning
291	웃다	To laugh, smile
292	현상	The present situation, state
293	기술	Art or  technique or  ability
294	전체	The whole, the entire section
295	그래	So or  yes or  that’s right
296	얻다	Get, obtain
297	아름답다	To be beautiful
298	끝	The end
299	민족	race,nation,people
300	간	The interval between
301	조사	investigation,inquiry
302	듯	To be like something
303	입	Mouth
304	뭐	Huh? (2) something
305	그대로	Like that
306	영화	A movie
307	필요	Need, requirement,necessity
308	줄	way,method
309	하늘	The sky
310	년대	Year
311	과학	Science
312	자연	Nature
313	정말	Really
314	구조	Construction or  structure
315	결국	After all or  in the end
316	밥	Rice, a meal
317	입다	To wear
318	오히려	Rather,preferably
319	프로그램	Program
320	네	Yes
321	이루어지다	Get accomplished, achieved
322	남	Others, other people
323	하루	A day
324	그림	A picture
325	적	The time,the occasion,when
326	터	one’s status, one’s lot
327	마시다	To drink
328	치다	to attack, assault
329	혼자	Alone
330	나가다	To advance, proceed, go forward
331	이제	Now
332	교수	Teaching or  instruction
333	술	Alcohol
334	사랑	Love
335	전화	Telephone
336	끝나다	To draw to a close or  to end
337	맞다	Be right, correct; to match, be fitting for
338	아빠	Dad
339	걸리다	To be hung up or  suspended
340	지키다	Protect, maintain
341	한번	Once
342	커피	Coffee
343	가슴	Chest
344	길다	To be long
345	바라보다	Look at, watch ; to look forward to, hope for
346	알아보다	To investigate, examine, search
347	맛	Flavor
348	대부분	Most
349	산업	Industry
350	매우	Very
351	오르다	Go up, climb, ascend
352	음식	Food
353	표정	Facial expression, look
354	꼭	For sure
355	일부	A part, a portion
356	요즘	Recently, nowadays
357	계획	A plan or  a project
358	느낌	Touch, feel
359	얼마	How many, how much
360	고개	The nape of the neck
361	성격	Personality ; character, nature
362	계속	Continuously
363	세기	Century
364	세우다	Stand up, erect
365	아내	Wife
366	가족	Family
367	현재	The present time, now, at present
368	세	Three
369	발전	Development
370	차	A vehicle, train/auto car
371	놀다	Play, amuse oneself
372	향하다	To face, look out on
373	관련	Relation or  connection or  reference
374	형태	Form, shape
375	각	Each or  every
376	도시	City
377	작업	Work
378	분위기	atmosphere,surroundings
379	그러하다	To be so or  right
380	나이	Age
381	우선	First of all, before everything
382	믿다	Believe
383	바꾸다	change,exchange
384	낳다	To give birth
385	바	A thing, what
386	정보	information,intelligence
387	열리다	Open, be opened, be unlocked
388	좋아하다	To like, be fond of
389	그리다	Picture or  draw a picture
390	만큼	Of that amount
391	배우다	To learn
392	시	Poetry, lines of verse
393	역할	A part, a role
394	옆	Next to
395	행동	Action, behavior
396	어	Oh, well, why
397	국내	Inside the country
398	비하다	Compare to
399	기관	An engine or  a machine
400	입장	A position, situation
401	만하다	Be of the extent of
402	예	Example
403	아래	The bottom, the lower part
404	방식	A form, method, process
405	영향	Influence, consequences
406	그럼	Certainly or  of course.
407	나서다	Come out, come forth
408	흐르다	Flow, stream
409	저	Uh, well,  …
410	깊다	Deep
411	배	A boat (boating)
412	내	Inside
413	모양	A shape, form
414	산	A mountain
415	새	New
416	하지만	But, nevertheless
417	조건	condition,stipulation
418	문	Door
419	꽃	Flower
420	단계	A step, phase
421	올리다	Raise, lift up
422	그동안	During that time
423	교사	Instructor
424	갑자기	Suddenly
425	넘다	Cross or go across
426	지니다	Carry with, hold, possess
427	바람	Wind
428	잘하다	To do well
429	마을	Town
568	시험	A test
430	어리다	To be very young, juvenile
431	대표	Representative
432	가능성	Possibility
433	방향	Direction
434	대회	A great meeting
435	목소리	Voice
436	노래	Song
437	바다	Sea
438	힘들다	To be hard, difficult
439	공부	Study
440	움직이다	To move, stir
441	의원	A member
442	노력	Effort
443	전혀	entirely,utterly,completely
444	언니	Older sister
445	단체	A corps, a group
446	분	One part
447	알려지다	To become known
448	가능하다	To be possible
449	능력	Ability, capability, how much and how well
450	주장하다	To assert,maintain
451	자식	one’s children
452	불	Fire
453	주민	inhabitants,dwellers
454	모으다	gather,get together
455	자료	materials,data
456	존재	Existence
457	학년	A school year
458	신문	A newspaper
459	가지다	Entertain or  hold or  have
460	이해하다	To understand
461	제품	Manufactured goods
462	분야	Field
463	선생	Teacher
464	사업	Business
465	행위	An act, deed, behavior
466	수준	Level
467	지난해	Last year
468	표현	Verbal expression, representation, manifestation
469	기분	Mood
470	대	Era, period
471	젊다	To be young,youthful
472	옷	Clothes
473	기능	Function or  functionality
474	순간	A moment,a second
475	전쟁	War
476	전	Before
477	꿈	A Dream
478	할머니	Grandmother
479	회의	A meeting, a conference
480	방송	Broadcast
481	이야기하다	To talk
482	나무	Tree
483	자다	To sleep
484	연극	drama,a play
485	마찬가지	The same
486	걷다	To walk
487	노동	Labor, work
488	이때	At this time, moment
489	과거	The past
490	가치	Price
491	시간	a Length of time (한시간 동안)
492	집단	A group, a collective body
493	현대	The present age, times
494	살펴보다	Watch closely
495	장관	A government cabinet minister
496	차이	difference,disparity
497	풀다	Untie, loosen ; to melt into
498	시절	season,time,occasion
499	물건	A thing
500	직접	Directly
501	개인	Private or  individual
502	근데	But or  however
503	발	Foot
504	작가	writer,author
505	효과	Effect, effectiveness
506	불교	Buddhism
507	끌다	Pull
508	대로	Like, according to
509	빨리	Quickly
510	시작되다	To begin,start
511	말다	Cease
512	설명하다	To explain
513	우주	The universe
514	시기	An opportunity,chance
515	마치	As though, as if
516	살	Years old
517	생산	1) production 2)birth
518	바라다	Wish, hope
519	강하다	To be strong or  powerful
520	경험	Experience or  undergo or  suffer
521	음악	Music
522	최고	The best
523	나타내다	Show, display
524	아프다	To hurt
525	적다	To be small, few in number
526	비	Rain
527	고향	Hometown
528	놀라다	Be surprised
529	다양하다	To be various, diverse
530	울다	To cry, weep
531	농민	A farmer
532	은행	A bank
533	지내다	To pass, spend time
534	결혼	Marriage
535	법	A law, the law
536	소설	A novel, fiction story
537	예	Yes, certainly, right
538	오후	The afternoon
539	질서	Order, system
540	담다	Put in a bottle
541	모이다	Meet, assemble
542	시민	Residents of a city
543	회장	Chariman, the president
544	빠르다	Be fast, quick
545	스스로	On its own, of its own free will
546	아기	baby,infant
547	아저씨	Sir, calling an unknown male
548	옛날	Ancient times, antiquity
549	이날	Today, this day
550	제대로	As properly is suitable
551	달	The moon
552	던지다	To throw
553	참	really,truly
554	공간	Space or  room
555	이곳	This place, here
556	마지막	Last, final
557	벌이다	(1) to plan to start a job/project (2) to play a table game
558	병원	Hospital
559	자세	Position, posture
560	강조하다	Place empasis upon
561	경찰	The police
562	맡다	Take charge of
563	저녁	Evening
564	한편	One side, one way
565	그러면	If so or  if that is the case
566	기자	A journalist
567	넓다	Broad
569	잠	Sleep
570	주로	principally,mainly
571	훨씬	By far, very much so
572	면	Side
573	통일	Unification
574	건강	Health
575	가깝다	Close
576	건물	Building
577	시설	establishment,institution
578	외국	A foreign country
579	밑	The bottom
580	어른	A man, an adult
581	주변	A circumference
582	대신	Instead of
583	원인	A cause,a factor
584	팔다	To sell
585	차례	(1) order,precedence  (2) one time, one round
586	군	An army
587	열심히	Enthusiastically,with zeal
588	일하다	To work, labor
589	재산	property,fortune, assets, possessions
590	팀	Team
591	부모	Parents
592	약간	Somewhat
593	언어	language,speech
594	요구하다	To demand,claim,request
595	올라가다	To go up, ascend
596	첫	First
597	감독	The director
598	그날	That day or  that same day
599	사실	Actually, really
600	자주	Always, constantly
601	당하다	Have, encounter
602	삼다	Make a thing of
603	약	About, approximately
604	기간	A period or  a time or
605	담배	Tobacco
606	일으키다	Riase, get up; start, commence
607	일단	Temporarily
608	할아버지	Grandfather
609	조직	Organization (composition, structure)
610	태어나다	To be born, see the light of day
611	공장	Construction site
612	벌써	Already
613	즐기다	Enjoy oneself,take pleasure,delight
614	지	since,from
615	환자	A patient
616	변하다	Change
617	사고	An accident
618	그래도	All the same
619	아무리	However much
620	맞추다	Adjust, adapt
621	쌀	Uncooked rice
622	일반	universal,common,usual
623	재미있다	interesting,fun
624	가르치다	To teach
625	대화	Conversation
626	막다	Stop, obstruct
627	올해	This year
628	형	An elder brother
629	달리	Differently
630	버리다	Throw away
631	붙이다	affix,put on
632	인물	A man, a person
633	늘	Always
634	모두	everything
635	전국	The whole country
636	마치다	Finish, complete
637	전	all,every
638	다만	Only, merely
639	도움	Help
640	가정	Famly
641	걸다	Hang up or  suspend
642	빠지다	To fall into
643	멀다	To be far
644	버스	Bus
645	오늘날	These days, nowadays
646	잠시	For a little while
647	농업	Agriculture
648	대다	Put, place up to
649	식	form,style
650	의견	An opinion,a suggestion
651	무대	Stage
652	사진	Picture
653	주장	assertion,insistance
654	표현하다	To express, make known by saying
655	인하다	To be due to, caused by
656	이상하다	To be strange,queer
657	제일	The first
658	붙다	Stick, adhere to
659	아마	Probably
660	얘기하다	To tell a story
661	잇다	Join, connect
662	조금	A little
663	경기	Race or  match or  contest
664	목적	goal,purpose
665	태도	attitude,comportment
666	남성	Male
667	주위	The circumference,the girth
668	대책	Countermeasure
669	그만	That much or  a little amount
670	발생하다	Originate, come from
671	다리	Leg
672	아무	anybody,everybody
673	어쩌다	By chance, accident
674	재료	stuff,material
675	각각	Each and every
676	결코	Never or  by no means
677	옮기다	Move, transfer (2)(sickness) communicate, transfer to
678	항상	Always
679	해	A year
680	잃다	To lose, to miss, to be deprived
681	자유	Freedom
682	책임	Responsibility
683	바뀌다	Be changed
684	비슷하다	To resemble
685	심하다	To be extreme,intense
686	경쟁	Competition or  rivalry
687	사랑하다	To love
688	아니	No!
689	여름	summer,summertime
690	자라다	To grow up
691	회	A time, an inning, a round in a game
692	구체적	Concretely
693	기회	An opportunity
694	실시하다	To enforce,put into effect
695	지구	The earth
696	번째	How many times
697	소비자	A consumer
698	싫다	To not like, to hate
699	규모	Scale or  scope or  structure
700	기준	A standard or basis
701	말	End
702	반드시	Most certainly
703	셈	An intention,design,purpose
704	갖추다	Make or  get ready or  prepare
705	그러니까	And so it is that
706	받아들이다	Accept
707	값	Price
708	현장	on site, on location, at the site in question
709	건설	Construction
710	꺼내다	To get out or  draw out
711	노동자	Laborer, worker
712	언제나	everytime,always
713	완전히	completely,perfectly
714	자동차	Car
715	전하다	To transmit,convey
716	존재하다	To exist
717	개월	Each and every month
718	맞다	receive,welcome (note, usually this is 맞히다)
719	별로	Especially, particularly
720	어린이	A youngster, a child
721	정하다	To set,determine
722	한마디	One word
723	유지하다	To preserve, maintain
724	이데올로기	Ideology
725	공부하다	To study
726	대중	The masses
727	늘어나다	Grow longer
728	닦다	Wipe clean, polish
729	만	As many as, full, complete
730	말씀	Speech
731	괜찮다	To be okay
732	눈물	A tear
733	각종	All sorts or  varieties
734	빛	Light
735	아니	Not
736	피하다	avoid,keep away
737	거치다	Pass or  go through
738	나아가다	Advance, go forward
739	야	(Word to get somebody’s attention) Hey!! (2) impolite speech for 이다, to be
740	지식	Knowledge, information
741	여전히	As it used to be, as before ; still, persistently, even still
742	주인	The head of a family,the owner
743	발견하다	To discover
744	선	A line, a route
745	인류	The human race
746	특징	A special feature, a distinguishing feature
747	선수	An athlete
748	형식	A form, formality, mold
749	마련하다	To plan, arrange
750	반	Half
751	발표하다	To announce
752	주제	Subject, theme, topic
753	걸치다	1) put a thing over or across 2) to range from A to B
754	겪다	Experience or  undergo or  suffer
755	관점	A point of view or a standpoint/outlook
756	귀	Ear
757	기본	A foundation
758	미터	Meter
759	사라지다	To disappear
760	어떠하다	To be how
761	감정	Feelings
762	기억	A memory
763	놈	A fellow
764	인기	Popularity
765	배	Abdomen
766	아파트	Apartment
767	가끔	Sometimes
768	구성	Organization or  constitution , the framework of something
769	술	Spoonful
770	실제로	In reality
771	짧다	Short, brief
772	고맙다	To thank
773	관리	Management or  administration
774	그곳	That place
775	보다	More than, greater than ….
776	비롯하다	begin,start
777	과연	Just as one thought
778	달리다	run, make do fast
779	바쁘다	Busy
780	이전	Former days/times
781	인정하다	To acknowledge,authorize
782	자	A person
783	중앙	The middle and the heart
784	나쁘다	To be bad
785	불구하다	Deformity, malformation
786	시키다	To make
787	게임	Game
788	국제	International
789	그룹	Group
790	인생	Life
791	전통	tradition,convention
792	기르다	Educate or  train or  cultivate
793	잔	A cup, wine glass
794	조사하다	To examine,investigate
795	커다랗다	To be very big/large
796	있다	To be
797	시인	A poet
798	언제	when,at what time
799	외	Except, save for
800	평가	Evaluation, appraisal
801	내려오다	Come down
802	위치	A position, a location
803	줄이다	reduce,decrease
804	가격	Price
805	달라지다	To change, vary
806	비다	To be empty, vacant
807	삼국	Three countries
808	손님	Customer
809	원하다	To want
810	통신	communications,correspondance
811	확인하다	To confirm,corroborate
812	모임	A group, a party
813	수	The number of sth
814	웃음	Laughter, a smile
815	기계	An instrument or  a machine
816	모양	signs,indications
817	물질	matter,material
818	아나운서	Announcer
819	뉴스	News
820	살아가다	Lead a life, get along
821	펴다	Spread out, unfold
822	배	Times, x-fold
823	수업	school,teaching
824	겨울	Winter
825	종교	religion,a faith
826	층	floor,grade,class
827	자연스럽다	To be natural
828	장	One piece of sth flat
829	식사	A meal
830	안다	To hold, embrace
831	이해	Understanding
832	잊다	To forget
833	제시하다	To present
834	반	Group, company, party
835	불과하다	Nothing more than
836	혹은	If that’s not the case
837	엄청나다	To be absurd,wild,terribly large
838	편	Direction, way (the wind is blowing that ~)
839	텔레비전	Television
840	파악하다	Grasp, seize, understand
841	편	Compilation, editing
842	실천	Practice
843	노력하다	To try hard, strive
844	보호	protection,shelter
845	씻다	To wash,cleanse
846	늦다	To be late (time)
847	이웃	The neighborhood
848	편지	Letter
849	공동	Association or  union or  collaboration
850	까닭	Reason
851	방안	A plan, scheme
852	센티미터	Centimeter
853	팔	An arm
854	분명하다	To be clear/obvious
855	분석	Analysis
856	소녀	A young girl
857	지나가다	To pass, elapse
858	차	order,sequence,degree
859	상품	Product
860	설명	Explanation
861	훌륭하다	To be excellent
862	관계자	The interested or affected parties
863	새로	newly,anew
864	세	Age in years
865	이어지다	Get joined, be connected
866	티브이	TV
867	봄	Spring
868	종류	kind,sort,species
869	낮다	Be low
870	어깨	Shoulder
871	부부	Man and wife
872	오래	Long, for a long time
873	요구	A demand, claim, request
874	키우다	To raise, bring up, rear
875	눕다	Lie down
876	발전하다	To develop, grow
877	여행	Trip
878	죽음	Death
879	고통	Suffering or  agony
880	공	Ball
881	어울리다	To be becoming, suiting
882	오월	May
883	쉬다	to relax, take a break
884	알리다	To inform, tell a person
885	차다	To be full, to be filled with (PASSIVE)
886	과	A lesson or  a section or  a department
887	멀리	Far away
888	빼다	Pull out, extract
889	예정	A program, schedule
890	오빠	Older brother
891	즐겁다	Be pleasant,agreeable
892	한계	Boundary, limits
893	흔히	Generally, commonly ; often
894	바탕	Natural disposition ; to go all out in a fight, 아주 크게 싸우다 ; the background
895	사월	April
896	싸우다	To fight
897	예쁘다	Pretty, lovely
898	갈등	Conflict or  troubles
899	느껴지다	Feel
900	의지	will,volition
901	전문	A specialty
902	정확하다	To be exact
903	초기	The early days, the initial period
904	나중	The last, the latter part
905	맛있다	Delicious
906	며칠	How many days
907	쓴 맛	see 6000
908	찾아오다	To go meet somebody, to go get sth
909	미	beauty,grace
910	사용	use,emply
911	시선	one’s line of vision
912	아무런	No sort of
913	언론	A speech, discussion
914	투자	Investment
915	지원	helping, supporting, aiding
916	결정하다	To decide
917	경영	Management or  administration
918	목표	goal,object
919	성장	Growth
920	숲	Forest
921	없어지다	To lose, get lost
922	작년	Last year
923	내려가다	To go down
924	미치다	To reach
925	새벽	dawn,daybreak
926	쓰레기	Garbage
927	얼른	Fast, quickly, rapidly
928	임금	Wages, pay
929	피해	Damage
930	한	A limit
931	무섭다	fearful,dreadful
932	직장	one’s work place
933	참다	Bear, endure
934	크기	Size, dimensions
935	고기	Meat
936	남기다	To leave behind
937	서양	The Western countries
938	주요	The major, the chief thing
939	가져오다	To bring or  get
940	냄새	Smell
941	부드럽다	soft,tender
942	여기다	Think, consider as
943	이	this,this thing
944	공연	A public performance
945	남녀	Man and woman
946	내놓다	Put out, take out
947	만들어지다	Make, create
948	속도	Speed
949	심각하다	seriousness,gravity
950	준비	Preparation
951	계속되다	To continue
952	구월	September
953	맑다	clean,pure
954	소년	A boy
955	소식	News, information
956	유월	June
957	작용	Application
958	허리	The waist, the small of the back
959	골	Goal
960	공업	The industry or  manufacturing industry
961	그중	Among the rest of them
962	노인	Old person
963	벌다	To earn (money) ; (2) to invite, to bring onto oneself
964	살리다	1) revive, bring around, restore to life  2) save,spare,rescue
965	새	A bird
966	영어	The english language
967	출신	A native, place one is from
968	결정	A decision or  determination
969	경향	Tendency or  trend
970	기록	A record or  a document
971	나름	Depending on
972	대답하다	To answer, reply
973	반면	One side
974	썰다	Chip, mince,dice
975	움직임	movement,motion,activity
976	이미지	Image
977	터지다	Break, be torn, get away from
978	특성	A special/unique characteristic (individuality making, peculiarity)
979	교장	Principal
980	벗다	Take off, remove
981	업무	Buisness, duty
982	입시	An entrance examination
983	준비하다	To prepare
984	청소년	Young boys and girls, teenagers
985	응	Yes, i see!
986	이기다	To win
987	찾아보다	To go meet somebody
988	취하다	To adopt, assume, take
989	다루다	Treat, deal with
990	달	The moon
991	사장	Company boss
992	삼월	March
993	그렇지만	But or  however
994	선배	one’s senior
995	업체	A business enterprise
996	키	stature,height
997	구하다	1) To buy or  purchase or  2) look for or  seek or  want
998	국회	The National Assembly
999	그러므로	So or  hence or  therefore
1000	포함하다	To include,contain
1001	걱정	Worry
1002	결혼하다	Get married
1003	만약	If
1004	바르다	Be straight; be honest
1005	세월	The times, things
1006	숨	A breath
1007	행사	An event, a function
1008	깨닫다	to realize sth
1009	누나	Older sister
1010	신	God
1011	왕	King
1012	점점	More and more, by degrees
1013	질문	A question, a query
1014	특별	Be special, extraordinary
1015	판단	A judgment, a conclusion
1016	해결하다	To fix a problem, solve a question
1017	거리	Distance
1018	계속하다	To continue
1019	그치다	Stop or  cease or  halt
1020	근처	Nearby or  the vicinity
1021	너무나	Extremely
1022	높이다	Raise, elevate
1023	부정	injustice,wrongfulness
1024	사정	Circumstances
1025	도대체	In the world, on earth
1026	막	Carelessly, at random
1027	부모님	Parents
1028	수출	Exporting sth
1029	계시다	(someone esteemed) to stay or  be located
1030	그	That
1031	자르다	cut,chop
1032	데리다	Be accompanied by
1033	마리	Number of animals
1034	무척	Extremely
1035	비용	Expense
1036	비행기	An airplane
1037	옳다	To be right, correct
1038	원래	originally,primarily
1039	처리	handling,treatment
1040	최초	In the very first, in the beginning
1041	꼴	Shape or  form or  appearance
1042	놀이	Play, game
1043	뿌리	A root
1044	수입	Importing sth
1045	초	Initial, in the beginning, first
1046	그리하여	And then or  and so or  and now
1047	낮	Daytime
1048	일찍	Early
1049	직원	Staff
1050	찍다	Stamp with a dojang
1051	가볍다	Light
1052	내부	The inside
1053	다소	1) Large and small, 2) more or less
1054	상대	counterpart,companion,rival
1055	오전	Morning
1056	피부	Skin
1057	가게	Store
1058	가득	Full
1059	그저	1) still or  all the time  2) easily or  with no effort
1060	도	Degrees (temperature)
1061	벽	A wall
1062	장군	A general
1063	무역	Trade
1064	부담	A burden,responsibility
1065	약속	A promise
1066	인사	Greetings
1067	줄	Line, row, chord
1068	쳐다보다	To look up at
1069	충분히	Enough, sufficiently
1070	신체	The body
1071	에너지	Energy
1072	위원	A member of a committee
1073	정리하다	To adjust
1074	집안	Inside the house
1075	배경	Background
1076	죽이다	To kill
1077	단순하다	Be simple-minded
1078	반대	Opposite and being opposed to (objecting to)
1079	법칙	A law, a rule
1080	빠지다	To indulge in, be addicted to
1081	소금	Salt
1082	오염	Contamination, pollution
1083	자전거	Bicycle
1084	참여하다	To participate in, take part in
1085	탓	fault,blame
1086	푸르다	To be blue, to be green
1087	걔	Child
1088	그래	Yes or  that’s right
1089	목	The neck
1090	발표	Announcement
1091	범죄	A crime
1092	위	Position, grade, rank
1093	흔들다	Shake, sway
1094	기초	The foundation
1095	논리	Logic
1096	뽑다	Pull out, draw
1097	피우다	To make, build, kindle
1098	감각	Sense or  sensation or  feeling
1099	미리	Beforehand
1100	부족하다	Be short of, lack
1101	저희	We
1102	진행되다	To have progressed, be advanced
1103	교통	Traffic or  transportation
1104	기구	Structure or  framework
1105	법	A way, a method
1106	오랜	For a long time
1107	젊은이	Young person
1108	후보	candidature,candidacy
1109	거리	A road or  street
1110	과제	A subject or  a thesis or  homework; an exercise/a problem
1111	근거	Basis or  foundation
1112	기록하다	To record and write down
1113	다가오다	Approach
1114	불다	Blow
1115	시각	angle/point of view.  관점.
1116	이끌다	To guide,lead
1117	종합	Synthesis
1118	한글	Korean writing system
1119	가을	Autumn or  fall
1120	개발하다	Develop or  exploit or  open up to development
1121	내일	Tomorrow
1122	매일	Every day
1123	손가락	a finger
1124	수단	means,way
1125	자	Well!!
1126	자유롭다	To be free
1127	적극적	Positively
1128	판매	Sale, selling
1129	형성	Formation
1130	기울이다	Tip or  slant or  incline
1131	길이	Length or  extent
1132	장면	A scene, situation
1133	점차	gradually,in steps
1134	톤	A ton
1135	관련되다	Be connected or  related to
1136	급	Class or  grade or  rank
1137	나머지	The rest, the remainder ; as a result of the excess of, as a result
1138	날씨	Weather
1139	더불다	Join in, do together
1140	의사	A doctor, a physician
1141	개방	Open or  throw open
1142	건강하다	To be healthy
1143	미래	Future
1144	앞서	Before, previously 2) in anticipation,beforehand
1145	여러분	You (plural, to address a group at speech time)
1146	왜냐하면	Because
1147	인구	Population
1148	기대하다	To expect or look forward to
1149	네	You
1150	도착하다	To arrive
1151	병	Sickness
1152	소프트웨어	Software
1153	흘리다	spill,shed (tears,blood)
1154	반응	Reaction
1155	주인공	The head of a family, the hero/heroine
1156	당연하다	Be natural, be no wonder
1157	비판	criticism,a comment
1158	빌리다	To lend
1159	세대	Generation
1160	축구	Football
1161	형님	The respectful, proper way a man refers to an older friend
1162	놓이다	Be put on sth else (2) to become peaceful
1163	당장	On the spot, immediately
1164	무렵	The time when
1165	밝다	To be promising
1166	사물	objects,things
1167	일반적	Universal, general
1168	장소	Place
1169	곱다	Beautiful
1170	바닥	Floor
1171	새끼	Baby animal
1172	생각되다	To come to think sth
1173	서비스	Service
1174	선택하다	To choose
1175	심다	plant,sow (a tree)
1176	적다	Write down
1177	코	The nose
1178	간단하다	To be simple
1179	고등학교	A senior high school
1180	공개	opening to the public, making public
1181	교실	Classroom
1182	스스로	By oneself, do it alone
1183	견디다	Endure or  bear
1184	기사	An article or  an account
1185	막히다	Be stopped up
1186	매체	A medium,medias
1187	별	A star
1188	복잡하다	Be complicated
1189	뿌리다	sprinkle,scatter
1190	영역	Territory
1191	체험	An experience
1192	구속	To arrest or  put in detention
1193	어쩌면	(1) it is possible that 아마도 2) how on earth, how the hell
1194	극복하다	To overcome or  surmount
1195	불법	Illegal
1196	비밀	A secret
1197	색	Color
1198	쓰이다	To be used, to be utilized/employed
1199	일정하다	To be regular, established, uniform ; changeless, constant, certain, definite ; invariable (mathematics)
1200	다지다	Make sure, to harden oneself, firm up one\\\\`s will
1201	아까	A little while ago
1202	알맞다	To fit, be fitting, suitable
1203	이념	An idea, a doctrine, ideology
1204	희다	White, fair
1205	가리키다	Point to or  indicate
1206	모시다	Attend on
1207	발달	Development, growth
1208	수많다	Many and many
1209	치르다	Pay off, pay one’s bill
1210	평화	Peace
1211	공사	Construction work or  engineering work
1212	박사	Doctor
1213	성	a sex (male or female), a sexual gender
1214	전문가	A specialist
1215	단지	Simple, merely
1216	말씀하다	Speak
1217	무용	dancing,a dance
1218	불리다	To be called
1219	싸움	A fight
1220	자꾸	Constantly, repeatedly
1221	차리다	Make ready,prepare
1222	해외	Abroad, foreign countries
1223	그리	So or  to that extent
1224	문화재	Cultural assets
1225	미소	Smile
1226	보통	The normal
1227	식당	Restaurant
1228	의미하다	To mean, signify
1229	이래	Since, after that, hereafter
1230	체육	Physical education
1231	구성되다	To be organized
1232	독특하다	Unique, characteristic, distinctive, peculiar, specific
1233	사례	thanks,gratitude
1234	소개하다	To introduce,present
1235	잘되다	To turn out well
1236	추진하다	To propel, drive forward
1237	칠월	Month of July
1238	틀	A frame, framework; mold
1239	평균	Average
1240	훈련	Training
1241	흐름	Flowing, a stream/current
1242	십이월	December
1243	쌓이다	Be piled/heaped up
1244	이익	Profit
1245	쥐다	To hold,seize
1246	컵	Cup
1247	게다가	In addition
1248	끓이다	Boil or  heat or  make hot
1249	논문	Dissertations , an academic paper (these are 2 separate meanings)
1250	멈추다	Stop
1251	사용되다	Be used, be employed
1252	오랫동안	For a long time
1253	위기	A crisis,an emergency situation
1254	정당	A political party
1255	종이	Paper
1256	찾아가다	To go to a place to meet somebody
1257	폭력	voilent,brute force
1258	혹시	Sometimes
1259	늘다	Increase, gain
1260	양	quantity,volume
1261	절차	process,formalities; 수속
1262	계시다	(honorofic) to stay or  reside
1263	공기	Air
1264	닿다	To reach, get to
1265	속하다	Belong to, be affiliated with
1266	올림픽	Olympic
1267	이외	Except, apart from
1268	재미	amusement,enjoyment
1269	제공하다	offer,proffer
1270	증가하다	increase,rise,grow
1271	기대	Expectation
1272	식물	food,provisions
1273	옛	Old, ancient
1274	외치다	To shout, scream
1275	적어도	At the least
1276	편하다	Untroubled from cares
1277	평	a Pyeong, a square area about 2 square meters
1278	권리	A right or  a claim to
1279	끝내다	To end
1280	대답	An answer
1281	시작	The beginning
1282	어려움	difficulty, hardship
1283	일주일	One whole day
1284	자원	Resources
1285	춤	Dance
1286	넘기다	Pass over, send across
1287	물체	A material body
1288	분명히	Obviously
1289	시위	A demonstration
1290	아무것	Anything
1291	온	All, whole, entire
1292	젖다	To be wet, soaked
1293	제외하다	To exclude
1294	최대	The greatest, the largest
1295	평소	Ordinary times, ordinarily
1296	견해	An opinion or  view.  Same as 의견
1297	깨끗하다	To be clean or  pure
1298	농사	Farming
1299	안정	Stability
1300	어둠	Darkness
1301	어둡다	To be dark, dim, gloomy
1302	어쨌든	In any case, anyhow
1303	주택	A house
1304	고장	A district or  producing area
1305	관련하다	To be related to or  connected to
1306	눈길	Line of vision
1307	물어보다	Ask
1308	미안하다	To be sorry
1309	밀다	push, shove
1310	스트레스	Stress
1311	음	Sound you make to express doubt, worry
1312	인사	People, men of society
1313	주어지다	To offer, proffer (conditions)
1314	고려하다	Regard or  respect
1315	과일	A fruit
1316	널리	Widely
1317	농촌	A farm village
1318	올라오다	Come up
1319	챙기다	gather, collect, assemble your stuff — to amass (money, a collection)
1320	고르다	Choose or  select
1321	바르다	Spread, apply
1322	벌어지다	To get serious, enlarge
1323	소재	material, subject matter
1324	전망	A view, prospect
1325	포기하다	To give up, to abandon
1326	형성되다	To be formed, made up
1327	고치다	To fix, amend, change
1328	그림자	A shadow or  a silhouette or  an image
1329	눈	Snow
1330	다하다	Finish, go through, be exhausted, run out of
1331	마침내	Finally, in the end
1332	비교하다	To compare
1333	시월	October
1334	커지다	To become bigger
1335	한쪽	On one side
1336	검사	Investigation or  inspection or  examination or  audit
1337	결론	A conclusion
1338	맡기다	Entrust sb with sth
1339	박물관	Museum
1340	소문	A rumor
1341	싣다	To load, take (passengers)
1342	쌓다	To pile up
1343	어서	Quickly 2) kindly
1344	자녀	one’s children
1345	제목	A subject, theme
1346	짓	Something you do
1347	판결	A judgment (from a judge)
1348	팔월	August
1349	하얗다	White
1350	희망	Hope, wish
1351	가방	Bag
1352	군대	Troops or  an army
1353	그만큼	That much or  to that extent
1354	무어	What?  무엇
1355	비로소	For the first time
1356	상대방	Conversation partner
1357	서구	Western Europe
1358	소유	Possession
1359	시골	Countryside
1360	실수	A mistake
1361	잘못되다	To turn out wrong
1362	치료	Medical treatment, medical care
1363	폭	Width; range
1364	호	A pen name, a title; a number, an issue
1365	내밀다	To Push out
1366	맞다	Be struck, beaten
1367	부문	A section, department
1368	시리즈	Series
1369	임신	Pregnant
1370	잡히다	To be caught ; to extinguish a fire
1371	규정	Provision or  stipulation
1372	그램	Gram
1373	밭	A field, farm
1374	분석하다	To analyze
1375	식구	Members of a family, your immediate family members (those you live with, preferably)
1376	아예	From the very first, from the very beginning
1377	어찌	How, in what way, by what means
1378	울리다	To ring (a bell) ; to create an echo effect
1379	작용하다	To apply , use
1380	확실하다	To be sure, certain
1381	개선	Renovation or  improvement or  betterment
1382	그릇	A vessel or  receptacle
1383	글자	A letter or  a character
1384	바람직하다	Be desirable, advisable, to be appropriate, good
1385	연구하다	To research, investigate
1386	착하다	To be nice
1387	개	A dog
1388	부동산	Real estate
1389	신화	A myth
1390	양	Miss ~
1391	점	a spot, a blemish
1392	직업	An occupation, calling
1393	거두다	Collect or  gather up
1394	방학	School holidays
1395	범위	Range, area
1396	조상	Ancestors
1397	철학	Philosophy
1398	검다	Black or  dark
1399	곁	Neighborhood or  vicinity
1400	근본적	foundational, fundamental
1401	너희	You guys
1402	대형	Large, full-sized
1403	문제점	The point at issue
1404	본격적	Exemplary
1405	불가능하다	Impossible
1406	충격	An impact, a shock
1407	퍼지다	Spread out, get broader
1408	금방	Just now or  a moment ago
1409	남쪽	South side
1410	누르다	Press or push down
1411	미술	art, the fine arts
1412	백성	The common people
1413	상당히	fairly, considerably
1414	색깔	Color
1415	요리	Cooking
1416	유명하다	To be famous
1417	자네	You
1418	기13	1) energy  2) breath or  wind
1419	꽤	Fairly or  considerably
1420	외국인	A foreigner, a foreign national
1421	한참	For some time, for a while
1422	군사	Military affairs
1423	끊다	Cut off or  sever
1424	넘어가다	Cross or go over
1425	담기다	Be put food in a bottle or for pickling
1426	마당	Garden
1427	부인	A woman
1428	서두르다	To hurry up
1429	지적	Pointing out, indication
1430	짝	One pair, one couple
1431	참으로	really, indeed
1432	충분하다	To be sufficient, ample
1433	기쁘다	To be happy
1434	숙제	Homework
1435	앞두다	Have a distance ahead
1436	예산	An estimate, budget
1437	온갖	All kinds, all sorts
1438	우려	worry, anxiety, fear
1439	우산	An umbrella
1440	기쁨	Joy or  delight
1441	깊이	Deepness
1442	꾸미다	Decorate
1443	늘리다	Increase, multiply
1444	무릎	A knee
1445	발견되다	Be discovered
1446	보호하다	protect,  shelter, guard
1447	시스템	System
1448	이용	To use
1449	지난달	Last month
1450	지르다	Holler, yell, scream
1451	참여	Participation
1452	걸음	Walking or  stepping or  a step
1453	겨우	Barely or  narrowly.  간신히
1454	마르다	Become dry
1455	비교적	Comparatively
1456	애쓰다	Make efforts/pains to do sth
1457	올바르다	Be honest, straightforward
1458	책상	On the desk
1459	춥다	To be cold
1460	흔하다	To be everywhere
1461	높아지다	Become high
1462	늙다	Grow old
1463	단위	A unit, a monad
1464	무겁다	Heavy ; a stuffy atmosphere
1465	바람	As a result, by the influence of
1466	상상	Imagination
1467	소득	An income, earnings
1468	수도	the capital city, e.g. Seoul, of a country
1469	역	A part, a role
1470	인식하다	recognition, cognizance
1471	자	A Chinese character
1472	침대	A bed
1473	권	A volume or  a book
1474	맺다	form, tie
1475	수요	demand, requirement
1476	스타	Star
1477	시계	clock, timekeeper, timepiece
1478	입술	The lips
1479	잎	A leaf
1480	중간	In the middle
1481	지도자	Leader
1482	천천히	Slowly
1483	구성하다	To organize or  makeup
1484	대체로	Generally, on the whole, for the most part
1485	몹시	Extremely
1486	문득	Suddenly
1487	스포츠	Sports
1488	위원장	A chairman of a committee
1489	저기	That place, there
1490	특별하다	To be special, extraordinary
1491	효과적	Effective
1492	가까이	Close
1493	낫다	Superior
1494	넘어서다	Pass over
1495	볶다	fry, roast
1496	생산하다	To produce, make
1497	언젠가	One of these days, at some time in the future
1498	예술가	An artist
1499	의도	An intention, an aim
1500	저지르다	do,commit, spoil
1501	줄어들다	Dwindle away
1502	가만히	Quietly or  softly
1503	건	A matter or  an object or  a case
1504	교회	Preach or  moral instruction
1505	대구	Daegu city
1506	외부	The exterior, the outside
1507	한두	One or two
1508	한때	For a while, temporarily
1509	화	Anger (get angry)
1510	흙	earth, the soil
1511	가난하다	Poor
1512	고객	Customer
1513	과학자	Scientist
1514	관광	Sightseeing or  tourism
1515	살아오다	To come out alive
1516	상대적	relatively, correlatively
1517	수술	Surgery
1518	식품	Groceries
1519	연기	performance, acting
1520	일월	January
1521	조	article, clause
1522	첫째	The first
1523	회원	A member of a society
1524	도서관	Library
1525	들려오다	To echo (sound)
1526	조금씩	A little at a time, little by little
1527	조미료	seasoning, condiment
1528	풀리다	To come loose
1529	강력하다	To be strong or  powerful
1530	마늘	Garlic
1531	선물	A present,gift
1532	습관	Habit
1533	아주머니	An aunt, a respectable word for a married, older woman
1534	위험	Danger
1535	지하	Underground
1536	활용하다	Utilize, make practical use of
1537	가꾸다	1) grow or cultivatea 2) dress oneself up
1538	고민	Worry or  anguish
1539	맨	bare,naked
1540	법률	A law, statute
1541	상처	Wound
1542	좁다	Narrow
1543	지하철	Subway
1544	집다	Pick up
1545	현	The present, the existence, actuality
1546	화면	Screen
1547	군	Mr.
1548	대표적	Representative
1549	만일	If, suppose
1550	사회적	Socially
1551	생겨나다	To begin, germinate
1552	이어	vulgarity, slang
1553	주부	A wife
1554	진리	A truth, a fact
1555	태양	The sun
1556	틀림없다	No mistaking it
1557	프로	Professional
1558	피다	To bloom ( a flower ~)
1559	공급	Supply or  provision
1560	도로	A road, way
1561	잘못	wrong, mistake
1562	지다	Carry (on the back)
1563	채우다	To fill up, complete, fulfill
1564	균형	Balance or  equilibrium
1565	기본적	Fundamental or  basic
1566	부족	A tribe
1567	사무실	Office
1568	이월	February
1569	일요일	Sunday
1570	접근	Proximity
1571	지켜보다	Watch, stare at ( wait on some situation)
1572	개성	Individuality or personality
1573	달리다	Hang, be suspended
1574	더하다	Get worse
1575	무너지다	Collapse
1576	보통	Usually
1577	쓰다	To wear (a hat)
1578	이러다	do/say think this way
1579	일어서다	To rise to one’s feet, stand up
1580	죄	A crime, a sin
1581	참	In reality
1582	총장	The president, the chancellor (university’s)
1583	핵심	The kernel, the core
1584	후반	The latter/second half
1585	단순히	Simply
1586	달려가다	Run, rush, dash
1587	방문	A visit
1588	불만	Dissatisfaction
1589	불편하다	To be unpleasant
1590	종	A sort, kind, species
1591	피	Blood (is flowing)
1592	강	River
1593	관객	Spectator
1594	막	Just now
1595	밀리미터	Millimeter
1596	비싸다	To be expensive
1597	숫자	A figure, number
1598	열	Heat
1599	왼쪽	The left side
1600	중세	The middle ages
1601	택시	Taxi
1602	통합	Unity, unification
1603	계산	Calculation
1604	꼬리	Tail
1605	놀랍다	To be surprising
1606	양식	A mode, a style, an order, a modality
1607	예전	Old days, former days
1608	전기	Electricity
1609	주식	Stock
1610	틀리다	To be turned, warped 2) go wrong, be mistaken
1611	끊임없이	Constantly or  unceasingly
1612	모델	Model
1613	붓다	to pour (water, liquid)
1614	상식	Common sense
1615	상표	trademark, brand
1616	시원하다	Be cool, refreshing
1617	아니하다	To be/do not
1618	의식하다	Be conscious of, be aware of
1619	고모	A paternal aunt
1620	궁금하다	To wonder or  be curious about
1621	민주화	Democratization
1622	보도	news, report
1623	살피다	Take a good look at
1624	약하다	To be weak
1625	잘못하다	To make a mistake
1626	잡지	A magazine
1627	거부하다	Deny or  reject or  disapprove
1628	공무원	Public servant
1629	그만두다	Stop or  discontinue
1630	댁	You and your family
1631	반갑다	Be happy
1632	부족	lack, want (scarcity, insufficiency)
1633	실시	execution, enforcement
1634	운명	fate, fortune
1635	재정	finances, economy
1636	차라리	rather, preferably
1637	학자	Scholar
1638	다녀오다	Drop in for a short visit
1639	달다	to attach, fix
1640	대규모	On  a large scale
1641	동	the same
1642	민간	civil, private
1643	법원	Court of justice
1644	비디오	Video
1645	사실상	Actually, in truth
1646	아끼다	grudge, spare
1647	이쪽	This side, our way
1648	지대	Zone, belt, district
1649	판단하다	To make a conclusion
1650	행복하다	To be happy
1651	굽다	To roast or bake
1652	기름	Oil or  fat
1653	실천하다	To practice, put in theory
1654	쏟아지다	To pour out
1655	연습	practice, exercise
1656	오른쪽	The right side
1657	용어	Technical terminology
1658	익히다	Habituate oneself to
1659	지도	Map, atlas
1660	지위	Position, status
1661	풍부하다	To be abundant, copious, plentiful
1662	화장실	Bathroom
1663	기억하다	To recall or  remember
1664	식량	food, provisions
1665	실험	An experiment, test
1666	용기	Bravery
1667	토론	A debate, discussion
1668	핵	A nucleus, core
1669	고급	High rank or  first class
1670	고생	A hard life or  privation
1671	미치다	Be crazy
1672	밟다	Step on
1673	상당하다	Be proper, suitable
1674	섞다	blend, mix
1675	수석	The top seat
1676	없애다	Remove, get rid of, do away with
1677	이뤄지다	To make something for a specific purpose
1678	적절하다	Appropriateness
1679	정상	The top, summit
1680	제사	A holiday ceremony
1681	주말	Weekend
1682	지혜	Wisdom, wits
1683	참새	A sparrow
1684	화장품	Makup, cosmetics
1685	굵다	Be thick or  fat
1686	깨끗이	Clean or  neatly
1687	낡다	Clear
1688	내년	Next year
1689	농산물	Agricultural products
1690	눈앞	Before one’s eyes
1691	대학생	University student
1692	방문하다	To visit
1693	붉다	Be red, scalet
1694	사고	thought, contemplation
1695	순서	system, order, sequence
1696	아무래도	Never on any account, no matter what
1697	연구소	A research institute
1698	올	This year
1699	위대하다	To be great, mighty, grand
1700	이사	House-moving
1701	지배하다	Control, direct
1702	틈	A crack, gap, opening
1703	가령	1) For example 2) supposing or admitting
1704	거대하다	Huge or  gigantic or  enormous
1705	닫다	To close
1706	매달리다	Be suspended, to be hanging down (from) ; to stick to a job, to persevere
1707	생일	A birthday
1708	섬	An island
1709	이하	Less than, below
1710	참석하다	To attend, take part in
1711	토대	A foundation, a base
1712	해결	Solution, settlement
1713	행복	Happiness
1714	걸어가다	To go on foot or  walk
1715	근로자	Laborer
1716	글쎄	Now or  well or  let me see
1717	목숨	Life
1718	백화점	Department store
1719	변화하다	To change, vary
1720	병	A bottle
1721	빠져나가다	Get/go out of here
1722	안녕하다	To say hello
1723	여론	Public opinion, public sentiment towards sth
1724	의복	Clothes, garments
1725	체조	Gymnastics
1726	출발하다	To depart, leave
1727	현실적	Down to earth, Realistic
1728	화제	Subject of conversation
1729	결정되다	To become decided
1730	고양이	Kitten
1731	공격	Attack
1732	물가	Prices of products
1733	민주주의	Democracy
1734	불안	uneasiness, anxiety
1735	소중하다	To be important, valuable
1736	여유	reserve, surplus
1737	의문	A question, a doubt
1738	중학교	Middle school
1739	킬로미터	Kilometer
1740	파도	Waves, billows
1741	흰색	gray, ash color
1742	가수	Singer
1743	단	Only one, alone
1744	방송국	Broadcasting station
1745	빛나다	shine, glitter
1746	숨다	To be in hiding, to hide oneself
1747	실리다	To be printed,recorded; to be loaded onto a truck (luggage)
1748	압력	pressure, stress
1749	예금	Deposit money
1750	예상되다	To expect, anticipate
1751	입학	Admission into school
1752	증권	securities, document,deed
1753	직후	Immediately after
1754	차량	vehicles, cars
1755	출산	Child birth
1756	물다	bite, put in the mouth
1757	선진국	A developed country
1758	약	Medicine
1759	어느새	In no time, quickly
1760	재판	A trial
1761	저쪽	Over there, in that direction
1762	제자	A disciple
1763	창문	A window
1764	초	A second
1765	치즈	Cheese
1766	회복	Recovery, recuperation
1767	구역	A zone or  district
1768	대응	Confrontation, opposition
1769	반대하다	Be opposed to
1770	발휘하다	Display, exhibit
1771	소비	Consumption
1772	심장	The heart
1773	아이고	Oh my god!
1774	조용히	Quietly
1775	중소기업	Small and medium enterprises
1776	직접적	Directly, immediately
1777	진실	Truth, sincerity
1778	필자	The writer, author
1779	협력	Cooperation, cooperate with
1780	가스	Gas
1781	계층	A class or  social stratum
1782	구멍	A hole
1783	담당	Charge, undertaking
1784	만화	Cartoons
1785	먹이다	support, feed
1786	무시하다	disregard, ignore ; to be defiant and fail to observe
1787	보도하다	To report, inform
1788	살짝	(1) softly, lightly, just a little (2) furtively, stealthily
1789	생각나다	To remember
1790	우유	Milk
1791	인상	pulling/drawing up
1792	차갑다	Cold
1793	철저하다	thoroughness, cleanliness
1794	태아	A fetus, an unborn child
1795	관찰하다	Observe or  view or  watch
1796	괜히	In vain or  useless or  fruitless, for a stupid reason
1797	끼다	To put on or wear, to wear (a ring)
1798	날개	The wings
1799	녀석	Fellow
1800	눈빛	The glitter of one’s eyes
1801	단지	A public apt complex
1802	물속	Inside the water
1803	민주	Democracy
1804	성공하다	To succeed
1805	소나무	A pine tree
1806	여기저기	Here and there
1807	여인	beauty, belle
1808	운영하다	manage, administer
1809	평가하다	To evaluate, estimate, judge
1810	표	A marker, indication
1811	필요성	Necessity
1812	감추다	Hide or  conceal
1813	머무르다	Stay overnight
1814	부위	A region, part
1815	비우다	empty, vacate
1816	설치하다	To found, establish, create
1817	십일월	November
1818	싸다	Wrap in, bundle
1819	아울러	And, both together
1820	지시	Directions, orders
1821	형성하다	To form, make, take shape
1822	형제	Brothers and sisters
1823	화려하다	Splendor, magnificence of a display, a look
1824	거울	1) mirror  2) a pattern or  model or  exemplar
1825	덧붙이다	Add a thing, append
1826	몇몇	Several
1827	무기	Weapon
1828	세계적	International
1829	안전	Safety
1830	양파	An onion
1831	이상	Indisposition, abnormal
1832	일종	A kind, a sort, a species
1833	처지	A situation,circumstances
1834	촬영	Photographing, taking pictures/films
1835	타다	Burn, blaze (firewood)
1836	틀다	To twist, wind
1837	형편	The situation, the state of things (esp. financial)
1838	가지	Eggplant
1839	감다	Close
1840	고추	Red pepper
1841	규칙	Rules or  regulations
1842	본질	True nature,essence
1843	비치다	Shine
1844	빵	Bread
1845	서서히	Slowly, little by little
1846	스승	A teacher,master
1847	신분	Social position
1848	실시되다	To be enforced
1849	아마도	Probably
1850	안방	The inner room
1851	앓다	To be ill, sick with sth
1852	어제	Yesterday
1853	오직	Only, merely, solely
1854	위험하다	To be dangerous
1855	자신	Self-confidence
1856	잠시	For a little while
1857	졸업하다	To graduate
1858	증거	evidence,proof
1859	초점	A focus, a focal point
1860	포함되다	To be included in
1861	호랑이	A tiger
1862	강화하다	Strengthen
1863	공포	Fear or  dread
1864	권위	1) Authority or  power  2) dignity or  prestige
1865	덜	Less, incompletely
1866	미루다	Postpone ; (2) to guess, infer and make an educated guess
1867	본래	originally,primarily
1868	부엌	Kitchen
1869	세금	Tax
1870	실정	The actual situation
1871	영양	Nutrition
1872	육체	The flesh, the body
1873	입구	Entrance
1874	잔뜩	extremely, to the utmost
1875	적극	The positive
1876	최소한	At least
1877	펼쳐지다	Stretch, extend away
1878	경험하다	To experience or  go through
1879	그이	That person or  he or him / she or her
1880	넘치다	Overflow
1881	놓치다	Miss, let slip
1882	대기	The atmosphere
1883	독립	Independence
1884	머릿속	Inside one’s head
1885	북쪽	The north direction
1886	불안하다	To be uneasy, anxious
1887	쇠고기	Beef
1888	위반	Violation, infringement
1889	카드	Card
1890	평생	A lifetime
1891	해당하다	To be applied/applicable under
1892	간부	The leaders (cadre, exec, executive, management)
1893	관념	An idea or  notion
1894	굉장히	Very much or  greatly
1895	단어	Word
1896	덮다	To cover, veil
1897	도와주다	To help
1898	도입	introduction, invitation
1899	몰다	Drive ; to chase or urge on
1900	배우	Actor
1901	비추다	(1) Shed, throw light on (2) to reflect in the mirror
1902	신발	shoes, footwear
1903	알	An egg, spawn (fish)
1904	앞서다	To go before, precede
1905	여건	A postulate, a given condition
1906	오래전	Since a long time before
1907	자격	Qualification
1908	통제	control, regulation
1909	계단	A staircase or  a set of stairs
1910	김치	Spicy cabbage
1911	끄덕이다	Nod
1912	낯설다	To be unfamiliar with, to be a stranger to ( a person)
1913	높이	Height (noun)
1914	닮다	Resemble
1915	마음속	Deep in one’s heart
1916	못지않다	Be just as good as
1917	반영하다	Reflect, be reflected
1918	뼈	A bone
1919	성장하다	To grow,be brought up
1920	소속	Belong to, attached to
1921	연결되다	Connect, attach
1922	장사	trade,business
1923	제작	manufacture,production
1924	제한	limits,bounds
1925	차다	to kick
1926	추진	Propulsion, drive
1927	취하다	To be drunk
1928	콩	A bean
1929	한숨	A breath
1930	헤어지다	Part from, part company with
1931	구입하다	Purchase or  buying
1932	날다	To fly
1933	너머	Beyond, on the other side
1934	여간	just, a little.  여간 ~지 않다 means very very ~다
1935	마련	planning, making arrangements ; provisions, preparations
1936	살	flesh,muscle
1937	선장	A captain
1938	설탕	Sugar
1939	순수하다	To be pure
1940	스타일	Style
1941	시점	Point in time
1942	싸다	Be inexpensive
1943	의사	An intention, a purpose
1944	집중	Concentration
1945	코드	Code
1946	큰일	An important affair, a serious matter
1947	거짓말	A lie or  falsehood
1948	대단하다	Considerable, grand
1949	대단히	Extremely
1950	마주	Face to face
1951	세계관	A worldview
1952	온통	Wholly, entirely
1953	의존하다	To depend on, rely on
1954	자세히	In detail
1955	점심	Lunch
1956	정확히	Exactly
1957	지치다	Be exhausted, fatigued
1958	청년	A young man, a youth
1959	혀	The tongue
1960	확대하다	To enlarge,magnify
1961	후춧가루	Ground pepper
1962	건설하다	To construct or  erect
1963	경쟁력	Competitiveness
1964	마침	Just, exactly
1965	신용	confidence,trust
1966	연락	Connection, communication
1967	온몸	The whole body
1968	정	Feeling of attachment
1969	정신적	Mental
1970	증상	Symptoms
1971	출연하다	Appear on stage, act, sing
1972	칼	A knife
1973	한꺼번에	All at once
1974	강제	Compulsion or  coercion
1975	건너다	Go over or  go across
1976	깨다	Wake up from sleep
1977	낚시	Fishing
1978	다가가다	To get near to
1979	문자	letters,character
1980	묻다	to Stain
1981	비롯되다	To be begun, to have started
1982	슬프다	To be sad,sorrowful
1983	신부	Bride
1984	여겨지다	To look, appear, think of sth as
1985	오징어	Cuttlefish, squid
1986	요금	A rate, a fare
1987	용돈	Pocket money, money for expenses
1988	위주	Put first in importance
1989	음료	A beverage, a drink
1990	의자	A chair
1991	전자	An electron
1992	전해지다	To be transmitted
1993	전환	To exchange, convert, change
1994	지경	A boundary,situation,state
1995	진행	Progress, advance
1996	카메라	Camera
1997	통증	An ache, pain
1998	편리하다	To be convenient, handy
1999	하천	A river, watercourse
2000	현금	Cash, ready funds, not a credit card
2001	화학	Chemistry
2002	활발하다	Be lively, sprightly
2003	가리다	Pile up or  stack up or heap up
2004	거칠다	Coarse (texture) or  wild (behavior) or  (rain and wind) rough or  wild
2005	그나마	Even though or  nevertheless
2006	껍질	Skin or  nutshell
2007	남부	The south part
2008	명령	An order,command
2009	몰래	secretly,quietly
2010	무조건	Unconditional
2011	반장	Squad leader
2012	부근	neighborhood,vicinity
2013	선택	A choice
2014	역사가	Historian
2015	연구자	Researcher
2016	연기자	A performer, an actor
2017	조그맣다	Be tiny,small
2018	줄기	A trunk, stem, stalk
2019	찾아내다	To find out, discover
2020	토요일	Saturday
2021	경찰관	a policeman
2022	권하다	1) advise or  persuade 2) recommend
2023	극장	Theater or  playhouse
2024	끝내	The end
2025	대문	A big gate
2026	더욱이	Besides, moreover
2027	별도	A separate way
2028	비극	A tragedy
2029	솜씨	skill,ability
2030	시내	The city
2031	신	joy,delight
2032	실내	In the room
2033	쏟다	To pour .  붓다
2034	연결하다	Connect, attach
2035	외교	Diplomacy
2036	주머니	Pocket
2037	계약	Contract
2038	과장	The department/section head
2039	극	Drama or  play
2040	나란히	In a line, row
2041	다방	Tea room
2042	부끄럽다	Be shameful,disgraceful
2043	성공	success,achievement
2044	수행하다	Accomplishment
2045	신청	application,request
2046	실로	really,indeed
2047	아픔	Pain
2048	알아듣다	To listen and comprehend
2049	약간	Some, a little
2050	연기	Smoke, fume
2051	이동	movement,migration,drift
2052	인연	Cause and occasion
2053	일행	A party, a troupe; a row, a line
2054	지도	Instruction, guidance
2055	지식인	An intellectual
2056	진지하다	To be serious, earnest
2057	치다	to count, reckon, calculate
2058	호흡	Respiration, breath
2059	흔들리다	Shake, swing,rock,tremble
2060	기온	Temperature
2061	날아가다	To fly away
2062	많아지다	Become a lot
2063	바위	A rock, a crag
2064	버릇	Habit
2065	비판하다	To criticize
2066	빨갛다	deep-red,crimson
2067	세워지다	To become erected
2068	술집	Bar of some kind
2069	쉬다	to breathe
2070	오랜만	After a long time
2071	일부러	On purpose, intentionally
2072	전체적	entirely,generally
2073	절반	Half
2074	접근하다	approach,get near
2075	편안하다	To be peaceful
2076	확실히	certainly,for sure
2077	흩어지다	Scatter about
2078	갈다	1) sharpen  (a blade) 2) rub or  chafe 3) make juice in a mixer
2079	교류	Interchange (cultural) ; alternating current (electrical)
2080	글쓰기	Writing
2081	기후	Climate or  weather
2082	내내	All along, the entire time
2083	대기업	Big enterprise
2084	대응하다	Cope or correspond to
2085	도구	Tool, instrument
2086	매력	fascination,charm, bewitchery
2087	백	Hundreds of
2088	보험	guarantee,insurance
2089	부럽다	Be enviable
2090	부장	Head of a department
2091	섞이다	To be mixed,blended
2092	소	A cow
2093	심리	A mental state
2094	심정	one’s heart, one’s feelings
2095	쏘다	(1) To shoot  (2) to sting, bite (an insect, animal)
2096	아줌마	Old or married lady
2097	위치하다	To be located
2098	이룩하다	Erect, build
2099	이틀	Two days
2100	전달하다	To deliver
2101	정말로	Really
2102	추다	To dance
2103	켜다	To light, turn on, kindle
2104	코너	Corner
2105	행동하다	To act, behave
2106	형사	A criminal, penal case
2107	희곡	A drama, a play
2108	감동	Agitate or  stir up the emotions
2109	공항	Airport
2110	군인	Sb in the military
2111	굳이	Firmly or  admanantly
2112	그늘	1) shade 2)parental prodection
2113	급하다	Be urgent or  pressing or  iminent
2114	달걀	An egg
2115	대중문화	Pop culture
2116	마련되다	To be planned and arranged
2117	마루	A wooden floor, floor, flooring
2118	무게	Weight
2119	물기	Moisture
2120	성적	A result,grade
2121	솔직히	frankly,candidly
2122	시도하다	To try,attempt
2123	아니요	No, that’s not the case
2124	예절	propriety,decorum
2125	인상	Impression, imprint
2126	인터넷	Internet
2127	적용하다	To apply (sth to sth else)
2128	전통적	Traditional
2129	참가하다	To take part in, join
2130	치마	A skirt
2131	친척	Relatives
2132	특정하다	Specify
2133	호텔	Hotel
2134	경계	Boundary
2135	공식	A formula or  formality
2136	그다지	So much or  to that extent
2137	긴장	Tension
2138	깎다	Cut or  trim
2139	다리	Bridge
2140	머물다	Stay overnight
2141	명예	Honor
2142	뱃사람	A seaman, sailor
2143	부처	Buddha
2144	숙이다	Lower one’s head
2145	아가씨	Mis, young lady
2146	온도	Temperature
2147	이마	Forehead
2148	절대로	Absolutely
2149	지붕	A roof
2150	지원하다	To desire, aspire, hence to apply for [e.g. a job] or volunteer for sth
2151	진짜	Real
2152	짙다	Be dark, dense
2153	창밖	Outside the window
2154	청소	Cleaning
2155	침묵	Silence
2156	텍스트	Text
2157	표면	Front, surface, exterior
2158	햇살	The rays of the sun
2159	객관적	Objective
2160	걱정하다	To worry or  be anxious
2161	경제적	Economical
2162	구름	A cloud or  the clouds
2163	구석	1) a corner  2) an out of the way place
2164	끄다	Put out or  extinguish
2165	담당하다	Take charge of
2166	벗기다	Unclothe, undress
2167	부대	A detachment, squad
2168	불빛	Fire light
2169	서클	Circle
2170	시청자	TV audience member
2171	실체	substance,essence
2172	엄격하다	To be strict, serious
2173	완벽하다	Perfect
2174	완전하다	To be perfect and faultless
2175	절	A Buddhist temple
2176	종업원	waiter/waitress
2177	증가	An increase,augmentation
2178	출연	Going on stage
2179	학기	An educational term
2180	한동안	For quite a while
2181	후기	The latter term/period
2182	계절	Season
2183	만지다	To touch
2184	목사	A pastor
2185	바늘	A needle, pin
2186	버티다	Endure, tolerate
2187	부	A department, a part
2188	분포하다	Distribution
2189	비중	Specific gravity
2190	수입	Income
2191	아이디어	Idea
2192	양쪽	Both sides
2193	예컨대	For example, such as
2194	운동장	Stadium, playground
2195	전개	unfolding,development,expansion
2196	접촉	contact,touch
2197	짐	Luggage ; what is on a person
2198	풀	Grass (cut the ~)
2199	해마다	Every year, each year
2200	후배	one’s junior
2201	휴가	holidays,vacation
2202	경기	The business market’s state
2203	계곡	A valley or  gorge
2204	국회의원	A member of the national Assembly
2205	다투다	Quarrel
2206	도저히	(도저히 + negative (지 않다/없다))Absolutely impossible ; by all means
2207	뻗다	Stretch out, extend beyond
2208	생활하다	To live, make a living
2209	솔직하다	frankness,candidness
2210	안타깝다	To be heart-breaking
2211	앞장서다	To be in the lead/ at the head
2212	요청하다	To ask for, to request
2213	이르다	Be early, premature
2214	일치하다	Agree with, to be in accord with
2215	젓다	To make a sign,gesticulate
2216	정치권	Political rights
2217	처녀	A virgin, a young maiden
2218	축제	a festival
2219	터뜨리다	Break, burst,explode
2220	학습	Learning, education
2221	개발되다	To be developed or  exploited
2222	높이	High, aloft (adverb)
2223	당연히	Of course
2224	대비하다	Provide for, prepare onself for
2225	마구	continuously, without pause
2226	만남	A meeting
2227	미디어	Media
2228	복도	A corridor
2229	수상	The prime minister
2230	쓰러지다	Fall, collapse
2231	영상	An image [picture], reflection (moving pictures, movies)
2232	영혼	A soul, a spirit
2233	운전사	The driver (of a taxi)
2234	자랑스럽다	To be proud
2235	잠깐	For a little while
2236	적당하다	To be appropriate
2237	적용되다	To be applied
2238	주	One week
2239	지속적	Continuous
2240	진행하다	Advance, proceed
2241	차별	distinction,differentiation
2242	곳곳	Everywhere
2243	구분	A division or  section
2244	금지	Forbidden or  prohibitted
2245	내지	From A to B
2246	달려오다	Come running
2247	분노	rage,anger
2248	비교	A comparison
2249	소위	What is called for
2250	스치다	Graze past
2251	역사적	Historical
2252	열차	Train
2253	요즈음	Recently, nowadays
2254	유난히	uncommon,exceptional
2255	의무	A duty, an obligation
2256	잃어버리다	To lose
2257	잠깐	For a little while
2258	잠들다	Fall asleep
2259	정식	Formality, due form
2260	조용하다	To be quiet,still
2261	즉시	At once,immediately
2262	최선	The best, one’s best
2263	탑	A tower
2264	한복	Korean traditional clothing
2265	활동하다	To be active, lead an active life
2266	건축	Construction or  building or  erection
2267	귀엽다	To be cute
2268	답답하다	Feel anxious
2269	당황하다	Be confused
2270	말	Horse
2271	밀가루	Flour
2272	바깥	Outside
2273	바지	Pants
2274	벌리다	Open, wide
2275	보고서	Report
2276	보관하다	Keep in one’s custody
2277	부딪치다	Collide with, bump against
2278	빨래	washing,laundry
2279	상하다	damage,injure
2280	설치	establisment,institution
2281	식용유	Food oil
2282	싫어하다	To dislike, be reluctant (to do)
2283	업종	Types of industry
2284	연출	Production, presentation
2285	테이블	Table
2286	트이다	Get cleared out, open up
2287	피곤하다	To be very tired, exhausted
2288	한국어	Korean (language)
2289	한자	Korean character, derived from chinese
2290	겁	Fear or  fright
2291	관리	A government official
2292	국제화	Internationalization
2293	근육	Muscles
2294	깔리다	To be spread or  overspread
2295	사전	beforehand,in advance
2296	산소	Oxygen
2297	석유	Petroleum
2298	소리치다	To shout, yell
2299	시	City
2300	신선하다	Fresh
2301	안경	Glasses
2302	약속하다	To make a promise
2303	연합	Combination, federacy, union
2304	인격	Personality, character
2305	장	A chapter in a book
2306	적	The enemy
2307	조심하다	To be careful
2308	질	Quality, character
2309	찌르다	stab,thrust
2310	책임자	Person responsible
2311	총	all,entire,whole
2312	취미	Hobby
2313	표	A marker, indication
2314	품목	The name of an article, a list of articles
2315	확대되다	To be magnified
2316	거실	Living room
2317	논	A rice field
2318	덥다	Be hot, heated
2319	바보	Ignorant
2320	별	Classified by
2321	보람	worth,result
2322	부작용	reaction,side effect
2323	비난	Criticism, reproach
2324	신고	A statement,declaration
2325	야구	Baseball
2326	어떡하다	To take some measures, to manage somehow
2327	예상	Expectation, anticipation; forecast, preconception, prenotion
2328	위협	Menace, threat, intimidation
2329	이	A tooth
2330	이상	An ideal, a goal
2331	잠기다	Sink in water
2332	주고받다	Give and receive, exchange
2333	주먹	Fist
2334	지지	support,backing
2335	털다	To shake off, brush up
2336	경고	Warning
2337	공개하다	Open to the public
2338	과목	A subject or  a lesson
2339	구경	An enjoyable sight or spectacle
2340	그분	That person (respectful)
2341	근무	Duty or  service or  work
2342	논쟁	Controversy, argument
2343	달아나다	Escape, flee
2344	묶다	bind,tie
2345	성명	A declaration,statement
2346	소스	Sauce
2347	수십	Tens of sth
2348	신다	Put on, wear
2349	우리말	Korean (language)
2350	유교	Confucianism
2351	이불	Bedding, bed clothes
2352	이성	Reason, reasoning
2353	일상	Everyday, usual, ordinary
2354	자동	self-acting, self-moving, automatic
2355	장래	The future
2356	전개되다	To be unfolded,spread out
2357	죄송하다	regret,be sorry for
2358	중요성	importance,gravity
2359	크다	To be big, large
2360	탤런트	Talent
2361	특별히	Especially
2362	품질	The quality of the article ( but not the article itself)
2363	회견	An interview, a meeting
2364	훔치다	To steal
2365	흔적	traces,signs,evidences
2366	고전	A classic in literature
2367	과학적	Scientifically
2368	구분하다	To divide or  to classify
2369	그럼	Interjection: “yeh or  that’s right”
2370	뇌	Brains
2371	봉투	Envelope
2372	분명	Obviousness
2373	사설	An editorial
2374	승리	A victory
2375	좌우	Left and right
2376	주	one’s master, ones employer
2377	지다	Set (the sun)
2378	추억	Memory
2379	하여튼	Anyways
2380	함부로	Indiscriminately, at random
2381	향기	fragrance,aroma,perfume
2382	현지	The actual place, the very spot
2383	가늘다	Thin or  fine or  slender
2384	개인적	Private or  personal
2385	겉	The outer surface
2386	굽히다	Bend or  stoop
2387	근무하다	Work or  labor
2388	깜짝	With a surprise
2389	넓히다	Widen
2390	대	1) Versus 2)a pair, counterpart
2391	매년	Every year
2392	발생	1) Birth 2) development
2393	셋	Three
2394	소주	Korean sake
2395	손바닥	The palm
2396	승용차	A passenger car
2397	어색하다	To be awkward, shy with words, speechless
2398	얹다	Put on, place, lay, set
2399	의학	Medical science
2400	장점	A merit,strong point
2401	적당히	suitable,proper
2402	줍다	Pick up, gather
2403	진출	An advance
2404	창조	Creation
2405	킬로그램	Kilogram
2406	평범하다	Plain, average
2407	프로	Program
2408	홍보	Public information, public relations
2409	확인	A check,confirmation
2410	가루	Powder or  flour; meal
2411	건지다	Take or bring out of the water or  2) rescue a person from danger
2412	깨지다	To break
2413	내다보다	Look out for
2414	대량	A large quantity
2415	마땅하다	Be right, approppriate
2416	바로잡다	Straighten
2417	박히다	Be nailed in
2418	방금	Just now
2419	생선	Raw fish
2420	슬픔	Sorrow
2421	아무렇지 않다	To be indifferent, casually
2422	이용되다	To be used
2423	이튿날	The second day after
2424	임시	Temporary, special
2425	제거하다	exclusion,removal
2426	줄다	Diminish
2427	지구	A district,region
2428	지우다	To erase
2429	참기름	Sesame oil
2430	통	A tub, a cask
2431	특수	characteristic,distinct,unique
2432	팬	Pan
2433	합치다	combine,unite
2434	호기심	Curiousity
2435	골목	A side street or  alley
2436	기운	Strength or  might (the strength you feel you have on that particular day)
2437	기획	Planning
2438	대충	Almost, nearly, about
2439	맞서다	Stand opposite
2440	모자라다	To be insufficient
2441	박다	Drive,hammer in
2442	본성	Original nature or character
2443	상상하다	Imagine
2444	생산력	Productive capacity
2445	안전하다	To be safe
2446	유학	Studying abroad
2447	이르다	Inform, report, tell
2448	장비	equipment,fittings
2449	정치인	Politician
2450	정치적	Political
2451	졸업	Graduation
2452	처벌	punishment,penalty
2453	카페	Cafe (place to drink coffee)
2454	콤플렉스	Complex
2455	검토	An examination or  investigation or  study
2456	그다음	Next
2457	기법	Techniques
2458	끓다	Boil or  simmer
2459	날아오다	Come flying
2460	농담	A joke
2461	닭	Chicken
2462	담임	Charge, duty
2463	도중	On the way
2464	맥주	Beer
2465	모래	Sand
2466	살아남다	Survive
2467	살인	Murder
2468	성질	naure,disposition
2469	신호	A signal,signaling
2470	아버님	Father (respectful word)
2471	의심하다	To be suspicious, to doubt
2472	인	A person
2473	잇따르다	Follow one after another
2474	자랑하다	To be proud
2475	자판	Keyboard
2476	적용	Application
2477	전기	the former period/term
2478	중반	At the middle stage (of a game or contest, or otherwise)
2479	지시하다	To direct, instruct
2480	출발	To start (a journey,trip)
2481	허용하다	To permit, approve, grant, allow
2482	가르침	Teaching or  an instruction
2483	각국	Each country
2484	교과서	Textbook
2485	그려지다	Draw
2486	꾸준히	Untiringly, ceaselessly
2487	년도	Year
2488	다수	A great number
2489	덕분	Indebtedness
2490	무리	Be unreasonable
2491	물음	A question
2492	빌다	pray,wish,ask
2493	수영	Swimming
2494	스님	A priest
2495	썩다	Go bad, rot
2496	어머님	Mother (respectful word)
2497	엉뚱하다	Be extraordinary, extravagant ; to misdirect somebody`s attention
2498	여보	Spouse (term of affection)
2499	잊어버리다	To forget
2500	정면	The front, the facade
2501	조각	Sculpture
2502	태우다	Burn, commit to flames
2503	해석	Interpretation, a comment
2504	가리다	Choose or  select
2505	개국	The foundation of a country
2506	계산하다	To calculate
2507	근원	The origin or  root or  source
2508	기차	A train
2509	담그다	Soak in water
2510	마음대로	As you wish
2511	며느리	Daughter-in-law
2512	믿음	Belief
2513	발견	Discovery
2514	보고	report,information
2515	부탁하다	Ask sb a favor
2516	사용자	A user,consumer,employer
2517	사회주의	Socialism
2518	설치되다	To be established
2519	수도권	The Metropolitan area
2520	식탁	Dinner table
2521	실패하다	To fail
2522	영원하다	To be eternal
2523	우연히	accidentally,by chance
2524	자극	A stimulus
2525	정해지다	To be determined, settled
2526	짚다	Feel, examine
2527	총리	General overseeing, presiding over
2528	칭찬	Praide, admiration
2529	튼튼하다	Solid, compact, firm
2530	햇빛	Sunshine, sunlight
2531	공원	Park
2532	긍정적	Affirmation or  admission
2533	논의하다	Discussion
2534	대출	Lending
2535	덕	Virtue, morality
2536	먼지	Dust
2537	바닷가	The beach
2538	바치다	Give, offer
2539	반하다	To be contrary to
2540	발표되다	Be announced
2541	부정하다	Be uncertain,irregular
2542	불러일으키다	rouse,stir up
2543	사원	Company employee
2544	소유자	Possessor
2545	씹다	To chew
2546	아무튼	In any case
2547	안되다	Must not, should not
2548	액수	A sum, an amount
2549	왠지	I don’t know why, there is no reason for it
2550	욕심	Greed, selfishness
2551	우승	First place
2552	익다	Ripe, be ripe
2553	제출하다	To submit,tender
2554	조심스럽다	Cautious
2555	직전	Just immediately before
2556	짐작하다	To guess, infer
2557	택하다	Choose, select
2558	터	A site, place
2559	피시	PC, personal computer
2560	흘러나오다	Flow out, run, effuse
2561	가구	Family
2562	간단히	Simply speaking
2563	강물	River water
2564	궁극적	Finally or in the end, 마지막으로
2565	극히	Exceedingly or  extremely
2566	기여하다	Contribute or  add much to
2567	꼭	Tightly or  fast
2568	날짜	Date
2569	대륙	A continent
2570	모니터	Monitor
2571	범인	A criminal
2572	변동	Change, flucutation
2573	불가피하다	Inevitable, unavoidable
2574	삶다	boil,cook (eggs)
2575	샌드위치	Sandwich
2576	서류	documents,papers
2577	손해	damage,injury
2578	숨지다	Breathe one’s last breath
2579	아유	Good heavens!
2580	요청	request,demand,claim
2581	운	Fortune, luck, fate
2582	일상생활	Everyday (daily) life
2583	자존심	Self-confidence
2584	주저앉다	Sit down, plump down
2585	증권사	Securities corporation
2586	진하다	Be dark, deep
2587	초원	A plain, a prarie
2588	최종	last,final,terminal
2589	회복하다	To recover, get better, get well again
2590	흘러가다	flow,run,drift along
2591	흥미	interest,zeal
2592	검사	A public prosecutor
2593	그쪽	Those people
2594	꾸다	Borrow or  loan
2595	내려다보다	Overlook
2596	눈썹	The eyebrow
2597	대신하다	Relieve, replace another
2598	마디	A word, a tune, a song,  a paragraph
2599	미처	To that extent
2600	비닐	a thin sheet of plastic, vinyl
2601	비율	ratio,percentage
2602	생물	A living thing
2603	소음	A noise,cacaphony
2604	양국	Both countries
2605	얼핏	at a momentary glance or intermittently appearing (e.g. catch a fleeting glimpse of)
2606	오래되다	To last for a long time
2607	웬	What sort of, what kind of
2608	조각	A piece,scrap,fragment
2609	중부	The center, middle part
2610	차	Tea
2611	채소	vegetables,greens
2612	침	Spit
2613	털	Hair; fur, feathers
2614	판매하다	To sell
2615	항의	A protest
2616	해당	Come/fall under the purview of
2617	확보	security,insurance
2618	환경오염	Environmental pollution
2619	가치관	one’s values or sense of values, a value system
2620	검은색	Black or  dark
2621	고생하다	To suffer or  to have trials ; to do something you don\\’t want to do, 하고 싶자 않은 것
2622	기원전	B.C.
2623	기타	The others or  the rest
2624	긴급	Emergency
2625	꺾다	Break off or  snap off
2626	꿈꾸다	To dream
2627	무려	As many as, no less  than
2628	묻히다	Get buried
2629	수표	A check
2630	실태	The actual conditions,reality
2631	아쉽다	To miss, feel the loss of
2632	애정	Love for a person, affection
2633	얘	Sonny, you there
2634	어머	Oh my god!
2635	여보세요	Telephone HELLO
2636	일정	To be fixed, settled, regular
2637	장르	Genre
2638	저렇다	Such a thing as that
2639	접하다	adjoin,be adjacent to
2640	정성	True heart,devotion
2641	제약	A condition,restriction
2642	쫓다	Drive away, chase off
2643	추가	An addition
2644	테이프	Tape
2645	품	Width; bosom, breast (the clothes have a big ~)
2646	해석	Analysis, analytical research
2647	확인되다	To be confirmed
2648	가하다	To add
2649	간장	Soy sauce
2650	강의	A lecture or  discourse
2651	거	That thing
2652	고민하다	Be in anguish or  worried
2653	과	1) A course or  branch of study  2) a department or  a faculty
2654	교환	An exchange
2655	국어	1) The national language or  2) Korean
2656	노랗다	Be yellow
2657	다치다	To hurt
2658	상	Upper
2659	새	An interval
2660	악기	Musical instrument
2661	연말	The end, close of the year
2662	올려놓다	Put a thing on a place
2663	외면하다	Outward appearance
2664	원고	A manuscript
2665	줄곧	All the time, all through, repeatedly, constantly
2666	지출	Expenses, expenditure
2667	차	difference,margin
2668	치우다	Straighten up, tidy, remove
2669	피로	Fatigue, exhaustion
2670	향	perfume,incense
2671	개선하다	To renovate or  to improve
2672	계좌	Account
2673	당기다	Pull
2674	들다	Means continuing the main verb’s action ; to enter/go into ; to hold, to carry
2675	말기	The end, final period
2676	말없이	At a loss for words
2677	망하다	Go to ruin
2678	문서	A document
2679	박수	Applause
2680	부자	A rich person
2681	사흘	Three days
2682	서쪽	The west
2683	성립되다	To be concluded, formed
2684	손자	Grandson
2685	신랑	A bridegroom
2686	실습	Actual training,practice
2687	일찍이	Early
2688	자율	self-control,autonomy
2689	제법	quite,fairly,considerably
2690	집중되다	To concentrate
2691	창조적	Creatively
2692	천장	The ceiling
2693	파다	To dig
2694	하긴	Indeed, though, nevertheless
2695	해결되다	To be settled, resolved
2696	향상	Improve; elevation,rise
2697	화가	A painter, a drawer artist
2698	가라앉다	To sink (calm,settle,subside)
2699	감싸다	1) wrap up or  tuck in 2) to protect or  defend
2700	고작	To be at the highest or  the best
2701	구경하다	To watch or  enjoy watching
2702	국물	soup or broth or gravy
2703	기구	A utensil or  tool
2704	깔다	to pave (a road), lay down a floor, spread a blanket etc.
2705	다짐하다	Pledge, vow, swear
2706	대합실	A waiting room
2707	말씀드리다	Speak (honor.)
2708	매장	A store, shop
2709	멀어지다	Become distant to
2710	명칭	A name,title
2711	불쌍하다	To be deplorable
2712	상업	commerce,trade
2713	생산되다	To be produced
2714	숨기다	To hide
2715	실력	one’s real ability,talent
2716	야채	Vegetables
2717	엉덩이	The buttocks
2718	울음	crying,weeping
2719	이달	This month
2720	인체	The human body
2721	저고리	A coat, korean jacket
2722	전부	All, everything
2723	즐거움	pleasure,merriment
2724	지다	To lose (at war, a game)
2725	진단	Diagnosis
2726	질병	A disease, sickness
2727	짜다	Form, organize
2728	체력	Physical strength
2729	친하다	To be intimate, familiar, close, friendly
2730	헤아리다	Consider, weigh, ponder, consider
2731	각기	Each or  severally or  respectively
2732	경찰서	A police station
2733	곧바로	At once or  straight away
2734	관찰	Observation or  survey
2735	구두	Shoes or  boots
2736	군사	A soldier or  a private
2737	귀신	A ghost
2738	귀하다	1) noble or  high  2) dear  3) lovable or  precious
2739	그토록	So much or  to such an extent
2740	기초하다	Make the basis for
2741	깊이	Depth
2742	나뭇가지	A tree branch
2743	낫다	to get better (from an illness)
2744	답하다	Answer, reply
2745	대가	A price, cost, charge, consideration, purchase money, value
2746	더위	The heat
2747	말리다	Dry sth
2748	무덤	A grave,tomb
2749	물결	A wave
2750	밥상	Dinner table
2751	보장하다	To secure,guarantee
2752	사과	An apple
2753	사귀다	Make friends with
2754	서너	About three, three or four
2755	솟다	rise,soar,tower above
2756	실패	Failure
2757	예상하다	To expect, anticipate
2758	예외	An exception
2759	완전	Perfection, completeness
2760	웃기다	To be funny
2761	유리	A glass pane
2762	절대적	absolute,unconditional
2763	제작하다	To produce,manufacture
2764	쥐	Mouse
2765	최대한	At the most, at the maximum
2766	턱	The chin
2767	팔리다	To be in demand, to be sold
2768	품다	To hold, embrace
2769	하하	Ha ha ha ha ha
2770	형부	A husband of a girl’s older sister
2771	휴식	Rest, take a rest
2772	굳다	Harden or  become hard
2773	굳어지다	Become hard
2774	굶다	To starve or  go hungry
2775	금년	This year
2776	기기13	Machinery and tools
2777	까맣다	Black
2778	나침반	A compass
2779	농부	A farmer
2780	대학원	Graduate school
2781	더럽다	Foul, dirty
2782	도달하다	Arrival
2783	맛보다	Taste
2784	무늬	Pattern
2785	문장	writing,composition
2786	묻다	to Bury
2787	변호사	Lawyer
2788	상	A statue,a figure
2789	상상력	Imaginative powers
2790	여학생	Female student
2791	영업	business, doing business
2792	예	Old days, days gone by
2793	예방	Prevention, protection
2794	완성	completion,accomplishment
2795	유리하다	To be profitable, favorable
2796	자연환경	Natural surroundings
2797	증명하다	To prove,show,bear
2798	지적되다	To be pointed out to
2799	지점	A spot, point
2800	철저히	Thoroughly
2801	코스	Course
2802	학부모	Mothers of the students
2803	합리적	Rational, reasonable
2804	해석하다	To intrepret, construe
2805	힘쓰다	To try really hard
2806	거듭	Again or  over and over
2807	귀국하다	To return to one’s home country
2808	기뻐하다	Be pleased or  delighted with
2809	날리다	To send flying
2810	내려놓다	Set or put down
2811	냉장고	Freezer
2812	당근	A carrot
2813	덜다	Save, lighten
2814	마누라	one’s wife
2815	맞이하다	Go to greet
2816	불행하다	Do not permit
2817	신고하다	To state, declare
2818	연속	continuity,succession
2819	외롭다	To be lonely, lonesome
2820	욕	An insult
2821	원장	The chief/head (of a 학원)
2822	유물	A relic, cultural remains
2823	저절로	Of itself, on its own accord
2824	절	Bow in salutation
2825	정비	maintaining equipment in good working order
2826	주의	attention,notice
2827	지난번	Last time
2828	집어넣다	Put in
2829	통계	Statistics
2830	파일	File
2831	판	A match, game, contest
2832	피해자	A sufferer, the injured party
2833	필수적	necessary,indispensable
2834	학용품	School things, supplies
2835	화분	Flower pot
2836	환하다	To be clear, unobstructed ; to be light, bright (opp. 어둡다)
2837	갈색	Brown
2838	감기	A cold
2839	강남	South of a river
2840	구속되다	To be arrested
2841	멋지다	Be splendid
2842	반발	Repulsion, a backlash
2843	반찬	Sie dishes
2844	방지	Prevention, check
2845	배다	Soak into
2846	보장	guarantee,security
2847	빠져나오다	Come out of somewhere
2848	새다	leak,escape from
2849	소개되다	To be introduced,presented
2850	씨	Seeds (sow)
2851	안쪽	The inside, the inner part
2852	억울하다	To be regrettable, disappointing
2853	오가다	Come and go, keep going and coming
2854	요구되다	To be requested, claimed
2855	음성	A voice
2856	이윽고	After a while, shortly
2857	장식	Decoration
2858	전개하다	To unfold,evolve,spread out
2859	전날	The day before, the day prior
2860	전반적	over-all,all
2861	척하다	The preceding verb is a lie
2862	풍습	customs,manners,practices ; a ritual, rituals
2863	한가운데	The very middle, the center
2864	한정되다	To be limiited, qualified
2865	해내다	To accomplish, achieve, carry through
2866	흉내	Imitation, mimicry
2867	감옥	Prison
2868	갚다	Pay back a loan
2869	건전하다	Health or  soundness or  vitality
2870	결혼식	Wedding
2871	계산기	Calculator
2872	광장	An open space or  a plaza or  public square
2873	그렇지	So it is or  that is right
2874	깨다	Break or  crack
2875	꽉	Tightly or  fast
2876	끼우다	To put between or  insert
2877	노래하다	To sing
2878	다듬다	Trim, shave
2879	다름없다	Be similar, not different
2880	당당하다	Dignified
2881	댐	Dam
2882	덩어리	A lump, a cluster
2883	모처럼	At long last
2884	물리학	Physics
2885	벌	Punishment
2886	부정적	negative, contradicting sth else,  not positive
2887	북부	The north part
2888	분리	separation,segration
2889	상당	proper,fit,suitable
2890	세다	To be strong, mighty
2891	소개	Introduction
2892	수화기	Telephone receiver
2893	애인	A lover
2894	애초	The first, the beginning
2895	얇다	To be thin
2896	양념	Spices and condiments
2897	에	at/in/on
2898	오염되다	To be polluted, contaminated
2899	오해	Misunderstanding
2900	웬일	What cause, what reason
2901	의식	A ceremony
2902	의지하다	To look to, depend on, rely on
2903	일기	A diary, journal
2904	절대	Absoluteness
2905	제한하다	To restrict,limit
2906	존중하다	appreciate,esteem,value
2907	창고	A warehouse,storehouse
2908	채	Still, not yet
2909	책임지다	Take responsibility
2910	청춘	youth,the springtime of life
2911	초반	The opening part (of a game of baduk)
2912	트럭	Truck
2913	파	Onions
2914	폭넓다	To be broad
2915	표현되다	To have been expressed
2916	학번	Year of graduation
2917	학원	Learning institute
2918	허가	Permission, grant, leave
2919	헤매다	Wander about, roam about
2920	가장	Head of a household
2921	곡	A tune or  an air
2922	곡식	Cereals or  grain
2923	꽂다	Be stuck in or  insert
2924	망설이다	Hesitate
2925	무리	A company, a band
2926	버터	Butter
2927	별다르다	Be of a peculiar kind
2928	보편적	Universal
2929	부품	Parts, accessories
2930	뻔하다	almost,nearly
2931	뽑히다	Be taken out, pulled out
2932	상담	Consultation
2933	서부	The western part
2934	속담	A proverb,saying
2935	시중	In the city
2936	심사	judgment,examination
2937	아이	Oh my god!
2938	앞세우다	Make a person go
2939	유사하다	To be similar, to resemble
2940	유치원	Kindergarten
2941	의욕	volition,will,desire
2942	인근	The neighborhood
2943	일반인	Of the general public
2944	작성하다	To edit or compose, write up ; to fill out a form
2945	전공	Specialty
2946	정기	A fixed time period
2947	제의	A proposal,an offer
2948	종일	All day, throughout the whole day
2949	좋아지다	To become better
2950	차림	Appearance of clothes or worn objecs
2951	창조하다	Create
2952	추위	Cold
2953	토마토	Tomato
2954	파랗다	To be blue
2955	펴내다	Publish, bring out in print
2956	하드웨어	Hardwaer
2957	화장	Makeup
2958	가져가다	To take or  carry
2959	감자	Potato
2960	강렬하다	Intense or  strong or  severe
2961	갖다	Possess
2962	괴롭다	Be painful or  distressing
2963	교통사고	Traffic accident
2964	군데	A place or spot
2965	메시지	Message
2966	면하다	escape,avoid
2967	모색하다	Evening twilight
2968	붙잡다	seize,catch
2969	빛깔	A color,shade,hue
2970	뺨	Cheek
2971	사방	The four directions
2972	살림	living,livelihood
2973	실현	realization,materialization
2974	아냐	No, that’s not the case
2975	연예인	A performer, an entertainer
2976	영원히	Forever
2977	월급	Monthly salary
2978	유행	Fashion, vogue
2979	이내	soon,right away
2980	이리	This way, this direction
2981	제발	kindly,please
2982	차츰	gradually,step by step
2983	투표	vote,voting
2984	파괴하다	Destruction, demolition
2985	하느님	God
2986	해당되다	To be applied/applicable under
2987	홀로	Alone, by oneself
2988	가까이	Close
2989	가득하다	To fill
2990	각자	Each one or  every one
2991	감히	Daringly or  boldly
2992	강요하다	Insist on6000 Most Common Korean Words – 2
2993	개미	Ant
2994	관습	Custom or  usage
2995	광경	A spectacle or a sight in 3-d and uncut (compare 관광 tourism)
2996	금세	In a moment or  at once
2997	낮추다	Lower, make low
2998	내주다	Take out and give away
2999	명의	name,title
3000	물고기	Fish
3001	물러나다	Fall back, to pull back, to pull back your position
3002	밀접하다	Be close,intimate with
3003	부탁	request,favor
3004	분량	quantity,measure
3005	불과	Only, not more than
3006	뻔하다	Be clear,evident
3007	상자	A box,case
3008	새해	A new year
3009	소박하다	simple, naive, ingenuous
3010	수없이	Be unable to do
3011	승진	promotion,advancement
3012	양	Both, two
3013	얼음	Ice
3014	열매	Fruit
3015	적히다	To be recorded,written down
3016	점수	marks,the number of marks
3017	제한되다	To be restricted,limited
3018	지속되다	Be lasting a long time, be continous
3019	쫓기다	To be chased, be driven
3020	쭉	All the time
3021	통장	A bankbook (check register)
3022	평가되다	To be appraised
3023	하도	Too much, excessively
3024	한창	The height, summit , the top
3025	해안	The seashore, the coast
3026	호박	Pumpkin
3027	흑인	A Negro
3028	간	Liver
3029	갇히다	Be confined or shut up
3030	결심하다	To resolve or be determined
3031	경기장	Sports stadium or a sports field
3032	고장	Broken
3033	근로	Labor or exertion
3034	눈동자	The pupil
3035	늦다	Be late, overdue
3036	닥치다	Shut the mouth!
3037	도시락	Lunchbox lunch
3038	몸짓	A gesture
3039	부담하다	bear,shoulder a responsibility
3040	부회장	A vice president
3041	빼앗다	Snach, take away from
3042	삼키다	Swallow
3043	성실하다	Be ripe
3044	스튜디오	Studio
3045	실제	The truth, a fact
3046	요새	recently,lately
3047	이상적	Abnormal
3048	일쑤	Habitual practice
3049	일체	All, everything,the whole
3050	자꾸만	Repeatedly (emphasized)
3051	잦다	Be frequent, incessant
3052	절망	despair,hopelessness
3053	접다	Fold up
3054	제시되다	To be presented
3055	주방	A kitchen, a cookroom
3056	진출하다	Penetrate into, advance
3057	짜증	Annoyance
3058	첫날	The first day
3059	통과하다	Passage through
3060	투명하다	To be transparent, clear
3061	확산되다	To get diffused
3062	경력	one’s personal history
3063	고통스럽다	Be painful or torment
3064	곤란하다	Difficulty or trouble
3065	공중	The air or the sky
3066	공해	Environmental pollution
3067	귀찮다	Annoying irksome
3068	기대다	1) To rely upon or lean upon 2) lean against
3069	깨어나다	Return to consciousness
3070	꼽히다	To be elected
3071	대다수	A large majority
3072	듯싶다	To be like something, i guess
3073	먹이	Food
3074	무	Radish
3075	무료	Free
3076	밉다	Be detestable
3077	발레	Ballet
3078	상징하다	Symbolize
3079	실현하다	To realize,bring to fruition
3080	아깝다	regrettable,pitiful
3081	안정되다	To be stable
3082	어리석다	juvenile,foolish
3083	엎드리다	Prostrate oneself, lie on the ground
3084	여럿	many,many people
3085	연설	A public speech
3086	연필	Pencil
3087	염려	anxiety,worry
3088	우습다	To be funny, amusing
3089	운전	Driving
3090	익숙하다	To become accustomed to
3091	일자	A date, the number of days
3092	잔치	banquet,feast
3093	전달되다	To be delivered
3094	차다	cold,chilly
3095	치료하다	To cure, heal, treat a patient
3096	칸	Blank space
3097	한	A grudge, rancor
3098	갈수록	As one goes aong
3099	갖가지	 A variety of or all sorts
3100	거절하다	Refuse or reject
3101	관광객	A tourist
3102	구별하다	To distinguish between A and B
3103	국	Soup or broth
3104	다행	Good luck
3105	마무리	Finish, completion
3106	마주치다	Collide with
3107	막상	Really, actually
3108	몸통	The trunk,body
3109	못	A nail
3110	묘사하다	To describe
3111	미술관	Fine arts museum
3112	베다	Cut, chop
3113	보장되다	Be secured
3114	볼	Cheek
3115	부분적	Departmental
3116	불고기	Roast meat
3117	불리다	soak,steep
3118	불행	Unhappiness
3119	비명	A scream
3120	순수	purity,genuineness
3121	시각	The time of day
3122	실질적	substantial,essential
3123	안개	Fog
3124	여름철	Summertime
3125	오로지	Only, solely, exclusively
3126	완성하다	To accomplish, to end successfully
3127	이런저런	This and that, one and another
3128	임무	A duty, an office, a task
3129	자연히	Naturally
3130	장난	A game,playing
3131	저런	Such a, that sort of
3132	전용	Exclusive or private use
3133	지극히	very,extremely
3134	청하다	ask,request
3135	확정	decision,settlement
3136	가상	Imagination
3137	각자	Each one or every one
3138	간혹	Occasionally or at times
3139	개방하다	To open or to throw open
3140	관계되다	Be affected or influenced by
3141	국산	A country’s product
3142	그해	That year
3143	꺼지다	To go or die out
3144	꼭대기	The top
3145	끊어지다	To break off or expire or be done with
3146	도	Road
3147	마이크	Mike
3148	메우다	To carry,attach;put on
3149	면적	area,dimensions
3150	목욕	A bath
3151	반성	Reflection
3152	벌떡	Suddenly, abruptly
3153	보상	Compensation
3154	분리되다	To be segregated
3155	빚	Debt
3156	새기다	To sculpt,engrave
3157	서민	Common people
3158	석	A seat,sitting place
3159	선정하다	select,choose
3160	세다	Count
3161	소수	A small number, a few
3162	쇼	Show
3163	수학	Mathematics
3164	시어머니	one’s husband’s mother
3165	시집	one’s husband’s home/family
3166	연간	For a year
3167	영화제	Movie festival
3168	예측하다	To predict, forecast
3169	용도	use,service
3170	의심	A doubt
3171	이동하다	To move,migrate,travel
3172	자극하다	To stimulate
3173	재빨리	quickly,rapidly
3174	적합하다	suitability,fitness
3175	전화번호	Telephone number
3176	조절하다	To regulate,tune
3177	조정	regulation,control,coordination
3178	중얼거리다	Mutter to oneself
3179	지급하다	To pay,allow,furnish sth
3180	확장	expansion, enlargement
3181	힘차다	Be forcible,powerful
3182	건조	Dryness or aridity
3183	고요하다	Be quiet or silent or still
3184	그대	You or thou
3185	그립다	Beloved or sweet or affectionate
3186	긋다	1) draw or mark 2) strike
3187	기둥	A pillar
3188	긴장하다	To become tense
3189	날카롭다	Sharp
3190	논하다	Argue, discuss,debate
3191	느리다	Be slow, tardy
3192	도덕	Immorality
3193	뒷모습	The features of the back side
3194	만	10000
3195	만만하다	Be soft, tender ; to be easy to handle, deal with
3196	못되다	To go wrong
3197	보고하다	Report to a person
3198	사무소	Office
3199	사촌	a cousin
3200	상	A prize
3201	상인	merchant,trader
3202	선언하다	declare,proclaim,announce
3203	소원	one’s desire
3204	수입하다	To import
3205	식다	To get cold, cool off
3206	엿보다	Wait for an opportunity
3207	완성되다	To be accomplished
3208	유적	Remains, relics,ruins
3209	일생	one’s lifetime
3210	입히다	Clothe, dress
3211	잡아먹다	Slaughter and eat
3212	정보화	Change to an information orientation
3213	종종	A variety of things
3214	지갑	A purse,wallet
3215	차다	Put on, fasten,wear
3216	창작	Creation, origination
3217	축소	Reduction, a cutback
3218	취향	Taste, liking, one’s inclinations
3219	친절하다	To be kind, to be nice
3220	카운터	Counter, where you pay
3221	탄생하다	To be born
3222	하숙집	Dormitory, boarding house
3223	학급	A class (school)
3224	해군	The navy
3225	효율적	The utility factor, efficiency
3226	가슴속	one’s heart feelings
3227	간	A salty taste or saltiness
3228	간판	A signboard
3229	건드리다	1) touch or jog 2) irritate or vex
3230	관리하다	To manage or control or supervise or manage
3231	괴로움	Trouble or annoyance or distress
3232	근거하다	To base sth on sth
3233	금액	Amount ofmoney
3234	다행히	Fortunately
3235	달래다	Calm down
3236	말리다	Make stop
3237	맘	Heart
3238	먹다	VST + 먹다 , adds no meaning
3239	명절	Festival days
3240	못하다	Be inferior, worse than
3241	바이올린	Violin
3242	밝혀내다	To find out
3243	부서지다	Break, be broken
3244	비행	Flying, aviation
3245	상관없다	To not be of concern
3246	성립하다	To exist, to come into being
3247	수명	Life span
3248	시즌	Season
3249	신기하다	To be marvelous,astounding
3250	업다	To carry on one’s back, to shoulder sth
3251	예감	A presentiment, a premonition
3252	음식물	Anything to eat or drink
3253	자신감	Self-confidence
3254	죄인	A criminal
3255	주의하다	Pay attention to
3256	준비물	Stuff that needs to be prepared
3257	천	Cloth, woven stuff
3258	출입	Coming and going
3259	쾌감	A pleasant sensation, a good feeling
3260	탄생	Birth
3261	튀다	Spring, bound, jump
3262	하필	Why necessarily? Why of all things?
3263	활용	Practical use
3264	회색	Gray
3265	거액	A large sum of money
3266	고교	High school
3267	고집하다	To be stubborn or persistent
3268	곧잘	1) fairly or pretty well 2) frequently or too often
3269	골짜기	A valley or gorge
3270	교훈	Edification or giving instructions to
3271	구르다	Roll over
3272	글씨	1) Handwriting 2) a letter or an ideograph or a character
3273	노래방	Singing room
3274	단편	A piece, fragment
3275	대처하다	Disposal, treatment
3276	매다	Tie
3277	머리카락	Headhair
3278	명확하다	clear,precise
3279	발걸음	Gait, step
3280	발길	A kick; walking pace, steps
3281	벌레	A bug
3282	빼앗기다	A thing be taken away
3283	생산자	A producer
3284	선진	seniority,advance
3285	성인	An adult
3286	소매	1)a sleeve 2) a retail sale
3287	시멘트	Cement
3288	신규	A new regulation, a new project, sth new on a big scale ; work being done anew
3289	신청하다	To apply (for)
3290	실은	In reality, to tell the truth
3291	심판	referencing,umpireship
3292	안기다	to be embraced by sb (in their arms)
3293	양심	Conscience
3294	이사장	A director
3295	이자	Interest
3296	익숙해지다	To become accustomed to
3297	자세하다	Be detailed
3298	저거	That thing over there
3299	저축	savings,saving
3300	제비	A swallow
3301	제안	A proposal,suggestion
3302	제안하다	To propose,make a suggestion
3303	증세	Symptoms, a patient’s condition
3304	지난날	Old days, old times
3305	진급	Promotion
3306	콩나물	Bean soup
3307	튀어나오다	Jump out, spring out
3308	표준	A standard, norm, criteria
3309	항구	A port, a harbor
3310	허용	Permission, allowance
3311	헬기	Helicopter
3312	간신히	Narrowly or barely. 겨우
3313	갈아입다	Change one’s clothes
3314	감다	Wind up
3315	같이하다	To do together or to share
3316	거짓	Fabrication or fiction
3317	거품	Bubble
3318	걸어오다	Come on foot or walk
3319	공군	The air force
3320	기술자	Technician
3321	나물	Herbs, wild greens
3322	년생80	Year of birth
3323	달리기	A run, a spin
3324	대도시	Large city
3325	도둑	A thief, a burglar
3326	도전	Challenge, defiance
3327	면	Subdivision of a county
3328	모자	A hat
3329	보조	assistance,aid
3330	불리하다	to be disadvantageous,unfavorable to/for
3331	불편	Inconvenience
3332	비비다	rub,chafe
3333	사과	An apology
3334	살아나다	revive,be brought back to life
3335	소파	Sofa
3336	속이다	deceive,cheat
3337	수면	sleep,slumber
3338	수천	Thousands
3339	스무	20
3340	승부	A contest,match
3341	시기	The time, the season
3342	신념	belief,faith
3343	신입생	A new student
3344	어린아이	A youngster, a child
3345	어쩐지	(1) somehow, in a strange way ; (2) in combination with an ending giving a reason to place stress on the action of the verb
3346	여간	Some, a little (여간 ~지 않다 means very very ~다)
3347	역	A railroad station/depot
3348	연락하다	To contact, get in touch with
3349	영향력	Influence, power to influence
3350	예의	Courtesy, politeness
3351	이내	within,less than
3352	이리저리	This way and that, here and there
3353	인간적	Personal
3354	인사하다	To greet, say hello
3355	임금	A king, ruler,sovereign
3356	잘나다	To be handsome,excellent
3357	재능	talent,ability
3358	지불하다	To pay
3359	파출소	Small, local police box
3360	판	Board
3361	한문	Chinese writing, chinese classics
3362	건네주다	To pass over or to put on the other side (of a river)
3363	결승	The decision of the final round of a contest
3364	공공	The public or the common
3365	교양	Culture or education
3366	국왕	A king or a monarch
3367	규칙적	Be regular or systematic
3368	극복	Conquest or subjugation
3369	글쎄요	Now or well or let me see
3370	내려지다	To become lower
3371	냉동	Refrigeration
3372	녹다	To melt
3373	대개	Mostly, for the most part
3374	배추	Chinese cabbage
3375	센터	Center
3376	수염	Beard
3377	수집하다	To collect
3378	승객	Passenger
3379	싱싱하다	Be fresh, full of life
3380	아아	Oh-oh!
3381	어리다	one’s eyes dim with tears
3382	여권	A passport
3383	열쇠	Lock
3384	오렌지	Orange
3385	외모	Outward appearance
3386	인공	Art, human skill
3387	잠자리	Bed
3388	장남	The eldest son
3389	저마다	Each one, everyone
3390	전국적	National
3391	전반	The whole, all, general
3392	제자리	The proper/original place
3393	지루하다	Be tedious
3394	척	A few ships (vessels)
3395	포도주	Grape wine
3396	학술	Science, learning, scolarship
3397	혈액	Blood
3398	화살	An arrow
3399	화재	A fire, a blaze
3400	가르다	1) split or divide 2) distribute or share 3) distinguish or separate
3401	각각	Each and every
3402	간격	A space or interval
3403	고함	A shout or yell
3404	공격하다	To attack
3405	그놈	That person or that guy
3406	기록되다	To be recorded or written down
3407	끝없다	Endless or unfathomable
3408	끼어들다	Interrupt
3409	노선	Route
3410	답	Answer
3411	대사	Speech, dialogue
3412	도망치다	To make an escape
3413	독서	Reading
3414	땅속	In the soil
3415	벌금	A fine
3416	복	luck,happiness
3417	봉사	service,attendance
3418	부서	one’s post,duty
3419	성	castle,fortress
3420	소형	Small size
3421	신인	A new man
3422	악몽	Nightmare
3423	안내	Guidance, conducting
3424	앞뒤	Before and behind
3425	언덕	A hill
3426	열정	Passion
3427	오페라	An opera
3428	입맛	Appetite, taste, palate
3429	재즈	Jazz
3430	적응하다	Be suited to, adapted to
3431	절대	Absoluteness
3432	접시	A plate,platter
3433	제공	An offer
3434	지나치다	Go too far, to go to extremes
3435	참가	participation,joining
3436	체중	Body weight
3437	추석	Korean thanksgiving
3438	충돌	A collision, clash; discord
3439	통로	A passage, a way, an aisle
3440	포장	packing,wrapping
3441	해소	Dissolution, disorganization
3442	현관	The porch, the entrance
3443	현대인	A modern person
3444	혜택	A favor, benefit
3445	호수	 A lake
3446	확	With a burst, great puff
3447	건너가다	To cross or go over (river or street)
3448	골고루	Evenly or among all indiscriminately
3449	구석구석	Every nook and corner
3450	그제서야	Then
3451	껌	Gum
3452	녹색	Green
3453	막내	The lastborn
3454	반복되다	To be repeated
3455	발전	Generate electricity
3456	방해	An obstacle, hindrance
3457	번호	A number
3458	벼	A rice plant
3459	본인	Person in question
3460	상점	A shop,store
3461	수백	Hundreds
3462	실장	boss,president
3463	쓸쓸하다	Be lonely,lonesome
3464	악수	Handshake
3465	애	Troubles, worries
3466	어지럽다	To be dizzy 2) to be in chaos, disorganized
3467	어찌하다	Be subject to an attack of vertigo (figuratively), to not know what the hell is going on or what to do.
3468	예정되다	Make a program, set a schedule
3469	이중	duplication,double
3470	인원	The number of persons
3471	인정받다	To receive recognition
3472	인터뷰	Interview
3473	입학하다	To enter/be admitted into a school
3474	자랑	Pride
3475	저것	That thing over there
3476	정문	The front gate,main entrance
3477	착각	Hallucination, illusion
3478	창	Window
3479	친정	A woman’s maiden home and family
3480	켜지다	To become turned on
3481	타입	Type
3482	팩	Pack
3483	표시하다	To make a sign, display
3484	행하다	To do, act, behave
3485	활짝	extensively,widely
3486	감상하다	To show appreciation
3487	개별	An individual or a particular case
3488	공식적	Formal or procedural
3489	그런대로	Such as it is or anyways
3490	기독교	Christianity
3491	깨달음	Realization
3492	끼다	To smoke
3493	넘어지다	Fall down, collapse
3494	눈부시다	To be dazzling
3495	단점	A weak point
3496	마음먹다	Be determined to
3497	목록	Catalogue
3498	반복하다	To repeat
3499	반성하다	Examine oneself
3500	별명	nickname,alias
3501	보전	ingegrity,preservation
3502	불어오다	Call to come
3503	소유하다	To possess,hold
3504	수박	Watermelon
3505	스위치	Switch
3506	신세	indebtedness,obligation
3507	알아내다	To find out (e.g. the answer)
3508	암	Cancer
3509	야단	A clamro, uproar 2) a scolding
3510	얘	Yes.
3511	엔	Yen (japanese)
3512	연결	Connection, linking
3513	연관	a connection, a grouping together, relationships
3514	용서하다	To pardon, to forgive
3515	우정	Feeling of friendship
3516	육군	The army
3517	음식점	Restaurant
3518	의논하다	To consult,confer with, talk over a matter
3519	인분	How many people counter for at restaurants
3520	주요하다	To be chief,principal,leading
3521	죽	Rice porridge
3522	차마	For all the world
3523	참조	reference,comparison
3524	첫째	The first
3525	타고나다	Be born, gifted/endowed with
3526	태우다	To take in a car, give a ride to
3527	행사	Use, exercise
3528	향수	A perfume
3529	허용되다	To be permitted, approved
3530	가입	Entrance
3531	가정	Supposition
3532	과자	A snack or pastries or candy
3533	교체	Shift or change or alternate
3534	김	Seaweed, laver
3535	꼬마	A dwarf
3536	끝없이	Boundlessly
3537	나르다	to move a long or semi-long distance (not just within a room); Carry, convey, transport
3538	놀리다	Banter, tease
3539	늘어놓다	(1) Scatter about haphazardly ; (2) 으로 늘어놓다 to arrange, place in order
3540	닫히다	To shut, be closed
3541	대표하다	Represent
3542	대학교	University
3543	도로	Back, same as ever, same as it was before
3544	막걸리	A slightly bitter soju drink
3545	맡다	Smell
3546	미스	Miss
3547	밀리다	to be left undone, to be late in making a payment (to fall into arrears) (2) to be pushed, shoved
3548	밥그릇	A rice bown
3549	방문	A door of a room
3550	병들다	Get sick
3551	부러지다	Break, get broken
3552	불꽃	flame,blaze,spark
3553	상대성	Relativity
3683	강도	Intensity or strength
3554	설문	questions like those on a questionnaire
3555	소설가	Novelist
3556	쓸다	brush, sweep perhaps lightly
3557	안녕히	Peacefully
3558	안팎	The interior and exterior, both sides
3559	예방하다	To protect, prevent, fend off
3560	올	Coming (year, week)
3561	유의하다	To bear in mind, be heedful of
3562	유학	Confucianism
3563	이해되다	To be understood
3564	인하	reduction,lowering
3565	작성	editing,composition ; filling out a form
3566	잘리다	Be snapped,broken,cut off
3567	전달	Delivery
3568	전시회	An exhibition, show, display
3569	전화하다	To call
3570	전환하다	To exchange, to convert, to change over
3571	정치학	Political science
3572	좌석	A seat
3573	주문	An order, a request
3574	집안일	Housework
3575	체계적	Systematic, organizational
3576	출근	Going to work
3577	크림	Cream
3578	탁월하다	Be excellent, prominished
3579	텅	Hollow
3580	토하다	To vomit
3581	푹	Completely, entirely
3582	한순간	One fleeting moment
3583	가사	Words or lyrics
3584	가입자	Member or subscriber
3585	감소하다	To reduce or diminish
3586	개구리	Frog
3587	결과적	Resultative
3588	괴롭히다	Afflict or worry
3589	구별	A distinction or a separation
3590	깨우다	To wake up or awaken
3591	끈	A string or a cord
3592	끊기다	To be cut off or severed
3593	끊임없다	To not end
3594	넉넉하다	To be enough
3595	두어	About two, a couple
3596	마약	A drug
3597	밑바닥	The bottom,base
3598	보도되다	To be reported
3599	보리	Barley
3600	본부	The headquarters
3601	부	wealth,riches
3602	성숙하다	to ripen, to mature
3603	소극적	Passivity,passiveness
3604	소용	use,usefulness
3605	손질하다	Handle with care
3606	수건	Handkerchief
3607	순식간	A brief instant
3608	시도	An attempt,test
3609	시집	A collection of poems
3610	아무개	Mr. so-and-so
3611	약점	A weak point, a vulnerable point
3612	양복	Western European style clothing
3613	어째서	For what reason, why is that
3614	얼다	Freeze, be frozen
3615	여	A woman, a girl
3616	연령	Age, years of age
3617	예비	Preparation, reserve
3618	울음소리	Sound of crying
3619	이놈	That rascal!
3620	이력서	Curriculum vitae, a resume (for a job)
3621	인정되다	To be recognized
3622	잠자다	Fall asleep
3623	젓가락	A pair of chopsticks
3624	주년	One whole year
3625	중단하다	To interrupt, to stop
3626	중대하다	importance,gravity
3627	중심지	A central place
3628	집중적	Related to the concentration
3629	참되다	To be true, honest, faithful
3630	초청	An invitation
3631	출판사	A publishing company
3632	탁자	A table, desk
3633	토끼	A rabbit
3634	퍽	Very, very much
3635	풍속	Manners, customs, morals
3636	피아노	Pian
3637	핑계	Excuse
3638	한층	More, still more
3639	행운	Good luck, good fortune
3640	가로막다	Interrupt or obstruct
3641	간섭	Interfere or meddle
3642	갈증	Thirst
3643	갑작스럽다	All of a sudden
3644	교환하다	To exchange
3645	그래야	And so or and then
3646	기원	Origin
3647	길가	The roadside
3648	난리	A war, revolt
3649	남매	Brother and sister
3650	내버리다	Throw away
3651	미사일	Missile
3652	발가락	A toe
3653	보존	Preservation
3654	보호되다	To be protected
3655	뵙다	see,meet
3656	부치다	to send, to post
3657	상관	Concern, relation
3658	설명되다	To be explained
3659	섭섭하다	Be sorry,disappointed
3660	세	A generation,age,epoch
3661	세련되다	To be polished,refined
3662	손쉽다	Be easy, simple
3663	안주	Appetizers for alcohol
3664	어린애	A youngster, a child
3665	열기	Heat, hot air
3666	옷차림	Dress, one’s way of dressing
3667	위로하다	To console, soothe somebody
3668	이같이	Like this, like so
3669	인형	A doll
3670	일치	Agreement, accord
3671	재생	revival,restoration to life
3672	전철	An electric railway
3673	찢어지다	To be torn, rent
3674	철학자	Philosopher
3675	축하하다	To Congratulate sb
3676	컬러	Color
3677	통화	Conversation by telephone
3678	특이하다	Be peculiar, special, unique
3679	필연적	Necessity, necessary
3680	하룻밤	One night, a single night
3681	흘러내리다	Run (stream,pour) down
3682	가짜	Fake
3684	곰	Bear
3685	급히	Fast or quickly or in a hurry
3686	기념	Commemoration
3687	나아지다	Become better, be improved
3688	넘어오다	Fall, come down
3689	매너	Manner
3690	민속	Folk-customs
3691	버려지다	Take away, throw away to somewhere
3692	빗물	Rainwater
3693	사위	environment,surroundings
3694	설날	New Year’s Day
3695	설득하다	Persuasion
3696	손질	handling,care
3697	손톱	Fingernail
3698	식빵	Bread
3699	아르바이트	Part time
3700	외로움	Loneliness
3701	외우다	Recite from memory
3702	운전자	The driver
3703	유리창	A window which uses glass
3704	입대	Enlistment, enrollment
3705	적성	Aptitude
3706	전망하다	Have a view of, observe
3707	집단적	Collectively (of people)
3708	차이점	A point of difference
3709	찬물	Cold water
3710	철도	Railroad
3711	총각	A bachelor, an unmarried man
3712	캠페인	Campaign
3713	태풍	Typhoon
3714	한눈	A look, glampse, look
3715	햇볕	Sunbeams, sunlight
3716	홍수	A flood, inundation
3717	가뭄	A drought
3718	간접	Indirectness
3719	강력히	With great strengh or or might
3720	개선되다	To be renovated or to get improved
3721	건네다	Speak to a person or address
3722	게	A crab
3723	결심	Determination or resolution
3724	곧장	Directly or straightforwardly ; to do something straight away
3725	교직	The teaching profession
3726	구속하다	To arrest or restrain
3727	귀중하다	To be precious
3728	긁다	Scratch or scrape
3729	금지하다	To restrain or prohibit
3730	기사	Technician
3731	기숙사	A hostel or residence hall
3732	나뭇잎	Tree leaves
3733	내쉬다	Exhale
3734	넓어지다	Get wider
3735	늘어지다	Be lengthened
3736	단독	Independence
3737	마당	An instance, case
3738	마음껏	As much as you want
3739	몰려들다	Be driven into
3740	미팅	Meeting
3741	바	Bar
3742	바퀴	Wheel
3743	발자국	Footprint
3744	뱉다	Spit
3745	벌어지다	Widen, get wider
3746	보너스	Bonus
3747	산책	A walk,stroll
3748	생기	animation,life
3749	서적	books,publications
3750	소화	Digestion
3751	수험생	A student preparing for an examination
3752	시끄럽다	To be noisy,boisterous
3753	신세대	The new generation
3754	안기다	(1) To fix on a person, lay the blame on a person (2) to throw onto sb, to pass onto sb, to pawn off onto sb, to hand over to sb
3755	어기다	Run counter to, go against
3756	어때	What do you think?
3757	엘리베이터	Elevator
3758	연구원	Researcher
3759	연애	Love, tender, passion
3760	연휴	Consecutive holidays
3761	요약하다	summary,condense,abridge
3762	운동하다	To do exercise
3763	월요일	Monday
3764	위성	A satellite
3765	의외로	unexpectedly,surprisingly
3766	이모	A maternal aunt
3767	자살	Suicide
3768	제시	Presentation
3769	제외되다	To be excluded
3770	조카	Nephew
3771	주소	An address
3772	찍히다	Get sealed, stamped
3773	철	Steel
3774	취직	Employment, getting a job
3775	타락	depravity,corruption,degradation
3776	통화	Currency, the unit of circulation
3777	틀림없이	No mistaking it
3778	파티	Party
3779	회관	An assembly hall
3780	계획하다	Plan or make a project
3781	공연장	Auditorium
3782	국적	Nationality or citizenship
3783	근래	Of late or recently
3784	나뉘다	Divide
3785	낱말	A word
3786	내외	Men and woman, husband and wife
3787	냄비	A pot
3788	늑대	Wolf
3789	늘어서다	Stand in a row
3790	다정하다	To be affectionate, warm-hearted
3791	달다	to be sweet
3792	달려들다	Run, rush, jump at
3793	망원경	Telescope
3794	모범	model,example
3795	무리하다	Be impossible
3796	묶이다	Be fastened together
3797	방해하다	Interrupt, interfere
3798	뱀	Snake
3799	벌	Set (of clothes)
3800	뵈다	Contraction of 보이다
3801	상류	The upper classes,upstream
3802	석	Three (in 3 months)
3803	선명하다	To be clear,distinct
3804	선호하다	To prefer
3805	성공적	Successfully
3806	소규모	Small scale
3807	수시로	On demand, per the demand of the occasion ; all the time, at any time
3808	시야	Visual field
3809	실현되다	To realize,bring to fruition
3810	아니야	No, that’s not the case
3811	어느덧	Before one knows it
3812	오르내리다	Go up and down, rise and fall
3813	왕자	Prince
3814	우수하다	to be superior,excellent
3815	유명	fame,celebrity status
3816	유형	A similar type
3817	으레	customarily,habitually
3818	일상적	Daily, of the everyday things
3819	일일이	One by one, individually
3820	전공하다	To major in something
3821	전후	sequence,order,front and rear
3822	정상	normalcy,normality
3823	정상적	normal,like usual
3824	질적	Qualitative
3825	척	To appear or look as
3826	철	Season (the 4)
3827	청소하다	To clean
3828	충격적	Shocking
3829	치아	A tooth
3830	편의	Convenience, expediency
3831	폐지	Abolition, to not use, to do away with
3832	해설	Explanation, elucidation
3833	헌	Old, shabby, worn-out
3834	흑백	Black and white
3835	희생	A sacrifice
3836	가까워지다	Get closer
3837	감사하다	To thank
3838	강도	A robber or burglar
3839	경비	Expenses or outlay
3840	경제력	Economic power
3841	금하다	1) suppress or restraint 2) abstain from or restrain from
3842	기대되다	To be expected
3843	깊숙이	Deep or far
3844	꿀	Honey or nectar
3845	넘어뜨리다	Throw down
3846	농사짓다	To do farming
3847	단단하다	Be hard, solid
3848	담당자	Person in charge
3849	답변	An answer
3850	대비	Provision, preparation
3851	대체	An outline, summary
3852	더욱더	More and more and more
3853	도심	The heart of the city
3854	마찰	Rubbing, chafing
3855	마크	a company logo
3856	만족	Satisfaction
3857	망치다	Ruin
3858	메뉴	Menu
3859	모금	Money raising
3860	묘사	Description
3861	문화적	Cultural
3862	묻히다	Have smeared,be covered with
3863	미혼	Unmarried
3864	발전되다	Be advanced, prospering
3865	방송사	Broadcasting company
3866	방지하다	To prevent, check
3867	사표	A written resignation
3868	삼가다	Be discreet,take care of ; to abstain (refrain) o.s. from doing
3869	생방송	A live broadcast
3870	셋째	The third
3871	소홀히	carelessly,indifferently,neglectfully
3872	손발	Hand and foot; the limbs
3873	쌍둥이	Twins
3874	안내하다	To lead the way
3875	앉히다	To place a person in a set
3876	영하	Below zero
3877	옆구리	The side, the flank
3878	외교관	A diplomat
3879	외국어	A foreign language; sometimes, only means English
3880	웬만하다	To be just only barely passable, fairly good
3881	유행하다	To be in fashion, to be popular
3882	으응	Ugh!
3883	이어서	Subsequently
3884	자장면	Black chinese noodles
3885	자정	Midnight
3886	종합하다	synthesize,integrate
3887	중학생	Middle school student
3888	짜다	Squeeze, press out
3889	참	At the point of, when
3890	채	House counter
3891	최후	The last, the end, the conclusion
3892	취재	Selection, picking out of news articles (by a reporter)
3893	테러	Terror
3894	토론회	A debating society/contest
3895	한잔	A drink of liquor
3896	호주머니	A pocket
3897	휴일	A day off of work, a holiday
3898	가난	Poor
3899	가죽	The skin or hide or leather
3900	관계없이	Without any relation
3901	군	A county or district
3902	기다	Crawl or creep
3903	다툼	A quarrel
3904	달력	A calendar
3905	대	One piece
3906	대낮	Broad daylight
3907	데려가다	Take with
3908	도자기	Porcelain
3909	모조리	One and all, wholly
3910	변경	Change, alteration
3911	부지런히	Diligently
3912	사슴	Deer
3913	삼촌	An uncle (usually on the father\\’s side)(외삼촌 a brother of the wife, an uncle on the mother\\’s side)
3914	상당수	plenty/a lot of
3915	소풍	Picnic
3916	속옷	Underwear
3917	손목	The wrist
3918	손실	Loss
3919	슬쩍	Secretly, on the sly, stealthily
3920	시나리오	Scenario
3921	신문지	Newspaper paper
3922	실컷	To one’s satisfaction
3923	양보하다	To make a concession, recede
3924	엔진	Engine
3925	용	A dragon
3926	운행	movement,revolution
3927	이대로	As it is
3928	인간성	Human nature
3929	인상적	Impressive
3930	자라나다	To grow up
3931	전시	exhibition,display
3932	조그마하다	Be tiny,small
3933	주차장	Parking lot
3934	주한	Residing in korea
3935	중년	Middle-aged
3936	지다	To fade away, come off
3937	찌꺼기	drugs,sediments,remnants (tea grounds)
3938	춤추다	To dance
3939	테니스	Tennis
3940	파리	A fly
3941	포스터	Poster
3942	포함	inclusion,comprehension
3943	형식적	Related to the form
3944	후회하다	To regret
3945	가이드	Guide
3946	가입하다	Join
3947	감소	Decrease or dimunition
3948	고르다	Flat or even
3949	고속도로	Freeway or highway with no street lights
3950	공책	Notebook for taking notes and studying
3951	구분되다	To be put into sections
3952	구입	Purchase or buying
3953	기여	Contribution or service
3954	기호	Taste or likes
3955	꾸리다	Pack up or bundle up
3956	낭비	Waste
3957	내외	The interior and exterior
3958	대략	an outline, summary (2) generally, on the whole
3959	덮이다	Be covered
3960	도리어	On the contrary
3961	멋있다	stylish,tasteful
3962	멸치	Anchovy
3963	바람	A wish, hope
3964	발목	Ankle
3965	밤늦다	It is late at night
3966	방울	A drop
3967	배	Pear
3968	벌	A bee
3969	보관	custody,deposit
3970	보살피다	Take care of
3971	보완하다	to supplement and make complete, to complement sth
3972	보존하다	preserve,conserve
3973	빨다	sip,suck
3974	빼놓다	exclude,leave out
3975	사상	In history
3976	사춘기	adolescence,puberty
3977	상반기	The first,upper half
3978	서점	A bookstore
3979	선전	Propaganda
3980	설립하다	found,establish
3981	수집	Collection
3982	수필	An essay
3983	신기하다	To be novel,original
3984	신비	Mystery
3985	신설	A new theory
3986	실감	Actual feeling
3987	실망	Disappointment
3988	쓰다듬다	Stroke one’s beard
3989	알루미늄	Aluminum
3990	알아주다	acknowledge,recognize, appreciate
3991	양말	A sock
3992	여우	Fox
3993	와	Holy cow!
3994	외출	Going out, an outing
3995	용기	A container, a vessel
3996	웨이터	Waiter
3997	유발하다	To induce, bring about, cause
3998	유지되다	To be maintained, preserved
3999	자가용	For personal/family use
4000	잡아당기다	Pull
4001	점검	inspection,examination
4002	정원	Garden
4003	조기	An early stage,period
4004	존경하다	Respect
4005	종	A bell
4006	종소리	The sound of a bell
4007	중순	The second 10 days in a month
4008	지각	perception,consciousness
4009	직선	A straight line
4010	참외	A melon
4011	체하다	pretend,feign
4012	체험하다	To experience, to undergo
4013	초대하다	To invide
4014	총	A gun
4015	칭찬하다	To praise somebody
4016	코치	Coach
4017	통일하다	To unify, consolidate
4018	패션	Fashion
4019	프린터	Printer
4020	피디	PD – a newspaper article
4021	하나하나	Each individual piece
4022	학위	Academic rank
4023	회의	Doubt, skepticism
4024	가로등	A street light
4025	감	Feelings
4026	개개인	Individuals or every person
4027	걷다	1) Roll back /up one’s sleeves 2)fold or furl up 3) finish work
4028	고집	Persistence or stubborness
4029	금	Gold
4030	급격히	Be rapid or sudden
4031	기능	Ability or capacity or skill
4032	기막히다	Be at a loss for words
4033	나누어지다	To become divided
4034	낙엽	Fallen dead leaves
4035	넘겨주다	Hand over
4036	논리적	Logical
4037	다가서다	Step up, go near to, come closer
4038	대기하다	Be ready for the opportunity
4039	대접	Treatment
4040	말다	Roll up, convolve
4041	맞은편	The other side of THIS IS ONE WORD
4042	멋	Smartness
4043	면	Cotton
4044	박	Staying the night
4045	밤하늘	Night sky
4046	변명	Explanation, vindication
4047	보자기	A diver
4048	부상	A wound,injury
4049	분리하다	To separate, break away from
4050	붙들다	catch,seize,grasp
4051	사들이다	buy,purchase
4052	상관없이	Without anything to do with
4053	새우	lobster,shrimp
4054	선원	A crew, a ship’s company
4055	설사	Diarrhea
4056	실망하다	To disappoint
4057	심해지다	Become deep and serious
4058	씨름	Wrestling
4059	아쉬움	Sense of missing
4060	앞길	The road ahead, outlook
4061	약해지다	To become weak
4062	어젯밤	Last night
4063	엉망	A mess, in bad shape
4064	여관	A hotel, an inn
4065	여쭈다	Tell a superior, inform
4066	연습하다	 To practice,exercise
4067	연출하다	Produce, present (a play)
4068	열중하다	Enthusiasm, zeal
4069	영웅	A hero, a great man
4070	오	Oh, ah!
4071	유산	An inheritence, property left behind
4072	의도적	Purposefully
4073	이따금	From time to time
4074	임신부	An expectant mother
4075	장기적	Long-term
4076	재주	ability,talent
4077	전설	A tradition, a legend
4078	절	clause,paragraph
4079	젖	The breasts
4080	조르다	To tease, urge sb
4081	주문하다	To order, to request
4082	주사	A shot, an injection
4083	지겹다	To be tedious,tiring
4084	짐작	guess,conjecture
4085	쫓겨나다	Chase away ; to fire from your job
4086	찢다	Tear, rend, split
4087	채널	Channel
4088	출근하다	To go to work
4089	취소하다	To cancel, calloff
4090	취업	Employment, finding a job
4091	칠하다	Paint, coat
4092	타오르다	Blaze, light up
4093	탁	(1) With a bang, with a snap (2) widely
4094	평	A criticism
4095	평화롭다	To be peaceful
4096	표시	A sign,signal
4097	표시	A sign, signal
4098	하반기	The second half of the year
4099	한구석	A corner, a nook
4100	한하다	Limit, restrict
4101	해답	A solution to a problem, an answer to a question
4102	해소하다	To be dissolved, disorganized
4103	허락하다	Consent, agree to
4104	확립하다	establish,settle,fix
4105	확신하다	To be confident of
4106	흥분	excitement,excitation
4107	흥분하다	be/grow excited
4108	힘겹다	To be not strong enough to do
4109	감수성	Receptivity or susceptibility
4110	거들다	Help or assist or lend
4111	건너편	The opposite side
4112	경치	A scene or scenery
4113	급속히	Rapidly or swiftly
4114	급증하다	Surge or sudden rapid increase
4115	깔끔하다	Be sleek and smart
4116	꼼꼼하다	very careful or meticulous, doing it in a very detailed manner
4117	낮아지다	Become lower
4118	단순	Simplicity
4119	대사	an ambassador
4120	두세	Two or three (months)
4121	매	whip,rod,cane
4122	먹고살다	Make one’s living
4123	멎다	Stop
4124	면담	An interview
4125	모집	Collection
4126	모퉁이	Corner
4127	바구니	Basket
4128	바싹	Completely
4129	발달되다	Be developed
4130	발음	Pronunciation
4131	방울	A bell
4132	보름	15days,the 15th day
4133	봉지	Bag
4134	부딪히다	Be bumped into
4135	비상	Emergency
4136	비서	Secretary
4137	뿌리치다	Shake off, refuse
4138	사업자	Businessman
4139	상대편	The other party
4140	세트	Set
4141	소망	desire,wish,hope
4142	수동적	Passively
4143	술잔	A glass for alcohol
4144	슬그머니	Furtively
4145	시장	Mayor
4146	시청률	Popularity rating
4147	신문사	Newspaper company
4148	여군	A woman soldier
4149	연인	A sweetheart
4150	연장	Extension, prolongation
4151	열흘	Ten days
4152	예선	A preliminary match/election
4153	옥수수	Corn
4154	원	A circle
4155	은행나무	A ginko tree
4156	이웃집	The neighbor’s house
4157	자부심	Pride
4158	장차	In the future, someday
4159	재미없다	Boring
4160	저편	That side,direction
4161	정신과	Psychiatry
4162	제도적	Systematic
4163	조절	regulation,adjustment
4164	주거	residing,dwelling
4165	주스	Juice
4166	준비되다	To be ready
4167	중단되다	To be suspended,stopped
4168	중요시하다	Attach great importance to
4169	지점	Branch store
4170	진단하다	To diagnose
4171	콜라	Cola
4172	타다	Get, receive, take your share of the money (회사에서 월급을 타다)
4173	편견	A prejudice, a bias
4174	플라스틱	Plastic
4175	환율	The exchange rate (money)
4176	활기	Vigor, life, vitality
4177	강사	Instructor or teacher
4178	강수량	How much rainfall
4179	교대	Alternation or change
4180	구청	A ward or district office
4181	국내외	The inside and outside of a country or home and abroad
4182	금지되다	To be forbidden or prohibited
4183	기도하다	To pray
4184	기성08	To be already existing or established
4185	깨뜨리다	To break or crush
4186	꼼짝	Cannot move
4187	남학생	Male student
4188	농사일	Farming
4189	농장	A farm, plantation
4190	데이트	Date
4191	마음가짐	Mental attitude
4192	머리칼	Hair
4193	모	A certain person, mr. Jones
4194	바퀴	Cockroach
4195	번개	Lightning
4196	변화되다	To be changed
4197	부러워하다	envy,be envious of
4198	부재	Absence
4199	사망	Death
4200	생	1) raw,uncooked 2)living
4201	서늘하다	Be cool,refreshing
4202	성경	The Bible
4203	소요되다	Be needed
4204	소화하다	To digest
4205	순간적	instanteous,momentary
4206	시집가다	To take a husband
4207	시청	City hall
4208	싶어지다	To come to want
4209	씌우다	Put a hat on somebody
4210	야간	The night time
4211	엇갈리다	Cross, miss eachother
4212	엷다	Be thin, light
4213	오락	Entertainment
4214	오른손	The right hand
4215	우아하다	To be elegant,refined
4216	이것저것	This and that, one thing and another
4217	이슬	Dew, dewdrops
4218	인간관계	Human relations
4219	장기간	For a long period
4220	저자	A writer,author
4221	전선	The battle line
4222	정지	stop,an interruption
4223	제의하다	Make a suggestion
4224	조명	lighting,illumination
4225	조화되다	harmony,agreement
4226	줄거리	A stalk, a stem
4227	중단	interruption,suspension
4228	차선	A traffic lane
4229	착각하다	To misunderstand, to deceive oneself, to be having illucinations
4230	초상화	A portrait, a picture
4231	출장	A business trip
4232	쿠데타	Coup d’etat (overthrow of the government)
4233	퇴근	Leaving one’s office, coming home from work
4234	특수성	Particularity, distinctiveness
4235	항공기	An aircraft
4236	활발히	briskly,actively
4237	회화	Conversations, talk
4238	흥미롭다	To be interesting
4239	가져다주다	Take something to someone
4240	각오	Readiness or preparation
4241	개방되다	To be opened
4242	겨자	Mustard
4243	경고하다	To warn
4244	경제학	Economics
4245	골프	Golf
4246	관심사	A matter of concern and interest
4247	구별되다	To be separated andistinguished
4248	국사	The history of a country
4249	굳히다	Harden or make hard
4250	귀국	Returning to one’s home country
4251	그간	The while or during tha time
4252	그럴듯하다	Be plausible or specious or likely
4253	극작가	A dramatist
4254	기23	A flag or a banner
4255	기울다	To tilt or lean
4256	기적	A miracle
4257	끌리다	To be drawn or pulled or dragged
4258	내보내다	Let out, let go out
4259	담	A wall, fence
4260	따스하다	Feel warm
4261	말투	One’s way of talking
4262	명령어	Directive
4263	목욕탕	A bathhouse
4264	미끄러지다	Slippery
4265	바닷물	Sea water
4266	변신	Disguise, transformation
4267	부친	A father
4268	붙잡히다	Be caught
4269	브랜드	Brand
4270	빨다	Wash the laundry
4271	사무	Office work
4272	사소하다	Be trifling,insignificant
4273	상	A table,small desk
4274	상쾌하다	Be refreshing,exhilirating
4275	성	A family name,surname
4276	손길	An outstretched hand
4277	순위	order,ranking
4278	식사하다	To eat a meal
4279	쌍	A pair,couple
4280	썰렁하다	chilly,feel cold
4281	암시	A hint, suggestion
4282	앞날	The futre, the days ahead
4283	역사상	In history
4284	연주	A musical performance
4285	우울하다	To be melancholy, gloomy
4286	우체국	A post office
4287	울리다	To make (a baby) cry
4288	육상	On land, on the ground
4289	음주	Drinking (alcohol)
4290	이별	Parting, separation; divorce
4291	인재	A man of ability
4292	인종	A human race
4293	일시적	Of a day
4294	재밌다	interesting,fun
4295	전문적	Of a specialist nature
4296	젊음	Youth
4297	점잖다	To be dignified,well-bred
4298	조개	shellfish,clam
4299	주무시다	To sleep (respectful word)
4300	중계방송	A relay, a hookup
4301	중독	Poison
4302	지급	supply,pay
4303	진실하다	Be true, truthful
4304	차창	car/train window
4305	초청하다	To invite
4306	출발점	The starting point of a trip
4307	출판	Publication, publishing
4308	출현하다	Appearance, turning out
4309	클럽	Club
4310	키스	Kiss
4311	탈출하다	To escape, get away from
4312	판사	A judge
4313	허락	Consent, assent, approval
4314	확신	Conviction, firm belief
4315	흐리다	Cloudy (weather)
4316	걱정스럽다	Anxious or uneasy
4317	건설되다	To become constructed
4318	고개	the peak or crest (of a hill)
4319	고프다	Hungry or famished
4320	그제야	For the first time or not … until
4321	금연	Prohibition of smoking
4322	기성세대	Old people
4323	기술하다	To describe or give an account of
4324	까치	Magpie
4325	꿈속	In a dream
4326	나비	Butterfly
4327	남북	North and south
4328	납득하다	To convince, persuade oneself
4329	단	A grade or class
4330	대사관	Embassy
4331	독창적	Original
4332	만점	Perfect score
4333	매달	Every month
4334	모여들다	gather,flock
4335	묵다	Get old
4336	바깥쪽	The outside
4337	배고프다	To be hungry
4338	버섯	Mushroom
4339	보수	Conservation
4340	보안	Preservation of the public peace
4341	뵈다	See (polite)
4342	부	assistant,deputy
4343	비웃다	Laugh at, ridicule
4344	비키다	Move aside
4345	사나이	A man, a male
4346	사모님	Older more respected ajuma
4347	삼	Three
4348	상징적	symbolic,emblematic
4349	색다르다	Be different,novel
4350	세미나	Seminar
4351	세제	detergent,cleaning material
4352	속삭이다	Whisper
4353	시일	time,days
4354	시합	A contest,match
4355	신속하다	Be quick,rapid,speedy
4356	신제품	A new product
4357	신중하다	To be prudent,cautious
4358	썩	Very much,greatly
4359	암컷	A female,a she (opp. 수컷)
4360	여행하다	To travel
4361	예고하다	Warn, give advance notice
4362	위반하다	To violate (the law)
4363	윗몸	The upper body
4364	은은하다	To be distant,faint,indistinct
4365	이해관계	Mutual understanding
4366	익히다	cook,boil
4367	일대	One great/large
4368	입력	Power input
4369	자연현상	Natural phenomena
4370	정류장	stop,a station,bus-stop
4371	정신없이	Feel distracted and scatter-brained
4372	정직하다	honesty,uprightness
4373	조정하다	To regulate,adjust,coordinate
4374	주름	Wrinkles
4375	중요	importance,consequence
4376	챔피언	Champion
4377	최신	Newest, the latest
4378	축하	Congratulation, celebration
4379	취소	Cancellation, anulment
4380	캐릭터	Character
4381	커튼	Curtain
4382	팬	A fan, an enthusiast
4383	해롭다	To be harmful, injurious
4384	현관문	The front door
4385	활발해지다	To become lively
4386	회복되다	To be recovered
4387	희생하다	To sacrifice
4388	가능해지다	To become possible
4389	겨울철	The winter season
4390	고추장	Red pepper paste
4391	골프장	Golf course
4392	공연히	Futile or vain or useless
4393	과정	A course or curriculum
4394	국수	Noodles
4395	국제적	International
4396	그루	1) a root 2) stubble
4397	그전	Former days or the past
4398	금고	A safe or strongbox
4399	꾸중	Scolding, a rebuke
4400	끌어당기다	To draw near
4401	끼	A meal or a repast
4402	능동적	Activity ; voluntary, of its own nature (opp. 수동적)
4403	달빛	Moonlight
4404	당분간	For the present
4405	도움말	Helping words
4406	뒷산	The back side of a mountain
4407	만족하다	To be content
4408	맵다	Spicy
4409	메다	Put on one’s shoulder
4410	몰려오다	Come in crowds
4411	물질적	Material
4412	미인	A beautiful girl
4413	믿어지다	Become believable
4414	반죽	Kneading; dough
4415	반지	Ring
4416	밤	Chestnut
4417	배치	Arrangement
4418	백인	Caucasian
4419	본	An example
4420	본사	Main office
4421	부르다	To be full
4422	불평등하다	Inequality
4423	비타민	Vitamin
4424	빌딩	Building
4425	빠뜨리다	Throw into (a river); entice, entrap
4426	산속	The heart of a mountain
4427	새로이	newly,afresh
4428	서양인	A Westerner
4429	소지품	one’s things
4430	송이	A bunch,cluster
4431	쇠	Iron
4432	수컷	A male of the species
4433	승리하다	To win
4434	식초	Vinegar
4435	심부름	Errand
4436	씨앗	Seeds
4437	야외	The fields, the outskirts
4438	얻어먹다	Go about begging
4439	엄숙하다	Seriousness, solemnity ; being grave, serious
4440	여가	leisure,spare time
4441	여동생	Younger sister
4442	연상하다	Association of ideas
4443	옆집	The house next door
4444	오래간만	After a long time
4445	오래도록	For long, a long while
4446	올려다보다	Look up
4447	외다	To repeat back (an order)
4448	외침	A shout, a cry
4449	이빨	A tooth
4450	이해	interests,gains
4451	일손	Work in hand
4452	잠바	Jumper
4453	잠수함	Submarine
4454	장수	A tradesman,merchant
4455	장학금	Scholarship
4456	재다	measure,guage
4457	쟤	That kid
4458	점심시간	Lunchtime
4459	지도하다	To lead, instruct
4460	지적	Intellectual, brainy
4461	진로	A course,direction,path
4462	진행자	Leader of the performance
4463	쪽	A side, direction
4464	찾아다니다	To go around to meet somebody or see places
4465	책임감	Feeling of responsibility
4466	체온	Body temperature
4467	초밥	Japanese vinegared rice vegetables
4468	출구	An exit
4469	출입문	Door for exiting and entering
4470	통과	Passage
4471	포장마차	A wheeled snack bar on the street
4472	푸다	Dip out, bail out
4473	풀	Glue (spread the ~)
4474	피망	A pimento
4475	필름	Film
4476	한결	Stands out conspicuously, especially
4477	한여름	Midsummer, the middle of summer
4478	항공	An airport
4479	호선	The track number for a train
4480	회전	Revolution, rotation
4481	휴지	Toilet paper
4482	가위	Scissors
4483	고속	High speed
4484	곧다	Be straight or upright or erect
4485	골치	Worry or anxiety
4486	구하다	Rescue a person
4487	내달	Next month
4488	넷째	Fourth
4489	놔두다	Leave as it is, let it be
4490	늦어지다	To become late
4491	도망가다	Make a go for it, escape
4492	독하다	Be poison
4493	만	To be of sufficient quantity
4494	명단	List of names
4495	무의미하다	Be nonsense
4496	문구	passage,paragraph
4497	뭣	What (thing)?
4498	미만	under,below ; less than
4499	백색	White
4500	비바람	Rain and wind
4501	사기	morale,fighting spirit
4502	사망하다	To decease,pass away
4503	사무직	Working in the office not in the factory
4504	소질	temperament,character
4505	솜	Cotton
4506	시디롬	Cd-rom
4507	식생활	Dietary life
4508	신호등	Signal light, blinker
4509	신혼여행	the honeymoon (the trip after the wedding)
4510	실	Thread (to wind thread)
4511	씩씩하다	Be brave,valiant
4512	연구실	A laboratory
4513	월드컵	World cup
4514	유머	Humor
4515	의류	Clothes, dresses; clothing
4516	입원	Hospitalization
4517	잊혀지다	To become forgotten
4518	잘살다	To be affluent, well-off
4519	장가	To get married
4520	적응	Adaptation
4521	정리되다	To be adjusted
4522	조	A company,group
4523	졸업생	A graduate
4524	죽다	Lose your spirit
4525	창피하다	To be ashamed
4526	친절	Kindness, goodness
4527	침실	Bedroom
4528	태권도	Tae kwon do
4529	토론하다	To debate, discuss
4530	하나하나	Each individual piece
4531	합하다	Harmonize with, be in accord with
4532	핸드백	Handbag
4533	햄버거	Hamburger
4534	가정교사	Private tutor
4535	감사	Thanks
4536	공통적	Commonly
4537	교육자	An educator
4538	교재	Teaching material or insruction materials
4539	기타	Guitar
4540	길어지다	To become long
4541	깨소금	Powdered sesame mixed with salt
4542	나빠지다	To become worse
4543	남	A man
4544	놓아두다	Leave as it is, let it be
4545	대접하다	Treatment
4546	무궁화	The rose of Sharon
4547	바이러스	Virus
4548	방바닥	room’s floor
4549	번거롭다	Be troublesome. 할 일이 많아서 아주 바쁘다
4550	사냥	Hunting, a hunt
4551	사회생활	Social life
4552	설거지	Dishwashing
4553	수년	Several years
4554	수출하다	To export
4555	숙소	one’s address
4556	슈퍼마켓	Supermarket
4557	심리적	Psychological
4558	연기	postponement,deferment
4559	위로	consolation,solace
4560	이용자	A user; visitor
4561	입력하다	To input (data into the computer)
4562	자격증	A qualification certificate
4563	진료	Medical examination and treatment
4564	창가	Next to a window, or, the window’s edge
4565	초조하다	Be impatient, irritated
4566	타다	Put in, mix, dissolve
4567	한잔하다	To drink a glass of liquor
4568	함께하다	To do it together, with somebody
4569	합격하다	To pass an exam
4570	화장지	Soft paper used when applying makeup
4571	힘껏	With all one’s might
4572	가요	A song
4573	감상	Appreciation
4574	공짜	Free
4575	공통되다	To be common
4576	그만하다	Be about the same or be neither better nor worse
4577	나들이	Going out, an outing ; making a short visit to sb or somewhere
4578	녹이다	Melt, dissolve
4579	눈가	The eye rims
4580	도망	Escape
4581	모기	A mosquito
4582	미니	Mini
4583	방면	Direction
4584	법적	Legal
4585	벤치	Bench
4586	보수	mending,repair
4587	볼일	business,errand,engagement
4588	부끄러움	shame,disgrace
4589	비누	Soap
4590	비행	An irregularity
4591	빗줄기	Great streaks of rain
4592	사회학	Social science
4593	성적	Sexual
4594	세수	Hand-washing
4595	순진하다	To be naive,pure
4596	스웨터	Sweater
4597	심심하다	to be bored
4598	어려워지다	To become difficult
4599	여행사	Travel agency
4600	올라서다	Stand up
4601	왼손	The right hand
4602	유학생	A foreign student
4603	은	Silver
4604	자리	A spot at a table
4605	잘생기다	To be handsome
4606	장애인	A handicapped person
4607	재활용품	A recycled product
4608	저러다	Like that
4609	저리	That place
4610	절약하다	To economize
4611	정반대	Direct opposition, the exact reverse
4612	진동	vibration,shake
4613	찌개	A pot stew
4614	추천	A recommendation
4615	학점	A unit, a point, a credit
4616	한가하다	To be free, not busy
4617	합격	Success in an examination
4618	환영하다	To welcome
4619	간접적	Indirect or mediate
4620	갈다	Renew or substitute ; same as 바꾸다
4621	경영하다	To manage or adminster
4622	그리움	Yearning or affection
4623	그사이	The while or the meantime
4624	기념하다	Commemorate
4625	기도	A prayer
4626	길거리	A street
4627	꽃잎	A petal
4628	넥타이	Necktie
4629	대강	General principles
4630	독립하다	To become independent
4631	문밖	Outside the door
4632	방송하다	Broadcast
4633	보충하다	replenish,replace,fillup
4634	불완전하다	To be imerfect
4635	불평	Dissatisfaction
4636	붐비다	Be congested,crowded ; to be full of
4637	생활환경	Life environment
4638	서명	signing,autographing
4639	손등	The back of the hand
4640	역사학	The study of history
4641	영	Really, totally
4642	오리	Duck
4643	요리사	A chef, a cook
4644	원	Goodness! Gracious!
4645	원서	An application, a written request
4646	월	A month
4647	이론적	Theoretical
4648	이제야	These days
4649	임신하다	To be pregnant
4650	입원하다	To enter a hospital
4651	자취	A trace,vestige
4652	잠그다	To lock
4653	잡수시다	eat,drink
4654	장난감	A toy
4655	장례	A funeral
4656	전기밥솥	Electric rice cooker
4657	지금껏	So far, till now
4658	지름길	A shortcut
4659	지진	Earthquake
4660	참석자	Persons present
4661	창구	A window
4662	최저	The lowest, the minimum/lowest price
4663	코미디	Comedy
4664	튀기다	To fry; splash, splatter
4665	필수	necessary,indispensable
4666	하품	Yawning
4667	한국말	Korean (language)
4668	횟수	The number of times, the frequency
4669	흐리다	Be muddy, cloudy ; with a tint of
4670	가능	Possibility
4671	값싸다	Cheap or low-priced
4672	계란	An egg
4673	교문	A school gate
4674	권투	Boxing or K1
4675	긴장감	Feeling of tension
4676	김	1) Steam 2) scent, aroma
4677	넷	4
4678	매달다	Bind up, hang: 묶어서 드리우거나 걸다.
4679	매주	Every week
4680	문제되다	Become a problem
4681	받침	Support, prop
4682	북	North
4683	불이익	disadvantage,drawback
4684	불필요하다	To be unnecessary
4685	산부인과	Obstetrics and gynecology
4686	새우다	Sit up all night
4687	서명하다	To sign
4688	수	way,method
4689	수고하다	To work hard
4690	수학	Pursuit of knowledge
4691	신부	A holy father,priest
4692	쓸데없다	To be useless
4693	아뇨	No, nay
4694	아래쪽	The lower part, the bottom
4695	아스팔트	Asphalt
4696	아하	Dear me! Goodness!
4697	알코올	Alcohol
4698	액세서리	Accessory
4699	에어컨	Air conditioner
4700	염려하다	To worry, be anxious about
4701	오이	Cucumber
4702	외삼촌	An uncle on one’s mother’s side
4703	요	Right near at hand
4704	웃음소리	The sound of laughing
4705	위쪽	The upper direction
4706	음료수	Drinking water
4707	인쇄	printing,typography
4708	잔디	Lawn
4709	전세	renting with a big downpayment and not paying month to month
4710	조깅	Jogging
4711	초대	An invitation
4712	치다	(a storm, strong wind, rain, lightning) to strike, hit
4713	캠퍼스	Campus
4714	터널	Tunnel
4715	통	Counters for letters
4716	퇴직금	Retirement grants
4717	환갑	one’s 60th anniversary
4718	가만있다	Remain still or motionless
4719	간편하다	Simplicity or convenience
4720	감동적	Sensational
4721	건너오다	To come across to this side of something
4722	관광지	Tourist area
4723	교복	School uniform
4724	교포	A Korean living abroad
4725	귀가하다	To return home
4726	날아다니다	Fly about
4727	마음씨	Disposition, nature
4728	만	Just, full
4729	메모	Memo
4730	몇십	In the tens
4731	몸매	one’s figure
4732	몸무게	Body weight
4733	무관심	Indifference, unconcern
4734	반짝이다	Shine, glitter
4735	배달	Delivery
4736	번역	Translation
4737	부인	Wife
4738	분주하다	Be busy,crowded
4739	비닐봉지	Plastic bag
4740	비판적	Critical
4741	뺏다	Straight
4742	사전	Dictionary
4743	서랍	A drawer
4744	소나기	A sudden rain shower
4745	소중히	seriously,with care
4746	손잡이	A handle,knob
4747	수도꼭지	A faucet,tap
4748	실례	rudeness,impolite
4749	싸구려	cheap,inferior (a bargain)
4750	안녕	hello/goodbye
4751	안되다	To refuse to accept
4752	약국	Pharmacy
4753	어찌나	extremely,quite,awfully
4754	엉터리	Fake, sham
4755	연하다	Tender, soft, mild
4756	원숭이	A monkey
4757	위법	illegality,a breach of the law
4758	육체적	Corporeal, of the flesh
4759	음력	The lunar calendar
4760	이혼	Divorce
4761	일회용	For one time use
4762	잔디밭	lawn,grass
4763	저기	“hey,look here,now”
4764	전문직	Specialty job
4765	전화기	Telephone receiver
4766	제출	presentation,submission
4767	지난주	Last week
4768	진달래	Azalea
4769	쪽	A portion, a side
4770	찌다	chop,hack
4771	차남	one’s second eldest son
4772	채점	marking,grading,scoring
4773	침착하다	Self-possession, composure
4774	캄캄하다	To be pitch-black
4775	타자기	A typewriter
4776	팬티	Panties (male and female underwear)
4777	편히	Easily, comfortably
4778	포인트	Point
4779	포크	Fork
4780	한밤중	Midnight
4781	효도	Filial piety
4782	가구	Furniture
4783	간호사	Nurse
4784	개나리	A forsythia or a golden-bell tree
4785	고등학생	High school student
4786	골목길	An alley
4787	귀가	Returning home
4788	그리워하다	Yearn or be attached to
4789	기억나다	To memorize
4790	기침	Coughing
4791	노랫소리	A singing voice
4792	다섯	5
4793	닭고기	Chicken meat for eating
4794	대학교수	University professor
4795	딸아이	Daughter
4796	만족스럽다	Satisfied
4797	미움	Hatred
4798	바가지	A gourd dipper
4799	발끝	On tiptoes
4800	배꼽	The navel
4801	병실	An infirmary
4802	봉사하다	serve,render service
4803	비행장	An airfield
4804	사랑스럽다	Lovely
4805	숟가락	A spoon
4806	술병	A bottle of alcohol
4807	습기	moisture,humidity
4808	쓰이다	Be writted
4809	엽서	A postcard
4810	예보	forecast,predict
4811	요일	A day of the week not the weekend
4812	욕실	A bathroom,a bath
4813	용감하다	To be brave, courageous
4814	운전기사	The driver
4815	위험성	riskiness,jeapordy
4816	익다	Get familiar with, experienced with
4817	일	One
4818	장마	The rainy spell in the summer
4819	재학	To be in school, be attending school
4820	전기	a biography
4821	전시하다	To display
4822	정기적	fixed,regular (time sth)
4823	종교적	Of religions
4824	주관적	Subjective
4825	직장인	A worker
4826	진심	The whole heart, sincerity
4827	질문하다	Ask a person a question
4828	짧아지다	To become short
4829	찌다	To put on weight
4830	책가방	Bookbag
4831	천국	Heaven
4832	치약	Toothpaste
4833	큰절	A deep bow
4834	학과	A department in a college
4835	후회	repentance,regret
4836	강조	Emphasis or stress
4837	게시판	A notice board or a bulletin board
4838	공통점	A common point or a common feature
4839	과외	Extracurricular work
4840	교내	Inside the school
4841	구15	Ward or district
4842	금요일	Friday
4843	김밥	Roll of rice and vegetables
4844	내적	Internal
4845	놀이터	Playground
4846	다녀가다	Drop in for a short visit
4847	답장	An answer
4848	마라톤	Marathon
4849	매스컴	Mass communication
4850	무	nothing,nil
4851	묵다	Stay overnight s.w.
4852	바나나	Banana
4853	발등	The instep of the foot
4854	밤새	All night
4855	별일	A particular thing
4856	보내오다	받다 receive
4857	부채	A debt,liabilities
4858	불법	Buddhism
4859	블라우스	Blouse
4860	사업가	Businessman
4861	사이좋다	Be on good terms with
4862	세상에	In the world
4863	수고	toil,labor,pains
4864	수요일	Wednesday
4865	슬퍼하다	sorrow,feel sad
4866	시금치	Spinach
4867	신청서	Application, application form
4868	쓰레기통	Garbage can
4869	아랫사람	Subordinate
4870	앞쪽	The front, the fore part
4871	앨범	Album
4872	양	A sheep, ram
4873	여전하다	Be unchanged, the same as before
4874	영남	The southeastern part of Korea
4875	옥상	On the roof
4876	왼발	The right foot
4877	운전하다	To drive
4878	위	The stomach
4879	일기	The weather
4880	일자리	A job, position
4881	자매	Sisters
4882	저번	Last time, the other day
4883	전시장	An exhibition hall
4884	절약	thrift,savings,economy
4885	정답	The right answer
4886	정오	Noon
4887	제대하다	Be discharged from the military
4888	졸다	doze,take a nap
4889	즉석	instantly,impromptu
4890	지방	Fat, grease, lard
4891	차차	Gradually
4892	추측	Guess, conjecture
4893	충고	Advice, counsel, suggestion
4894	코피	A nose bleed
4895	턱	Reason, grounds
4896	팩시밀리	Facximile, fax
4897	한낮	Noon
4898	할인	A discount
4899	가득히	Full
4900	간호	Nursing or care
4901	갑	1) The first 2) the former
4902	건너	The other or opposite side
4903	걷다	Walk on or tread on
4904	겁나다	Be frightened or scared
4905	고구마	Sweet potato
4906	국기	The national flag
4907	금메달	Gold medal
4908	노트	A note
4909	눈감다	Close the eyes
4910	눈뜨다	Open one’s eyes
4911	대화하다	To converse
4912	도마	A chopping board
4913	동화책	A fairy tale
4914	모집하다	Call/appeal for
4915	미워하다	Dislike
4916	밤색	Chestnut color, maroon
4917	밥맛	Appetite
4918	배우자	A mate, life partner
4919	복사	Reproduction
4920	볶음밥	Frizzled rice
4921	성별	Sex distinction
4922	세탁	Laundry
4923	소문나다	A rumor starts
4924	소용없다	To be useless
4925	속상하다	Be distressing
4926	손수건	A handkerchief
4927	송아지	A calf,baby cow
4928	수돗물	Tap water
4929	수만	Tens of thousands
4930	수입되다	To be imported
4931	수입품	An imported product
4932	술자리	A banquet
4933	식기	An eating vessel
4934	싼값	A low price
4935	안	A plan,proposal,suggestion
4936	안부	safety,welfare
4937	양주	Foreign wine/liquors
4938	어린이날	Children’s Day (may 5th)
4939	영화배우	Movie actor
4940	오른발	The right foot
4941	용서	pardon,forgiveness
4942	우편	post,mail
4943	이사하다	To move house
4944	일등	First class, first class/grade
4945	작아지다	Become smaller
4946	정장	Full dress, uniform
4947	좁히다	Make narrow,restrict
4948	좋아	“That’s good”
4949	죽	In a very straight line, in a row
4950	줄무늬	A stripe
4951	지워지다	To be erased
4952	지저분하다	Be messy, soiled, dirty
4953	진통	Labor pains, travail
4954	찬성하다	To approve, support (a plan)
4955	참석	Attendance, participation
4956	초콜릿	Chocolate
4957	최고급	The highest grade/class
4958	최상	The best, the finest
4959	최악	The worst
4960	출국	Leaving a country
4961	친해지다	To get close, to get friendly
4962	코끝	The tip of one’s nose
4963	터미널	Terminal
4964	피자	Pizza
4965	한국적	Korean (adjective)
4966	햄	Ham
4967	환영	Welcome
4968	가로수	A roadside tree
4969	간식	Snack
4970	감	Persimmon
4971	개다	To clear up or become clear (weather)
4972	고급스럽다	To be high-class
4973	고소하다	Taste of sesame oil or taste of a nut
4974	공주	A royal princess
4975	깨어지다	To waken
4976	남	The south
4977	네거리	Crossroads
4978	노란색	Yellow
4979	녹음하다	To record
4980	달러	Dollar
4981	대여섯	About five or six
4982	되돌아보다	To look back on
4983	마사지	Massage
4984	만	10000
4985	먹히다	to be eaten,swallowed
4986	몸살	Flu aches and pains
4987	무더위	High humidity
4988	무용가	Dancer
4989	박스	Box
4990	반기다	Rejoice, be glad of
4991	밥솥	Pressure cooker for rice
4992	베개	A pillow
4993	벨트	Belt
4994	복사하다	reproduce,copy
4995	붓다	to be swollen
4996	비	A monument
4997	사계절	The four seasons
4998	사과하다	To apologize
4999	사투리	A dialect
5000	상금	Prize money
5001	수저	A spoon
5002	식욕	appetite,desire
5003	앞바다	The offing sea
5004	얄밉다	Be offensive, mean
5005	양상추	Lettuce
5006	여대생	Female college student
5007	연기하다	To be put off, postponed
5008	온라인	Online
5009	외갓집	one’s mother’s maiden home
5010	외할머니	A maternal grandmother
5011	유능하다	To be competent,talented
5012	유적지	Place where remains/cultural-historical remnants are
5013	음악가	A musician
5014	응답하다	An answer, a reply
5015	이롭다	Be good for
5016	이분	Divide into two
5017	인삼	Ginseng
5018	인상	Look, personal appearance
5019	입사	enter/join a company
5020	자	A ruler
5021	재활용	Recycling
5022	점원	A shop-assistant
5023	제삿날	Day of the ceremony
5024	주름살	Wrinkles
5025	참고하다	To refer, consult
5026	찻잔	A teacup
5027	철학적	Philosophical
5028	초대	The first generation, the founder
5029	추천하다	To recommend, say a good word for
5030	칫솔	A toothbrush
5031	큰길	main/principal road
5032	판매되다	To be sold
5033	편	Facilities, services
5034	포근하다	To be soft and comfortable, downy
5035	포도	grape(s)
5036	하나님	God
5037	학력	Academic background, formal schooling
5038	한정하다	To limit, restrict
5039	향상되다	To be impoved, advanced
5040	홈페이지	Homepage
5041	횡단보도	Crossing
5042	가톨릭	Catholic
5043	강당	A lecture hall
5044	건조하다	Ry or arid or become dry
5045	걷기	Walking
5046	고모부	The husband of one’s paternal aunt
5047	공중전화	A public payphone
5048	공통	Commonness
5049	과거	The state examination
5050	국가적	National or state
5051	귓속	The inner ear
5052	그래픽	Graphic
5053	근교	Suberbs
5054	기초적	Fundamental or basic
5055	녹음	Recording
5056	다양성	Variety
5057	떠나오다	미국으로부터 to come back from the US
5058	마중	Meeting, reception
5059	밝다	To be bright
5060	밤중	Midnight
5061	배드민턴	Badminton
5062	배부르다	To be full
5063	버튼	Button
5064	보수적	Conservative
5065	캐나다	Canada
5066	불확실하다	Be uncertain
5067	비만	Fatness, corpulence
5068	빗방울	Raindrops
5069	사회자	President
5070	샤워	Shower
5071	서투르다	unskilled,clumsy
5072	세탁기	Washing machine
5073	손뼉	The flat of one’s hand
5074	손수	With one’s own hands, personally
5075	송편	Rice cake steemed over pine needles
5076	시들다	To wither,die,fade
5077	시디	C.D.
5078	신사	A gentleman
5079	신혼부부	Newlyweds
5080	싱겁다	Taste flat, have no flavor
5081	쓸데없이	To have no use
5082	야하다	To be gaudy,garish
5083	어쩌다가	By chance, accident ; sometimes
5084	옛날이야기	An old story
5085	오븐	Oven
5086	온종일	All day long, the whole day
5087	와인	Wine
5088	왕비	Queen
5089	우승하다	To take first place
5090	운반	conveyance,transport
5091	웃어른	one’s elders
5092	인사말	Words of greeting
5093	자판기	Vending machine
5094	장모님	A man’s mother in law
5095	저녁때	Evening time
5096	저울	A balance
5097	적어지다	To become smaller
5098	지폐	Paper money
5099	진실로	Truly, honestly
5100	촛불	Candle-light
5101	출퇴근	Go to and come from the office
5102	치과	A dentist
5103	테스트	Test
5104	통역	Interpreting
5105	퇴근하다	To go home from work
5106	표시하다	To make a sign, display
5107	피로하다	To be fatigued, weary
5108	하	Below, underneath
5109	한데	The open air, outside, the exterior
5110	혼잣말	Talking to oneself
5111	화나다	Get angry
5112	효도하다	To be a good son/daughter to one’s parents
5113	힘없이	feebly,weekly
5114	가로	Width or breadth
5115	갈아타다	Transfer (bus or subway)
5116	건넌방	The room opposite the main living room
5117	곧이어	Soon hereafter
5118	공기	Public institution
5119	굉장하다	Be grand or magnificent or splendor
5120	그래서	So or therefore
5121	기업인	Businessman
5122	긴장되다	Be under tension
5123	깨끗해지다	Become clean
5124	낚싯대	A fishing rod
5125	남동생	Younger brother
5126	냇물	A stream, brook
5127	단골	Custom, connection
5128	단맛	A sweet taste
5129	담요	A blanket
5130	대	A stem, stalk
5131	더러워지다	Get dirty
5132	데우다	to warm, to heat up
5133	도착	Arrival
5134	동그랗다	To be circular
5135	안동	간고등어 fish common in this city, ANDONG
5136	무덥다	sultry,sweltering
5137	뭘	What (implicit directobject)?
5138	반대편	The opposite side
5139	발바닥	The sole of the foot
5140	발톱	A toenail
5141	밝아지다	Become bright
5142	밤새다	To stay up all night
5143	부잣집	Rich man’s house
5144	분명해지다	To become clear
5145	사진기	Camera
5146	산길	A mountain path,road
5147	상추	Lettuce
5148	섭씨	Celsius
5149	소시지	Sausage
5150	쇼핑	Shopping
5151	수업	Completing an education course
5152	스케줄	Schedule
5153	스키	Ski
5154	시외	Outside the city, suberbs
5155	심각해지다	To become serious
5156	싹	A bud,sprout
5157	씻기다	To be carried away, washed away
5158	안심하다	security,assuredness,relief
5159	약	Get angry,take offense
5160	약수	Medicinal water, mineral water
5161	약품	Medicines, medical supplies
5162	양배추	Cabbage
5163	양보	concession,compromise
5164	양옆	On both sides
5165	얕다	To be shallow, superficial
5166	어두워지다	become/get dark
5167	어쩜	Well, I guess that, is extremely…..
5168	엊그제	The day before yesterday, a few days ago
5169	여고생	Female high school student
5170	여왕	Queen
5171	연기되다	To be put off, postponed
5172	열	Ten
5173	예약	Pre-engagement, reservation
5174	올라타다	Board (a plane), get into
5175	운동화	Sports shoes
5176	이곳저곳	Everywhere
5177	이다음	Next
5178	일회용품	A product to be used only once
5179	읽히다	To get a person to read, to get a person to learn
5180	잡수다	eat,drink
5181	장사꾼	A trader,merchant,dealer
5182	점심때	Lunchtime
5183	주일	A week
5184	즐거워하다	To enjoy it
5185	집중하다	To concentrate
5186	짜다	To be salty
5187	짜증스럽다	To be annoying
5188	천재	genius,talent
5189	초등학교	Elementary school
5190	초보	Initial, first steps
5191	초여름	Early summer
5192	초저녁	Early in the evening
5193	충돌하다	Collide, clash with
5194	코트	Court
5195	피곤	fatigue,exhaustion
5196	학비	Tuition
5197	해	Damage, injury
5198	해외여행	Foreign travel
5199	효자	A dutiful son
5200	감소되다	To be reduced or diminished
5201	강변	A riverside
5202	공연되다	To give a public performance
5203	공휴일	A legal holiday
5204	괴로워하다	To distress or trouble
5205	교시	Teach or instruct or enlighten
5206	그리로	Over there
5207	까먹다	Crack or peel and eat
5208	깜빡	With a flash or twinkle
5209	깡패	Gangster
5210	꾸다	Dream or have a dream
5211	낚시꾼	An angler
5212	다양해지다	To be various
5213	대중교통	Mass transportation
5214	데려오다	Go with
5215	마요네즈	Mayonnaise
5216	마흔	Forty
5217	만세	10,000 years
5218	만화가	Cartoon artist
5219	맘대로	As you want
5220	머리말	A preface
5221	면접	Interview
5222	명함	Name card
5223	몸속	In one’s body
5224	무책임하다	Not responsible
5225	반짝거리다	Twinkle-twinkle (stars)
5226	밤새우다	Sit up all night
5227	번지	Area of land
5228	볼펜	A ballpen
5229	빨간색	deep-red,crimson
5230	사립	Private
5231	사생활	Private life
5232	사이사이	Every now and then
5233	사자	A lion
5234	새소리	Bird voice,”chirp”
5235	생활수준	The standard of living
5236	서툴다	poor,awkward
5237	석사	Master
5238	성당	A church
5239	속마음	Inner heart,feeling
5240	손잡다	Take a person by the hand
5241	숙녀	A lady
5242	순하다	Be gentle,docile
5243	시댁	one’s husband’s family/house
5244	시부모	one’s husband’s parents
5245	신체적	Physical
5246	실수하다	To make a mistake
5247	쓴맛	A bitter flavor
5248	야옹	Mewing, meowing
5249	얼마간	Some, somewhat
5250	올여름	This summer
5251	외제	Of foreign manufacture
5252	외출하다	To go out (of doors)
5253	욕하다	To insult, to say bad words
5254	위아래	Up and down
5255	음반	A phonograph record
5256	의논	consultation,conference
5257	이	Two
5258	이래서	This way, this direction, here
5259	이발소	barber’s shop
5260	자살하다	Commit suicide
5261	자연적	Natural
5262	장례식	A funeral
5263	재수	luck,fortune
5264	재작년	The year before last
5265	재채기	sneeze,sneezing
5266	전구	An electric bulb
5267	전문점	Exclusive store
5268	전통문화	Traditional culture
5269	정거장	A railroad station
5270	존댓말	Respectful speech
5271	주전자	A kettle, teakettle
5272	지우다	Put a thing on a person’s back
5273	찬성	approval,assent
5274	초보자	A beginner, neophyte
5275	초청장	An invitation (card)
5276	촌스럽다	Unfashionable
5277	카레	Curry
5278	컨디션	Condition
5279	코스모스	Cosmos
5280	킬로	Kilo
5281	토론자	A debator, a disputant
5282	튼튼히	Strongly, firmly
5283	티셔츠	T-shirts
5284	페인트	Paint
5285	평상시	Normally
5286	중국	China
5287	학교생활	Student
5288	한둘	One or two
5289	해물	Marine products
5290	형	Shape, form
5291	혼나다	Get frightened, scared
5292	가만	Quietly or softly
5293	감정적	Emotional
5294	강북	North of the river
5295	거리	Materials
5296	고무신	Rubber shoes
5297	고춧가루	Red pepper powder
5298	관람	Inspection or viewing
5299	교외	Outside the school or extramural
5300	교육비	Tuition or the cost of a school education
5301	국립	Government established
5302	금	A line (draw)
5303	기억되다	To be remembered
5304	까다	Peel or husk
5305	꽃씨	Flower seed
5306	꾸준하다	Be steady or unflagging
5307	난방	A heated room
5308	내용물	Contents
5309	녹화	Tree-planting
5310	농구	Basketball
5311	달다	To hang
5312	매번	Every time
5313	먹다	Go deaf
5314	무관심하다	Be indifferent to
5315	무사하다	Be safe, peaceful
5316	밤낮	Night and day, always
5317	배구	Volleyball
5318	번역하다	To translate
5319	병아리	Chick, baby chicken
5320	부지런하다	Be diligent
5321	부피	bulk,size
5322	비기다	End in a tie, to be even-even. Same as 무승부를 기록하다
5323	생활용품	Necessities for daily life
5324	선풍기	A fan
5325	세로	Length
5326	섹시하다	To be sexy
5327	소비하다	Consumption
5328	수리하다	repair,mending
5329	스물	Twenty
5330	식료품	Articles for food
5331	식히다	To cool, let cool. 차게 하다
5332	싫어지다	To become distasteful
5333	씻기다	wash,be washed
5334	얼리다	Freeze, make ice
5335	여직원	Female employee
5336	열리다	To bear fruit
5337	옆방	The room next door
5338	오피스텔	Office hotel (studio apt)
5339	올가을	This fall
5340	와이셔츠	A white dress shirt
5341	원피스	(one-piece) a dress
5342	윗사람	A superior, one’s older somebody
5343	이민	Emigration
5344	이성	The opposite sex
5345	이혼하다	To get divorced
5346	인제	Now
5347	입사하다	To join/enter a company
5348	재우다	Put to sleep
5349	전시되다	To be exhibited,ddisplayed
5350	졸리다	Feel sleepy,drowsy
5351	졸음	sleepiness,drowsiness
5352	종이컵	A paper cup
5353	주문	An incantation, a spell
5354	지능	intelligence,intellect, raw intelligence
5355	쩔쩔매다	To be at a loss, be confused
5356	철	Discretion, prudence (Become sensible, wise)
5357	청바지	Blue jeans
5358	추가되다	To be added
5359	치료법	A curative means
5360	치우다	VST + Do away with, get rid of
5361	코끼리	An elephant
5362	콘서트	Concert
5363	큰소리	A loud voice, loudly
5364	큰아들	Oldest son
5365	특급	In a special class
5366	평일	A weekday
5367	풀어지다	To get loose; to turn soft (noodles)
5368	한겨울	Midwinter, the dead of winter
5369	한평생	A lifetime
5370	해수욕장	A swimming beach
5371	핸드폰	Cell phone
5372	허허	Ha-ha, with a laugh
5373	호실	Tells you the room number
5374	휴지통	Waste paper basket
5375	흐려지다	Get cloudy, overcast
5376	희망하다	Hope
5377	힘들어하다	To be exacting, tolling
5378	강의하다	To give a lecture
5379	걱정되다	To become worried
5380	공연하다	Offer a performance
5381	귤	A Jeju orange
5382	내과	Internal medicine
5383	넷째	Fourth
5384	목걸이	Necklace
5385	무지개	A rainbow
5386	문법	Grammar
5387	볶음	Roasted sth
5388	볼링	Bowling
5389	비둘기	Pigeon
5390	생활비	Cost of living
5391	스키장	Place to ski
5392	시대적	Of the times
5393	쓰다	Bitter (vegetables)
5394	앞문	The front gate
5395	인도	pavement,sidewalk
5396	책방	Reading room
5397	추가하다	To add sth, to supplement
5398	칠판	The blackboard
5399	크리스마스	Christmas
5400	탁구	ping-pong,table tennis
5401	현대적	Modern (adj)
5402	구	9
5403	나흘	Four days
5404	늦가을	Late autumn
5405	다이어트	Diet
5406	목요일	Thursday
5407	못생기다	Ugly
5408	영화관	Movie theater
5409	예술적	Artistic
5410	장모	A man’s mother in law
5411	중국집	Chinese restaurant
5412	지우개	An eraser
5413	지하도	Underground road
5414	튀김	Batter-fried food
5415	고궁	An ancient palace
5416	고속버스	Bus for the freeway
5417	단추	A button
5418	대중적	Of the masses
5419	미역	Brown seaweed
5420	반말	Crude language
5421	분홍색	Pink color
5422	사	four,the fourth
5423	소포	A parcel,package
5424	손녀	Granddaughter
5425	수영장	Swimming pool
5426	아래층	Lower floor
5427	일본어	Japanese
5428	작은아버지	An uncle younger than your father
5429	잠옷	Pajamas
5430	장갑	A pair of gloves
5431	초순	The first third of a month
5432	퇴원하다	To leave the hospital
5433	하순	The final third of the month
5434	갈비	The ribs
5435	기혼	Married
5436	대장	A seal, stamp
5437	모레	The day after tomorrow
5438	삼계탕	Chicken soup
5439	생신	A birthday
5440	서른	Thirty
5441	시내버스	Inner-city bus
5442	아홉	Nine
5443	예약하다	To book in advance, pledge
5444	우표	A postage stamp
5445	장미	A rose
5446	천둥	Thunder
5447	퇴원	Leaving the hospital
5448	파란색	Blue
5449	게으르다	Lazy
5450	기념품	A momento
5451	냉면	Cold noodles soup
5452	단풍	Fall foliage
5453	독일어	German
5454	문학적	Literary
5455	미끄럽다	To be slippery
5456	복숭아	Peach
5457	비빔밥	Vegetarian dish of rice and vegetables
5458	여든	Eighty
5459	외아들	The only son
5460	이따가	A little later
5461	일흔	Seventy
5462	장인	A man’s father in law, the wife\\\\`s father
5463	화요일	Tuesday
5464	강아지	Puppy
5465	닷새	Five days
5466	선물하다	Give a gift
5467	아이스크림	Ice cream
5468	외할아버지	A maternal grandfather
5469	요리하다	To cook (food)
5470	입국	Entering a country
5471	주차	Parking
5472	체육관	Gymnasium
5473	최소	At the least, the minimum
5474	칠	Seven
5475	칼국수	Knife-cut noodles
5476	큰아버지	Uncle older than one’s father
5477	홍차	Tea, black tea
5478	국민적	National or for citizens
5479	국제선	International airline
5480	맛없다	Bad flavor
5481	백	One hundred
5482	사십	40
5483	안과	Ophthalmology
5484	연락처	a way to make contact (usually means a phone number)
5485	연세	Age, years of age
5486	예식장	A ceremony hall
5487	월세	Monthly rent
5488	위층	The upper floor
5489	인삼차	Ginseng tea
5490	진찰	A medical diagnosis, investigation
5491	초록색	Green
5492	축구공	A soccer ball
5493	큰딸	Oldest daughter
5494	팔	Eight
5495	결석	Absent
5496	김치찌개	Spicy cabbage soup
5497	녹차	Green tea
5498	독감	Influenza
5499	만두	Chinese dumplings
5500	발음하다	Pronounce
5501	보라색	Purple
5502	복습하다	To review
5503	스케이트	Skate
5504	실례하다	To be impolite
5505	그렇게	And so. like that
5506	여섯	Six
5507	연두색	Light green
5508	온돌	The korean under-floor heating system
5509	육	The number six
5510	일곱	Seven
5511	출입국	Entry into a country
5512	클래식	Classic
5513	팝송	Pop song
5514	팩스	Fax
5515	깍두기	Sliced white radish kimchee
5516	국내선	Domestic airline
5517	복습	Reviewing
5518	삼십	30
5519	성함	Your (his) esteemed name
5520	세탁소	Laundromat
5521	시외버스	Inter-city bus
5522	야구장	Baseball field
5523	오십	Fifty
5524	운동복	Exercise clothes
5525	작은아들	Younger son
5526	잠자리	Dragonfly
5527	주차하다	To park
5528	중국어	Chinese
5529	청소기	A vacuum cleaner
5530	칠십	Seventy
5531	필통	Pencil case
5532	학생증	Student identification
5533	형수	The wife of one’s older brother
5534	경상도	Kyung-San-Do province (ulsan or kyungju)
5535	공항버스	Bus to the airport
5536	관광버스	Tourist bus
5537	그저께	The day before yesterday
5538	냉방	A cold or unheated room
5539	눈병	An eye disease
5540	다섯째	Fifth
5541	배추김치	Pickled cabbage
5542	사탕	Sugar
5543	색연필	Colored pencil
5544	소아과	Pediatrics
5545	양력	The solar calendar
5546	예순	Sixty
5547	오	Five
5548	작은어머니	An aunt younger than your mother
5549	축구장	Soccer field
5550	한글날	Korean writing system national holiday
5551	한식	Korean food
5552	세종대왕	King sejong, who invented Hangul
5553	넉	The fourth
5554	메일	Mail
5555	복사기	Memeograph
5556	빗	A comb
5557	설렁탕	Beef soup with rice
5558	종로	Famous street in Seoul
5559	신라	One dynasty in ancient korea
5560	십	10
5561	아드님	Your esteemed son
5562	천	Thousand
5563	결석하다	To be absent
5564	기념일	Commemoration day
5565	까만색	Black
5566	내후년	The year after next year
5567	쉰	50
5568	시아버지	one’s husband’s father
5569	식품점	Grocery store
5570	약혼녀	A girl who is engaged
5571	어저께	Yesterday
5572	영상	Above zero
5573	예매하다	Advance purchase
5574	예습	Preparation of lessons
5575	예습하다	To prepare lessons, rehearse
5576	육십	Sixty
5577	출석하다	attendance,presence
5578	큰어머니	The wife of the elder brother of one’s father
5579	팔십	80
5580	멍멍	A bruise
5581	분필	Chalk
5582	약혼자	A fiance, an engaged person
5583	양식	raising,farming,culture
5584	억	One hundred million
5585	여덟	Eight
5586	외과	Surgery
5587	제과점	Confectionary store
5588	중식	Chinese food
5589	케첩	Ketchup
5590	편의점	Convenient store
5591	갈비탕	Beef-rib soup
5592	검정색	A large sum of money
5593	미용실	Beauty salon
5594	아흔	Ninety
5595	이십	Twenty
5596	충청도	Area around daejon city
5597	설악산	Famous mountain
5598	조선	Name for ancient korea culture
5599	거꾸로	Backwards or bottom up or the wrong way
5600	인천공항	Incheon international airport
5601	저렇게	Like that
5602	대전	Daejon city
5603	뉴욕	New york
5604	풍경	Landscape, scenery
5605	아프리카	Africa
5606	근본	The foundation or basis
5607	정리	arrangment,regulation,adjustment
5608	도쿄(동경)	Tokyo
5609	워낙	By nature, primarily, by constitution
5610	독일	Germany
5611	이렇게	In this way
5612	발달하다	To advance
5613	지적하다	To indicate, point out
5614	영국	England
5615	회사	A company
5616	유럽	Europe
5617	의식	Consciuosness, awareness
5618	구십	90
5619	아시아	Asia
5620	기다리다	To wait
5621	인천	Incheon city
5622	거기	There (location)
5623	일식	Japanese food
5624	작은딸	Younger daughter
5625	저곳	That place over there
5626	초등학생	An elementary school student
5627	하얀색	White
5628	남미	South america
5629	금강산	The Diamond Mountains
5630	전주	Junju
5631	전라도	South-western region of south korea
5632	북한	North korea
5633	부산	Busan, city in SE Korea, with largest beach in S.Korea
5634	미국	America
5635	백두산	Korean mountain
5636	백제	Historical Korean government
5637	베이징(북경)	Beijing
5638	우리나라	Korea
5639	대한민국	Korea
5640	한국	Korea
5641	강원도	Region surrounding seoul
5642	경기도	Region surrounding seoul
5643	경복궁	Region surrounding seoul
5644	경주	Region surrounding seoul
5645	고구려	Region surrounding seoul
5646	고려	Region surrounding seoul
5647	광주	Region surrounding seoul
5648	김포공항	KimPo Domestic (sometimes international) airport
5649	울산	Ulsan, home of hyundai car company and hyundai shipbuilding in kyungsamnamdo
5650	호남	The HONAM district, which is CHOLLA-DO in S.W south korea
5651	일본	Japan
5652	파리	Paris
5653	지리산	Chili mountain, very beautiful
5654	제주도	Tourist island off south S.Korea
5655	서울	Seoul
5656	서울역	Seoul train station
5657	남대문	Seoul’s old south gate
5658	한강	The han river, runs through Seoul
5659	한라산	Halla-san mountain
5660	한반도	The korean peninsula
5661	평양	Capital of north korea
5662	프랑스	France
5663	호주	Australia
5664	남대문시장	Shopping center in seoul
5665	남산	Mountain in south central seoul
\.


--
-- Name: vocab_vocab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ChrisSon
--

SELECT pg_catalog.setval('vocab_vocab_id_seq', 5665, true);


--
-- Name: vocab_pkey; Type: CONSTRAINT; Schema: public; Owner: ChrisSon
--

ALTER TABLE ONLY vocab
    ADD CONSTRAINT vocab_pkey PRIMARY KEY (vocab_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: ChrisSon
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "ChrisSon";
GRANT ALL ON SCHEMA public TO "ChrisSon";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

