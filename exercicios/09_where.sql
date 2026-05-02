SELECT IdCliente, QtdePontos,

    CASE
        WHEN QtdePontos <= 10 THEN 'baixo'
        WHEN QtdePontos < 500 THEN 'medio'
        ELSE 'alto'
    END AS categoria_transacao

FROM transacoes

ORDER BY QtdePontos DESC;