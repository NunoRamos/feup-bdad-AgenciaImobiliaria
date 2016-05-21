SELECT nome, montante FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId)
ORDER BY montante DESC LIMIT 10;

SELECT anoConstrucao, AVG(precoArrendamento) FROM Imovel 
WHERE (anoConstrucao BETWEEN 2000 AND 2010 AND precoArrendamento NOT NULL)
GROUP BY anoConstrucao
ORDER BY AVG(precoArrendamento) DESC;

SELECT nome FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId AND strftime('%s', dataDevida) < strftime('%s', 'now') AND dataPagamento IS NULL); 

SELECT Imovel.id, Imovel.descricao, TipoImovel.tipo
FROM Imovel INNER JOIN TipoImovel ON 
Imovel.idTipoImovel = TipoImovel.id AND TipoImovel.tipo = 'Quinta' AND Imovel.areaTotal > 2500;

SELECT Imovel.id
FROM Imovel INNER JOIN (Freguesia INNER JOIN CodigoPostal ON Freguesia.id = CodigoPostal.idFreguesia AND Freguesia.nome = 'Maia') 
ON Imovel.codigoPostal = CodigoPostal.codigo
WHERE Imovel.idCondominio IS NULL;

SELECT Ginasio.id, SalaEventos.id, CourtTenis.id, Ginasio.idCondominio
FROM Ginasio INNER JOIN ( SalaEventos INNER JOIN CourtTenis ON SalaEventos.idCondominio = CourtTenis.idCondominio)
ON Ginasio.idCondominio = CourtTenis.idCondominio;

SELECT Pagamento.comissao, Pagamento.montante, Pagamento.comissao*Pagamento.montante
FROM Pagamento
ORDER BY Pagamento.comissao*Pagamento.montante DESC;

SELECT Imovel.id, Imovel.precoArrendamento
FROM Imovel
WHERE Imovel.precoArrendamento < 400;

SELECT Condominio.id
FROM Piscina INNER JOIN (Condominio INNER JOIN Garagem ON Condominio.id = Garagem.idCondominio AND Garagem.lugaresEstacionamento>25) 
ON Condominio.id = Piscina.idCondominio;

SELECT Imovel.id,Imovel.precoVenda/Imovel.areaTotal
FROM Imovel
WHERE Imovel.precoVenda/Imovel.areaTotal IS NOT NULL
ORDER BY Imovel.precoVenda/Imovel.areaTotal DESC;

SELECT Pagamento.imovelId
FROM Pagamento 
WHERE (SELECT COUNT(*)
		FROM Foto
		WHERE Foto.idImovel = Pagamento.imovelId) != 0
		AND Pagamento.vendaOuArrendamento=0;

SELECT Distrito.nome
FROM Distrito INNER JOIN 
		(Concelho INNER JOIN 
		(Freguesia INNER JOIN 
		(CodigoPostal INNER JOIN Imovel ON CodigoPostal.codigo = Imovel.codigoPostal)			
		ON Freguesia.id = CodigoPostal.idFreguesia)
		ON Concelho.id = Freguesia.idConcelho )
		ON Distrito.id = Concelho.idDistrito
WHERE ( SELECT Pagamento.vendaOuArrendamento
		FROM Pagamento
		WHERE Imovel.id = Pagamento.imovelId) = 0;
	





			
	

