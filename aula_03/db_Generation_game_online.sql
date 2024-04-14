create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment primary key,
classe varchar(255) not null,
sub_classe varchar (255) not null
);

create table tb_personagens(
id bigint auto_increment primary key,
nome varchar(255),
ataque int,
defesa int,
alinhamento varchar(255)
);



alter table tb_personagens add classe_id bigint;
alter table tb_personagens add constraint fk_classe_id
foreign key(classe_id) references tb_classes(id);

insert into tb_classes(classe, sub_classe)
values
("Ladino","Trapaceiro Arcano"),
("Clerigo","Dominio da luz"),
("Clerigo","Dominio da natureza"),
("Paladino","Juramento da vingança"),
("Druida","Circulo da Lua"),
("Feiticeiro","Magia selvagem");

select * from tb_classes;
insert into tb_personagens(nome,ataque,defesa,alinhamento,classe_id)
values
("zabumba whitedwarf",1500,3000,"caotico bom",2),
("elden",3000, 1500,"caotico neutro",1),
("joshi whitedwarf",2000, 2000,"Neutro bom",4),
("Altaroz",4000,1000,"caotico bom",6),
("Ungrim azgal",2500, 1800,"Caotico bom",5),
("Lupercaiser Belchior",3000,1000,"Neutro mal",3),
("Kylax",2900,1200,"Neutro bom",4),
("ragnar",2700,1600,"Neutro mal",5);

select * from tb_personagens where ataque >2000;
select * from tb_personagens where ataque between 1000 and 2000;
select * from tb_personagens where nome like "%B%";
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id;
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id
where tb_classes.classe="Paladino";


