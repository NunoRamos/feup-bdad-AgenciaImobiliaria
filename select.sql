SELECT nome, montante FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId)
ORDER BY montante DESC LIMIT 10;

SELECT anoConstrucao, AVG(precoArrendamento) FROM Imovel 
WHERE (anoConstrucao BETWEEN 2000 AND 2010 AND precoArrendamento NOT NULL)
GROUP BY anoConstrucao
ORDER BY AVG(precoArrendamento) DESC;

SELECT nome FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId AND dataDevida < 'now' AND dataPagamento IS NULL); 

SELECT Imovel.id, Imovel.morada FROM Spa JOIN 
	(Imovel JOIN (
			CodigoPostal JOIN (
				Freguesia JOIN (
					Concelho JOIN Distrito
					ON Concelho.idDistrito = Distrito.id AND Distrito.nome = 'Porto')
				ON Freguesia.idConcelho = Concelho.id)
			ON CodigoPostal.idFreguesia = Freguesia.id)
		ON Imovel.codigoPostal = CodigoPostal.codigo)
	ON Imovel.id = Spa.idImovel;

SELECT Imovel.id, Imovel.descricao, TipoImovel.tipo
FROM Imovel INNER JOIN TipoImovel ON 
Imovel.idTipoImovel = TipoImovel.id AND TipoImovel.tipo = 'Quinta' AND Imovel.areaTotal > 2500;

SELECT Imovel.id
FROM Imovel INNER JOIN (Freguesia INNER JOIN CodigoPostal ON Freguesia.id = CodigoPostal.idFreguesia AND Freguesia.nome = 'Maia') 
ON Imovel.codigoPostal = CodigoPostal.codigo;

SELECT Ginasio.id, SalaEventos.id, CourtTenis.id, Ginasio.idCondominio
FROM Ginasio INNER JOIN ( SalaEventos INNER JOIN CourtTenis ON SalaEventos.idCondominio = CourtTenis.idCondominio)
ON Ginasio.idCondominio = CourtTenis.idCondominio;

SELECT Pagamento.comissao, Pagamento.montante, Pagamento.comissao*Pagamento.montante
FROM Pagamento
ORDER BY Pagamento.comissao*Pagamento.montante DESC LIMIT 10;

SELECT Imovel.id, Imovel.precoArrendamento
FROM Imovel
WHERE Imovel.precoArrendamento < 400;

SELECT Condominio.id
FROM Piscina INNER JOIN (Condominio INNER JOIN Garagem ON Condominio.id = Garagem.idCondominio AND Garagem.lugaresEstacionamento>25) 
ON Condominio.id = Piscina.idCondominio;


SELECT DISTINCT Cliente.nome FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.remetenteId OR Cliente.id = Pagamento.destinatarioId);

SELECT id, nome, MAX(lucro) FROM (
	SELECT Cliente.id AS id, Cliente.nome AS nome, SUM(Pagamento.comissao*Pagamento.montante) AS lucro FROM Cliente JOIN Pagamento
	ON (Cliente.id = Pagamento.remetenteId)
	GROUP BY Cliente.id
	ORDER BY lucro DESC
	LIMIT 1, 1);
