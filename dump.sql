--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO kanaluser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO kanaluser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO kanaluser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO kanaluser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO kanaluser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO kanaluser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO kanaluser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO kanaluser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO kanaluser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO kanaluser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO kanaluser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO kanaluser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO kanaluser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO kanaluser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_apscheduler_djangojob; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.django_apscheduler_djangojob (
    id character varying(255) NOT NULL,
    next_run_time timestamp with time zone,
    job_state bytea NOT NULL
);


ALTER TABLE public.django_apscheduler_djangojob OWNER TO kanaluser;

--
-- Name: django_apscheduler_djangojobexecution; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.django_apscheduler_djangojobexecution (
    id bigint NOT NULL,
    status character varying(50) NOT NULL,
    run_time timestamp with time zone NOT NULL,
    duration numeric(15,2),
    finished numeric(15,2),
    exception character varying(1000),
    traceback text,
    job_id character varying(255) NOT NULL
);


ALTER TABLE public.django_apscheduler_djangojobexecution OWNER TO kanaluser;

--
-- Name: django_apscheduler_djangojobexecution_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.django_apscheduler_djangojobexecution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_apscheduler_djangojobexecution_id_seq OWNER TO kanaluser;

--
-- Name: django_apscheduler_djangojobexecution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.django_apscheduler_djangojobexecution_id_seq OWNED BY public.django_apscheduler_djangojobexecution.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO kanaluser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO kanaluser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO kanaluser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO kanaluser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO kanaluser;

--
-- Name: menu_menu; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.menu_menu (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(50) NOT NULL,
    base_url character varying(100),
    description text
);


ALTER TABLE public.menu_menu OWNER TO kanaluser;

--
-- Name: menu_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.menu_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_menu_id_seq OWNER TO kanaluser;

--
-- Name: menu_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.menu_menu_id_seq OWNED BY public.menu_menu.id;


--
-- Name: menu_menuitem; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.menu_menuitem (
    id bigint NOT NULL,
    "order" integer NOT NULL,
    link_url character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    login_required boolean NOT NULL,
    anonymous_only boolean NOT NULL,
    menu_id bigint NOT NULL
);


ALTER TABLE public.menu_menuitem OWNER TO kanaluser;

--
-- Name: menu_menuitem_id_seq; Type: SEQUENCE; Schema: public; Owner: kanaluser
--

CREATE SEQUENCE public.menu_menuitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_menuitem_id_seq OWNER TO kanaluser;

--
-- Name: menu_menuitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanaluser
--

ALTER SEQUENCE public.menu_menuitem_id_seq OWNED BY public.menu_menuitem.id;


--
-- Name: n13_kanal_data_table; Type: TABLE; Schema: public; Owner: kanaluser
--

CREATE TABLE public.n13_kanal_data_table (
    order_numb integer NOT NULL,
    price_d integer NOT NULL,
    term date NOT NULL,
    price_r integer NOT NULL
);


ALTER TABLE public.n13_kanal_data_table OWNER TO kanaluser;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_apscheduler_djangojobexecution id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_apscheduler_djangojobexecution ALTER COLUMN id SET DEFAULT nextval('public.django_apscheduler_djangojobexecution_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: menu_menu id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.menu_menu ALTER COLUMN id SET DEFAULT nextval('public.menu_menu_id_seq'::regclass);


--
-- Name: menu_menuitem id; Type: DEFAULT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.menu_menuitem ALTER COLUMN id SET DEFAULT nextval('public.menu_menuitem_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add act_type	7	add_act_type
26	Can change act_type	7	change_act_type
27	Can delete act_type	7	delete_act_type
28	Can view act_type	7	view_act_type
29	Can add act_type	8	add_act_type
30	Can change act_type	8	change_act_type
31	Can delete act_type	8	delete_act_type
32	Can view act_type	8	view_act_type
33	Can add acts	9	add_acts
34	Can change acts	9	change_acts
35	Can delete acts	9	delete_acts
36	Can view acts	9	view_acts
37	Can add menu	10	add_menu
38	Can change menu	10	change_menu
39	Can delete menu	10	delete_menu
40	Can view menu	10	view_menu
41	Can add menu item	11	add_menuitem
42	Can change menu item	11	change_menuitem
43	Can delete menu item	11	delete_menuitem
44	Can view menu item	11	view_menuitem
45	Can add kanal_table	12	add_kanal_table
46	Can change kanal_table	12	change_kanal_table
47	Can delete kanal_table	12	delete_kanal_table
48	Can view kanal_table	12	view_kanal_table
49	Can add kanal_data_table	13	add_kanal_data_table
50	Can change kanal_data_table	13	change_kanal_data_table
51	Can delete kanal_data_table	13	delete_kanal_data_table
52	Can view kanal_data_table	13	view_kanal_data_table
53	Can add django job	14	add_djangojob
54	Can change django job	14	change_djangojob
55	Can delete django job	14	delete_djangojob
56	Can view django job	14	view_djangojob
57	Can add django job execution	15	add_djangojobexecution
58	Can change django job execution	15	change_djangojobexecution
59	Can delete django job execution	15	delete_djangojobexecution
60	Can view django job execution	15	view_djangojobexecution
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$v758nJcIDkwilvLA92e0ck$0rM29ROHigmNAWpWXLrRLDY8Ot/BQrJ+MUiYcgTP+FM=	\N	t	user				t	t	2022-09-05 16:59:10.27739+00
2	pbkdf2_sha256$260000$95g7WAH55RObIOiffDrcIS$gijoREYjBXj1jjrd0rR811wIfBMsDOyF2Aq57EFV69I=	2022-09-07 21:56:04.138284+00	t	admin				t	t	2022-09-07 21:55:37.425965+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_apscheduler_djangojob; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.django_apscheduler_djangojob (id, next_run_time, job_state) FROM stdin;
\.


--
-- Data for Name: django_apscheduler_djangojobexecution; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.django_apscheduler_djangojobexecution (id, status, run_time, duration, finished, exception, traceback, job_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	untitled	act_type
8	n13	act_type
9	n13	acts
10	menu	menu
11	menu	menuitem
12	n13	kanal_table
13	n13	kanal_data_table
14	django_apscheduler	djangojob
15	django_apscheduler	djangojobexecution
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-09-05 16:58:41.215448+00
2	auth	0001_initial	2022-09-05 16:58:41.333949+00
3	admin	0001_initial	2022-09-05 16:58:41.385228+00
4	admin	0002_logentry_remove_auto_add	2022-09-05 16:58:41.403027+00
5	admin	0003_logentry_add_action_flag_choices	2022-09-05 16:58:41.429363+00
6	contenttypes	0002_remove_content_type_name	2022-09-05 16:58:41.495321+00
7	auth	0002_alter_permission_name_max_length	2022-09-05 16:58:41.515678+00
8	auth	0003_alter_user_email_max_length	2022-09-05 16:58:41.54936+00
9	auth	0004_alter_user_username_opts	2022-09-05 16:58:41.572028+00
10	auth	0005_alter_user_last_login_null	2022-09-05 16:58:41.600342+00
11	auth	0006_require_contenttypes_0002	2022-09-05 16:58:41.611408+00
12	auth	0007_alter_validators_add_error_messages	2022-09-05 16:58:41.64093+00
13	auth	0008_alter_user_username_max_length	2022-09-05 16:58:41.66984+00
14	auth	0009_alter_user_last_name_max_length	2022-09-05 16:58:41.702025+00
15	auth	0010_alter_group_name_max_length	2022-09-05 16:58:41.732653+00
16	auth	0011_update_proxy_permissions	2022-09-05 16:58:41.7504+00
17	auth	0012_alter_user_first_name_max_length	2022-09-05 16:58:41.770777+00
18	menu	0001_initial	2022-09-05 16:58:41.829418+00
19	menu	0002_booleandefaults	2022-09-05 16:58:41.842404+00
20	menu	0003_auto_20210904_2026	2022-09-05 16:58:41.943879+00
21	n13	0001_initial	2022-09-05 16:58:41.960002+00
22	n13	0002_acts	2022-09-05 16:58:41.973607+00
23	sessions	0001_initial	2022-09-05 16:58:42.016741+00
24	untitled	0001_initial	2022-09-05 16:58:42.032348+00
25	n13	0003_kanal_table	2022-09-05 19:00:10.692719+00
26	n13	0003_kanal_data_table	2022-09-05 19:40:00.94044+00
27	django_apscheduler	0001_initial	2022-09-07 21:52:40.477714+00
28	django_apscheduler	0002_auto_20180412_0758	2022-09-07 21:52:40.491314+00
29	django_apscheduler	0003_auto_20200716_1632	2022-09-07 21:52:40.557649+00
30	django_apscheduler	0004_auto_20200717_1043	2022-09-07 21:52:40.629349+00
31	django_apscheduler	0005_migrate_name_to_id	2022-09-07 21:52:40.674676+00
32	django_apscheduler	0006_remove_djangojob_name	2022-09-07 21:52:40.700426+00
33	django_apscheduler	0007_auto_20200717_1404	2022-09-07 21:52:40.753837+00
34	django_apscheduler	0008_remove_djangojobexecution_started	2022-09-07 21:52:40.768793+00
35	django_apscheduler	0009_djangojobexecution_unique_job_executions	2022-09-07 21:52:40.790705+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
2qek0xftu2343bcnnv1xm0q4sqffwju4	.eJxVjMsOwiAQRf-FtSE8hIJL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLMOL0u2XAB7cd0B3abZY4t3WZstwVedAux5n4eT3cv4MKvX5rPQR22ZnCGKN3qlBRFvSZDKIq6BXrQdnirTOsbbBBOSTQkRktEpN4fwDmLThZ:1oW31g:6SQSZ9JhJ-dqPo7LdHY79YihQIJ9scx5ilJEXPafG2g	2022-09-21 21:56:04.141743+00
\.


--
-- Data for Name: menu_menu; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.menu_menu (id, name, slug, base_url, description) FROM stdin;
\.


--
-- Data for Name: menu_menuitem; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.menu_menuitem (id, "order", link_url, title, login_required, anonymous_only, menu_id) FROM stdin;
\.


--
-- Data for Name: n13_kanal_data_table; Type: TABLE DATA; Schema: public; Owner: kanaluser
--

COPY public.n13_kanal_data_table (order_numb, price_d, term, price_r) FROM stdin;
1249708	675	2022-05-24	41076
1182407	214	2022-05-13	13022
1120833	610	2022-05-05	37121
1060503	1804	2022-05-29	109781
1617397	423	2022-05-26	25741
1135907	682	2022-05-02	41502
1235370	1330	2022-05-05	80936
1329994	646	2022-05-12	39311
1876515	1335	2022-05-15	81240
1835607	1227	2022-05-05	74668
1465034	719	2022-05-12	43754
1077923	508	2022-06-01	30914
1968041	1600	2022-05-21	97367
1682035	1867	2022-05-09	113615
1911795	1585	2022-05-25	96454
1028782	1377	2022-05-19	83796
1686040	129	2022-06-01	7850
1917698	1322	2022-05-25	80449
1888432	388	2022-05-11	23611
1430015	814	2022-05-28	49535
1938886	1021	2022-05-03	62132
1968437	1911	2022-05-20	116292
1339024	341	2022-05-12	20751
1832176	1331	2022-05-06	80997
1554847	1755	2022-05-20	106799
1519872	1349	2022-06-01	82092
1241924	1319	2022-05-16	80266
1208915	168	2022-05-01	10223
1733144	392	2022-05-22	23854
1773045	977	2022-05-27	59454
1581192	1474	2022-05-17	89699
1021563	145	2022-05-08	8823
1844121	770	2022-05-08	46857
1089979	1392	2022-05-14	84709
1465628	1808	2022-06-01	110024
1615303	1242	2022-05-22	75581
1915966	154	2022-05-04	9371
1287751	1891	2022-05-17	115075
1498932	1162	2022-05-21	70712
1897398	414	2022-06-01	25193
1810448	1668	2022-05-11	101505
1168728	658	2022-05-03	40042
1560222	1587	2022-05-11	96575
1592686	514	2022-05-23	31279
1786437	618	2022-05-28	37608
1485012	1124	2022-05-09	68400
1741017	514	2022-05-16	31279
1497493	1198	2022-05-30	72903
1877503	1204	2022-05-29	73268
1426726	1997	2022-05-20	121526
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_apscheduler_djangojobexecution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.django_apscheduler_djangojobexecution_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: menu_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.menu_menu_id_seq', 1, false);


--
-- Name: menu_menuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanaluser
--

SELECT pg_catalog.setval('public.menu_menuitem_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_apscheduler_djangojob django_apscheduler_djangojob_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_apscheduler_djangojob
    ADD CONSTRAINT django_apscheduler_djangojob_pkey PRIMARY KEY (id);


--
-- Name: django_apscheduler_djangojobexecution django_apscheduler_djangojobexecution_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_apscheduler_djangojobexecution
    ADD CONSTRAINT django_apscheduler_djangojobexecution_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: menu_menu menu_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.menu_menu
    ADD CONSTRAINT menu_menu_pkey PRIMARY KEY (id);


--
-- Name: menu_menuitem menu_menuitem_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.menu_menuitem
    ADD CONSTRAINT menu_menuitem_pkey PRIMARY KEY (id);


--
-- Name: n13_kanal_data_table n13_kanal_data_table_pkey; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.n13_kanal_data_table
    ADD CONSTRAINT n13_kanal_data_table_pkey PRIMARY KEY (order_numb);


--
-- Name: django_apscheduler_djangojobexecution unique_job_executions; Type: CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_apscheduler_djangojobexecution
    ADD CONSTRAINT unique_job_executions UNIQUE (job_id, run_time);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_apscheduler_djangojob_next_run_time_2f022619; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX django_apscheduler_djangojob_next_run_time_2f022619 ON public.django_apscheduler_djangojob USING btree (next_run_time);


--
-- Name: django_apscheduler_djangojobexecution_job_id_daf5090a; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX django_apscheduler_djangojobexecution_job_id_daf5090a ON public.django_apscheduler_djangojobexecution USING btree (job_id);


--
-- Name: django_apscheduler_djangojobexecution_run_time_16edd96b; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX django_apscheduler_djangojobexecution_run_time_16edd96b ON public.django_apscheduler_djangojobexecution USING btree (run_time);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: menu_menu_slug_98939c4e; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX menu_menu_slug_98939c4e ON public.menu_menu USING btree (slug);


--
-- Name: menu_menu_slug_98939c4e_like; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX menu_menu_slug_98939c4e_like ON public.menu_menu USING btree (slug varchar_pattern_ops);


--
-- Name: menu_menuitem_menu_id_f466b139; Type: INDEX; Schema: public; Owner: kanaluser
--

CREATE INDEX menu_menuitem_menu_id_f466b139 ON public.menu_menuitem USING btree (menu_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_apscheduler_djangojobexecution django_apscheduler_djangojobexecution_job_id_daf5090a_fk; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.django_apscheduler_djangojobexecution
    ADD CONSTRAINT django_apscheduler_djangojobexecution_job_id_daf5090a_fk FOREIGN KEY (job_id) REFERENCES public.django_apscheduler_djangojob(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: menu_menuitem menu_menuitem_menu_id_f466b139_fk; Type: FK CONSTRAINT; Schema: public; Owner: kanaluser
--

ALTER TABLE ONLY public.menu_menuitem
    ADD CONSTRAINT menu_menuitem_menu_id_f466b139_fk FOREIGN KEY (menu_id) REFERENCES public.menu_menu(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

