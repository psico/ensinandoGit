BEGIN;

CREATE SEQUENCE sis_hospitais.tb_tipo_telefone_id_tipo_telefone_seq_1;

CREATE TABLE sis_hospitais.tb_tipo_telefone (
                id_tipo_telefone INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_tipo_telefone_id_tipo_telefone_seq_1'),
                txt_tipo_telefone VARCHAR NOT NULL,
                CONSTRAINT sis_hospitais_tb_tipo_telefone PRIMARY KEY (id_tipo_telefone)
);
COMMENT ON TABLE sis_hospitais.tb_tipo_telefone IS 'Tipo de telefone';
COMMENT ON COLUMN sis_hospitais.tb_tipo_telefone.id_tipo_telefone IS 'ID';
COMMENT ON COLUMN sis_hospitais.tb_tipo_telefone.txt_tipo_telefone IS 'Descrição do tipo de telefone';


ALTER SEQUENCE sis_hospitais.tb_tipo_telefone_id_tipo_telefone_seq_1 OWNED BY sis_hospitais.tb_tipo_telefone.id_tipo_telefone;

CREATE SEQUENCE sis_hospitais.tb_empresa_plano_saude_id_empresa_plano_saude_seq;

CREATE TABLE sis_hospitais.tb_empresa_plano_saude (
                id_empresa_plano_saude INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_empresa_plano_saude_id_empresa_plano_saude_seq'),
                txt_nome_empresa VARCHAR NOT NULL,
                CONSTRAINT sis_hospitais_empresa_plano_saude PRIMARY KEY (id_empresa_plano_saude)
);
COMMENT ON TABLE sis_hospitais.tb_empresa_plano_saude IS 'Empresa do plano de saúde';
COMMENT ON COLUMN sis_hospitais.tb_empresa_plano_saude.id_empresa_plano_saude IS 'Id da empresa de plano de saúde';
COMMENT ON COLUMN sis_hospitais.tb_empresa_plano_saude.txt_nome_empresa IS 'nome da empresa';


ALTER SEQUENCE sis_hospitais.tb_empresa_plano_saude_id_empresa_plano_saude_seq OWNED BY sis_hospitais.tb_empresa_plano_saude.id_empresa_plano_saude;

CREATE SEQUENCE sis_hospitais.tb_medico_id_medico_seq;

CREATE TABLE sis_hospitais.tb_medico (
                id_medico INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_medico_id_medico_seq'),
                txt_nome VARCHAR NOT NULL,
                txt_cpf VARCHAR(11) NOT NULL,
                int_identidade INTEGER NOT NULL,
                dt_registro TIMESTAMP NOT NULL,
                CONSTRAINT sis_hospitais_tb_medico PRIMARY KEY (id_medico)
);
COMMENT ON TABLE sis_hospitais.tb_medico IS 'medico';
COMMENT ON COLUMN sis_hospitais.tb_medico.id_medico IS 'ID';
COMMENT ON COLUMN sis_hospitais.tb_medico.txt_nome IS 'Nome do médico';
COMMENT ON COLUMN sis_hospitais.tb_medico.txt_cpf IS 'cpf do médico';
COMMENT ON COLUMN sis_hospitais.tb_medico.int_identidade IS 'Identidade do médico';
COMMENT ON COLUMN sis_hospitais.tb_medico.dt_registro IS 'data de registro.';


ALTER SEQUENCE sis_hospitais.tb_medico_id_medico_seq OWNED BY sis_hospitais.tb_medico.id_medico;

CREATE SEQUENCE sis_hospitais.tb_paciente_id_paciente_seq;

CREATE TABLE sis_hospitais.tb_paciente (
                id_paciente INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_paciente_id_paciente_seq'),
                txt_nome VARCHAR NOT NULL,
                txt_cpf VARCHAR(11) NOT NULL,
                int_identidade INTEGER NOT NULL,
                dt_registro DATE NOT NULL,
                CONSTRAINT sis_hospitais_tb_paciente PRIMARY KEY (id_paciente)
);
COMMENT ON TABLE sis_hospitais.tb_paciente IS 'tabela para cadastro de paciente';
COMMENT ON COLUMN sis_hospitais.tb_paciente.id_paciente IS 'ID';
COMMENT ON COLUMN sis_hospitais.tb_paciente.txt_nome IS 'Nome do paciente.';
COMMENT ON COLUMN sis_hospitais.tb_paciente.txt_cpf IS 'Número do CPF';
COMMENT ON COLUMN sis_hospitais.tb_paciente.int_identidade IS 'Número da identidade';
COMMENT ON COLUMN sis_hospitais.tb_paciente.dt_registro IS 'Data de registro.';


ALTER SEQUENCE sis_hospitais.tb_paciente_id_paciente_seq OWNED BY sis_hospitais.tb_paciente.id_paciente;

CREATE SEQUENCE sis_hospitais.tb_telefone_id_telefone_seq;

CREATE TABLE sis_hospitais.tb_telefone (
                id_telefone INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_telefone_id_telefone_seq'),
                txt_telefone VARCHAR NOT NULL,
                id_tipo_telefone INTEGER NOT NULL,
                id_paciente INTEGER NOT NULL,
                CONSTRAINT sis_hospitais_tb_telefone PRIMARY KEY (id_telefone)
);
COMMENT ON TABLE sis_hospitais.tb_telefone IS 'Tabela para registro de telefone';
COMMENT ON COLUMN sis_hospitais.tb_telefone.id_telefone IS 'ID';
COMMENT ON COLUMN sis_hospitais.tb_telefone.txt_telefone IS 'Descrição do telefone.';
COMMENT ON COLUMN sis_hospitais.tb_telefone.id_tipo_telefone IS 'ID';
COMMENT ON COLUMN sis_hospitais.tb_telefone.id_paciente IS 'ID';


ALTER SEQUENCE sis_hospitais.tb_telefone_id_telefone_seq OWNED BY sis_hospitais.tb_telefone.id_telefone;

CREATE SEQUENCE sis_hospitais.tb_plano_de_saude_id_plano_de_saude_seq;

CREATE TABLE sis_hospitais.tb_plano_de_saude (
                id_plano_de_saude INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_plano_de_saude_id_plano_de_saude_seq'),
                txt_n_da_carterinha VARCHAR NOT NULL,
                id_paciente INTEGER NOT NULL,
                id_empresa_plano_saude INTEGER NOT NULL,
                CONSTRAINT sis_hospitais_tb_plano_de_saude PRIMARY KEY (id_plano_de_saude)
);
COMMENT ON COLUMN sis_hospitais.tb_plano_de_saude.id_plano_de_saude IS 'ID';
COMMENT ON COLUMN sis_hospitais.tb_plano_de_saude.txt_n_da_carterinha IS 'número da carterinha';
COMMENT ON COLUMN sis_hospitais.tb_plano_de_saude.id_paciente IS 'Id do paciente';
COMMENT ON COLUMN sis_hospitais.tb_plano_de_saude.id_empresa_plano_saude IS 'Id da empresa de plano de saúde';


ALTER SEQUENCE sis_hospitais.tb_plano_de_saude_id_plano_de_saude_seq OWNED BY sis_hospitais.tb_plano_de_saude.id_plano_de_saude;

CREATE SEQUENCE sis_hospitais.tb_atendimento_id_atendimento_seq;

CREATE TABLE sis_hospitais.tb_atendimento (
                id_atendimento INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_atendimento_id_atendimento_seq'),
                dt_chegada DATE DEFAULT now() NOT NULL,
                dt_saida DATE,
                id_paciente INTEGER NOT NULL,
                id_medico INTEGER NOT NULL,
                CONSTRAINT sis_hospitais_tb_atendimento PRIMARY KEY (id_atendimento)
);
COMMENT ON TABLE sis_hospitais.tb_atendimento IS 'tabela de atendimento';
COMMENT ON COLUMN sis_hospitais.tb_atendimento.id_atendimento IS 'id';
COMMENT ON COLUMN sis_hospitais.tb_atendimento.dt_chegada IS 'data hora de chegada';
COMMENT ON COLUMN sis_hospitais.tb_atendimento.dt_saida IS 'Data de saída';
COMMENT ON COLUMN sis_hospitais.tb_atendimento.id_paciente IS 'ID paciente.';
COMMENT ON COLUMN sis_hospitais.tb_atendimento.id_medico IS 'ID Médico';


ALTER SEQUENCE sis_hospitais.tb_atendimento_id_atendimento_seq OWNED BY sis_hospitais.tb_atendimento.id_atendimento;

CREATE SEQUENCE sis_hospitais.tb_endereco_id_endereco_seq;

CREATE TABLE sis_hospitais.tb_endereco (
                id_endereco INTEGER NOT NULL DEFAULT nextval('sis_hospitais.tb_endereco_id_endereco_seq'),
                txt_endereco VARCHAR NOT NULL,
                id_paciente INTEGER NOT NULL,
                CONSTRAINT sis_hospitais_tb_endereco PRIMARY KEY (id_endereco)
);
COMMENT ON COLUMN sis_hospitais.tb_endereco.id_endereco IS 'ID';
COMMENT ON COLUMN sis_hospitais.tb_endereco.txt_endereco IS 'endereço';
COMMENT ON COLUMN sis_hospitais.tb_endereco.id_paciente IS 'ID Paciente';


ALTER SEQUENCE sis_hospitais.tb_endereco_id_endereco_seq OWNED BY sis_hospitais.tb_endereco.id_endereco;

ALTER TABLE sis_hospitais.tb_telefone ADD CONSTRAINT tb_tipo_telefone_tb_telefone_fk
FOREIGN KEY (id_tipo_telefone)
REFERENCES sis_hospitais.tb_tipo_telefone (id_tipo_telefone)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE sis_hospitais.tb_plano_de_saude ADD CONSTRAINT tb_empresa_plano_saude_tb_plano_de_saude_fk
FOREIGN KEY (id_empresa_plano_saude)
REFERENCES sis_hospitais.tb_empresa_plano_saude (id_empresa_plano_saude)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE sis_hospitais.tb_atendimento ADD CONSTRAINT tb_medico_tb_atendimento_fk
FOREIGN KEY (id_medico)
REFERENCES sis_hospitais.tb_medico (id_medico)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE sis_hospitais.tb_endereco ADD CONSTRAINT paciente_enderecos_fk
FOREIGN KEY (id_paciente)
REFERENCES sis_hospitais.tb_paciente (id_paciente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE sis_hospitais.tb_atendimento ADD CONSTRAINT tb_paciente_tb_atendimento_fk
FOREIGN KEY (id_paciente)
REFERENCES sis_hospitais.tb_paciente (id_paciente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE sis_hospitais.tb_plano_de_saude ADD CONSTRAINT paciente_planos_de_saude_fk
FOREIGN KEY (id_paciente)
REFERENCES sis_hospitais.tb_paciente (id_paciente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE sis_hospitais.tb_telefone ADD CONSTRAINT tb_paciente_tb_telefone_fk
FOREIGN KEY (id_paciente)
REFERENCES sis_hospitais.tb_paciente (id_paciente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

END;