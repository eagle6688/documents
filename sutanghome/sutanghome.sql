/*
 * Create database.
 */
create database if not exists sutanghome Character Set utf8mb4 collate utf8mb4_0900_ai_ci;

use sutanghome;

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
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

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
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

/*==============================================================*/
/* Table: transfer                                              */
/*==============================================================*/
create table if not exists transfer
(
   paymentid            int not null,
   to_user_id           int,
   primary key (paymentid)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

/*==============================================================*/
/* Table: shopping                                              */
/*==============================================================*/
create table if not exists shopping
(
   paymentid            int not null,
   channel              smallint,
   primary key (paymentid)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;