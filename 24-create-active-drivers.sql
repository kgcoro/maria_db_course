CREATE TABLE `active_drivers` (
    `id`BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `driver_id` BIGINT(20) UNSIGNED NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY (id),
    CONSTRAINT active_drivers_driver_id_foreign 
    FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
)
DEFAULT CHARSET = utf8mb4 
COLLATE = utf8mb4_unicode_ci;