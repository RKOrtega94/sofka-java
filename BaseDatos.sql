/* CLIENT DATABASE */
CREATE DATABASE client_database
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.people
(
    id bigserial NOT NULL,
    name character varying(255) NOT NULL,
    gender character varying(10) NOT NULL,
    age integer NOT NULL,
    identification character varying(20) NOT NULL,
    address character varying(500),
    phone character varying(20),
    status boolean NOT NULL DEFAULT true,
    PRIMARY KEY (id)
);

CREATE TABLE public.clients
(
    id bigserial NOT NULL,
    person_id bigint NOT NULL,
    client_id character varying(64) NOT NULL,
    password character varying(255) NOT NULL,
    status boolean NOT NULL DEFAULT true,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id)
        REFERENCES public.people (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

/* ACCOUNT DATABASE */
CREATE DATABASE account_database
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.accounts
(
    id bigserial NOT NULL,
    "number" character varying(50) NOT NULL,
    type character varying(10) NOT NULL DEFAULT 'SAVINGS',
    balance numeric(15, 6) NOT NULL DEFAULT 0,
    status boolean NOT NULL DEFAULT true,
    PRIMARY KEY (id)
);

CREATE TABLE public.movements
(
    id bigserial NOT NULL,
    account_id bigint NOT NULL,
    date timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    type character varying(10) NOT NULL,
    amount numeric(15, 6) NOT NULL,
    balance numeric(15, 6) NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    FOREIGN KEY (account_id)
        REFERENCES public.accounts (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);