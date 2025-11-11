create table milk(
    mno      number         not null primary key,
    mname    varchar2(100)  not null,
    mnum     number         not null,
    mtotal   number
);

desc milk;
create sequence milk_seq;

insert into milk (mno, mname, mnum, mtotal) values(0,'milk', 0, 0000);
insert into milk values (milk_seq.nextval, 'white',1,1000);

select * from milk order by mno desc;
select * from milk where mno=1;

update milk set mname='banana', mnum=2, mtotal=2000  where mno=1; 

delete from milk where mno=1;




drop table milk;
