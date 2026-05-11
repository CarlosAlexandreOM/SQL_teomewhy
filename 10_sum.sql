SELECT IdTransacao, QtdePontos,
    sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
        END) AS qtde_pontos_positivos,

    sum(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
        END) AS qtde_pontos_negativos

FROM transacoes

WHERE Dtcriacao >= '2025-07-01' 
AND Dtcriacao < '2025-08-01'
