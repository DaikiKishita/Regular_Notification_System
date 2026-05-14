Create Table tasks (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(100) NOT NULL,
    term INT NOT NULL
);

Create Table task_settings (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    task_id BIGINT NOT NULL,
    limited_at DATETIME NOT NULL,

    CONSTRAINT fk_task_setting_task
        FOREIGN KEY (task_id)
        REFERENCES Tasks(id)
);