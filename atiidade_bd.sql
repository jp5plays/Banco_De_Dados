use db_atividade_view;

CREATE VIEW dados_1 AS 
SELECT aluno.nome as nome_aluno, disciplina.nome as nome_disciplina, curso.nome as curso_nome
FROM aluno
INNER JOIN matricula 
ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina
ON matricula.id_disciplina = disciplina.id_disciplina
INNER JOIN curso
ON disciplina.id_curso = curso.id_curso;



CREATE VIEW dados_2 AS 
SELECT disciplina.nome AS nome_disciplina, COUNT(aluno.id_aluno) AS numero_de_alunos
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
INNER JOIN curso ON disciplina.id_curso = curso.id_curso
GROUP BY disciplina.nome
ORDER BY nome_disciplina;

CREATE VIEW dados_3 AS 
SELECT aluno.nome as alunos , disciplina.nome as discplinas ,  matricula.status as status
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina;

CREATE VIEW dados_4 AS 
 SELECT professor.nome as nome_professores, disciplina.nome as disciplina, turma. horario as horario_professores
 from professor
 inner join turma on professor.id_professor = turma.id_professor
 inner join disciplina on turma.id_disciplina = disciplina.id_disciplina;
 
CREATE VIEW dados_5_1 AS 
SELECT nome,  COUNT(data_nascimento)  
from aluno
where data_nascimento>20
group by data_nascimento
order by data_nascimento;

CREATE VIEW dados_6 AS 
SELECT curso.nome, COUNT(disciplina.id_curso) AS total_disciplinas, curso.carga_horaria, curso.id_curso
FROM curso
INNER JOIN disciplina ON disciplina.id_curso = curso.id_curso
GROUP BY curso.nome, curso.carga_horaria, curso.id_curso
ORDER BY curso.id_curso;

CREATE VIEW dados_7 AS
SELECT nome,especialidade
from professor;

CREATE VIEW dados_8 AS
SELECT aluno.nome, COUNT(disciplina.id_disciplina) AS total_disciplinas
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
GROUP BY aluno.nome
ORDER BY aluno.nome;

CREATE VIEW dados_9 AS
SELECT aluno.nome,  COUNT(disciplina.id_disciplina)
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
WHERE matricula.status = "Concluído"
GROUP BY aluno.nome
ORDER BY aluno.nome;

CREATE VIEW dados_10 AS
SELECT * FROM turma
where semestre = '2024.1';

CREATE VIEW dados_11 AS
SELECT S

















