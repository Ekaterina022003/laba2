PGDMP         #    	            {            tododb    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    tododb    DATABASE     z   CREATE DATABASE tododb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE tododb;
                postgres    false            �            1259    24622    diplom    TABLE         CREATE TABLE public.diplom (
);
    DROP TABLE public.diplom;
       public         heap    postgres    false            �            1259    24614    todo    TABLE       CREATE TABLE public.todo (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "isDone" boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.todo;
       public         heap    postgres    false            �            1259    24613    todo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.todo_id_seq;
       public          postgres    false    215                       0    0    todo_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.todo_id_seq OWNED BY public.todo.id;
          public          postgres    false    214            i           2604    24617    todo id    DEFAULT     b   ALTER TABLE ONLY public.todo ALTER COLUMN id SET DEFAULT nextval('public.todo_id_seq'::regclass);
 6   ALTER TABLE public.todo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    24622    diplom 
   TABLE DATA               COPY public.diplom  FROM stdin;
    public          postgres    false    216   G       �          0    24614    todo 
   TABLE DATA           Z   COPY public.todo (id, title, description, "isDone", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   d                  0    0    todo_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.todo_id_seq', 9, true);
          public          postgres    false    214            k           2606    24621    todo todo_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_pkey;
       public            postgres    false    215            �      x������ � �      �   `   x���1� Й���д���YUv�?8�8e~�ۜ�Zs�]�����`QX�;�U�h��G��Q'J3Qf3��N��PDXCD/�����<�     