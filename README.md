# 领课教育系统全栈仓库（roncoo-education-full）

本仓库整合了领课教育系统（roncoo-education）的开源全栈代码，采用单体仓库（monorepo）方式管理三个子项目，便于一键克隆、统一版本管理与本地联调。

## 仓库结构

```
roncoo-education-full/
├── roncoo-education/         # 后端服务（Spring Cloud 2025.0.0 + Spring Boot 3.5.0）
│   ├── roncoo-education-common/   # 公共模块
│   ├── roncoo-education-feign/    # Feign 远程调用
│   ├── roncoo-education-gateway/  # 网关
│   └── roncoo-education-service/  # 业务服务
│
├── roncoo-education-admin/   # 后台管理端（Vue 3.5 + Element Plus 2.11 + Vite）
│
├── roncoo-education-web/     # 用户前台（Nuxt 3.17 + Vue 3.5）
│
└── resources/                # 部署资源（本地/服务器环境）
    ├── docker-compose.yml         # 一体化部署：MySQL/Redis/Nacos/xxl-job/Seata
    ├── seata-application.yml      # Seata Server 配置（注册/配置中心指向 Nacos）
    ├── seata-server.yml           # Seata Server 独立部署 compose
    ├── mysql-init/                # MySQL 初始化脚本（os_course/os_job/os_system/os_user）
    ├── os_*.sql                   # 业务库 SQL（同 mysql-init/sql 备份）
    └── nacos_config/              # Nacos 配置导出（DEFAULT_GROUP + SEATA_GROUP）
```

> ⚠️ `resources/` 内含本地环境凭据（MySQL/Redis/Nacos 密码、服务器 IP 等），仓库设为 **private**。若后续转为公开，需先轮换相关凭据。

## 技术栈

| 模块 | 技术栈 |
| --- | --- |
| 后端 | Spring Boot 3.5.0、Spring Cloud Alibaba 2025.0.0、Nacos、Seata、MyBatis Plus |
| 管理端 | Vue 3.5.20、Element Plus 2.11.3、Vite |
| 用户前台 | Nuxt 3.17.2、Vue 3.5 |

## 子项目说明

各子项目的详细启动方式、依赖要求、模块划分请参考各自目录下的 `README.md`：

- [ENVIRONMENT.md](ENVIRONMENT.md) — 环境准备与第三方服务（保利威/MinIO/阿里云）配置指南
- [roncoo-education/README.md](roncoo-education/README.md) — 后端服务说明
- [roncoo-education-admin/README.md](roncoo-education-admin/README.md) — 后台管理端说明
- [roncoo-education-web/README.md](roncoo-education-web/README.md) — 用户前台说明

## 快速开始

```bash
# 克隆全栈仓库
git clone https://gitee.com/cygroup/roncoo-education-full.git
cd roncoo-education-full

# 后端：使用 JDK 17，导入 roncoo-education 为 Maven 项目，按需启动各服务
# 管理端：
cd roncoo-education-admin && npm install && npm run dev
# 用户前台：
cd roncoo-education-web && npm install && npm run dev
```

## 使用须知

1. 可以用于个人学习、毕业设计、教学案例、公益事业等。
2. 商用限制，若要商用请咨询：18302045627（微信可加）。
3. 禁止将本项目的相关代码和相关资料进行任何形式任何名义的出售。

## 开源协议

本项目遵循 [GNU AFFERO GENERAL PUBLIC LICENSE v3](roncoo-education/LICENSE) 协议。
