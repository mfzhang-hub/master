DROP TABLE IF EXISTS `amr_task_chain_type_config`;
CREATE TABLE amr_task_chain_type_config
(
    id                   bigint AUTO_INCREMENT
        PRIMARY KEY,
    amr_id               bigint       NOT NULL COMMENT '车辆id',
    task_chain_type_info varchar(255) NULL COMMENT '车辆可执行任务链类型信息',
    CONSTRAINT amr_id
        UNIQUE (amr_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT '车辆任务链类型关联表';
