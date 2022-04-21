-- create 2021/07/12 jhh
DROP TABLE IF EXISTS `traffic_block`;
CREATE TABLE `traffic_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(20) NOT NULL COMMENT '区域id',
  `block_name` varchar(30) NOT NULL COMMENT '块名称',
  `block_vertex` varchar(30) NOT NULL COMMENT '块的点位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交管块';


-- update 2021/07/30 xujun000288
ALTER TABLE `traffic_block` MODIFY COLUMN block_vertex VARCHAR(255);
