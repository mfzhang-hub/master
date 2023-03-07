-- create table 2021/1/28 luoyy
DROP TABLE IF EXISTS `user`;
create table `user`
(
    id             varchar(36) not null,
    loginName      varchar(20) not null,
    realName       varchar(30) null,
    mobile         varchar(20) not null,
    sex            varchar(4)  null,
    password       varchar(64) null,
    idCard         varchar(18) null,
    mobileVerified tinyint     null,
    createTime     datetime    null,
    state          int         not null,
    type           int         not null,
    PRIMARY KEY (`id`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- update table 2021/4/19 jhh
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `username` VARCHAR(20) NOT NULL UNIQUE COMMENT '用户名',
  `password` VARCHAR(50) NOT NULL COMMENT '密码',
  `nickname` VARCHAR(20) COMMENT '姓名',
  `phone_no` VARCHAR(20) COMMENT '手机号',
  `e_mail` VARCHAR(30) COMMENT '邮箱',
  `register_time` DATETIME NOT NULL DEFAULT NOW() COMMENT '注册时间',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用',
  `role_id` BIGINT COMMENT '角色ID'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into `user` value (1, 'admin', '220e2829735c7680dd597511fc4030ef', 'admin', '', '', NOW(), true, 1);

-- update 2021/5/28 jhh
ALTER TABLE `user` MODIFY COLUMN `USERNAME` VARCHAR(20) BINARY;
