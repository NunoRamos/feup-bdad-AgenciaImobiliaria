SELECT nome, montante FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId)
ORDER BY montante DESC LIMIT 10;

SELECT AVG(precoArrendamento) FROM Imovel 
WHERE (anoConstrucao <= 2010 AND precoArrendamento NOT NULL);

SELECT nome FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId AND julianday(dataDevida) < julianday('now') AND dataPagamento IS NULL); 
