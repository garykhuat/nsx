--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character(100)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character(100),
    gender character(5),
    phone character(20),
    email character(50),
    address character(100)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: farms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.farms (
    id integer NOT NULL,
    name character(50),
    owner character(50),
    address character(100),
    phone character(20),
    product_id integer
);


ALTER TABLE public.farms OWNER TO postgres;

--
-- Name: farms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.farms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.farms_id_seq OWNER TO postgres;

--
-- Name: farms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.farms_id_seq OWNED BY public.farms.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character(100),
    amount integer,
    price integer,
    description text,
    brand_id integer,
    category_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: farms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.farms ALTER COLUMN id SET DEFAULT nextval('public.farms_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
1	ngu coc                                                                                             
2	rau cu                                                                                              
3	hoa qua                                                                                             
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, gender, phone, email, address) FROM stdin;
1	Alwin Knightly                                                                                      	M    	859-460-2545        	aknightly0@chron.com                              	2982 Green Ridge Alley                                                                              
2	Salli Sottell                                                                                       	F    	411-932-5449        	ssottell1@wikimedia.org                           	8919 Dakota Junction                                                                                
3	Deidre Koppen                                                                                       	F    	433-437-5428        	dkoppen2@techcrunch.com                           	9 Carberry Pass                                                                                     
4	Leigh Gartell                                                                                       	M    	232-597-2365        	lgartell3@bizjournals.com                         	1819 Drewry Way                                                                                     
5	Tabina Wellen                                                                                       	F    	586-843-3792        	twellen4@msn.com                                  	02420 Nobel Avenue                                                                                  
6	Marcille Powys                                                                                      	F    	189-999-4768        	mpowys5@diigo.com                                 	8340 Charing Cross Drive                                                                            
7	Hieronymus Kingsland                                                                                	M    	835-137-5161        	hkingsland6@gmpg.org                              	0 Vahlen Drive                                                                                      
8	Masha Brugden                                                                                       	F    	293-857-8112        	mbrugden7@nih.gov                                 	594 Westerfield Terrace                                                                             
9	Mata Bertl                                                                                          	M    	893-892-6543        	mbertl8@seattletimes.com                          	0736 Clemons Court                                                                                  
10	Jojo Mucci                                                                                          	F    	261-636-2226        	jmucci9@nationalgeographic.com                    	2841 Vidon Crossing                                                                                 
11	Halli Janssen                                                                                       	F    	464-998-3076        	hjanssena@chron.com                               	4555 Oxford Alley                                                                                   
12	Dorri Rustedge                                                                                      	F    	376-867-5906        	drustedgeb@yandex.ru                              	3509 Tomscot Pass                                                                                   
13	Evan Giamitti                                                                                       	M    	498-104-2723        	egiamittic@sfgate.com                             	245 High Crossing Crossing                                                                          
14	Olivier Feore                                                                                       	M    	301-800-4806        	ofeored@timesonline.co.uk                         	8 Sycamore Point                                                                                    
15	Monte Shakespear                                                                                    	M    	336-722-1400        	mshakespeare@barnesandnoble.com                   	937 Mendota Alley                                                                                   
16	Jobina Verchambre                                                                                   	F    	276-870-9979        	jverchambref@accuweather.com                      	6332 Bashford Circle                                                                                
17	Ned Manners                                                                                         	M    	305-606-4973        	nmannersg@bbc.co.uk                               	236 Spohn Plaza                                                                                     
18	Dagmar Sisse                                                                                        	F    	465-926-8963        	dsisseh@msu.edu                                   	16776 Commercial Junction                                                                           
19	Randi Holtum                                                                                        	M    	344-215-4948        	rholtumi@yahoo.co.jp                              	111 La Follette Junction                                                                            
20	Allie Bonallack                                                                                     	M    	439-787-4078        	abonallackj@elegantthemes.com                     	8588 Northland Way                                                                                  
21	Zollie Lansberry                                                                                    	M    	590-645-6135        	zlansberryk@vkontakte.ru                          	05058 Pawling Drive                                                                                 
22	Erastus Santhouse                                                                                   	M    	687-696-7004        	esanthousel@theglobeandmail.com                   	6 8th Terrace                                                                                       
23	Jacinda Jewiss                                                                                      	F    	837-701-4097        	jjewissm@gizmodo.com                              	487 Logan Lane                                                                                      
24	Ginelle Stuchburie                                                                                  	F    	591-150-3488        	gstuchburien@about.com                            	720 Bay Center                                                                                      
25	Marina Folkerd                                                                                      	F    	202-837-8785        	mfolkerdo@instagram.com                           	563 Jay Road                                                                                        
26	Win Killoran                                                                                        	M    	361-613-2015        	wkilloranp@house.gov                              	921 New Castle Drive                                                                                
27	Bobbie Cannings                                                                                     	M    	933-528-8075        	bcanningsq@intel.com                              	0 Blaine Terrace                                                                                    
28	Zaria Simms                                                                                         	F    	760-520-4946        	zsimmsr@hatena.ne.jp                              	52 Maryland Junction                                                                                
29	Gabe Boyes                                                                                          	M    	639-733-0894        	gboyess@vinaora.com                               	07 Kings Trail                                                                                      
30	Oberon Stroton                                                                                      	M    	993-322-0952        	ostrotont@forbes.com                              	64125 Swallow Hill                                                                                  
\.


--
-- Data for Name: farms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.farms (id, name, owner, address, phone, product_id) FROM stdin;
1	Chatterbridge                                     	Jacquelyn Harbisher                               	6222 Elgar Parkway                                                                                  	696-250-6777        	26
2	Zoomzone                                          	Petr Rodenburgh                                   	09 Menomonie Crossing                                                                               	929-736-3423        	109
3	Fivebridge                                        	Jessamyn Yate                                     	7989 Butterfield Point                                                                              	254-833-5094        	13
4	Thoughtbridge                                     	Bruno Ranstead                                    	861 Pearson Junction                                                                                	640-712-1086        	13
5	Zoovu                                             	Noami Tanguy                                      	3 Waxwing Alley                                                                                     	479-998-7423        	118
6	Zoomlounge                                        	Joelie Champness                                  	957 Heath Alley                                                                                     	240-310-2464        	100
7	Dabvine                                           	Alica Blight                                      	042 Randy Plaza                                                                                     	911-177-3934        	73
8	Roodel                                            	Fransisco Floyed                                  	1 John Wall Avenue                                                                                  	471-281-3115        	2
9	Zoomdog                                           	Terra Belsey                                      	39754 Butterfield Junction                                                                          	739-348-9316        	127
10	Browsetype                                        	Bernie Keenan                                     	2719 Forest Dale Circle                                                                             	972-650-7775        	113
11	Skyble                                            	Shara Fridaye                                     	1 Sunnyside Pass                                                                                    	387-987-8117        	16
12	Flipstorm                                         	Hendrick Cramond                                  	379 Spohn Crossing                                                                                  	923-437-7913        	38
13	Rooxo                                             	Calla McCullock                                   	044 4th Junction                                                                                    	116-924-7644        	15
14	Fliptune                                          	Krista Haxby                                      	6 Killdeer Trail                                                                                    	840-112-7365        	38
15	Abatz                                             	Maddalena Kelbie                                  	051 Twin Pines Junction                                                                             	982-100-2640        	87
16	Divape                                            	Ewart Crichmer                                    	1 Northwestern Terrace                                                                              	937-502-3244        	31
17	Ntag                                              	Langsdon Messum                                   	65873 Brickson Park Center                                                                          	380-905-3510        	109
18	Oyoyo                                             	Sharai Etchell                                    	28117 Mallory Trail                                                                                 	300-975-8008        	59
19	Yotz                                              	Hedy Rickert                                      	076 Melvin Park                                                                                     	534-976-3129        	101
20	Eadel                                             	Parrnell Luckwell                                 	5 Hollow Ridge Terrace                                                                              	265-534-7900        	88
21	Bubbletube                                        	Ambrose Apps                                      	95 Homewood Center                                                                                  	425-953-0958        	14
22	Centidel                                          	Dukey Cumes                                       	7 Haas Plaza                                                                                        	843-800-2707        	2
23	Dabshots                                          	Dominik Shoesmith                                 	89490 Welch Crossing                                                                                	412-372-1779        	98
24	Livetube                                          	Megen Tacey                                       	25 Iowa Point                                                                                       	216-218-1748        	57
25	Gigaclub                                          	Moore Brumhead                                    	40679 Harbort Place                                                                                 	574-276-1694        	85
26	Snaptags                                          	Cherye Elderkin                                   	395 Pine View Junction                                                                              	145-986-7299        	116
27	Browsetype                                        	Tamarra Peltz                                     	850 Heffernan Park                                                                                  	942-474-5915        	81
28	Gigazoom                                          	Nonnah Trudgian                                   	854 Birchwood Way                                                                                   	797-797-5324        	104
29	Flipbug                                           	Philippe Karolewski                               	48 Valley Edge Place                                                                                	966-917-2681        	64
30	Feedmix                                           	Burton Kenright                                   	20622 American Ash Point                                                                            	172-125-3347        	122
31	Yozio                                             	Alford Mannering                                  	64026 Washington Hill                                                                               	811-984-0583        	12
32	Yacero                                            	Bartram Graver                                    	873 Hovde Crossing                                                                                  	557-572-8012        	123
33	Tazz                                              	Perice Kaine                                      	3617 Fordem Street                                                                                  	729-285-2487        	43
34	Voolia                                            	Josefina Took                                     	30835 Loeprich Plaza                                                                                	903-341-0783        	41
35	Zoovu                                             	Rafaellle Haswell                                 	32 Manitowish Lane                                                                                  	844-185-4763        	129
36	Katz                                              	Cassandra Kienlein                                	57646 Ryan Park                                                                                     	544-688-8902        	118
37	Tazz                                              	Sarita Franciskiewicz                             	2 School Terrace                                                                                    	269-864-8822        	3
38	Centimia                                          	Melinde Gunton                                    	364 Del Mar Court                                                                                   	372-442-2709        	44
39	Eimbee                                            	Allison Parkman                                   	50432 Hooker Hill                                                                                   	269-948-1153        	21
40	Vinte                                             	Gilly Swettenham                                  	423 Towne Park                                                                                      	217-708-6247        	58
41	Pixope                                            	Cyrille Proven                                    	52 8th Pass                                                                                         	372-392-8094        	24
42	Zazio                                             	Kristos Whall                                     	899 North Point                                                                                     	547-145-4309        	12
43	Jatri                                             	Beatrice Roostan                                  	77 Dapin Drive                                                                                      	579-859-4021        	70
44	Ntag                                              	Cyndy Tureville                                   	6631 Monument Center                                                                                	520-990-7283        	10
45	Brainlounge                                       	Otis Crippill                                     	56000 Hintze Plaza                                                                                  	439-274-1119        	27
46	Snaptags                                          	Gay Hemshall                                      	70461 Doe Crossing Crossing                                                                         	238-968-9865        	72
47	Babbleopia                                        	Burton Yitzhakof                                  	62840 Gina Terrace                                                                                  	202-619-5432        	14
48	Gabtype                                           	Thorsten Brambill                                 	618 Florence Avenue                                                                                 	309-893-4064        	51
49	Eare                                              	Mason Benton                                      	620 Pond Terrace                                                                                    	996-165-1929        	12
50	Livetube                                          	Elmore Fownes                                     	6 5th Circle                                                                                        	402-569-6838        	122
51	Oyope                                             	Selene Peers                                      	6 4th Road                                                                                          	186-385-5916        	8
52	Riffpath                                          	Dicky Balthasar                                   	08 Dottie Alley                                                                                     	466-229-3185        	14
53	Kayveo                                            	Jonell Hartzogs                                   	2167 Crescent Oaks Drive                                                                            	592-808-0598        	91
54	Geba                                              	Myra Gillam                                       	3 Village Green Drive                                                                               	454-361-6119        	47
55	Realbuzz                                          	Fayina Dracey                                     	3747 Morningstar Trail                                                                              	423-540-7410        	76
56	Fivebridge                                        	Petronilla Scadden                                	6 Dwight Way                                                                                        	390-902-4105        	35
57	Topicware                                         	Domenic Swinerd                                   	5379 Cordelia Place                                                                                 	707-129-5261        	43
58	Mydeo                                             	Engelbert Sewell                                  	6 Shopko Center                                                                                     	162-985-1920        	124
59	Realcube                                          	Lindsay Hullyer                                   	0 Blackbird Point                                                                                   	264-670-2674        	71
60	Avamm                                             	Paulo Yakhin                                      	22 Artisan Drive                                                                                    	617-816-5916        	102
61	Gabtype                                           	Richart Cow                                       	75870 Thompson Terrace                                                                              	551-207-4663        	24
62	Ntag                                              	Edita Slyvester                                   	645 Pepper Wood Parkway                                                                             	120-494-4461        	90
63	Youbridge                                         	Feliza Cooch                                      	94254 Fair Oaks Hill                                                                                	754-630-1841        	86
64	Tagfeed                                           	Mahmoud Du Fray                                   	170 Jay Plaza                                                                                       	654-789-8907        	5
65	Yodel                                             	Kandace Rays                                      	62511 Rowland Hill                                                                                  	529-738-6149        	52
66	Browsecat                                         	Margery MacChaell                                 	05459 Prairieview Terrace                                                                           	530-520-0370        	115
67	Voonte                                            	Margo Oguz                                        	0379 Sloan Street                                                                                   	732-700-3424        	38
68	Avaveo                                            	Gran Brock                                        	163 Ruskin Circle                                                                                   	822-629-4426        	112
69	Bubblebox                                         	Margret Lerhinan                                  	394 Eagan Avenue                                                                                    	634-148-8781        	112
70	Wordtune                                          	Venita Janik                                      	22 Jay Circle                                                                                       	599-677-1264        	9
71	Eimbee                                            	Jess Myner                                        	8 Sunfield Alley                                                                                    	269-754-1404        	87
72	Cogilith                                          	Kelby Evemy                                       	03 Ridgeway Alley                                                                                   	170-512-3293        	61
73	Oloo                                              	Elnora Yegorchenkov                               	8 Buell Plaza                                                                                       	548-390-5153        	67
74	DabZ                                              	Josepha Bonnier                                   	7 North Lane                                                                                        	945-869-9528        	52
75	Ozu                                               	Eziechiele Quantrill                              	62 Rockefeller Point                                                                                	796-597-6078        	41
76	Jabbercube                                        	Willey Valente                                    	164 8th Alley                                                                                       	311-435-8058        	91
77	Jayo                                              	Eleonore Fontell                                  	84283 Elka Drive                                                                                    	238-737-9088        	69
78	Oyondu                                            	Elicia Nanson                                     	13 Buhler Point                                                                                     	911-925-7501        	64
79	Jabbersphere                                      	Jeremias Fanstone                                 	09516 Sycamore Park                                                                                 	434-976-1145        	98
80	Blogspan                                          	Elisha Challicombe                                	183 8th Hill                                                                                        	351-979-7698        	107
81	Bubblebox                                         	Hi Anlay                                          	0 Lakewood Way                                                                                      	875-805-6130        	93
82	Realbuzz                                          	Emmalynne Arkle                                   	3797 Kensington Point                                                                               	340-425-2516        	63
83	Meevee                                            	Trent Van Eeden                                   	241 Elgar Street                                                                                    	347-848-1506        	17
84	Fivechat                                          	Ebony Theobold                                    	279 Vahlen Street                                                                                   	660-413-7360        	23
85	Topdrive                                          	Wilek Fillingham                                  	839 Kinsman Junction                                                                                	838-360-3534        	98
86	Zoombox                                           	Roman McDyer                                      	1 Mcguire Place                                                                                     	242-706-8327        	15
87	Dabjam                                            	Lizzie Cozins                                     	93536 Gateway Way                                                                                   	211-406-3072        	119
88	Skinte                                            	Myrwyn Devons                                     	6012 Nova Junction                                                                                  	956-222-2935        	112
89	Plajo                                             	Otha Scupham                                      	64945 Clemons Circle                                                                                	972-899-1084        	6
90	Eayo                                              	Art Whitehorne                                    	79908 Stang Street                                                                                  	234-454-8917        	129
91	Teklist                                           	Shelbi Averall                                    	1429 High Crossing Trail                                                                            	591-889-6734        	14
92	Dabtype                                           	Tallie Kingdom                                    	49 Gateway Parkway                                                                                  	879-416-6610        	90
93	Topdrive                                          	Mateo Ekless                                      	9770 Vernon Court                                                                                   	380-450-4387        	77
94	Camimbo                                           	Myrwyn Vigne                                      	1 Southridge Court                                                                                  	626-942-7201        	98
95	Cogidoo                                           	Drud Twiggs                                       	84769 East Pass                                                                                     	922-598-5777        	114
96	Skinix                                            	Cleopatra Mannooch                                	643 Melrose Avenue                                                                                  	538-694-0433        	71
97	Eire                                              	Eloise Sherebrooke                                	37 Algoma Lane                                                                                      	932-847-0837        	14
98	Flipstorm                                         	Brook Brandenburg                                 	98538 Rutledge Circle                                                                               	296-202-8600        	96
99	Fivespan                                          	Whitney Dreus                                     	2705 Swallow Pass                                                                                   	402-238-0592        	53
100	Gevee                                             	Frayda Rawstorne                                  	0389 Johnson Hill                                                                                   	352-363-1879        	96
101	Yadel                                             	Luella Metzig                                     	093 Old Gate Way                                                                                    	512-938-6976        	2
102	Livepath                                          	Arney Chominski                                   	3 Pond Point                                                                                        	304-700-1696        	65
103	Shuffledrive                                      	Quinta Emmet                                      	886 Buell Drive                                                                                     	323-957-2221        	118
104	Skyvu                                             	Clayborne Spickett                                	18 Comanche Plaza                                                                                   	944-348-6443        	44
105	Twimbo                                            	Ailbert von Grollmann                             	19 Thierer Pass                                                                                     	928-615-3553        	23
106	Edgeify                                           	Skip Kuzemka                                      	24 Montana Road                                                                                     	249-256-1612        	103
107	Oba                                               	Tonie Haines                                      	53018 Nova Court                                                                                    	526-941-1154        	20
108	Yodoo                                             	Robbie Budgett                                    	2 Hoffman Street                                                                                    	427-542-1097        	31
109	Agimba                                            	Grier Sneaker                                     	848 Glendale Center                                                                                 	333-835-2887        	19
110	Brainbox                                          	Nanice Ondra                                      	0169 Waywood Crossing                                                                               	371-882-8789        	27
111	Livepath                                          	Alicea Laste                                      	9 Cambridge Crossing                                                                                	292-287-1443        	31
112	Twinder                                           	Gwendolen Ceschini                                	7616 Boyd Center                                                                                    	356-680-5358        	107
113	Kayveo                                            	Daffi Sobey                                       	61828 Hazelcrest Center                                                                             	247-740-4112        	71
114	Zoonoodle                                         	Dennis Darrell                                    	1614 Kipling Terrace                                                                                	389-198-7822        	120
115	Oodoo                                             	Lettie Buxton                                     	33 Portage Place                                                                                    	961-751-1214        	29
116	Yambee                                            	Barret Doogood                                    	35757 La Follette Way                                                                               	969-656-9460        	22
117	Oyonder                                           	Dorelia MacDaid                                   	97 Montana Street                                                                                   	952-552-6978        	60
118	Wikido                                            	Aeriel Dockwray                                   	7 2nd Plaza                                                                                         	516-861-3815        	19
119	Voonix                                            	Mayer Horwell                                     	1 Harper Place                                                                                      	312-315-8572        	84
120	Divape                                            	Nikola Chinnock                                   	01 Division Road                                                                                    	202-444-0143        	47
121	Layo                                              	Jaine Clatworthy                                  	323 Blue Bill Park Center                                                                           	395-133-5477        	32
122	Devcast                                           	Chantalle Bentick                                 	09 Dovetail Park                                                                                    	962-613-6452        	30
123	Zoonoodle                                         	Haroun Mirralls                                   	05229 Dapin Circle                                                                                  	298-930-7645        	12
124	Realcube                                          	Claudia McQuaide                                  	47 Ruskin Place                                                                                     	593-761-3916        	56
125	Tavu                                              	Liz Humbey                                        	04087 Hoffman Way                                                                                   	708-761-8010        	64
126	Trilia                                            	Cher Yvon                                         	993 Alpine Hill                                                                                     	137-486-3604        	49
127	Skynoodle                                         	Aurel Bills                                       	537 Main Point                                                                                      	750-716-1510        	5
128	Linkbuzz                                          	Jillie Lambrecht                                  	77308 David Pass                                                                                    	900-725-9553        	69
129	Wikizz                                            	Kaleena Coull                                     	65141 Jana Road                                                                                     	925-837-4275        	88
130	Lazz                                              	Dieter Coal                                       	9 Continental Trail                                                                                 	219-404-2728        	4
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, amount, price, description, brand_id, category_id) FROM stdin;
1	Juice - Ocean Spray Kiwi                                                                            	75	470157	luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus	\N	4
2	Filling - Mince Meat                                                                                	87	414172	sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti	\N	4
3	Curry Paste - Madras                                                                                	35	16646	ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat	\N	1
4	Bacardi Mojito                                                                                      	3	703535	rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at	\N	1
5	Mini - Vol Au Vents                                                                                 	19	226515	amet erat nulla tempus vivamus in felis eu sapien cursus	\N	3
6	Turkey Tenderloin Frozen                                                                            	73	106039	quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum	\N	3
7	Asparagus - White, Canned                                                                           	54	637047	mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis	\N	1
8	Beef - Top Butt Aaa                                                                                 	54	427127	ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit	\N	1
9	Soup - Campbells, Creamy                                                                            	66	79301	varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices	\N	3
10	Pepper - Scotch Bonnet                                                                              	80	53204	nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices	\N	3
11	Seabream Whole Farmed                                                                               	27	22508	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus	\N	4
12	Southern Comfort                                                                                    	17	506166	quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris	\N	2
13	Ginger - Pickled                                                                                    	67	929468	viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum	\N	3
14	Table Cloth 62x120 Colour                                                                           	18	565856	in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus	\N	2
15	Turkey - Breast, Bone - In                                                                          	99	496120	ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae	\N	2
16	Squid - Tubes / Tenticles 10/20                                                                     	89	583557	cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et	\N	4
17	Lemons                                                                                              	1	440562	risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis	\N	4
18	Sole - Dover, Whole, Fresh                                                                          	68	280885	id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue	\N	1
19	Table Cloth 62x120 Colour                                                                           	11	665715	est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac	\N	1
20	Wine - Taylors Reserve                                                                              	14	672455	magnis dis parturient montes nascetur ridiculus mus etiam vel augue	\N	4
21	Tomatoes - Cherry, Yellow                                                                           	8	434469	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec	\N	3
22	Thyme - Fresh                                                                                       	6	403776	dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat	\N	2
23	Bulgar                                                                                              	3	154550	eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi	\N	2
24	Cheese - Cheddar, Medium                                                                            	6	505955	ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed	\N	1
25	Olives - Nicoise                                                                                    	50	53720	venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien	\N	2
26	Wine - Sogrape Mateus Rose                                                                          	47	609546	semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum	\N	3
27	Wine - White, Schroder And Schyl                                                                    	80	153693	sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis	\N	2
28	Beans - Butter Lrg Lima                                                                             	10	91304	tristique in tempus sit amet sem fusce consequat nulla nisl	\N	4
29	Ginger - Ground                                                                                     	16	171300	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio	\N	4
30	Peach - Fresh                                                                                       	49	988875	purus aliquet at feugiat non pretium quis lectus suspendisse potenti in	\N	2
31	Beef - Ground, Extra Lean, Fresh                                                                    	52	154013	lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet	\N	4
32	Chocolate - Dark Callets                                                                            	71	676630	in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla	\N	1
33	Potatoes - Parissienne                                                                              	44	912727	duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor	\N	4
34	Potatoes - Yukon Gold, 80 Ct                                                                        	7	976368	morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo	\N	3
35	Milk - Chocolate 500ml                                                                              	70	843947	in felis donec semper sapien a libero nam dui proin leo odio	\N	4
36	Soup - Campbells, Spinach Crm                                                                       	2	459157	diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna	\N	3
37	Capers - Ox Eye Daisy                                                                               	14	119292	platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat	\N	2
38	Sprouts - Corn                                                                                      	75	456974	mauris morbi non lectus aliquam sit amet diam in magna	\N	4
39	Beans - Navy, Dry                                                                                   	8	305037	ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque	\N	2
40	Shrimp - 21/25, Peel And Deviened                                                                   	55	214086	tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed	\N	4
41	Wasabi Powder                                                                                       	57	62369	sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci	\N	1
42	Creme De Menth - White                                                                              	99	766373	consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in	\N	4
43	Creamers - 10%                                                                                      	22	61234	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula	\N	3
44	Veal - Inside                                                                                       	79	414245	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non	\N	2
45	Venison - Striploin                                                                                 	19	755234	sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis	\N	3
46	Juice - Orange                                                                                      	32	699006	erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque	\N	4
47	Soup Campbells - Italian Wedding                                                                    	99	497896	lorem quisque ut erat curabitur gravida nisi at nibh in	\N	2
48	Mcguinness - Blue Curacao                                                                           	78	122677	pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a	\N	1
49	Juice - Orange, Concentrate                                                                         	23	999681	vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt	\N	1
50	Bar Energy Chocchip                                                                                 	60	352273	vel enim sit amet nunc viverra dapibus nulla suscipit ligula in	\N	2
51	Liqueur - Melon                                                                                     	39	915931	ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla	\N	4
52	Wine - Magnotta - Red, Baco                                                                         	89	998305	purus eu magna vulputate luctus cum sociis natoque penatibus et magnis	\N	1
53	Veal - Insides, Grains                                                                              	29	148259	nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	\N	3
54	Club Soda - Schweppes, 355 Ml                                                                       	73	508214	metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies	\N	3
55	Wine - Barossa Valley Estate                                                                        	89	522000	magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis	\N	3
56	Soup Bowl Clear 8oz92008                                                                            	99	578233	potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis	\N	2
57	Appetizer - Cheese Bites                                                                            	51	512265	luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at	\N	1
58	Chips Potato Salt Vinegar 43g                                                                       	80	690944	nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo	\N	3
59	Chicken - Livers                                                                                    	94	680207	etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut	\N	1
60	Veal - Leg                                                                                          	76	229982	vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit	\N	1
61	Table Cloth 90x90 White                                                                             	7	559243	curae nulla dapibus dolor vel est donec odio justo sollicitudin	\N	2
62	Salt - Seasoned                                                                                     	36	423231	mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit	\N	2
63	Eggplant - Regular                                                                                  	68	588321	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus	\N	3
64	Bread - Bistro Sour                                                                                 	24	22239	ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia	\N	3
65	Plums - Red                                                                                         	37	482047	et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse	\N	3
66	Mix - Cappucino Cocktail                                                                            	81	490824	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum	\N	4
67	Flour - All Purpose                                                                                 	34	968863	vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis	\N	1
68	Pepper - Sorrano                                                                                    	31	743478	mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor	\N	2
69	Muffin Mix - Blueberry                                                                              	10	260584	turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet	\N	3
70	Soup - Beef, Base Mix                                                                               	94	760596	faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo	\N	1
71	Cookies - Amaretto                                                                                  	68	737518	velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id	\N	1
72	Irish Cream - Butterscotch                                                                          	69	91095	sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel	\N	1
73	Flour - Whole Wheat                                                                                 	91	762728	mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra	\N	1
74	Oil - Hazelnut                                                                                      	73	274965	faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec	\N	4
75	Carbonated Water - Blackcherry                                                                      	31	421331	aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis	\N	2
76	Lychee                                                                                              	24	800041	habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt	\N	3
77	Wine - Red, Black Opal Shiraz                                                                       	83	241954	porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus	\N	1
78	Tomato - Peeled Italian Canned                                                                      	53	661757	purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	\N	1
79	Macaroons - Homestyle Two Bit                                                                       	30	624535	iaculis diam erat fermentum justo nec condimentum neque sapien placerat	\N	2
80	Orange Roughy 6/8 Oz                                                                                	98	308680	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper	\N	4
81	Beef - Short Loin                                                                                   	74	354302	ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec	\N	4
82	Beef - Diced                                                                                        	34	474826	donec vitae nisi nam ultrices libero non mattis pulvinar nulla	\N	4
83	Coffee - Egg Nog Capuccino                                                                          	34	529899	primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis	\N	2
84	V8 Pet                                                                                              	63	869779	pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel	\N	4
85	Vinegar - Balsamic                                                                                  	29	490060	dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est	\N	1
86	Turnip - Mini                                                                                       	99	609049	lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in	\N	1
87	Broom - Angled                                                                                      	77	985078	nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id	\N	4
88	Ham - Cooked Bayonne Tinned                                                                         	22	783794	etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius	\N	4
89	Bread - Pain Au Liat X12                                                                            	18	65703	vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis	\N	4
90	Nantucket - Pomegranate Pear                                                                        	3	284235	quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus	\N	2
91	Coffee - Irish Cream                                                                                	59	927626	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel	\N	1
92	Kellogs Cereal In A Cup                                                                             	82	706804	sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio	\N	3
93	Beef - Rib Roast, Cap On                                                                            	46	704627	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel	\N	1
94	Mangostein                                                                                          	85	117264	erat vestibulum sed magna at nunc commodo placerat praesent blandit	\N	3
95	Ecolab - Lime - A - Way 4/4 L                                                                       	84	90599	sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis	\N	2
96	Wine - Redchard Merritt                                                                             	21	626069	libero rutrum ac lobortis vel dapibus at diam nam tristique	\N	1
97	Kaffir Lime Leaves                                                                                  	82	931733	sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer	\N	3
98	Muffin Mix - Chocolate Chip                                                                         	12	256755	malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing	\N	4
99	Juice - Clamato, 341 Ml                                                                             	31	865800	magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum	\N	2
100	Glass - Juice Clear 5oz 55005                                                                       	40	792797	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam	\N	4
101	Muffin - Blueberry Individual                                                                       	63	361727	elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus	\N	1
102	Soup Campbells - Italian Wedding                                                                    	6	85309	tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi	\N	2
103	Beef Dry Aged Tenderloin Aaa                                                                        	34	530672	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh	\N	3
104	Curry Paste - Madras                                                                                	44	54729	quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit	\N	3
105	Cake - Lemon Chiffon                                                                                	87	763416	sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non	\N	4
106	Drambuie                                                                                            	63	953330	duis ac nibh fusce lacus purus aliquet at feugiat non	\N	3
107	Anchovy Paste - 56 G Tube                                                                           	41	475253	donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed	\N	1
108	Prunes - Pitted                                                                                     	54	551750	id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede	\N	2
109	Nut - Pecan, Halves                                                                                 	88	62122	luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis	\N	2
110	Creme De Menth - White                                                                              	11	618906	libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at	\N	4
111	Smoked Paprika                                                                                      	91	627398	ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien	\N	1
112	Extract - Vanilla,artificial                                                                        	11	543339	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	\N	4
113	Wine - Chianti Classico Riserva                                                                     	24	286334	faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	\N	4
114	Lamb - Leg, Boneless                                                                                	50	762840	nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus	\N	2
115	Pastry - Chocolate Marble Tea                                                                       	31	122774	vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at	\N	1
116	Ezy Change Mophandle                                                                                	78	277297	sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices	\N	4
117	Beans - Black Bean, Preserved                                                                       	22	386935	aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi	\N	2
118	Appetizer - Shrimp Puff                                                                             	20	291905	imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis	\N	2
119	Sprite - 355 Ml                                                                                     	67	73758	lacus at velit vivamus vel nulla eget eros elementum pellentesque	\N	3
120	Brandy - Orange, Mc Guiness                                                                         	36	403486	tempus sit amet sem fusce consequat nulla nisl nunc nisl duis	\N	4
121	Hinge W Undercut                                                                                    	13	88302	magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget	\N	4
122	Fish - Bones                                                                                        	69	55382	porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam	\N	2
123	Shrimp - 21/25, Peel And Deviened                                                                   	46	580009	quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in	\N	2
124	Banana - Green                                                                                      	51	747107	purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio	\N	1
125	Cake - Bande Of Fruit                                                                               	28	340845	nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	\N	2
126	Pasta - Orecchiette                                                                                 	76	83978	vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc	\N	3
127	Garlic - Primerba, Paste                                                                            	83	533211	sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec	\N	4
128	Nut - Pumpkin Seeds                                                                                 	13	970440	eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo	\N	4
129	Vaccum Bag - 14x20                                                                                  	88	10679	orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis	\N	3
130	Edible Flower - Mixed                                                                               	41	21503	auctor gravida sem praesent id massa id nisl venenatis lacinia	\N	4
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 30, true);


--
-- Name: farms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.farms_id_seq', 130, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 130, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: farms farms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.farms
    ADD CONSTRAINT farms_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

