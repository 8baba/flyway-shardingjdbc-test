create schema store collate utf8mb4_general_ci;

create table if not exists flyway_schema_history
(
    installed_rank int                                 not null
    primary key,
    version        varchar(50)                         null,
    description    varchar(200)                        not null,
    type           varchar(20)                         not null,
    script         varchar(1000)                       not null,
    checksum       int                                 null,
    installed_by   varchar(100)                        not null,
    installed_on   timestamp default CURRENT_TIMESTAMP not null,
    execution_time int                                 not null,
    success        tinyint(1)                          not null
    );

create index flyway_schema_history_s_idx_flyway_schema_history
    on flyway_schema_history (success);

create table if not exists store
(
    id          bigint           not null comment '主键'
    primary key,
    store_name  varchar(50)      null comment '门店名称',
    del_flag    char default '0' not null,
    tenant_id   bigint           not null comment '租户id',
    address     varchar(200)     null comment '门店地址',
    phone       varchar(20)      null comment '门店电话',
    dept_id     bigint           not null comment '所属组织',
    create_time datetime         null comment '创建时间',
    update_time datetime         null comment '更新时间',
    create_user varchar(20)      null comment '创建人',
    update_user varchar(20)      null comment '更新人'
    )
    comment '门店主表';

create table if not exists store_1716476137853374465
(
    id          bigint           not null comment '主键'
    primary key,
    store_name  varchar(50)      null comment '门店名称',
    del_flag    char default '0' not null,
    tenant_id   bigint           not null comment '租户id',
    address     varchar(200)     null comment '门店地址',
    phone       varchar(20)      null comment '门店电话',
    dept_id     bigint           not null comment '所属组织',
    create_time datetime         null comment '创建时间',
    update_time datetime         null comment '更新时间',
    create_user varchar(20)      null comment '创建人',
    update_user varchar(20)      null comment '更新人',
    column_12   int              null
    )
    comment '门店主表';

create table if not exists store_1717116448820633602
(
    id          bigint           not null comment '主键'
    primary key,
    store_name  varchar(50)      null comment '门店名称',
    del_flag    char default '0' not null,
    tenant_id   bigint           not null comment '租户id',
    address     varchar(200)     null comment '门店地址',
    phone       varchar(20)      null comment '门店电话',
    dept_id     bigint           not null comment '所属组织',
    create_time datetime         null comment '创建时间',
    update_time datetime         null comment '更新时间',
    create_user varchar(20)      null comment '创建人',
    update_user varchar(20)      null comment '更新人',
    column_12   int              null
    )
    comment '门店主表';

