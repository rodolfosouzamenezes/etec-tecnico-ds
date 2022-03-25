/* Chamadas Etec Lógico : */

CREATE TABLE tb_professor (
    professor_rm INTEGER PRIMARY KEY AUTO_INCREMENT,
    professor_senha VARCHAR(20),
    professor_nome VARCHAR(180)
);

CREATE TABLE tb_aluno (
    aluno_rm INTEGER PRIMARY KEY AUTO_INCREMENT,
    aluno_nome VARCHAR(180),
    aluno_senha VARCHAR(20),
    fk_grupo_id INTEGER,
    fk_turma_id INTEGER
);

CREATE TABLE tb_aula (
    aula_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    aula_dia_semana VARCHAR(20),
    aula_horario CHAR(5),
    aula_classe VARCHAR(40),
    fk_disciplina_id INTEGER
);

CREATE TABLE tb_curso (
    curso_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    curso_nome VARCHAR(180),
    curso_habilitacao VARCHAR(80)
);

CREATE TABLE tb_turma (
    turma_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    turma_modulo_serie VARCHAR(20),
    turma_caractere CHAR(1),
    turma_ano_inicio INTEGER,
    fk_curso_id INTEGER
);

CREATE TABLE tb_grupo (
    grupo_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    grupo_caractere CHAR(1),
    fk_turma_id INTEGER
);

CREATE TABLE tb_disciplina (
    disciplina_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    disciplina_nome VARCHAR(180),
    disciplina_abreviacao VARCHAR(5),
    disciplina_aulas_dadas INTEGER,
    disciplina_faltas_permitidas INTEGER,
    disciplina_carga_horaria INTEGER
);

CREATE TABLE tb_chamada (
    chamada_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    chamada_mes INTEGER,
    chamada_ano INTEGER,
    chamada_dia INTEGER,
    fk_aula_id INTEGER,
    fk_disciplina_id INTEGER
);

CREATE TABLE professor_aula (
    fk_professor_rm INTEGER,
    fk_aula_id INTEGER
);

CREATE TABLE disciplina_curso (
    fk_disciplina_id INTEGER,
    fk_curso_id INTEGER
);

CREATE TABLE professor_chamada (
    fk_professor_rm INTEGER,
    fk_chamada_id INTEGER
);

CREATE TABLE chamada_aluno (
    fk_chamada_id INTEGER,
    fk_aluno_rm INTEGER
);
 
ALTER TABLE tb_aluno ADD CONSTRAINT FK_aluno_2
    FOREIGN KEY (fk_grupo_id)
    REFERENCES tb_grupo (grupo_id)
    ON DELETE RESTRICT;
 
ALTER TABLE tb_aluno ADD CONSTRAINT FK_aluno_3
    FOREIGN KEY (fk_turma_id)
    REFERENCES turma (turma_id)
    ON DELETE RESTRICT;
 
ALTER TABLE tb_aula ADD CONSTRAINT FK_aula_2
    FOREIGN KEY (fk_disciplina_id)
    REFERENCES tb_disciplina (disciplina_id)
    ON DELETE CASCADE;
 
ALTER TABLE tb_turma ADD CONSTRAINT FK_turma_2
    FOREIGN KEY (fk_curso_id)
    REFERENCES tb_curso (curso_id)
    ON DELETE CASCADE;
 
ALTER TABLE tb_grupo ADD CONSTRAINT FK_grupo_2
    FOREIGN KEY (fk_turma_id)
    REFERENCES tb_turma (turma_id)
    ON DELETE RESTRICT;
 
ALTER TABLE tb_chamada ADD CONSTRAINT FK_chamada_2
    FOREIGN KEY (fk_aula_id)
    REFERENCES tb_aula (aula_id)
    ON DELETE RESTRICT;
 
ALTER TABLE tb_chamada ADD CONSTRAINT FK_chamada_3
    FOREIGN KEY (fk_disciplina_id)
    REFERENCES tb_disciplina (disciplina_id)
    ON DELETE CASCADE;
 
ALTER TABLE professor_aula ADD CONSTRAINT FK_professor_aula_1
    FOREIGN KEY (fk_professor_rm)
    REFERENCES tb_professor (professor_rm)
    ON DELETE RESTRICT;
 
ALTER TABLE professor_aula ADD CONSTRAINT FK_professor_aula_2
    FOREIGN KEY (fk_aula_id)
    REFERENCES tb_aula (aula_id)
    ON DELETE SET NULL;
 
ALTER TABLE disciplina_curso ADD CONSTRAINT FK_disciplina_curso_1
    FOREIGN KEY (fk_disciplina_id)
    REFERENCES tb_disciplina (disciplina_id)
    ON DELETE RESTRICT;
 
ALTER TABLE disciplina_curso ADD CONSTRAINT FK_disciplina_curso_2
    FOREIGN KEY (fk_curso_id)
    REFERENCES tb_curso (curso_id)
    ON DELETE SET NULL;
 
ALTER TABLE professor_chamada ADD CONSTRAINT FK_professor_chamada_1
    FOREIGN KEY (fk_professor_rm)
    REFERENCES tb_professor (professor_rm)
    ON DELETE RESTRICT;
 
ALTER TABLE professor_chamada ADD CONSTRAINT FK_professor_chamada_2
    FOREIGN KEY (fk_chamada_id)
    REFERENCES tb_chamada (chamada_id)
    ON DELETE SET NULL;
 
ALTER TABLE chamada_aluno ADD CONSTRAINT FK_chamada_aluno_1
    FOREIGN KEY (fk_chamada_id)
    REFERENCES tb_chamada (chamada_id)
    ON DELETE RESTRICT;
 
ALTER TABLE chamada_aluno ADD CONSTRAINT FK_chamada_aluno_2
    FOREIGN KEY (fk_aluno_rm)
    REFERENCES tb_aluno (aluno_rm)
    ON DELETE SET NULL;