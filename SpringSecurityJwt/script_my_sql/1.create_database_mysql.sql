drop database if exists springsecurity;
create database springsecurity;
use springsecurity;

create table account(
    account_id          int                     not null primary key,
    username            varchar(225)            not null,
    email               varchar(225)            not null,
    avatar              varchar(225)                    ,
    dob                 date                            ,
    gender              bit                             ,
    is_private          bit                     default b'1'
);


create table user
(
    user_id             int                     auto_increment not null primary key,
    username            varchar(225)            not null,
    email               varchar(225)            not null,
    sub                 varchar(225)                    ,
    password            varchar(225)            not null,
    is_enabled          bit                     default b'1',
    account_id          int                     not null
);


create table roles(
    roles_id            int                     not null auto_increment primary key,
    role_name           varchar(225)            unique
);

create table role(
    role_id             int                     auto_increment not null primary key,
    user_id             int                     ,
    roles_id            int                     ,
    foreign key (user_id) references user(user_id),
    foreign key (roles_id) references roles(roles_id),
    unique (user_id, roles_id)
);