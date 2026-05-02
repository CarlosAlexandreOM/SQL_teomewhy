SELECT IdTransacao, DtCriacao,

    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS dias_semana

FROM transacoes

WHERE dias_semana IN ('6', '0');