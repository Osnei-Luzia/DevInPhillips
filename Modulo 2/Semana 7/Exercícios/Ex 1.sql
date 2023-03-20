CREATE TABLE professores(
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    id_endereco NOT NULL,
    nome Varchar2(25) NOT NULL,
    sobrenome Varchar2(50) NOT NULL,
    telefone Varchar2(13)NOT NULL,
    email Varchar2(50) NOT NULL,
    data_nascimento Date NOT NULL,
    nascionalidade Varchar(35) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_endereco) REFERENCES enderecos(id)
);

CREATE TABLE enderecos(
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    cep VARCHAR2(9) NOT NULL,
    logradouro VARCHAR2(128) NOT NULL,
    numero VARCHAR2(32) NOT NULL,
    complemento VARCHAR2(64) ,
    bairro VARCHAR2(32) NOT NULL,
    cidade VARCHAR2(64) NOT NULL,
    uf VARCHAR2(2) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE alunos(
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    nome Varchar2(25) NOT NULL,
    sobrenome Varchar2(50) NOT NULL,
    matricula Varchar2(10) NOT NULL,
    email Varchar2(50) NOT NULL,
    data_nascimento Date NOT NULL,
    nascionalidade Varchar(35) NOT NULL,
    media_geral Decimal(2,2) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE cursos(
    id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    id_professor NOT NULL,
    codigo Varchar2(25) NOT NULL,
    nome Varchar2(25) NOT NULL,
    ead NUMBER(1) NOT NULL,
    numero_alunos int NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_professor) REFERENCES professores(id) 
);
