SELECT IdCliente, QtdePontos,

    CASE
        WHEN QtdePontos <= 500 THEN 'Ponei'
        WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
        WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
        WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
        ELSE 'Mago Supremo'
    END AS nome_grupo,

    CASE
        WHEN QtdePontos <= 1000 THEN 1
        ELSE 0
    END AS Flponei,

    CASE
        WHEN QtdePontos > 1000 THEN 1
        ELSE 0
    END AS Flmago

FROM clientes

WHERE Flponei = 1

ORDER BY QtdePontos DESC