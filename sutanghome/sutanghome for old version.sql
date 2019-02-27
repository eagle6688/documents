/*
 * Create database.
 */
create database if not exists test Character Set utf8 collate utf8_bin;

use test;

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table if not exists user
(
   id                   int not null auto_increment,
   name                 varchar(20),
   cellphone            varchar(12),
   password             varchar(128),
   created              datetime default CURRENT_TIMESTAMP,
   updated              datetime default CURRENT_TIMESTAMP,
   deleted              bit default 0,
   primary key (id)
) CHARACTER SET utf8 COLLATE utf8_bin;

/*==============================================================*/
/* Table: payment                                               */
/*==============================================================*/
create table if not exists payment
(
   id                   int not null auto_increment,
   userid               int,
   type                 smallint,
   cost                 decimal(10,2),
   medium               smallint,
   time                 datetime,
   description          varchar(400),
   created              datetime default CURRENT_TIMESTAMP,
   updated              datetime default CURRENT_TIMESTAMP,
   deleted              bit default 0,
   primary key (id)
) CHARACTER SET utf8 COLLATE utf8_bin;

/*==============================================================*/
/* Table: transfer                                              */
/*==============================================================*/
create table if not exists transfer
(
   paymentid            int not null,
   to_user_id           int,
   primary key (paymentid)
) CHARACTER SET utf8 COLLATE utf8_bin;

/*==============================================================*/
/* Table: shopping                                              */
/*==============================================================*/
create table if not exists shopping
(
   paymentid            int not null,
   channel              smallint,
   primary key (paymentid)
) CHARACTER SET utf8 COLLATE utf8_bin;