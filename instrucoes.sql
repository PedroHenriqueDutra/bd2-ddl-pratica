
ALTER TABLE alunos
ADD COLUMN telefone VARCHAR(20) NULL;


ALTER TABLE matriculas
MODIFY COLUMN curso VARCHAR(150);


ALTER TABLE matriculas
ADD CONSTRAINT fk_matriculas_aluno
FOREIGN KEY (aluno_id)
REFERENCES alunos(id);


CREATE VIEW vw_alunos_matriculas AS
SELECT 
    alunos.id AS aluno_id,
    alunos.nome AS nome_aluno,
    matriculas.curso,
    matriculas.data_matricula
FROM alunos
JOIN matriculas 
ON matriculas.aluno_id = alunos.id;