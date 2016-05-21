--Top 10 Clientes com maiores montantes envolvidos
SELECT nome, montante FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId)
ORDER BY montante DESC LIMIT 10;

--Valor médio da renda dos Imóveis agrupado por ano entre 2000 e 2010 
SELECT anoConstrucao, AVG(precoArrendamento) FROM Imovel 
WHERE (anoConstrucao BETWEEN 2000 AND 2010 AND precoArrendamento NOT NULL)
GROUP BY anoConstrucao
ORDER BY AVG(precoArrendamento) DESC;

--Clientes com rendas em atraso
SELECT nome FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId AND dataDevida < 'now' AND dataPagamento IS NULL); 

--Todos os imóveis com SPA privado no Distrito do Porto
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

--Todos os condomínios com mais de 25 lugares de estacionamento e piscina comunitária
SELECT Condominio.id
FROM Piscina INNER JOIN (Condominio INNER JOIN Garagem ON Condominio.id = Garagem.idCondominio AND Garagem.lugaresEstacionamento>25) 
ON Condominio.id = Piscina.idCondominio;

--Todos os imóveis com renda abaixo dos 400€
SELECT Imovel.id, Imovel.precoArrendamento
FROM Imovel
WHERE Imovel.precoArrendamento < 400;

--Top 10 transferências ordenadas pela comissão
SELECT Pagamento.comissao, Pagamento.montante, Pagamento.comissao*Pagamento.montante
FROM Pagamento
ORDER BY Pagamento.comissao*Pagamento.montante DESC LIMIT 10;

--Condomínios com ginásio, sala de eventos e court de ténis
SELECT Ginasio.idCondominio, Ginasio.id, SalaEventos.id, CourtTenis.id
FROM Ginasio INNER JOIN ( SalaEventos INNER JOIN CourtTenis ON SalaEventos.idCondominio = CourtTenis.idCondominio)
ON Ginasio.idCondominio = CourtTenis.idCondominio;

--Imóveis sem condomínio no Concelho da Maia
SELECT Imovel.id
FROM Imovel INNER JOIN (Freguesia INNER JOIN CodigoPostal ON Freguesia.id = CodigoPostal.idFreguesia AND Freguesia.nome = 'Maia') 
ON Imovel.codigoPostal = CodigoPostal.codigo
WHERE Imovel.idCondominio IS NULL;

--Quinta com área superior a 2500m²
SELECT Imovel.id, Imovel.descricao, TipoImovel.tipo
FROM Imovel INNER JOIN TipoImovel ON 
Imovel.idTipoImovel = TipoImovel.id AND TipoImovel.tipo = 'Quinta' AND Imovel.areaTotal > 2500;

--Melhor imóvel relação custo/área
SELECT Imovel.id,Imovel.precoVenda/Imovel.areaTotal
FROM Imovel
WHERE Imovel.precoVenda/Imovel.areaTotal IS NOT NULL
ORDER BY Imovel.precoVenda/Imovel.areaTotal DESC;

--Número de imóveis vendidos com foto
SELECT Pagamento.imovelId
FROM Pagamento 
WHERE (SELECT COUNT(*)
		FROM Foto
		WHERE Foto.idImovel = Pagamento.imovelId) != 0
		AND Pagamento.vendaOuArrendamento=0;

--Distritos ordenados pelo número de imóveis vendidos
SELECT Distrito.nome, COUNT(Imovel.id)
FROM Distrito INNER JOIN 
		(Concelho INNER JOIN 
			(Freguesia INNER JOIN 
				(CodigoPostal INNER JOIN Imovel 
					ON CodigoPostal.codigo = Imovel.codigoPostal)	
				ON Freguesia.id = CodigoPostal.idFreguesia)
			ON Concelho.id = Freguesia.idConcelho )
		ON Distrito.id = Concelho.idDistrito
WHERE ( SELECT Pagamento.vendaOuArrendamento
		FROM Pagamento
		WHERE Imovel.id = Pagamento.imovelId) = 0
GROUP BY Distrito.nome
ORDER BY COUNT(Imovel.id) DESC;
		
-- Clientes que já efetuam compras e arrendamentos
SELECT DISTINCT Cliente.nome FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.remetenteId OR Cliente.id = Pagamento.destinatarioId);

--Qual segundo cliente que mais lucro deu à agência
SELECT id, nome, MAX(lucro) FROM (
	SELECT Cliente.id AS id, Cliente.nome AS nome, SUM(Pagamento.comissao*Pagamento.montante) AS lucro FROM Cliente JOIN Pagamento
	ON (Cliente.id = Pagamento.remetenteId)
	GROUP BY Cliente.id
	ORDER BY lucro DESC
	LIMIT 1, 1);

