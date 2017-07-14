/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017-07-13 16:18:11                          */
/*==============================================================*/


DROP TABLE IF EXISTS privilege1633;

DROP TABLE IF EXISTS role1636;

DROP TABLE IF EXISTS rolePrivilege1709;

DROP TABLE IF EXISTS user1610;

DROP TABLE IF EXISTS userPrivilege1635;

DROP TABLE IF EXISTS userRole1711;

/*==============================================================*/
/* Table: privilege1633                                         */
/*==============================================================*/
CREATE TABLE privilege1633
(
   privilegeId          INT NOT NULL,
   privilegeName        TEXT NOT NULL,
   explanation            TEXT,
   PRIMARY KEY (privilegeId)
);

ALTER TABLE privilege1633 COMMENT '权限表';

/*==============================================================*/
/* Table: role1636                                              */
/*==============================================================*/
CREATE TABLE role1636
(
   roleId               INT NOT NULL,
   roleName             TEXT NOT NULL,
   explanation            TEXT,
   PRIMARY KEY (roleId)
);

ALTER TABLE role1636 COMMENT '角色表';

/*==============================================================*/
/* Table: rolePrivilege1709                                     */
/*==============================================================*/
CREATE TABLE rolePrivilege1709
(
   roleId               INT NOT NULL,
   privilegeId          INT NOT NULL,
   PRIMARY KEY (roleId, privilegeId)
);

/*==============================================================*/
/* Table: user1610                                              */
/*==============================================================*/
CREATE TABLE user1610
(
   userId               INT NOT NULL,
   userName             TEXT NOT NULL,
   PASSWORD             TEXT NOT NULL,
   phone                TEXT,
   email                TEXT,
   address              TEXT,
   POSITION             INT NOT NULL,
   PRIMARY KEY (userId)
);

ALTER TABLE user1610 COMMENT '用户基本表';

/*==============================================================*/
/* Table: userPrivilege1635                                     */
/*==============================================================*/
CREATE TABLE userPrivilege1635
(
   userId               INT NOT NULL,
   privilegeId          INT NOT NULL,
   PRIMARY KEY (userId, privilegeId)
);

ALTER TABLE userPrivilege1635 COMMENT '用户权限表';

/*==============================================================*/
/* Table: userRole1711                                          */
/*==============================================================*/
CREATE TABLE userRole1711
(
   userId               INT NOT NULL,
   roleId               INT NOT NULL,
   PRIMARY KEY (userId, roleId)
);

ALTER TABLE userRole1711 COMMENT '用户角色表';

