create database prova;
use prova;
create table funcionarios(
id_funcionario int primary key,
nome_funcionario varchar(30),
cargo varchar(30),
salario int
);

create table funcionario_projetos(
id_projeto int primary key,
id_funcionario int ,
data_inicio date,
data_fim date
);

insert into funcionarios ( id_funcionario,nome_funcionario,cargo,salario)
values(1,"João Silva","Desenvolvedor",5500.00),
(2,"Maria Oliveira","Analista de Sistemas",6000.00),
(3,"Carlos Pereira","Gerente de Projetos",7500.00),
(4,"Ana Costa","Desingner",4800.00),
(5,"Lucas Almeida","Consultor de TI",6700.00);

insert into funcionario_projetos ( id_projeto,id_funcionario,data_inicio,data_inicio)
values(1,1,"2024-01-10","2024-06-30"),
(2,2,"2024-02-01","2024-07-31"),
(3,3,"2024-03-15","-09-15"),
(4,4,"2024-04-2","2024-10-20"),
(5,5,"2024-05-01","2024-11-30");

select funcionarios.nome_funcionario, funcionario_projetos.data_inicio , funcionario_projetos.data_fim
from funcionarios 
inner join funcionario_projetos on funcionario_projetos.id_funcionario = funcionarios.id_funcionario;

select funcionarios.nome_funcionario, funcionario_projetos.data_inicio
from funcionarios
inner join funcionario_projetos on funcionario_projetos.id_funcionario = funcionarios.id_funcionario
where salario > 6000.00;



