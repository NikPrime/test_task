--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: todos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.todos (
    id integer NOT NULL,
    userid integer NOT NULL,
    title character varying(255),
    completed boolean NOT NULL
);


ALTER TABLE public.todos OWNER TO postgres;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todos_id_seq OWNER TO postgres;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.todos_id_seq OWNED BY public.todos.id;


--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.todos ALTER COLUMN id SET DEFAULT nextval('public.todos_id_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.todos (id, userid, title, completed) FROM stdin;
1	1	delectus aut autem	f
2	1	quis ut nam facilis et officia qui	f
3	1	fugiat veniam minus	f
4	1	et porro tempora	t
5	1	laboriosam mollitia et enim quasi adipisci quia provident illum	f
6	1	qui ullam ratione quibusdam voluptatem quia omnis	f
7	1	illo expedita consequatur quia in	f
8	1	quo adipisci enim quam ut ab	t
9	1	molestiae perspiciatis ipsa	f
10	1	illo est ratione doloremque quia maiores aut	t
11	1	vero rerum temporibus dolor	t
12	1	ipsa repellendus fugit nisi	t
13	1	et doloremque nulla	f
14	1	repellendus sunt dolores architecto voluptatum	t
15	1	ab voluptatum amet voluptas	t
16	1	accusamus eos facilis sint et aut voluptatem	t
17	1	quo laboriosam deleniti aut qui	t
18	1	dolorum est consequatur ea mollitia in culpa	f
19	1	molestiae ipsa aut voluptatibus pariatur dolor nihil	t
20	1	ullam nobis libero sapiente ad optio sint	t
21	2	suscipit repellat esse quibusdam voluptatem incidunt	f
22	2	distinctio vitae autem nihil ut molestias quo	t
23	2	et itaque necessitatibus maxime molestiae qui quas velit	f
24	2	adipisci non ad dicta qui amet quaerat doloribus ea	f
25	2	voluptas quo tenetur perspiciatis explicabo natus	t
26	2	aliquam aut quasi	t
27	2	veritatis pariatur delectus	t
28	2	nesciunt totam sit blanditiis sit	f
29	2	laborum aut in quam	f
30	2	nemo perspiciatis repellat ut dolor libero commodi blanditiis omnis	t
31	2	repudiandae totam in est sint facere fuga	f
32	2	earum doloribus ea doloremque quis	f
33	2	sint sit aut vero	f
34	2	porro aut necessitatibus eaque distinctio	f
35	2	repellendus veritatis molestias dicta incidunt	t
36	2	excepturi deleniti adipisci voluptatem et neque optio illum ad	t
37	2	sunt cum tempora	f
38	2	totam quia non	f
39	2	doloremque quibusdam asperiores libero corrupti illum qui omnis	f
40	2	totam atque quo nesciunt	t
41	3	aliquid amet impedit consequatur aspernatur placeat eaque fugiat suscipit	f
42	3	rerum perferendis error quia ut eveniet	f
43	3	tempore ut sint quis recusandae	t
44	3	cum debitis quis accusamus doloremque ipsa natus sapiente omnis	t
45	3	velit soluta adipisci molestias reiciendis harum	f
46	3	vel voluptatem repellat nihil placeat corporis	f
47	3	nam qui rerum fugiat accusamus	f
48	3	sit reprehenderit omnis quia	f
49	3	ut necessitatibus aut maiores debitis officia blanditiis velit et	f
50	3	cupiditate necessitatibus ullam aut quis dolor voluptate	t
51	3	distinctio exercitationem ab doloribus	f
52	3	nesciunt dolorum quis recusandae ad pariatur ratione	f
53	3	qui labore est occaecati recusandae aliquid quam	f
54	3	quis et est ut voluptate quam dolor	t
55	3	voluptatum omnis minima qui occaecati provident nulla voluptatem ratione	t
56	3	deleniti ea temporibus enim	t
57	3	pariatur et magnam ea doloribus similique voluptatem rerum quia	f
58	3	est dicta totam qui explicabo doloribus qui dignissimos	f
59	3	perspiciatis velit id laborum placeat iusto et aliquam odio	f
60	3	et sequi qui architecto ut adipisci	t
61	4	odit optio omnis qui sunt	t
62	4	et placeat et tempore aspernatur sint numquam	f
63	4	doloremque aut dolores quidem fuga qui nulla	t
64	4	voluptas consequatur qui ut quia magnam nemo esse	f
65	4	fugiat pariatur ratione ut asperiores necessitatibus magni	f
66	4	rerum eum molestias autem voluptatum sit optio	f
67	4	quia voluptatibus voluptatem quos similique maiores repellat	f
68	4	aut id perspiciatis voluptatem iusto	f
69	4	doloribus sint dolorum ab adipisci itaque dignissimos aliquam suscipit	f
70	4	ut sequi accusantium et mollitia delectus sunt	f
71	4	aut velit saepe ullam	f
72	4	praesentium facilis facere quis harum voluptatibus voluptatem eum	f
73	4	sint amet quia totam corporis qui exercitationem commodi	t
74	4	expedita tempore nobis eveniet laborum maiores	f
75	4	occaecati adipisci est possimus totam	f
76	4	sequi dolorem sed	t
77	4	maiores aut nesciunt delectus exercitationem vel assumenda eligendi at	f
78	4	reiciendis est magnam amet nemo iste recusandae impedit quaerat	f
79	4	eum ipsa maxime ut	t
80	4	tempore molestias dolores rerum sequi voluptates ipsum consequatur	t
81	5	suscipit qui totam	t
82	5	voluptates eum voluptas et dicta	f
83	5	quidem at rerum quis ex aut sit quam	t
84	5	sunt veritatis ut voluptate	f
85	5	et quia ad iste a	t
86	5	incidunt ut saepe autem	t
87	5	laudantium quae eligendi consequatur quia et vero autem	t
88	5	vitae aut excepturi laboriosam sint aliquam et et accusantium	f
89	5	sequi ut omnis et	t
90	5	molestiae nisi accusantium tenetur dolorem et	t
91	5	nulla quis consequatur saepe qui id expedita	t
92	5	in omnis laboriosam	t
93	5	odio iure consequatur molestiae quibusdam necessitatibus quia sint	t
94	5	facilis modi saepe mollitia	f
95	5	vel nihil et molestiae iusto assumenda nemo quo ut	t
96	5	nobis suscipit ducimus enim asperiores voluptas	f
97	5	dolorum laboriosam eos qui iure aliquam	f
98	5	debitis accusantium ut quo facilis nihil quis sapiente necessitatibus	t
99	5	neque voluptates ratione	f
100	5	excepturi a et neque qui expedita vel voluptate	f
101	6	explicabo enim cumque porro aperiam occaecati minima	f
102	6	sed ab consequatur	f
103	6	non sunt delectus illo nulla tenetur enim omnis	f
104	6	excepturi non laudantium quo	f
105	6	totam quia dolorem et illum repellat voluptas optio	t
106	6	ad illo quis voluptatem temporibus	t
107	6	praesentium facilis omnis laudantium fugit ad iusto nihil nesciunt	f
108	6	a eos eaque nihil et exercitationem incidunt delectus	t
109	6	autem temporibus harum quisquam in culpa	t
110	6	aut aut ea corporis	t
111	6	magni accusantium labore et id quis provident	f
112	6	consectetur impedit quisquam qui deserunt non rerum consequuntur eius	f
113	6	quia atque aliquam sunt impedit voluptatum rerum assumenda nisi	f
114	6	cupiditate quos possimus corporis quisquam exercitationem beatae	f
115	6	sed et ea eum	f
116	6	ipsa dolores vel facilis ut	t
117	6	sequi quae est et qui qui eveniet asperiores	f
118	6	quia modi consequatur vero fugiat	f
119	6	corporis ducimus ea perspiciatis iste	f
120	6	dolorem laboriosam vel voluptas et aliquam quasi	f
121	7	inventore aut nihil minima laudantium hic qui omnis	t
122	7	provident aut nobis culpa	t
123	7	esse et quis iste est earum aut impedit	f
124	7	qui consectetur id	f
125	7	aut quasi autem iste tempore illum possimus	f
126	7	ut asperiores perspiciatis veniam ipsum rerum saepe	t
127	7	voluptatem libero consectetur rerum ut	t
128	7	eius omnis est qui voluptatem autem	f
129	7	rerum culpa quis harum	f
130	7	nulla aliquid eveniet harum laborum libero alias ut unde	t
131	7	qui ea incidunt quis	f
132	7	qui molestiae voluptatibus velit iure harum quisquam	t
133	7	et labore eos enim rerum consequatur sunt	t
134	7	molestiae doloribus et laborum quod ea	f
135	7	facere ipsa nam eum voluptates reiciendis vero qui	f
136	7	asperiores illo tempora fuga sed ut quasi adipisci	f
137	7	qui sit non	f
138	7	placeat minima consequatur rem qui ut	t
139	7	consequatur doloribus id possimus voluptas a voluptatem	f
140	7	aut consectetur in blanditiis deserunt quia sed laboriosam	t
141	8	explicabo consectetur debitis voluptates quas quae culpa rerum non	t
142	8	maiores accusantium architecto necessitatibus reiciendis ea aut	t
143	8	eum non recusandae cupiditate animi	f
144	8	ut eum exercitationem sint	f
145	8	beatae qui ullam incidunt voluptatem non nisi aliquam	f
146	8	molestiae suscipit ratione nihil odio libero impedit vero totam	t
147	8	eum itaque quod reprehenderit et facilis dolor autem ut	t
148	8	esse quas et quo quasi exercitationem	f
149	8	animi voluptas quod perferendis est	f
150	8	eos amet tempore laudantium fugit a	f
151	8	accusamus adipisci dicta qui quo ea explicabo sed vero	t
152	8	odit eligendi recusandae doloremque cumque non	f
153	8	ea aperiam consequatur qui repellat eos	f
154	8	rerum non ex sapiente	t
155	8	voluptatem nobis consequatur et assumenda magnam	t
156	8	nam quia quia nulla repellat assumenda quibusdam sit nobis	t
157	8	dolorem veniam quisquam deserunt repellendus	t
158	8	debitis vitae delectus et harum accusamus aut deleniti a	t
159	8	debitis adipisci quibusdam aliquam sed dolore ea praesentium nobis	t
160	8	et praesentium aliquam est	f
161	9	ex hic consequuntur earum omnis alias ut occaecati culpa	t
162	9	omnis laboriosam molestias animi sunt dolore	t
163	9	natus corrupti maxime laudantium et voluptatem laboriosam odit	f
164	9	reprehenderit quos aut aut consequatur est sed	f
165	9	fugiat perferendis sed aut quidem	f
166	9	quos quo possimus suscipit minima ut	f
167	9	et quis minus quo a asperiores molestiae	f
168	9	recusandae quia qui sunt libero	f
169	9	ea odio perferendis officiis	t
170	9	quisquam aliquam quia doloribus aut	f
171	9	fugiat aut voluptatibus corrupti deleniti velit iste odio	t
172	9	et provident amet rerum consectetur et voluptatum	f
173	9	harum ad aperiam quis	f
174	9	similique aut quo	f
175	9	laudantium eius officia perferendis provident perspiciatis asperiores	t
176	9	magni soluta corrupti ut maiores rem quidem	f
177	9	et placeat temporibus voluptas est tempora quos quibusdam	f
178	9	nesciunt itaque commodi tempore	t
179	9	omnis consequuntur cupiditate impedit itaque ipsam quo	t
180	9	debitis nisi et dolorem repellat et	t
181	10	ut cupiditate sequi aliquam fuga maiores	f
182	10	inventore saepe cumque et aut illum enim	t
183	10	omnis nulla eum aliquam distinctio	t
184	10	molestias modi perferendis perspiciatis	f
185	10	voluptates dignissimos sed doloribus animi quaerat aut	f
186	10	explicabo odio est et	f
187	10	consequuntur animi possimus	f
188	10	vel non beatae est	t
189	10	culpa eius et voluptatem et	t
190	10	accusamus sint iusto et voluptatem exercitationem	t
191	10	temporibus atque distinctio omnis eius impedit tempore molestias pariatur	t
192	10	ut quas possimus exercitationem sint voluptates	f
193	10	rerum debitis voluptatem qui eveniet tempora distinctio a	t
194	10	sed ut vero sit molestiae	f
195	10	rerum ex veniam mollitia voluptatibus pariatur	t
196	10	consequuntur aut ut fugit similique	t
197	10	dignissimos quo nobis earum saepe	t
198	10	quis eius est sint explicabo	t
199	10	numquam repellendus a magnam	t
200	10	ipsam aperiam voluptates qui	f
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.todos_id_seq', 1, false);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

