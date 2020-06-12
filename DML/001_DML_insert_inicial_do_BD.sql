BEGIN ;
--rollback ;

INSERT INTO sis_hospitais.tb_tipo_telefone (id_tipo_telefone, txt_tipo_telefone) VALUES (1, 'Telefone Pessoal');
INSERT INTO sis_hospitais.tb_tipo_telefone (id_tipo_telefone, txt_tipo_telefone) VALUES (2, 'Telefone Comercial');
INSERT INTO sis_hospitais.tb_tipo_telefone (id_tipo_telefone, txt_tipo_telefone) VALUES (3, 'Celular Pessoal');
INSERT INTO sis_hospitais.tb_tipo_telefone (id_tipo_telefone, txt_tipo_telefone) VALUES (4, 'Celular Comercial');

INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Adalberto', '00000000000', 111, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Betão', '11111111111', 222, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Cláudio', '22222222222', 333, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Denise', '33333333333', 444, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Elton', '44444444444', 555, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Fabricio', '55555555555', 666, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Gabriel', '66666666666', 777, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Heitor', '77777777777', 888, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Igor', '88888888888', 999, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Jordan', '99999999999', 122, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Kevin', '00011111111', 133, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Leticia', '00022222222', 144, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Mario', '00033333333', 155, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Nilson', '00044444444', 166, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Oliver', '00055555555', 177, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Patricia', '00066666666', 188, now());
INSERT INTO sis_hospitais.tb_paciente (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Virgília', '00077777777', 199, now());

INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QNN 24 lote 22', 1);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QNN 10 lote 14', 2);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QNN 8 lote 53', 3);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QI 10 lote 41', 5);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QI 20 lote 2', 7);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QI 24 lote 24', 8);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('CNN 1 lote 6', 9);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('CNN 2 lote 9', 10);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('SCN 1 lote 15', 11);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('SCN 30 lote 23', 12);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('SCN 8 lote 38', 13);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QI 10 lote 22', 15);
INSERT INTO sis_hospitais.tb_endereco (txt_endereco, id_paciente) VALUES ('QI 20 lote 40', 16);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6111111111', 1, 3);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6122222222', 2, 3);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6133333333', 3, 3);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6144444444', 1, 6);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6155555555', 2, 6);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6166666666', 3, 6);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6177777777', 2, 8);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6188888888', 3, 8);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('6199999999', 1, 2);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('7111111111', 3, 2);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('7222222222', 4, 9);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('7333333333', 2, 9);
INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('7444444444', 3, 9);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('7555555555', 1, 10);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('7666666666', 2, 11);

INSERT INTO sis_hospitais.tb_telefone (txt_telefone, id_tipo_telefone, id_paciente) VALUES ('7777777777', 4, 12);

INSERT INTO sis_hospitais.tb_empresa_plano_saude (txt_nome_empresa) VALUES ('Amil');
INSERT INTO sis_hospitais.tb_empresa_plano_saude (txt_nome_empresa) VALUES ('UniMed');
INSERT INTO sis_hospitais.tb_empresa_plano_saude (txt_nome_empresa) VALUES ('Bradesco');

INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('123456', 1, 1);
INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('2352345', 2, 1);
INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('454323s', 3, 1);

INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('454323s', 7, 2);
INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('gfe23f5', 2, 2);
INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('fs654fg', 9, 2);
INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('23f64fd', 8, 2);

INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('23fsd44', 5, 1);
INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('fasd442', 5, 2);
INSERT INTO sis_hospitais.tb_plano_de_saude (txt_n_da_carterinha, id_paciente, id_empresa_plano_saude) VALUES ('fa23123', 5, 3);

INSERT INTO sis_hospitais.tb_medico (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Osvaldo', '11122222222', 211, now());
INSERT INTO sis_hospitais.tb_medico (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Vantuir', '11133333333', 233, now());
INSERT INTO sis_hospitais.tb_medico (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Suelen', '11144444444', 244, now());
INSERT INTO sis_hospitais.tb_medico (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Maria', '11155555555', 255, now());
INSERT INTO sis_hospitais.tb_medico (txt_nome, txt_cpf, int_identidade, dt_registro) VALUES ('Carlos', '11166666666', 266, now());

INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), now(), 1, 1);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), now(), 2, 1);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), now(), 3, 1);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, id_paciente, id_medico) VALUES (now(), 4, 1);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, id_paciente, id_medico) VALUES (now(), 5, 3);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-06',  6, 3);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, id_paciente, id_medico) VALUES (now(), 7, 4);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-06', 8, 4);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, id_paciente, id_medico) VALUES (now(), 9, 4);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-07', 9, 4);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-10', 10, 5);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-11', 11, 1);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-12', 12, 4);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-11', 13, 4);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-08', 11, 1);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-04-11', 1, 5);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-13', 6, 3);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-03-14', 6, 3);
INSERT INTO sis_hospitais.tb_atendimento (dt_chegada, dt_saida, id_paciente, id_medico) VALUES (now(), '2020-04-11', 6, 1);

END;