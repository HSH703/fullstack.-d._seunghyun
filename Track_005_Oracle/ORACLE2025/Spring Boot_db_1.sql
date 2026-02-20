create table sboard2(
    id           number          primary key,
    app_user_id  number          not null,
    btitle       varchar2(1000)  not null,
    bcontent     clob            not null,
    bpass        varchar2(255)   not null,
    bfile        varchar2(255)   default'0.png',
    bhit         number          default 0,
    bip          varchar2(255)   not null,
    created_at   date            default sysdate
);

desc sboard2;

create sequence sboard2_seq;


