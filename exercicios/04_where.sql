-- Selecione produtos que contém 'churn' no nome 

SELECT *
FROM produtos
WHERE DescNomeProduto LIKE 'churn%'