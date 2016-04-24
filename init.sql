.mode columns
.headers on
.nullvalue NULL
PRAGMA FOREIGN_KEYS=ON;


DROP TABLE IF EXISTS Ginasio;
DROP TABLE IF EXISTS Spa;
DROP TABLE IF EXISTS SalaEventos;
DROP TABLE IF EXISTS CourtTenis;
DROP TABLE IF EXISTS Garagem;
DROP TABLE IF EXISTS Piscina;
DROP TABLE IF EXISTS Foto;
DROP TABLE IF EXISTS Imovel;
DROP TABLE IF EXISTS CodigoPostal;
DROP TABLE IF EXISTS Freguesia;
DROP TABLE IF EXISTS Concelho;
DROP TABLE IF EXISTS Distrito;
DROP TABLE IF EXISTS Pais;
DROP TABLE IF EXISTS TipoImovel;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Pagamento;
DROP TABLE IF EXISTS Condominio;

CREATE TABLE TipoImovel (
	id INTEGER PRIMARY KEY,
	tipo TEXT NOT NULL
);

CREATE TABLE Condominio (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL
);


CREATE TABLE Pais (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL
);

CREATE TABLE Cliente (
	id INTEGER PRIMARY KEY,
	cartaoCidadao INTEGER NOT NULL,
	dataNascimento TEXT NOT NULL,
	email TEXT,
	nome TEXT NOT NULL,
	nTelemovel INTEGER NOT NULL,
	titulo TEXT,
	idPais INTEGER NOT NULL REFERENCES Pais(id)
);

CREATE TABLE Pagamento (
	id INTEGER PRIMARY KEY,
	comissao REAL NOT NULL,
	dataDevida TEXT NOT NULL,
	dataPagamento TEXT NOT NULL,
	montante REAL NOT NULL,
	vendaOuArrendamento INTEGER NOT NULL,
	destinatarioId INTEGER NOT NULL REFERENCES Cliente(id),
	remetenteId INTEGER NOT NULL REFERENCES Cliente(id),
	imovelId INTEGER NOT NULL REFERENCES Imovel(id)
);

CREATE TABLE CodigoPostal (
	codigo INTEGER NOT NULL PRIMARY KEY,
	idFreguesia INTEGER NOT NULL REFERENCES Freguesia(id)
);

CREATE TABLE Freguesia (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL,
	idConcelho INTEGER NOT NULL REFERENCES Concelho(id)
);

CREATE TABLE Concelho (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL,
	idDistrito INTEGER NOT NULL REFERENCES Distrito(id)
);

CREATE TABLE Distrito (
	id INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL
);

CREATE TABLE Imovel (
	id INTEGER PRIMARY KEY,
	anoConstrucao INTEGER NOT NULL,
	areaTotal REAL NOT NULL,
	descricao TEXT,
	eficienciaEnergetica TEXT NOT NULL,
	morada TEXT NOT NULL,
	numAndares INTEGER NOT NULL,
	numQuartos INTEGER NOT NULL,
	idPais INTEGER NOT NULL REFERENCES Pais(id),
	idImovel INTEGER NOT NULL REFERENCES TipoImovel(id),
	codigoPostal INTEGER NOT NULL REFERENCES CodigoPostal(codigo),
	idCondominio INTEGER REFERENCES Condominio(id)
);

CREATE TABLE Foto (
	idFoto INTEGER PRIMARY KEY,
	nomeFicheiro TEXT NOT NULL,
	altura INTEGER NOT NULL,
	largura INTEGER NOT NULL,
	descricao TEXT,
	idImovel NOT NULL REFERENCES Imovel(id)
);

CREATE TABLE Ginasio (
	id INTEGER PRIMARY KEY,
	area REAL NOT NULL,
	balneario INTEGER NOT NULL,
	nMaquinas INTEGER NOT NULL,
	idImovel INTEGER REFERENCES Imovel(id),
	idCondominio INTEGER REFERENCES Condominio(id)
);

CREATE TABLE Spa (
	id INTEGER PRIMARY KEY,
	balneario INTEGER NOT NULL,
	lotacao INTEGER NOT NULL,
	idImovel INTEGER REFERENCES Imovel(id),
	idCondominio INTEGER REFERENCES Condominio(id)
);

CREATE TABLE SalaEventos (
	id INTEGER PRIMARY KEY,
	area REAL NOT NULL,
	casaDeBanho INTEGER NOT NULL, 
	idImovel INTEGER REFERENCES Imovel(id),
	idCondominio INTEGER REFERENCES Condominio(id)
);

CREATE TABLE CourtTenis (
	id INTEGER PRIMARY KEY,
	balneario INTEGER NOT NULL,
	nCampos INTEGER NOT NULL,
	idImovel INTEGER REFERENCES Imovel(id),
	idCondominio INTEGER REFERENCES Condominio(id)
);

CREATE TABLE Garagem (
	id INTEGER PRIMARY KEY,
	area REAL NOT NULL,
	lugaresEstacionamento INTEGER NOT NULL,
	idImovel INTEGER REFERENCES Imovel(id),
	idCondominio INTEGER REFERENCES Condominio(id)
);

CREATE TABLE Piscina (
	id INTEGER PRIMARY KEY,
	balneario INTEGER NOT NULL,
	comprimento REAL NOT NULL,
	largura REAL NOT NULL,
	profundidade REAL NOT NULL,
	idImovel INTEGER REFERENCES Imovel(id),
	idCondominio INTEGER REFERENCES Condominio(id)
);

