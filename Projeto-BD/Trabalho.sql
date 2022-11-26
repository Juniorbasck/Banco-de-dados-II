CREATE TABLE PROFESSOR
(
	prontuario INTEGER NOT NULL,
	pnome VARCHAR(20) NOT NULL,
	snome VARCHAR(40) NOT NULL,
	dtaNasc DATE NOT NULL, 
	CONSTRAINT pk_professor PRIMARY KEY (prontuario)

);

CREATE TABLE CURSO
(
	idCurso INTEGER NOT NULL, 
	nomeCurso VARCHAR(30) NOT NULL,
	nroSemestre INTEGER NOT NULL, 
	dtafundacao DATE NOT NULL

);

CREATE TABLE ALUNO
(
	prontuario VARCHAR(20) NOT NULL,
	pnome VARCHAR(15) NOT NULL, 
	snome VARCHAR(30) NOT NULL, 
	dtaNasc DATE NOT NULL, 
	sexo CHAR(1),
	idCurso INTEGER NOT NULL, 
	CONSTRAINT pk_aluno PRIMARY KEY (prontuario),
	CONSTRAINT FK_ALUNOCURSO FOREIGN KEY (idCurso) REFERENCES CURSO ON DELETE CASCADE ON UPDATE CASCADE 
	
);

CREATE TABLE professorlecionaAluno
(
	prontuarioAluno VARCHAR(20) NOT NULL,
	prontuarioProfessor VARCHAR NOT NULL, 
	ano INTEGER NOT NULL, 
	semestre INTEGER NOT NULL, 	
	nota REAL NOT NULL, 
	CONSTRAINT pk_prontuarioAluno FOREIGN KEY (prontuarioAluno) REFERENCES ALUNO,ON DELETE CASCADE ON UPDATE CASCADE
	CONSTRAINT pk_prontuarioProfessor FOREIGN KEY (prontuarioProfessor) REFERENCES PROFESSOR ON DELETE CASCADE ON UPDATE CASCADE
	
);
	
	
	
	

);
