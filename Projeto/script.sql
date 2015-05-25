CREATE TABLE TURNOS (
  TUR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  TUR_NOME VARCHAR(10)  NULL    ,
PRIMARY KEY(TUR_CODIGO));



CREATE TABLE SERIES (
  SER_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  SER_NOME VARCHAR(20)  NULL    ,
PRIMARY KEY(SER_CODIGO));



CREATE TABLE PERIODOS_LETIVOS (
  PEL_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  PEL_NOME VARCHAR(20)  NULL  ,
  QTDE_NOTAS INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(PEL_CODIGO));



CREATE TABLE CONCEITOS (
  CON_CODIGO VARCHAR(5)  NOT NULL  ,
  CON_NOME VARCHAR(100)  NULL  ,
  CON_LETRA VARCHAR(1)  NULL    ,
PRIMARY KEY(CON_CODIGO));



CREATE TABLE AREAS (
  ARC_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  ARC_NOME VARCHAR(30)  NULL    ,
PRIMARY KEY(ARC_CODIGO));



CREATE TABLE ALUNOS (
  ALU_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  ALU_NOME VARCHAR(100)  NULL  ,
  ALU_DATANASCIMENTO DATE  NULL  ,
  ALU_INEP VARCHAR(100)  NULL    ,
PRIMARY KEY(ALU_CODIGO));



CREATE TABLE COLABORADORES (
  COL_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  COL_NOME VARCHAR(50)  NULL  ,
  COL_SENHA VARCHAR(50)  NULL  ,
  COL_NIVEL_ACESSO VARCHAR(1)  NULL  ,
  COL_USUARIO VARCHAR(20)  NULL    ,
PRIMARY KEY(COL_CODIGO));



CREATE TABLE MATERIAS (
  MAT_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  AREAS_ARC_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  MAT_NOME VARCHAR(20)  NULL    ,
PRIMARY KEY(MAT_CODIGO)  ,
INDEX MATERIAS_FKIndex1(AREAS_ARC_CODIGO),
  FOREIGN KEY(AREAS_ARC_CODIGO)
    REFERENCES AREAS(ARC_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE MATERIAS_POR_SERIE (
  MATERIAS_MAT_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  SERIES_SER_CODIGO INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(MATERIAS_MAT_CODIGO, SERIES_SER_CODIGO)  ,
INDEX MATERIAS_has_SERIES_FKIndex1(MATERIAS_MAT_CODIGO)  ,
INDEX MATERIAS_has_SERIES_FKIndex2(SERIES_SER_CODIGO),
  FOREIGN KEY(MATERIAS_MAT_CODIGO)
    REFERENCES MATERIAS(MAT_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(SERIES_SER_CODIGO)
    REFERENCES SERIES(SER_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE TURMAS (
  TUR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  SERIES_SER_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  PERIODOS_LETIVOS_PEL_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  TURNOS_TUR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  TUR_NOME VARCHAR(50)  NULL    ,
PRIMARY KEY(TUR_CODIGO)  ,
INDEX TURMA_FKIndex2(TURNOS_TUR_CODIGO)  ,
INDEX TURMA_FKIndex3(PERIODOS_LETIVOS_PEL_CODIGO)  ,
INDEX TURMAS_FKIndex3(SERIES_SER_CODIGO),
  FOREIGN KEY(TURNOS_TUR_CODIGO)
    REFERENCES TURNOS(TUR_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(PERIODOS_LETIVOS_PEL_CODIGO)
    REFERENCES PERIODOS_LETIVOS(PEL_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(SERIES_SER_CODIGO)
    REFERENCES SERIES(SER_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE HORARIOS (
  HOR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  COLABORADORES_COL_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  TURMAS_TUR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  MATERIAS_MAT_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  ANO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(HOR_CODIGO)  ,
INDEX HORARIOS_FKIndex1(COLABORADORES_COL_CODIGO)  ,
INDEX HORARIOS_FKIndex2(MATERIAS_MAT_CODIGO)  ,
INDEX HORARIOS_FKIndex3(TURMAS_TUR_CODIGO),
  FOREIGN KEY(COLABORADORES_COL_CODIGO)
    REFERENCES COLABORADORES(COL_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(MATERIAS_MAT_CODIGO)
    REFERENCES MATERIAS(MAT_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TURMAS_TUR_CODIGO)
    REFERENCES TURMAS(TUR_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE MATRICULAS (
  ANO INTEGER UNSIGNED  NOT NULL  ,
  ALUNOS_ALU_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  TURMAS_TUR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  MATERIAS_MAT_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  MAT_DATA DATE  NULL    ,
PRIMARY KEY(ANO, ALUNOS_ALU_CODIGO, TURMAS_TUR_CODIGO, MATERIAS_MAT_CODIGO)  ,
INDEX MATRICULA_FKIndex4(MATERIAS_MAT_CODIGO)  ,
INDEX MATRICULA_FKIndex5(ALUNOS_ALU_CODIGO)  ,
INDEX MATRICULA_FKIndex6(TURMAS_TUR_CODIGO),
  FOREIGN KEY(MATERIAS_MAT_CODIGO)
    REFERENCES MATERIAS(MAT_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ALUNOS_ALU_CODIGO)
    REFERENCES ALUNOS(ALU_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TURMAS_TUR_CODIGO)
    REFERENCES TURMAS(TUR_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE RESULTADO_FINAL (
  ALUNOS_ALU_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  TURMAS_TUR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  MATERIAS_MAT_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  ANO INTEGER UNSIGNED  NOT NULL  ,
  RES_FALTAS INTEGER UNSIGNED  NULL  ,
  RES_AULAS_DADAS INTEGER UNSIGNED  NULL  ,
  RES_CC VARCHAR(5)  NULL   COMMENT 'CONCEITO DO COMPONENTE' ,
  RES_CA VARCHAR(5)  NULL   COMMENT 'CONCEITO  DA AREA' ,
  RES_OBS VARCHAR(200)  NULL    ,
PRIMARY KEY(ALUNOS_ALU_CODIGO, TURMAS_TUR_CODIGO, MATERIAS_MAT_CODIGO, ANO)  ,
INDEX RESULTADO_FINAL_FKIndex1(ALUNOS_ALU_CODIGO)  ,
INDEX RESULTADO_FINAL_FKIndex2(TURMAS_TUR_CODIGO)  ,
INDEX RESULTADO_FINAL_FKIndex3(MATERIAS_MAT_CODIGO)  ,
INDEX RESULTADO_FINAL_FKIndex4(RES_CC)  ,
INDEX RESULTADO_FINAL_FKIndex5(RES_CA),
  FOREIGN KEY(ALUNOS_ALU_CODIGO)
    REFERENCES ALUNOS(ALU_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TURMAS_TUR_CODIGO)
    REFERENCES TURMAS(TUR_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(MATERIAS_MAT_CODIGO)
    REFERENCES MATERIAS(MAT_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(RES_CC)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(RES_CA)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);





CREATE TABLE NOTAS (
  ANO INTEGER UNSIGNED  NOT NULL  ,
  PERIODO INTEGER UNSIGNED  NOT NULL  ,
  ALUNOS_ALU_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  TURMAS_TUR_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  MATERIAS_MAT_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  COLABORADORES_COL_CODIGO INTEGER UNSIGNED  NOT NULL  ,
  NOT_NOTA1 VARCHAR(5)  NULL  ,
  NOT_NOTA2 VARCHAR(5)  NULL  ,
  NOT_NOTA3 VARCHAR(5)  NULL  ,
  NOT_NOTA4 VARCHAR(5)  NULL  ,
  NOT_NOTA5 VARCHAR(5)  NULL  ,
  NOT_NOTA6 VARCHAR(5)  NULL  ,
  NOT_FALTAS INTEGER UNSIGNED  NULL  ,
  NOT_AULAS_DADAS INTEGER UNSIGNED  NULL  ,
  NOT_CC VARCHAR(5)  NULL   COMMENT 'CONCEITO DO COMPONENTE (MATERIA)' ,
  NOT_PPDAC VARCHAR(5)  NULL   COMMENT 'CONCEITO PPDA DO COMPONENTE' ,
  NOT_CA VARCHAR(5)  NULL   COMMENT 'CONCEITO DA AREA' ,
  NOT_PPDAA VARCHAR(5)  NULL   COMMENT 'CONCEITO PPDA DA AREA'   ,
PRIMARY KEY(ANO, PERIODO, ALUNOS_ALU_CODIGO, TURMAS_TUR_CODIGO, MATERIAS_MAT_CODIGO, COLABORADORES_COL_CODIGO)  ,
INDEX NOTAS_FKIndex1(ALUNOS_ALU_CODIGO)  ,
INDEX NOTAS_FKIndex2(TURMAS_TUR_CODIGO)  ,
INDEX NOTAS_FKIndex3(MATERIAS_MAT_CODIGO)  ,
INDEX NOTAS_FKIndex4(COLABORADORES_COL_CODIGO)  ,
INDEX NOTAS_FKIndex5(NOT_NOTA1)  ,
INDEX NOTAS_FKIndex6(NOT_NOTA2)  ,
INDEX NOTAS_FKIndex7(NOT_NOTA3)  ,
INDEX NOTAS_FKIndex8(NOT_NOTA4)  ,
INDEX NOTAS_FKIndex9(NOT_NOTA5)  ,
INDEX NOTAS_FKIndex10(NOT_NOTA6)  ,
INDEX NOTAS_FKIndex11(NOT_CC)  ,
INDEX NOTAS_FKIndex12(NOT_PPDAC)  ,
INDEX NOTAS_FKIndex13(NOT_CA)  ,
INDEX NOTAS_FKIndex14(NOT_PPDAA),
  FOREIGN KEY(ALUNOS_ALU_CODIGO)
    REFERENCES ALUNOS(ALU_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TURMAS_TUR_CODIGO)
    REFERENCES TURMAS(TUR_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(MATERIAS_MAT_CODIGO)
    REFERENCES MATERIAS(MAT_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(COLABORADORES_COL_CODIGO)
    REFERENCES COLABORADORES(COL_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_NOTA1)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_NOTA2)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_NOTA3)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_NOTA4)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_NOTA5)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_NOTA6)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_CC)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_PPDAC)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_CA)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NOT_PPDAA)
    REFERENCES CONCEITOS(CON_CODIGO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);







