SELECT idCliente, 
        -- qtdePontos,
        -- qtdePontos + 10 AS QtdePontos10,
        -- qtdePontos * 2 AS QtdePontosDouble,
        DtCriacao,
        substr(DtCriacao, 1, 19) AS sub_string,

        datetime(substr(DtCriacao, 1, 19)) AS dt_criacao_nova,

        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS dias_da_semana
        
FROM clientes