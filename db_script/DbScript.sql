//CREATE TABLE
CREATE TABLE `t_url` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
	`add_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间按',
	`modify_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
	`title` TINYTEXT NULL COMMENT 'url主题',
	`url` TEXT NOT NULL COMMENT 'URL',
	`tag` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0,1',
	`hashcode` BIGINT(20) NOT NULL COMMENT 'unique tag',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `unique` (`hashcode`),
	INDEX `add_time` (`add_time`)
)
COLLATE='utf8_general_ci'
DEFAULT CHARSET=utf8
ENGINE=InnoDB
AUTO_INCREMENT=2
;