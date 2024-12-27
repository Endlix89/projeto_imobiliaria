create database imobiliaria;
use imobiliaria;


-- Tabela Cliente

create table tb_cliente(
id_cli int auto_increment primary key,
cpf_cli varchar(11) not null,
idade_cli int(3) not null,
endereco_cli char(11) not null,
complemento_cli varchar(45) not null,
bairro_cli varchar(45) not null,
estado_cli char(10) not null,
cep_cli varchar(9) not null, 
constraint unique_cpf_cli unique (cpf_cli)
);


-- Tabela Corretor

create table tb_corretor(
   id_corretor int auto_increment primary key,
   pname_corretor varchar(45) not null,
   num_CRECI_corretor varchar(45) not null
);


-- Tabela Usuario

create table tb_usuario(
id_user int auto_increment primary key,
nome_user varchar(45) not null,
telefone_user varchar(11) not null,
tipo_usuario_user varchar(45) not null,
login_user varchar(45) not null,
senha_user varchar(45) not null
);


-- Tabela Agendamento de Visita

Create table tb_visita(
id_agen_user int auto_increment primary key,
data_agen_user date not null,
hora_agen_user time not null
);


-- 	Tabela Imoveis

create table tb_imoveis(
 id_imov int auto_increment primary key,
 descricao_imov varchar(255) not null,
 num_imov varchar(11) not null,
 endereco_imov varchar(45) not null,
 complemwnto_imov varchar(45) not null,
 bairro_imov varchar(45) not null,
 cidade_imov varchar(45) not null,
 estado_imov varchar(45) not null,
 cep_imov varchar (45) not null,
 qtd_quartos_imov int not null,
 qtd_banheiros_imov int not null,
 qtd_garagem_imov int not null,
 metros_imov double not null,
 valor_imov double not null
);

-- Tabela Agendamento de Visita no Imovel	

Create table tb_visita(
id_agen_imov int auto_increment primary key,
data_agen_imov date not null,
hora_agen_imov time not null
);
