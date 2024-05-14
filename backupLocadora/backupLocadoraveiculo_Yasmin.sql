PGDMP  0    .                |            locadoraveiculo_yasmin    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17460    locadoraveiculo_yasmin    DATABASE     �   CREATE DATABASE locadoraveiculo_yasmin WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 &   DROP DATABASE locadoraveiculo_yasmin;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17461    agencia    TABLE     �   CREATE TABLE public.agencia (
    numeroagencia integer NOT NULL,
    estado character varying(255) NOT NULL,
    contato character varying(100) NOT NULL,
    cidade character varying(255) NOT NULL,
    endereco character varying(100) NOT NULL
);
    DROP TABLE public.agencia;
       public         heap    postgres    false    4            �            1259    17492    carro    TABLE       CREATE TABLE public.carro (
    placa character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    disponibilidade character varying(255) NOT NULL,
    ano integer NOT NULL,
    modelo character varying(50) NOT NULL,
    id_carro integer NOT NULL
);
    DROP TABLE public.carro;
       public         heap    postgres    false    4            �            1259    17499    feedback    TABLE     �   CREATE TABLE public.feedback (
    data_feedback date,
    id_feedback integer NOT NULL,
    avaliacao integer,
    comentario character varying(255)
);
    DROP TABLE public.feedback;
       public         heap    postgres    false    4            �            1259    17473    funcionarios    TABLE     9  CREATE TABLE public.funcionarios (
    data_contratacao date NOT NULL,
    sobrenome character varying(255) NOT NULL,
    salario numeric(7,5) NOT NULL,
    cargo character varying(255) NOT NULL,
    nome character varying(255) NOT NULL,
    id_funcionario integer NOT NULL,
    numeroagencia integer NOT NULL
);
     DROP TABLE public.funcionarios;
       public         heap    postgres    false    4            �            1259    17485 
   manutencao    TABLE     �   CREATE TABLE public.manutencao (
    km numeric(7,5),
    id_manutencao integer NOT NULL,
    descricao character varying(255),
    data_manutencao date NOT NULL,
    custo numeric(7,5) NOT NULL,
    tipo_manutencao character varying(255) NOT NULL
);
    DROP TABLE public.manutencao;
       public         heap    postgres    false    4            �            1259    17468 	   pagamento    TABLE     7  CREATE TABLE public.pagamento (
    data_pagamento date,
    status_pagamento character varying(100) NOT NULL,
    valor numeric(7,5) NOT NULL,
    forma_pagamento character varying(100) NOT NULL,
    id_pagamento integer NOT NULL,
    comprovante character varying(255),
    id_comprovante integer NOT NULL
);
    DROP TABLE public.pagamento;
       public         heap    postgres    false    4            .           2606    17467    agencia agencia_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.agencia
    ADD CONSTRAINT agencia_pkey PRIMARY KEY (numeroagencia);
 >   ALTER TABLE ONLY public.agencia DROP CONSTRAINT agencia_pkey;
       public            postgres    false    215            6           2606    17498    carro carro_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (id_carro);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public            postgres    false    219            8           2606    17503    feedback feedback_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id_feedback);
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public            postgres    false    220            2           2606    17479    funcionarios funcionarios_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id_funcionario);
 H   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_pkey;
       public            postgres    false    217            4           2606    17491    manutencao manutencao_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.manutencao
    ADD CONSTRAINT manutencao_pkey PRIMARY KEY (id_manutencao);
 D   ALTER TABLE ONLY public.manutencao DROP CONSTRAINT manutencao_pkey;
       public            postgres    false    218            0           2606    17472    pagamento pagamento_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT pagamento_pkey PRIMARY KEY (id_pagamento, id_comprovante);
 B   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT pagamento_pkey;
       public            postgres    false    216    216            9           2606    17480 ,   funcionarios funcionarios_numeroagencia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_numeroagencia_fkey FOREIGN KEY (numeroagencia) REFERENCES public.agencia(numeroagencia);
 V   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_numeroagencia_fkey;
       public          postgres    false    4654    215    217           