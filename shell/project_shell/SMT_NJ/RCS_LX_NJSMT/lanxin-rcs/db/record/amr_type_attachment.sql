DROP TABLE IF EXISTS `amr_type_attachment`;
CREATE TABLE `amr_type_attachment`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT,
    `amr_type_id`   bigint(20) NOT NULL COMMENT '车型id',
    `roller_length` double DEFAULT NULL COMMENT '辊筒长度',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- 2021/12/17 add column qklee
ALTER TABLE `amr_type_attachment` ADD `roller_number` int(4) DEFAULT NULL COMMENT '辊筒数量';

-- 2022/03/07 add column qklee
ALTER TABLE `amr_type_attachment` ADD `support_in_situ` tinyint(1) DEFAULT 0 COMMENT '是否支持原地上下料';
