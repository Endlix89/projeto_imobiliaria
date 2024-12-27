-- id_cli, pname_cli, idade_cli, cpf_cli, endereco_cli, complemento_cli, bairro_cli, cidade_cli, estado_cli, cep_cli 

insert into tb_cliente (pname_cli, idade_cli, cpf_cli, endereco_cli, complemento_cli, bairro_cli, cidade_cli, estado_cli, cep_cli)
   values('Mario', 45 , 123465780, 'Rua Bronze 67', null, 'Jardim das Tulipas', 'Osasco', 'São Paulo', '09999-785'),
         ('Roberta', 29, 239856421, 'Avenida Koller 19', 'Residencia', 'Cidade das Aromas', 'Carapicuiba', 'São Paulo', '09876-566');


-- id_corretor, pname_corretor,  num_CRECI_corretor

insert into tb_corretor (pname_corretor,  num_CRECI_corretor) 
       values ('Oswaldo de Correia', '2324334124423'),
              ('Patricia de Soares', '1237655634534');
              
              
-- id_user, nome_user, telefone_user, tipo_usuario_user, login_user, senha_user 
   
insert into tb_usuario(nome_user, telefone_user, tipo_usuario_user, login_user, senha_user)
	   values ('Mario', '93344-3344', 'Cliente','M678afr', '45_de@dr' ),
			  ('Patricia', '94455-6788', 'Corretor', '34fr78ju', '12sdv89!');
              
              
-- id_agen_user, data_agen_user, hora_agen_user

insert into tb_visita (data_agen_user, hora_agen_user)
       values('12/04/2024', '14:40'),
             ('12/09/2024', '09:30');

-- id_imov, descricao_imov, num_imov, endereco_imov, complemwnto_imov, bairro_imov, cidade_imov, estado_imov, cep_imov, qtd_quartos_imov, qtd_banheiros_imov, qtd_garagem_imov, metros_imov, valor_imov

insert into tb_imoveis( descricao_imov, num_imov, endereco_imov, complemento_imov, bairro_imov, cidade_imov, 
estado_imov, cep_imov, qtd_quartos_imov, qtd_banheiros_imov, qtd_garagem_imov, metros_imov, valor_imov)
	values('Possui dois andares', 234, 'Rua Jasper', 'Casa', 'Jardim Roletes', 'Curitiba', 'PR', '55661-775', 3, 2, 3, 2, 45.7, 380000.00), 
          ('Tem sacada e porão', 456, 'Rua Graviola', 'Residencial', 'Av. Mariposa', 'São Paulo', 'SP', '07844-005', 5, 4, 5, 2, 50.6, 450000.00);


-- id_agen_imov, data_agen_imov, hora_agen_imov

insert into tb_visita (data_agen_imov, hora_agen_imov)
       values('12/04/2024', '14:40'),
             ('12/09/2024', '09:30');



-- TESTES

select count(*) from tb_cliente;

select * from tb_cliente c, tb_usuario u where c.id_cli = u.id_user; 

select concat(pname_corretor, num_CRECI_corretor) as tb_corretor, id_corretor as Request from tb_ usuario where c.id_cli = id_cliente;

select * from tb_agenda_usuario ag_u
inner join tb_agenda_imovel ag_imv ON ag_u.id_agen_imov = ag_imv.id_corretor
group by id_agen_imov;
