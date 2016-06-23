SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS tb_group;
DROP TABLE IF EXISTS tb_group_role;
DROP TABLE IF EXISTS tb_resource;
DROP TABLE IF EXISTS tb_role;
DROP TABLE IF EXISTS tb_role_resource_action;
DROP TABLE IF EXISTS tb_user;
DROP TABLE IF EXISTS tb_user_group;




/* Create Tables */

-- tb_group
CREATE TABLE tb_group
(
	id bigint COMMENT 'id',
	group_name varchar(50) COMMENT '组名'
) COMMENT = 'tb_group';


-- tb_group_role
CREATE TABLE tb_group_role
(
	group_id bigint COMMENT 'group_id',
	role_id bigint COMMENT 'role_id'
) COMMENT = 'tb_group_role';


-- tb_resource
CREATE TABLE tb_resource
(
	id bigint COMMENT 'id',
	name varchar(50) COMMENT '资源名称',
	url varchar(100) COMMENT '资源url',
	actions varchar(500) COMMENT '资源初始化操作（用；隔开）',
	parent_id bigint COMMENT 'parent_id',
	deleted int(1) COMMENT 'deleted',
	create_time date COMMENT 'create_time',
	createby varchar(10) COMMENT 'createby',
	update_time date COMMENT 'update_time',
	update_by varchar(10) COMMENT 'update_by'
) COMMENT = 'tb_resource';


-- tb_role
CREATE TABLE tb_role
(
	id bigint COMMENT 'id',
	role_name varchar(50) COMMENT '角色名称',
	memo varchar(100) COMMENT '备注'
) COMMENT = 'tb_role';


-- tb_role_resource_action
CREATE TABLE tb_role_resource_action
(
	id bigint COMMENT 'id',
	role_id bigint COMMENT 'role_id',
	resource_id bigint COMMENT 'resource_id',
	resource_action varchar(200) COMMENT '资源授权操作（用；隔开）'
) COMMENT = 'tb_role_resource_action';


-- tb_user
CREATE TABLE tb_user
(
	id bigint COMMENT 'id',
	login_name varchar(20) COMMENT '登陆名',
	user_name varchar(50) COMMENT '用户名',
	password varchar(20) COMMENT '密码',
	age bigint COMMENT '年龄',
	sex varchar(2) COMMENT '性别',
	birthday date COMMENT '生日',
	salt varchar(50) COMMENT 'salt'
) COMMENT = 'tb_user';


-- tb_user_group
CREATE TABLE tb_user_group
(
	id bigint COMMENT 'id',
	user_id bigint COMMENT 'user_id',
	group_id bigint COMMENT 'group_id'
) COMMENT = 'tb_user_group';



