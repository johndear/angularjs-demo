/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.68-community 
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

insert into `tb_group` (`id`, `group_name`) values('1','?????');


insert into `tb_user_group` (`id`, `user_id`, `group_id`) values(NULL,'1','1');

insert into `tb_group_role` (`group_id`, `role_id`) values('1','1');


insert into `tb_resource` (`id`, `name`, `url`, `actions`, `parent_id`, `deleted`, `create_time`, `createby`, `update_time`, `update_by`) values('1','user',NULL,'ADD;edit;REMOVE;',NULL,NULL,NULL,NULL,NULL,NULL);
insert into `tb_resource` (`id`, `name`, `url`, `actions`, `parent_id`, `deleted`, `create_time`, `createby`, `update_time`, `update_by`) values('2','role',NULL,'ADD;edit;REMOVE;',NULL,NULL,NULL,NULL,NULL,NULL);


insert into `tb_role` (`id`, `role_name`, `memo`) values('1','admin',NULL);

insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values(NULL,'1','1','add;remove;');

insert into `tb_user` (`id`, `login_name`, `user_name`, `password`, `age`, `sex`, `birthday`, `salt`) values('1','admin',NULL,'admin','1',NULL,NULL,NULL);

