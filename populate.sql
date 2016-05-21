-- PAISES
INSERT INTO Pais VALUES(NULL, "Portugal");
INSERT INTO Pais VALUES(NULL, "Espanha");
INSERT INTO Pais VALUES(NULL, "Itália");
INSERT INTO Pais VALUES(NULL, "França");
INSERT INTO Pais VALUES(NULL, "Alemanha");
INSERT INTO Pais VALUES(NULL, "Brasil");
INSERT INTO Pais VALUES(NULL, "Estados Unidos da América");
INSERT INTO Pais VALUES(NULL, "Holanda");
INSERT INTO Pais VALUES(NULL, "Finlândia");
INSERT INTO Pais VALUES(NULL, "Noruega");
INSERT INTO Pais VALUES(NULL, "República Checa");
INSERT INTO Pais VALUES(NULL, "Áustria");
INSERT INTO Pais VALUES(NULL, "Suíça");
INSERT INTO Pais VALUES(NULL, "Suécia");
INSERT INTO Pais VALUES(NULL, "Grécia");
INSERT INTO Pais VALUES(NULL, "Ucrânia");
INSERT INTO Pais VALUES(NULL, "Dinamarca");
INSERT INTO Pais VALUES(NULL, "Polónia");
INSERT INTO Pais VALUES(NULL, "Hungria");
INSERT INTO Pais VALUES(NULL, "Rússia");
INSERT INTO Pais VALUES(NULL, "Tailândia");
INSERT INTO Pais VALUES(NULL, "Singapura");
INSERT INTO Pais VALUES(NULL, "India");
INSERT INTO Pais VALUES(NULL, "Japão");
INSERT INTO Pais VALUES(NULL, "China");
INSERT INTO Pais VALUES(NULL, "Nova Zelândia");
INSERT INTO Pais VALUES(NULL, "Austrália");
INSERT INTO Pais VALUES(NULL, "Argentina");
INSERT INTO Pais VALUES(NULL, "Colômbia");
INSERT INTO Pais VALUES(NULL, "México");
INSERT INTO Pais VALUES(NULL, "Canadá");
INSERT INTO Pais VALUES(NULL, "Dubai");
INSERT INTO Pais VALUES(NULL, "Egito");
INSERT INTO Pais VALUES(NULL, "África do Sul");


-- DISTRITOS
INSERT INTO Distrito VALUES (NULL, "Porto");
INSERT INTO Distrito VALUES (NULL, "Lisboa");
INSERT INTO Distrito VALUES (NULL, "Aveiro");
INSERT INTO Distrito VALUES (NULL, "Bragança");
INSERT INTO Distrito VALUES (NULL, "Faro");
INSERT INTO Distrito VALUES (NULL, "Madeira");
INSERT INTO Distrito VALUES (NULL, "Madrid");
INSERT INTO Distrito VALUES (NULL, "Leiria");
INSERT INTO Distrito VALUES (NULL, "Coimbra");


-- CONCELHOS
INSERT INTO Concelho VALUES (NULL, "Porto", 1);
INSERT INTO Concelho VALUES (NULL, "Maia", 1);
INSERT INTO Concelho VALUES (NULL, "Águeda", 3);
INSERT INTO Concelho VALUES (NULL, "Mogadouro", 4);
INSERT INTO Concelho VALUES (NULL, "Silves", 5);
INSERT INTO Concelho VALUES (NULL, "Santana", 6);
INSERT INTO Concelho VALUES (NULL, "Madrid", 7);
INSERT INTO Concelho VALUES (NULL, "Nazaré", 8);
INSERT INTO Concelho VALUES (NULL, "Penacova", 9);
INSERT INTO Concelho VALUES (NULL, "Sintra", 2);


-- FREGUESIAS
INSERT INTO Freguesia VALUES (NULL, "Paranhos", 1);
INSERT INTO Freguesia VALUES (NULL, "Massarelos", 1);
INSERT INTO Freguesia VALUES (NULL, "Vermoim", 2);
INSERT INTO Freguesia VALUES (NULL, "Pedrouços", 2);
INSERT INTO Freguesia VALUES (NULL, "Maia", 2);
INSERT INTO Freguesia VALUES (NULL, "Agadão", 3);
INSERT INTO Freguesia VALUES (NULL, "Castelo Branco", 4);
INSERT INTO Freguesia VALUES (NULL, "Alcantarilha", 5);
INSERT INTO Freguesia VALUES (NULL, "Faial", 6);
INSERT INTO Freguesia VALUES (NULL, "Atocha", 7);
INSERT INTO Freguesia VALUES (NULL, "Famalicão", 8);
INSERT INTO Freguesia VALUES (NULL, "Carvalho", 9);
INSERT INTO Freguesia VALUES (NULL, "Queluz", 10);


-- CODIGOS POSTAIS
INSERT INTO CodigoPostal VALUES (4470590, 5);
INSERT INTO CodigoPostal VALUES (4425701, 4);
INSERT INTO CodigoPostal VALUES (3750011, 6);
INSERT INTO CodigoPostal VALUES (5200130, 7);
INSERT INTO CodigoPostal VALUES (8366908, 8);
INSERT INTO CodigoPostal VALUES (9230053, 9);
INSERT INTO CodigoPostal VALUES (28045, 10);
INSERT INTO CodigoPostal VALUES (2450011, 11);
INSERT INTO CodigoPostal VALUES (3360011, 12);
INSERT INTO CodigoPostal VALUES (2745011, 13);


--TIPO DE IMÓVEL
INSERT INTO TipoImovel VALUES(NULL, "Apartamento");
INSERT INTO TipoImovel VALUES(NULL, "Armazém");
INSERT INTO TipoImovel VALUES(NULL, "Escritório");
INSERT INTO TipoImovel VALUES(NULL, "Garagem");
INSERT INTO TipoImovel VALUES(NULL, "Imóvel com Negócio");
INSERT INTO TipoImovel VALUES(NULL, "Loja");
INSERT INTO TipoImovel VALUES(NULL, "Moradia");
INSERT INTO TipoImovel VALUES(NULL, "Prédio");
INSERT INTO TipoImovel VALUES(NULL, "Quarto");
INSERT INTO TipoImovel VALUES(NULL, "Quinta");
INSERT INTO TipoImovel VALUES(NULL, "Herdade");
INSERT INTO TipoImovel VALUES(NULL, "Terreno");
INSERT INTO TipoImovel VALUES(NULL, "Condomínio Privado");


--CONDOMÍNIO
INSERT INTO Condominio VALUES (NULL, "Brandinhães Parque");
INSERT INTO Condominio VALUES (NULL, "Quinta do Lago");
INSERT INTO Condominio VALUES (NULL, "Tagus Park");
INSERT INTO Condominio VALUES (NULL, "Quinta do Patino");

-- CLIENTES
INSERT INTO Cliente VALUES (NULL, 14499929, "26/06/1996", "margaridaviterbo@hotmail.com", "Margarida Viterbo", 914722364, "Sra", 1);
INSERT INTO Cliente VALUES (NULL, 17725512, "13/02/1969", "joaosousa@gmail.com", "João Sousa", 932857389, "Sr.", 1);
INSERT INTO Cliente VALUES (NULL, 14690432, "25/03/1996", "bbelchior@gmail.com", "Bernardo Belchior", 932857434, "Sr.", 1);
INSERT INTO Cliente VALUES (NULL, 13874629, "04/04/1996", "nunoramos@hotmail.com", "Nuno Ramos", 912847365, "Sr.", 1);
INSERT INTO Cliente VALUES (NULL, 15839430, "18/05/1955", "mariafonseca@gmail.com", "Maria Fonseca", 914736854, "Sra.", 1);

-- IMOVEL
INSERT INTO Imovel VALUES (NULL, 2001, 150, "Habitação para famílias grandes com ótima localização", "B", "Rua das Flores", 1, 4, 150000, NULL, 1, 1, 10, 3750011, NULL);
INSERT INTO Imovel VALUES (NULL, 2005, 200, "Habitação ampla ao pé da praia", "A", "Travessa Fernando Namora", 2, 3, NULL, 350, 2, 1, 7, 4425701, 1);
INSERT INTO Imovel VALUES (NULL, 2010, 175, "Habitação numa zona de excelência", "B", "Praceta Elisa Monteiro", 1, 2, 500000, 700, 3, 1, 10, 5200130, 2);
INSERT INTO Imovel VALUES (NULL, 2012, 750, "Habitação restaurada que remonta aon século XIX", "C", "Paseo de La Castellana", 3, 6, NULL, NULL, 3, 2, 7, 3360011, NULL);
INSERT INTO Imovel VALUES (NULL, 2015, 250, "Habitação decorada com as últimas tendências e as mais modernas tecnologias", "B", "Rua de Moçambique", 1, 3, 1000000, 1000,  4, 1, 1, 4470590, 3);

--PAGAMENTO
INSERT INTO Pagamento VALUES (NULL, 0.10, "06/07/2016", "08/08/2016", 250000, 0, 1, 2, 1);
INSERT INTO Pagamento VALUES (NULL, 0.15, "02/05/2016", "20/01/2016", 175000, 1, 1, 3, 2);
INSERT INTO Pagamento VALUES (NULL, 0.11, "23/09/2016", NULL, 125000, 0, 4, 5, 3);
INSERT INTO Pagamento VALUES (NULL, 0.095, "15/08/2016", "20/08/2016", 150000, 0, 5, 1, 4);
INSERT INTO Pagamento VALUES (NULL, 0.125, "05/11/2016", NULL, 300000, 1, 2, 3, 5);


--FOTO
INSERT INTO Foto VALUES (NULL, "Foto 1", 13, 21, "Quarto de casal", 1);
INSERT INTO Foto VALUES (NULL, "Foto 2", 21, 13, "Cozinha", 1);
INSERT INTO Foto VALUES (NULL, "Foto 3", 13, 21, "Sala de estar", 1);
INSERT INTO Foto VALUES (NULL, "Foto 4", 13, 21, "Casa de Banho", 2);
INSERT INTO Foto VALUES (NULL, "Foto 5", 21, 13, "Escritório", 3);
INSERT INTO Foto VALUES (NULL, "Foto 6", 13, 21, "Sala de Jantar", 3);
INSERT INTO Foto VALUES (NULL, "Foto 7", 13, 21, "Quarto de criança", 4);
INSERT INTO Foto VALUES (NULL, "Foto 8", 21, 13, "Hall de Entrada", 4);
INSERT INTO Foto VALUES (NULL, "Foto 9", 13, 21, "Garagem", 4);
INSERT INTO Foto VALUES (NULL, "Foto 10", 13, 21, "Jardim", 4);
INSERT INTO Foto VALUES (NULL, "Foto 11", 21, 13, "Fachada exterior", 5);
INSERT into Foto VALUES (NULL, "Foto 12", 13, 21, "Sala", 5);


--GINASIO
INSERT INTO Ginasio VALUES (NULL, 250, 1, 20, NULL, 1);
INSERT INTO Ginasio VALUES (NULL, 100, 0, 10, 1, NULL);
INSERT INTO Ginasio VALUES (NULL, 300, 1, 25, NULL, 2);
INSERT INTO Ginasio VALUES (NULL, 300, 1, 25, NULL, 3);


--SPA
INSERT INTO Spa VALUES (NULL, 1, 10, NULL, 2);
INSERT INTO Spa VALUES (NULL, 0, 20, 4, NULL);


--SALA DE EVENTOS
INSERT INTO SalaEventos VALUES (NULL, 50, 1, NULL, 3);


--COURT DE TENIS
INSERT INTO CourtTenis VALUES (NULL, 1, 4, NULL, 3);
INSERT INTO CourtTenis VALUES (NULL, 0, 1, 1, NULL);


--GARAGEM
INSERT INTO Garagem VALUES (NULL, 500, 50, NULL);
INSERT INTO ImovelGaragem VALUES (1, 1);
INSERT INTO Garagem VALUES (NULL, 10, 1, NULL);
INSERT INTO ImovelGaragem VALUES (2, 2);
INSERT INTO Garagem VALUES (NULL, 30, 2, 1);
INSERT INTO Garagem VALUES (NULL, 500, 50, 2);


--PISCINA
INSERT INTO Piscina VALUES (NULL, 1, 25, 10, 2.5, 4, NULL);
INSERT INTO Piscina VALUES (NULL, 0, 15, 5, 1.5, NULL, 2);

