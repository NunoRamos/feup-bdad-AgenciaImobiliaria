SELECT nome, montante FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId)
ORDER BY montante DESC LIMIT 10;

SELECT anoConstrucao, AVG(precoArrendamento) FROM Imovel 
WHERE (anoConstrucao BETWEEN 2000 AND 2010 AND precoArrendamento NOT NULL)
GROUP BY anoConstrucao
ORDER BY AVG(precoArrendamento) DESC;

SELECT nome FROM Cliente JOIN Pagamento
ON (Cliente.id = Pagamento.destinatarioId AND strftime('%s', dataDevida) < strftime('%s', 'now') AND dataPagamento IS NULL); 
