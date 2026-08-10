#!/bin/bash
# 初始化数据库：创建 4 个业务库并导入对应 SQL
set -e

echo "==> 开始创建数据库"
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" <<'EOF'
CREATE DATABASE IF NOT EXISTS os_user DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS os_course DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS os_system DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS os_job DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
EOF
echo "==> 数据库创建完成"

echo "==> 开始导入 os_user.sql"
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" os_user < /docker-entrypoint-initdb.d/sql/os_user.sql

echo "==> 开始导入 os_course.sql"
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" os_course < /docker-entrypoint-initdb.d/sql/os_course.sql

echo "==> 开始导入 os_system.sql"
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" os_system < /docker-entrypoint-initdb.d/sql/os_system.sql

echo "==> 开始导入 os_job.sql"
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" os_job < /docker-entrypoint-initdb.d/sql/os_job.sql

echo "==> 全部初始化完成"
