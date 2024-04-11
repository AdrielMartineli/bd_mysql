-- 1
create database db_escola;
-- 2
use db_escola;
create table aluno(
id bigint auto_increment primary key,
nome varchar (255) not null,
nota decimal (4,2) not null,
sala int,
periodo varchar(255)
);
-- 3
INSERT INTO aluno (nome, nota, sala, periodo) VALUES
    ('João', 8.5, 101, 'Manhã'),
    ('Maria', 7.2, 102, 'Tarde'),
    ('Pedro', 9.0, 103, 'Manhã'),
    ('Ana', 6.8, 104, 'Tarde'),
    ('Carlos', 8.9, 105, 'Manhã');
INSERT INTO aluno (nome, nota, sala, periodo) VALUES
    ('Mariana', 5.0, 106, 'Tarde'),
    ('Lucas', 4.2, 107, 'Manhã'),
    ('Juliana', 2.9, 108, 'Tarde');
-- 4
select * from aluno;
select * from aluno where nota > 7;
-- 5
select * from aluno where nota < 7;
-- 6
update aluno set nota = 10.00 where id = 8;