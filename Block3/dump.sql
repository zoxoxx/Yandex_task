PGDMP                      |            CRM_TZ    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41633    CRM_TZ    DATABASE     |   CREATE DATABASE "CRM_TZ" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "CRM_TZ";
                postgres    false            �            1259    41635    orders    TABLE     X   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    promocode_id integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    41634    orders_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public          postgres    false    216            �           0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;
          public          postgres    false    215            �            1259    41642 
   promocodes    TABLE     x   CREATE TABLE public.promocodes (
    promocode_id integer NOT NULL,
    name character varying,
    discount numeric
);
    DROP TABLE public.promocodes;
       public         heap    postgres    false            �            1259    41641    promocodes_promocode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.promocodes_promocode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.promocodes_promocode_id_seq;
       public          postgres    false    218            �           0    0    promocodes_promocode_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.promocodes_promocode_id_seq OWNED BY public.promocodes.promocode_id;
          public          postgres    false    217                       2604    41638    orders order_id    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    215    216    216                        2604    41645    promocodes promocode_id    DEFAULT     �   ALTER TABLE ONLY public.promocodes ALTER COLUMN promocode_id SET DEFAULT nextval('public.promocodes_promocode_id_seq'::regclass);
 F   ALTER TABLE public.promocodes ALTER COLUMN promocode_id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    41635    orders 
   TABLE DATA           8   COPY public.orders (order_id, promocode_id) FROM stdin;
    public          postgres    false    216   �       �          0    41642 
   promocodes 
   TABLE DATA           B   COPY public.promocodes (promocode_id, name, discount) FROM stdin;
    public          postgres    false    218   6       �           0    0    orders_order_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_order_id_seq', 9, true);
          public          postgres    false    215            �           0    0    promocodes_promocode_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.promocodes_promocode_id_seq', 5, true);
          public          postgres    false    217            "           2606    41640    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    216            $           2606    41649    promocodes promocodes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.promocodes
    ADD CONSTRAINT promocodes_pkey PRIMARY KEY (promocode_id);
 D   ALTER TABLE ONLY public.promocodes DROP CONSTRAINT promocodes_pkey;
       public            postgres    false    218            %           2606    41650    orders orders_promocode_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_promocode_id_fkey FOREIGN KEY (promocode_id) REFERENCES public.promocodes(promocode_id);
 I   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_promocode_id_fkey;
       public          postgres    false    4644    218    216            �   +   x�3�4�2bcN#. m
��8���9M�,�ؒӄ+F��� hZ�      �   B   x�3�,�M���44�2�,(J���LI�I�42�2愲��L8�2�9M�LA����NsS�=... O��     