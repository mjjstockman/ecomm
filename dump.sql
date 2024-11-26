--
-- PostgreSQL database dump
--

-- Dumped from database version 16.5
-- Dumped by pg_dump version 16.6 (Homebrew)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO gw_owner;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.account_emailaddress_id_seq OWNER TO gw_owner;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO gw_owner;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNER TO gw_owner;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO gw_owner;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO gw_owner;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO gw_owner;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO gw_owner;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO gw_owner;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO gw_owner;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: gw_owner
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


ALTER TABLE public.auth_user OWNER TO gw_owner;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO gw_owner;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO gw_owner;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO gw_owner;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO gw_owner;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO gw_owner;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: checkout_order; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.checkout_order (
    id bigint NOT NULL,
    order_number character varying(32) NOT NULL,
    full_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    phone_number character varying(128) NOT NULL,
    postcode character varying(20),
    town_or_city character varying(40) NOT NULL,
    street_address1 character varying(80) NOT NULL,
    street_address2 character varying(80),
    county character varying(80),
    date timestamp with time zone NOT NULL,
    total numeric(10,2),
    original_cart text NOT NULL,
    stripe_pid character varying(254) NOT NULL,
    user_profile_id bigint,
    newsletter_signup boolean NOT NULL
);


ALTER TABLE public.checkout_order OWNER TO gw_owner;

--
-- Name: checkout_order_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.checkout_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.checkout_order_id_seq OWNER TO gw_owner;

--
-- Name: checkout_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.checkout_order_id_seq OWNED BY public.checkout_order.id;


--
-- Name: checkout_orderlineitem; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.checkout_orderlineitem (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    lineitem_total numeric(6,2) NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.checkout_orderlineitem OWNER TO gw_owner;

--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.checkout_orderlineitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.checkout_orderlineitem_id_seq OWNER TO gw_owner;

--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.checkout_orderlineitem_id_seq OWNED BY public.checkout_orderlineitem.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: gw_owner
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


ALTER TABLE public.django_admin_log OWNER TO gw_owner;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO gw_owner;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO gw_owner;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO gw_owner;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO gw_owner;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO gw_owner;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO gw_owner;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO gw_owner;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_site_id_seq OWNER TO gw_owner;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.django_summernote_attachment (
    id bigint NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO gw_owner;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNER TO gw_owner;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: events_event; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.events_event (
    id bigint NOT NULL,
    name character varying(150) NOT NULL,
    image character varying(100) NOT NULL,
    link character varying(200) NOT NULL,
    date date
);


ALTER TABLE public.events_event OWNER TO gw_owner;

--
-- Name: events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.events_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_event_id_seq OWNER TO gw_owner;

--
-- Name: events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.events_event_id_seq OWNED BY public.events_event.id;


--
-- Name: faq_answer; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.faq_answer (
    id bigint NOT NULL,
    body character varying(200) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    status integer NOT NULL,
    author_id integer,
    question_id bigint
);


ALTER TABLE public.faq_answer OWNER TO gw_owner;

--
-- Name: faq_answer_dislike; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.faq_answer_dislike (
    id bigint NOT NULL,
    answer_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.faq_answer_dislike OWNER TO gw_owner;

--
-- Name: faq_answer_dislike_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.faq_answer_dislike_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faq_answer_dislike_id_seq OWNER TO gw_owner;

--
-- Name: faq_answer_dislike_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.faq_answer_dislike_id_seq OWNED BY public.faq_answer_dislike.id;


--
-- Name: faq_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.faq_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faq_answer_id_seq OWNER TO gw_owner;

--
-- Name: faq_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.faq_answer_id_seq OWNED BY public.faq_answer.id;


--
-- Name: faq_answer_like; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.faq_answer_like (
    id bigint NOT NULL,
    answer_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.faq_answer_like OWNER TO gw_owner;

--
-- Name: faq_answer_like_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.faq_answer_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faq_answer_like_id_seq OWNER TO gw_owner;

--
-- Name: faq_answer_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.faq_answer_like_id_seq OWNED BY public.faq_answer_like.id;


--
-- Name: faq_question; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.faq_question (
    id bigint NOT NULL,
    body character varying(200) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    status integer NOT NULL,
    email_on_answer boolean NOT NULL,
    author_id integer
);


ALTER TABLE public.faq_question OWNER TO gw_owner;

--
-- Name: faq_question_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.faq_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faq_question_id_seq OWNER TO gw_owner;

--
-- Name: faq_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.faq_question_id_seq OWNED BY public.faq_question.id;


--
-- Name: products_category; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.products_category (
    id bigint NOT NULL,
    name character varying(254) NOT NULL
);


ALTER TABLE public.products_category OWNER TO gw_owner;

--
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.products_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_category_id_seq OWNER TO gw_owner;

--
-- Name: products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.products_category_id_seq OWNED BY public.products_category.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.products_product (
    id bigint NOT NULL,
    name character varying(254) NOT NULL,
    short_description text NOT NULL,
    description text NOT NULL,
    price numeric(6,2) NOT NULL,
    image character varying(100) NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.products_product OWNER TO gw_owner;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO gw_owner;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: profiles_userprofile; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.profiles_userprofile (
    id bigint NOT NULL,
    default_phone_number character varying(128),
    default_street_address1 character varying(80),
    default_street_address2 character varying(80),
    default_town_or_city character varying(40),
    default_county character varying(80),
    default_postcode character varying(20),
    user_id integer NOT NULL
);


ALTER TABLE public.profiles_userprofile OWNER TO gw_owner;

--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.profiles_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profiles_userprofile_id_seq OWNER TO gw_owner;

--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.profiles_userprofile_id_seq OWNED BY public.profiles_userprofile.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO gw_owner;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNER TO gw_owner;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO gw_owner;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNER TO gw_owner;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO gw_owner;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNER TO gw_owner;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: gw_owner
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO gw_owner;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: gw_owner
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNER TO gw_owner;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gw_owner
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: checkout_order id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.checkout_order ALTER COLUMN id SET DEFAULT nextval('public.checkout_order_id_seq'::regclass);


--
-- Name: checkout_orderlineitem id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.checkout_orderlineitem ALTER COLUMN id SET DEFAULT nextval('public.checkout_orderlineitem_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: events_event id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.events_event ALTER COLUMN id SET DEFAULT nextval('public.events_event_id_seq'::regclass);


--
-- Name: faq_answer id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer ALTER COLUMN id SET DEFAULT nextval('public.faq_answer_id_seq'::regclass);


--
-- Name: faq_answer_dislike id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_dislike ALTER COLUMN id SET DEFAULT nextval('public.faq_answer_dislike_id_seq'::regclass);


--
-- Name: faq_answer_like id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_like ALTER COLUMN id SET DEFAULT nextval('public.faq_answer_like_id_seq'::regclass);


--
-- Name: faq_question id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_question ALTER COLUMN id SET DEFAULT nextval('public.faq_question_id_seq'::regclass);


--
-- Name: products_category id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.products_category ALTER COLUMN id SET DEFAULT nextval('public.products_category_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: profiles_userprofile id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.profiles_userprofile ALTER COLUMN id SET DEFAULT nextval('public.profiles_userprofile_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	mjjstockman@gmail.com	f	f	1
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: gw_owner
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
25	Can add site	7	add_site
26	Can change site	7	change_site
27	Can delete site	7	delete_site
28	Can view site	7	view_site
29	Can add attachment	8	add_attachment
30	Can change attachment	8	change_attachment
31	Can delete attachment	8	delete_attachment
32	Can view attachment	8	view_attachment
33	Can add email address	9	add_emailaddress
34	Can change email address	9	change_emailaddress
35	Can delete email address	9	delete_emailaddress
36	Can view email address	9	view_emailaddress
37	Can add email confirmation	10	add_emailconfirmation
38	Can change email confirmation	10	change_emailconfirmation
39	Can delete email confirmation	10	delete_emailconfirmation
40	Can view email confirmation	10	view_emailconfirmation
41	Can add social account	11	add_socialaccount
42	Can change social account	11	change_socialaccount
43	Can delete social account	11	delete_socialaccount
44	Can view social account	11	view_socialaccount
45	Can add social application	12	add_socialapp
46	Can change social application	12	change_socialapp
47	Can delete social application	12	delete_socialapp
48	Can view social application	12	view_socialapp
49	Can add social application token	13	add_socialtoken
50	Can change social application token	13	change_socialtoken
51	Can delete social application token	13	delete_socialtoken
52	Can view social application token	13	view_socialtoken
53	Can add question	14	add_question
54	Can change question	14	change_question
55	Can delete question	14	delete_question
56	Can view question	14	view_question
57	Can add answer	15	add_answer
58	Can change answer	15	change_answer
59	Can delete answer	15	delete_answer
60	Can view answer	15	view_answer
61	Can add order	16	add_order
62	Can change order	16	change_order
63	Can delete order	16	delete_order
64	Can view order	16	view_order
65	Can add order line item	17	add_orderlineitem
66	Can change order line item	17	change_orderlineitem
67	Can delete order line item	17	delete_orderlineitem
68	Can view order line item	17	view_orderlineitem
69	Can add event	18	add_event
70	Can change event	18	change_event
71	Can delete event	18	delete_event
72	Can view event	18	view_event
73	Can add category	19	add_category
74	Can change category	19	change_category
75	Can delete category	19	delete_category
76	Can view category	19	view_category
77	Can add product	20	add_product
78	Can change product	20	change_product
79	Can delete product	20	delete_product
80	Can view product	20	view_product
81	Can add user profile	21	add_userprofile
82	Can change user profile	21	change_userprofile
83	Can delete user profile	21	delete_userprofile
84	Can view user profile	21	view_userprofile
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$mU0uPfzr4duQowuBGN0taf$AU+eNyl2dX2FN+uN640xshmG+sLGALE9J7JZqN2y38A=	2024-11-21 13:41:16.890041+00	t	admin			mjjstockman@gmail.com	t	t	2024-11-21 13:40:17.864189+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: checkout_order; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.checkout_order (id, order_number, full_name, email, phone_number, postcode, town_or_city, street_address1, street_address2, county, date, total, original_cart, stripe_pid, user_profile_id, newsletter_signup) FROM stdin;
\.


--
-- Data for Name: checkout_orderlineitem; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.checkout_orderlineitem (id, quantity, lineitem_total, order_id, product_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sites	site
8	django_summernote	attachment
9	account	emailaddress
10	account	emailconfirmation
11	socialaccount	socialaccount
12	socialaccount	socialapp
13	socialaccount	socialtoken
14	faq	question
15	faq	answer
16	checkout	order
17	checkout	orderlineitem
18	events	event
19	products	category
20	products	product
21	profiles	userprofile
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-11-19 12:44:24.531396+00
2	auth	0001_initial	2024-11-19 12:44:25.806354+00
3	account	0001_initial	2024-11-19 12:44:26.314388+00
4	account	0002_email_max_length	2024-11-19 12:44:26.487607+00
5	admin	0001_initial	2024-11-19 12:44:26.897786+00
6	admin	0002_logentry_remove_auto_add	2024-11-19 12:44:27.028503+00
7	admin	0003_logentry_add_action_flag_choices	2024-11-19 12:44:27.196311+00
8	contenttypes	0002_remove_content_type_name	2024-11-19 12:44:27.45056+00
9	auth	0002_alter_permission_name_max_length	2024-11-19 12:44:27.65313+00
10	auth	0003_alter_user_email_max_length	2024-11-19 12:44:27.860044+00
11	auth	0004_alter_user_username_opts	2024-11-19 12:44:28.028918+00
12	auth	0005_alter_user_last_login_null	2024-11-19 12:44:28.236125+00
13	auth	0006_require_contenttypes_0002	2024-11-19 12:44:28.392012+00
14	auth	0007_alter_validators_add_error_messages	2024-11-19 12:44:28.558339+00
15	auth	0008_alter_user_username_max_length	2024-11-19 12:44:28.768382+00
16	auth	0009_alter_user_last_name_max_length	2024-11-19 12:44:28.972669+00
17	auth	0010_alter_group_name_max_length	2024-11-19 12:44:29.180819+00
18	auth	0011_update_proxy_permissions	2024-11-19 12:44:29.3503+00
19	auth	0012_alter_user_first_name_max_length	2024-11-19 12:44:29.557201+00
20	profiles	0001_initial	2024-11-19 12:44:29.890667+00
21	products	0001_initial	2024-11-19 12:44:30.220851+00
22	checkout	0001_initial	2024-11-19 12:44:30.737412+00
23	checkout	0002_alter_order_phone_number	2024-11-19 12:44:30.906047+00
24	checkout	0003_order_email_on_answer	2024-11-19 12:44:31.153773+00
25	checkout	0004_rename_email_on_answer_order_newsletter_signup	2024-11-19 12:44:31.362895+00
26	django_summernote	0001_initial	2024-11-19 12:44:31.564001+00
27	django_summernote	0002_update-help_text	2024-11-19 12:44:31.736849+00
28	events	0001_initial	2024-11-19 12:44:31.935102+00
29	faq	0001_initial	2024-11-19 12:44:33.110139+00
30	profiles	0002_alter_userprofile_default_phone_number	2024-11-19 12:44:33.283678+00
31	sessions	0001_initial	2024-11-19 12:44:33.60851+00
32	sites	0001_initial	2024-11-19 12:44:33.772519+00
33	sites	0002_alter_domain_unique	2024-11-19 12:44:34.018448+00
34	socialaccount	0001_initial	2024-11-19 12:44:34.974848+00
35	socialaccount	0002_token_max_lengths	2024-11-19 12:44:35.273761+00
36	socialaccount	0003_extra_data_default_dict	2024-11-19 12:44:35.449932+00
37	django_summernote	0003_alter_attachment_id	2024-11-19 13:48:50.220808+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
gradgb1rj5hvrtiplih5jtgmdxcc4jp0	.eJxVjMEOwiAQRP-FsyEUQgGP3v0GsruwUjWQlPbU-O-2SQ96m8x7M5uIsC4lrj3PcUriKgZx-e0Q6JXrAdIT6qNJanWZJ5SHIk_a5b2l_L6d7t9BgV72NSlkky0HB8E5Z603GlmNRpG1WgHrwRIFAwn2TCkwstfggxsJPCrx-QLpNThm:1tE7Qq:7239AzSTUoImywRG1xsn4O8l1hFCg6XEU6iU1O1MHuk	2024-12-05 13:41:16.979769+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: events_event; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.events_event (id, name, image, link, date) FROM stdin;
\.


--
-- Data for Name: faq_answer; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.faq_answer (id, body, created_on, updated_on, status, author_id, question_id) FROM stdin;
\.


--
-- Data for Name: faq_answer_dislike; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.faq_answer_dislike (id, answer_id, user_id) FROM stdin;
\.


--
-- Data for Name: faq_answer_like; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.faq_answer_like (id, answer_id, user_id) FROM stdin;
\.


--
-- Data for Name: faq_question; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.faq_question (id, body, created_on, updated_on, status, email_on_answer, author_id) FROM stdin;
\.


--
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.products_category (id, name) FROM stdin;
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.products_product (id, name, short_description, description, price, image, category_id) FROM stdin;
\.


--
-- Data for Name: profiles_userprofile; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.profiles_userprofile (id, default_phone_number, default_street_address1, default_street_address2, default_town_or_city, default_county, default_postcode, user_id) FROM stdin;
1	\N	\N	\N	\N	\N	\N	1
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: gw_owner
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: checkout_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.checkout_order_id_seq', 1, false);


--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.checkout_orderlineitem_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.events_event_id_seq', 1, true);


--
-- Name: faq_answer_dislike_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.faq_answer_dislike_id_seq', 1, false);


--
-- Name: faq_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.faq_answer_id_seq', 1, false);


--
-- Name: faq_answer_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.faq_answer_like_id_seq', 1, false);


--
-- Name: faq_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.faq_question_id_seq', 1, false);


--
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.products_category_id_seq', 1, false);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, false);


--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.profiles_userprofile_id_seq', 1, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gw_owner
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: checkout_order checkout_order_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.checkout_order
    ADD CONSTRAINT checkout_order_pkey PRIMARY KEY (id);


--
-- Name: checkout_orderlineitem checkout_orderlineitem_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineitem_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: events_event events_event_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.events_event
    ADD CONSTRAINT events_event_pkey PRIMARY KEY (id);


--
-- Name: faq_answer faq_answer_body_key; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer
    ADD CONSTRAINT faq_answer_body_key UNIQUE (body);


--
-- Name: faq_answer_dislike faq_answer_dislike_answer_id_user_id_98071a2e_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_dislike
    ADD CONSTRAINT faq_answer_dislike_answer_id_user_id_98071a2e_uniq UNIQUE (answer_id, user_id);


--
-- Name: faq_answer_dislike faq_answer_dislike_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_dislike
    ADD CONSTRAINT faq_answer_dislike_pkey PRIMARY KEY (id);


--
-- Name: faq_answer_like faq_answer_like_answer_id_user_id_ff98325e_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_like
    ADD CONSTRAINT faq_answer_like_answer_id_user_id_ff98325e_uniq UNIQUE (answer_id, user_id);


--
-- Name: faq_answer_like faq_answer_like_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_like
    ADD CONSTRAINT faq_answer_like_pkey PRIMARY KEY (id);


--
-- Name: faq_answer faq_answer_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer
    ADD CONSTRAINT faq_answer_pkey PRIMARY KEY (id);


--
-- Name: faq_question faq_question_body_key; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_question
    ADD CONSTRAINT faq_question_body_key UNIQUE (body);


--
-- Name: faq_question faq_question_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_question
    ADD CONSTRAINT faq_question_pkey PRIMARY KEY (id);


--
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: profiles_userprofile profiles_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.profiles_userprofile
    ADD CONSTRAINT profiles_userprofile_pkey PRIMARY KEY (id);


--
-- Name: profiles_userprofile profiles_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.profiles_userprofile
    ADD CONSTRAINT profiles_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: checkout_order_user_profile_id_949184a7; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX checkout_order_user_profile_id_949184a7 ON public.checkout_order USING btree (user_profile_id);


--
-- Name: checkout_orderlineitem_order_id_b4cfbe6b; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX checkout_orderlineitem_order_id_b4cfbe6b ON public.checkout_orderlineitem USING btree (order_id);


--
-- Name: checkout_orderlineitem_product_id_739c699d; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX checkout_orderlineitem_product_id_739c699d ON public.checkout_orderlineitem USING btree (product_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: faq_answer_author_id_19130b29; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_answer_author_id_19130b29 ON public.faq_answer USING btree (author_id);


--
-- Name: faq_answer_body_e257e9ef_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_answer_body_e257e9ef_like ON public.faq_answer USING btree (body varchar_pattern_ops);


--
-- Name: faq_answer_dislike_answer_id_6869b1ca; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_answer_dislike_answer_id_6869b1ca ON public.faq_answer_dislike USING btree (answer_id);


--
-- Name: faq_answer_dislike_user_id_8cb0cbab; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_answer_dislike_user_id_8cb0cbab ON public.faq_answer_dislike USING btree (user_id);


--
-- Name: faq_answer_like_answer_id_06cfb9f5; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_answer_like_answer_id_06cfb9f5 ON public.faq_answer_like USING btree (answer_id);


--
-- Name: faq_answer_like_user_id_b36e4db0; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_answer_like_user_id_b36e4db0 ON public.faq_answer_like USING btree (user_id);


--
-- Name: faq_answer_question_id_55cc9987; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_answer_question_id_55cc9987 ON public.faq_answer USING btree (question_id);


--
-- Name: faq_question_author_id_dc3b6598; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_question_author_id_dc3b6598 ON public.faq_question USING btree (author_id);


--
-- Name: faq_question_body_378df6d9_like; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX faq_question_body_378df6d9_like ON public.faq_question USING btree (body varchar_pattern_ops);


--
-- Name: products_product_category_id_9b594869; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX products_product_category_id_9b594869 ON public.products_product USING btree (category_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: gw_owner
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_order checkout_order_user_profile_id_949184a7_fk_profiles_; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.checkout_order
    ADD CONSTRAINT checkout_order_user_profile_id_949184a7_fk_profiles_ FOREIGN KEY (user_profile_id) REFERENCES public.profiles_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_orderlineitem checkout_orderlineit_product_id_739c699d_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineit_product_id_739c699d_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_orderlineitem checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.checkout_orderlineitem
    ADD CONSTRAINT checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id FOREIGN KEY (order_id) REFERENCES public.checkout_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: faq_answer faq_answer_author_id_19130b29_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer
    ADD CONSTRAINT faq_answer_author_id_19130b29_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: faq_answer_dislike faq_answer_dislike_answer_id_6869b1ca_fk_faq_answer_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_dislike
    ADD CONSTRAINT faq_answer_dislike_answer_id_6869b1ca_fk_faq_answer_id FOREIGN KEY (answer_id) REFERENCES public.faq_answer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: faq_answer_dislike faq_answer_dislike_user_id_8cb0cbab_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_dislike
    ADD CONSTRAINT faq_answer_dislike_user_id_8cb0cbab_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: faq_answer_like faq_answer_like_answer_id_06cfb9f5_fk_faq_answer_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_like
    ADD CONSTRAINT faq_answer_like_answer_id_06cfb9f5_fk_faq_answer_id FOREIGN KEY (answer_id) REFERENCES public.faq_answer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: faq_answer_like faq_answer_like_user_id_b36e4db0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer_like
    ADD CONSTRAINT faq_answer_like_user_id_b36e4db0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: faq_answer faq_answer_question_id_55cc9987_fk_faq_question_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_answer
    ADD CONSTRAINT faq_answer_question_id_55cc9987_fk_faq_question_id FOREIGN KEY (question_id) REFERENCES public.faq_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: faq_question faq_question_author_id_dc3b6598_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.faq_question
    ADD CONSTRAINT faq_question_author_id_dc3b6598_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_category_id_9b594869_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_category_id_9b594869_fk_products_category_id FOREIGN KEY (category_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profiles_userprofile profiles_userprofile_user_id_616bed88_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.profiles_userprofile
    ADD CONSTRAINT profiles_userprofile_user_id_616bed88_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gw_owner
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON TABLES TO neon_superuser WITH GRANT OPTION;


--
-- PostgreSQL database dump complete
--

