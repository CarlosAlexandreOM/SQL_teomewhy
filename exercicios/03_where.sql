-- Selecione todos os clientes com mais de 500 pontos

SELECT IdCliente, qtdePontos
FROM clientes
WHERE qtdePontos > 500