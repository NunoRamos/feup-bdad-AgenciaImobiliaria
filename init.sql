.mode columns
.headers on
.nullvalue NULL
PRAGMA FOREIGN_KEYS=ON;

CREATE TABLE TipoImovel (
	id INTEGER PRIMARY KEY,
	tipo TEXT NOT NULL
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
	idPais INTEGER REFERENCES Pais(id),
	idImovel INTEGER REFERENCES TipoImovel(id),
	codigoPostal INTEGER REFERENCES CodigoPostal(codigo),
	idCondominio INTEGER REFERENCES Condominio(id)
);

CREATE TABLE Cliente (
	id INTEGER PRIMARY KEY,
	cartaoCidadao INTEGER NOT NULL,
	dataNascimento TEXT NOT NULL,
	email TEXT,
	nome TEXT NOT NULL,
	nTelemovel INTEGER NOT NULL,
	titulo TEXT,
	idPais INTEGER REFERENCES Pais(id)
);

CREATE TABLE Pagamento (
	id INTEGER PRIMARY KEY,
	comissao REAL NOT NULL,
	dataDevida TEXT NOT NULL,
	dataPagamento TEXT NOT NULL,
	pagamento REAL NOT NULL,
	vendaOuArrendamento INTEGER NOT NULL,
	destinatarioId INTEGER REFERENCES Cliente(id),
	remetenteId INTEGER REFERENCES Cliente(id),
	imovelId INTEGER REFERENCES Imovel(id)
);

CREATE TABLE Foto (
	idFoto INTEGER PRIMARY KEY,
	nomeFicheiro TEXT NOT NULL,
	altura INTEGER NOT NULL,
	largura INTEGER NOT NULL,
	descricao TEXT,
	idImovel REFERENCES Imovel(id)
);

CREATE TABLE Pais (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL
);

CREATE TABLE CodigoPostal (
	codigo INTEGER PRIMARY KEY,
	idFreguesia INTEGER REFERENCES Freguesia(id)
);

CREATE TABLE Freguesia (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL,
	idConcelho INTEGER REFERENCES Concelho(id)
);

CREATE TABLE Concelho (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL,
	idDistrito INTEGER REFERENCES Distrito(id)
);

CREATE TABLE Condominio (
	id INTEGER PRIMARY KEY,
	nome TEXT NOT NULL
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

