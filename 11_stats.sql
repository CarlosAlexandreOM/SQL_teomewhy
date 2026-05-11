SELECT round(avg(QtdePontos), 2) AS media_carteira,
        1. * sum(QtdePontos) / count(IdCliente) AS media_carteira_roots,
        min(QtdePontos) AS min_carteira,
        max(QtdePontos) AS max_carteira,
        sum(flTwitch) AS total_twitch,
        sum(flEmail) AS total_email

FROM clientes

