PGDMP     6    %                y            quiz    12.7    12.7                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    25105    quiz    DATABASE     ?   CREATE DATABASE quiz WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE quiz;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            "           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    25128    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    3            ?            1259    25106    opcao    TABLE     ?   CREATE TABLE public.opcao (
    id bigint NOT NULL,
    descricao character varying(200),
    opcao_correta character varying(4),
    score numeric(19,2),
    pergunta_id bigint
);
    DROP TABLE public.opcao;
       public         heap    postgres    false    3            ?            1259    25111    pergunta    TABLE     ?   CREATE TABLE public.pergunta (
    id bigint NOT NULL,
    descricao character varying(250),
    dificuldade character varying(8)
);
    DROP TABLE public.pergunta;
       public         heap    postgres    false    3            ?            1259    25116    resposta    TABLE     ?   CREATE TABLE public.resposta (
    id bigint NOT NULL,
    nome character varying(255),
    tempo_resposta numeric(19,2),
    opcao_id bigint,
    pergunta_id bigint,
    usuario_id bigint
);
    DROP TABLE public.resposta;
       public         heap    postgres    false    3            ?            1259    25121    usuario    TABLE     {   CREATE TABLE public.usuario (
    id bigint NOT NULL,
    email character varying(120),
    nome character varying(200)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    3                      0    25106    opcao 
   TABLE DATA           Q   COPY public.opcao (id, descricao, opcao_correta, score, pergunta_id) FROM stdin;
    public          postgres    false    202                      0    25111    pergunta 
   TABLE DATA           >   COPY public.pergunta (id, descricao, dificuldade) FROM stdin;
    public          postgres    false    203                      0    25116    resposta 
   TABLE DATA           _   COPY public.resposta (id, nome, tempo_resposta, opcao_id, pergunta_id, usuario_id) FROM stdin;
    public          postgres    false    204                      0    25121    usuario 
   TABLE DATA           2   COPY public.usuario (id, email, nome) FROM stdin;
    public          postgres    false    205            #           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 69, true);
          public          postgres    false    206            ?
           2606    25110    opcao opcao_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.opcao
    ADD CONSTRAINT opcao_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.opcao DROP CONSTRAINT opcao_pkey;
       public            postgres    false    202            ?
           2606    25115    pergunta pergunta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pergunta
    ADD CONSTRAINT pergunta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pergunta DROP CONSTRAINT pergunta_pkey;
       public            postgres    false    203            ?
           2606    25120    resposta resposta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT resposta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.resposta DROP CONSTRAINT resposta_pkey;
       public            postgres    false    204            ?
           2606    25127 $   usuario uk_5171l57faosmj8myawaucatdw 
   CONSTRAINT     `   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_5171l57faosmj8myawaucatdw UNIQUE (email);
 N   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uk_5171l57faosmj8myawaucatdw;
       public            postgres    false    205            ?
           2606    25125    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    205            ?
           2606    25140 $   resposta fkhl4axbv8d1yoixs9vtq7yui20    FK CONSTRAINT     ?   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT fkhl4axbv8d1yoixs9vtq7yui20 FOREIGN KEY (pergunta_id) REFERENCES public.pergunta(id);
 N   ALTER TABLE ONLY public.resposta DROP CONSTRAINT fkhl4axbv8d1yoixs9vtq7yui20;
       public          postgres    false    2702    203    204            ?
           2606    25145 $   resposta fklkkd05fixonkwlu0lru3qitoq    FK CONSTRAINT     ?   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT fklkkd05fixonkwlu0lru3qitoq FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);
 N   ALTER TABLE ONLY public.resposta DROP CONSTRAINT fklkkd05fixonkwlu0lru3qitoq;
       public          postgres    false    2708    204    205            ?
           2606    25130 !   opcao fknwgr1mlk66c82xvrnexjmr5oq    FK CONSTRAINT     ?   ALTER TABLE ONLY public.opcao
    ADD CONSTRAINT fknwgr1mlk66c82xvrnexjmr5oq FOREIGN KEY (pergunta_id) REFERENCES public.pergunta(id);
 K   ALTER TABLE ONLY public.opcao DROP CONSTRAINT fknwgr1mlk66c82xvrnexjmr5oq;
       public          postgres    false    2702    202    203            ?
           2606    25135 $   resposta fkoiaclx1gnmc2walhdx1bswdjk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT fkoiaclx1gnmc2walhdx1bswdjk FOREIGN KEY (opcao_id) REFERENCES public.opcao(id);
 N   ALTER TABLE ONLY public.resposta DROP CONSTRAINT fkoiaclx1gnmc2walhdx1bswdjk;
       public          postgres    false    204    2700    202               ?   x?3?t?O????s??4?30?4?2??@0??J,K,N.?,(A7?s{??DL9CRsR?J?R?Lr2K?????/?W(J-?,JL?/V015P???ɄH#5?2C2?h??F???04???HS?X?9.-?:?0Mp?q??qqq ?\5         ?   x?E?11??~ B???E??Ys?''/?@??|?(?Zy??=??@??ڡ?SY.Je~*??>?jui̯u?=?Hٟݵ6A.??(?n??,?R??i?Ū?Y]?d?1agt?j?SC??lH?????6?ߏ????E~         ?   x?e??? ϸ????V???XlDB?NH??~XH?~?ؑs*?S?A?3H?@$ȹ?1p?Md?J??qd5.?0???8\?@?<??,Lba}'???Id??Qp"3?.U? ?tp"4?4G?;?p4Bs??>??ֲH?FmH?b>?U?F!ϻ?Ȣ?-bBf?q??K?? êd?cU??Xޫ*?g):$'??G?	?:??7?         ?   x?}?AR?0E??)|?I??J[tX?QO??Z?N?g?b??âۧ7??/????Ѣ_G$???(??L6?
??+?ꪪJau?k?????M???`"(-(bk??l???O?6?M??r?R:sn?	?=?*w?yˠkq`???	#/b???y ????N??ɸ?????}~?S???@禐?p???qo??'???7?,?)?+?Zg??h	??z?????)???T??
 ? W\??                     0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    25105    quiz    DATABASE     ?   CREATE DATABASE quiz WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE quiz;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            "           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    25128    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    3            ?            1259    25106    opcao    TABLE     ?   CREATE TABLE public.opcao (
    id bigint NOT NULL,
    descricao character varying(200),
    opcao_correta character varying(4),
    score numeric(19,2),
    pergunta_id bigint
);
    DROP TABLE public.opcao;
       public         heap    postgres    false    3            ?            1259    25111    pergunta    TABLE     ?   CREATE TABLE public.pergunta (
    id bigint NOT NULL,
    descricao character varying(250),
    dificuldade character varying(8)
);
    DROP TABLE public.pergunta;
       public         heap    postgres    false    3            ?            1259    25116    resposta    TABLE     ?   CREATE TABLE public.resposta (
    id bigint NOT NULL,
    nome character varying(255),
    tempo_resposta numeric(19,2),
    opcao_id bigint,
    pergunta_id bigint,
    usuario_id bigint
);
    DROP TABLE public.resposta;
       public         heap    postgres    false    3            ?            1259    25121    usuario    TABLE     {   CREATE TABLE public.usuario (
    id bigint NOT NULL,
    email character varying(120),
    nome character varying(200)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    3                      0    25106    opcao 
   TABLE DATA           Q   COPY public.opcao (id, descricao, opcao_correta, score, pergunta_id) FROM stdin;
    public          postgres    false    202   W                 0    25111    pergunta 
   TABLE DATA           >   COPY public.pergunta (id, descricao, dificuldade) FROM stdin;
    public          postgres    false    203   ?                  0    25116    resposta 
   TABLE DATA           _   COPY public.resposta (id, nome, tempo_resposta, opcao_id, pergunta_id, usuario_id) FROM stdin;
    public          postgres    false    204   ?                  0    25121    usuario 
   TABLE DATA           2   COPY public.usuario (id, email, nome) FROM stdin;
    public          postgres    false    205   ?        #           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 69, true);
          public          postgres    false    206            ?
           2606    25110    opcao opcao_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.opcao
    ADD CONSTRAINT opcao_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.opcao DROP CONSTRAINT opcao_pkey;
       public            postgres    false    202            ?
           2606    25115    pergunta pergunta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pergunta
    ADD CONSTRAINT pergunta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pergunta DROP CONSTRAINT pergunta_pkey;
       public            postgres    false    203            ?
           2606    25120    resposta resposta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT resposta_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.resposta DROP CONSTRAINT resposta_pkey;
       public            postgres    false    204            ?
           2606    25127 $   usuario uk_5171l57faosmj8myawaucatdw 
   CONSTRAINT     `   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_5171l57faosmj8myawaucatdw UNIQUE (email);
 N   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uk_5171l57faosmj8myawaucatdw;
       public            postgres    false    205            ?
           2606    25125    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    205            ?
           2606    25140 $   resposta fkhl4axbv8d1yoixs9vtq7yui20    FK CONSTRAINT     ?   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT fkhl4axbv8d1yoixs9vtq7yui20 FOREIGN KEY (pergunta_id) REFERENCES public.pergunta(id);
 N   ALTER TABLE ONLY public.resposta DROP CONSTRAINT fkhl4axbv8d1yoixs9vtq7yui20;
       public          postgres    false    2702    203    204            ?
           2606    25145 $   resposta fklkkd05fixonkwlu0lru3qitoq    FK CONSTRAINT     ?   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT fklkkd05fixonkwlu0lru3qitoq FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);
 N   ALTER TABLE ONLY public.resposta DROP CONSTRAINT fklkkd05fixonkwlu0lru3qitoq;
       public          postgres    false    2708    204    205            ?
           2606    25130 !   opcao fknwgr1mlk66c82xvrnexjmr5oq    FK CONSTRAINT     ?   ALTER TABLE ONLY public.opcao
    ADD CONSTRAINT fknwgr1mlk66c82xvrnexjmr5oq FOREIGN KEY (pergunta_id) REFERENCES public.pergunta(id);
 K   ALTER TABLE ONLY public.opcao DROP CONSTRAINT fknwgr1mlk66c82xvrnexjmr5oq;
       public          postgres    false    2702    202    203            ?
           2606    25135 $   resposta fkoiaclx1gnmc2walhdx1bswdjk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.resposta
    ADD CONSTRAINT fkoiaclx1gnmc2walhdx1bswdjk FOREIGN KEY (opcao_id) REFERENCES public.opcao(id);
 N   ALTER TABLE ONLY public.resposta DROP CONSTRAINT fkoiaclx1gnmc2walhdx1bswdjk;
       public          postgres    false    204    2700    202           