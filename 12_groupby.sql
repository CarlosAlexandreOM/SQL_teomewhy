-- SELECT IdProduto,
--         count(*) AS total

-- FROM transacao_produto

-- GROUP BY  IdProduto;


SELECT IdCliente,
        sum(QtdePontos) AS total_pontos,
        count(IdTransacao) AS qtde_transacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

HAVING total_pontos >= 4000

ORDER BY total_pontos DESC