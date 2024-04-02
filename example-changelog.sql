--liquibase formatted sql

--changeset jennl:createtblPerson labels:r1,table context:dev
--comment: create table person for cars app
create table person (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
    )
--rollback DROP TABLE person;

--changeset jennl:createtblCompany labels:r1 context:dev
--comment: example comment
create table company (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset shiva:companyShiva labels:r1 context:dev
--comment: this is just a test query inserting into company tbl
INSERT INTO company (name, address1, address2, city) values ('Shiva', 'Jasola', 'South zone', 'New Delhi');

--liquibase formatted sql
--changeset jennl:altertblProducts01 labels:r1 context:dev
--comment: Adding label column in products table
ALTER TABLE products ADD column label varchar(50)
--rollback ALTER TABLE products DROP COLUMN label;

--changeset mikeo:companySRE labels:r1 context:dev
--comment: this is just a demo query inserting into company tbl
INSERT INTO company (name, address1, address2, city) values ('SRE', 'Jasola', 'South zone', 'Vizag');


