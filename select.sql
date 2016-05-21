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
ORDER BY Pagamento.comissao*Pagamento.montante DESC;

SELECT Imovel.id, Imovel.precoArrendamento
FROM Imovel
WHERE Imovel.precoArrendamento < 400;

SELECT Condominio.id
FROM Piscina INNER JOIN (Condominio INNER JOIN Garagem ON Condominio.id = Garagem.idCondominio AND Garagem.lugaresEstacionamento>25) 
ON Condominio.id = Piscina.idCondominio;