/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.68-community 
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

insert into `tb_group` (`id`, `group_name`) values('1','超级管理员');
insert into `tb_group` (`id`, `group_name`) values('2','普通管理员');


insert into `tb_user_group` (`id`, `user_id`, `group_id`) values(1,'1','1');
insert into `tb_user_group` (`id`, `user_id`, `group_id`) values(2,'2','2');

insert into `tb_group_role` (`group_id`, `role_id`) values('1','1');
insert into `tb_group_role` (`group_id`, `role_id`) values('1','2');
insert into `tb_group_role` (`group_id`, `role_id`) values('2','2');


insert into `tb_resource` (`id`, `app_id`, `name`, `code`, `url`, `actions`, `parent_id`, `deleted`, `create_time`, `createby`, `update_time`, `update_by`, `authActions`) values('1','1','系统配置','system',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert into `tb_resource` (`id`, `app_id`, `name`, `code`, `url`, `actions`, `parent_id`, `deleted`, `create_time`, `createby`, `update_time`, `update_by`, `authActions`) values('2','1','资源管理','resource',NULL,'add;edit;delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert into `tb_resource` (`id`, `app_id`, `name`, `code`, `url`, `actions`, `parent_id`, `deleted`, `create_time`, `createby`, `update_time`, `update_by`, `authActions`) values('3','1','角色管理','role',NULL,'add;',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert into `tb_resource` (`id`, `app_id`, `name`, `code`, `url`, `actions`, `parent_id`, `deleted`, `create_time`, `createby`, `update_time`, `update_by`, `authActions`) values('4','1','组管理','group',NULL,'add;',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert into `tb_resource` (`id`, `app_id`, `name`, `code`, `url`, `actions`, `parent_id`, `deleted`, `create_time`, `createby`, `update_time`, `update_by`, `authActions`) values('5','1','人员管理','user',NULL,'remove;',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

insert into `tb_role` (`id`, `role_name`, `memo`, `is_super`) values('1','超级管理员',NULL,'1');
insert into `tb_role` (`id`, `role_name`, `memo`, `is_super`) values('2','普通管理员',NULL,'0');

insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values('1','1','1','add;remove;');
insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values('2','1','2','add;edit;');
insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values('3','1','3','add;');
insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values('4','1','4',NULL);
insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values('6','2','1','edit');
insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values('7','2','4',NULL);
insert into `tb_role_resource_action` (`id`, `role_id`, `resource_id`, `resource_action`) values('5','1','5',NULL);

insert into `tb_user` (`id`, `login_name`, `user_name`, `password`, `age`, `sex`, `birthday`, `salt`, `email`) values('1','super','超级管理员','super',NULL,NULL,NULL,NULL,NULL);
insert into `tb_user` (`id`, `login_name`, `user_name`, `password`, `age`, `sex`, `birthday`, `salt`, `email`) values('2','admin','普通管理员','admin',NULL,NULL,NULL,NULL,NULL);
insert into `tb_user` (`id`, `login_name`, `user_name`, `password`, `age`, `sex`, `birthday`, `salt`, `email`) values('3','user','用户','user',NULL,NULL,NULL,NULL,NULL);



