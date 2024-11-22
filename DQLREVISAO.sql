-- 1. Selecione todos os jogos disponíveis no banco de dados.
select titulo from jogos;
-- 2. Liste os nomes e telefones de todos os clientes cadastrados.
select nome, telefone from clientes;
-- 3. Encontre todos os jogos lançados após o ano de 2020.
select titulo from jogos where ano_lancamento > 2020;
-- 4. Liste todos os clientes que moram na cidade de 'Vila Velha'.
select cl.nome from clientes as cl join enderecos as ende on cl.cliente_id = ende.endereco_id where cidade = 'Vila Velha';
-- 5. Obtenha todas as locações feitas no último mês (considerando a data atual).
select locacao_id from locacoes where month(data_locacao) = month(curdate()) -1;
-- 6. Liste os jogos disponíveis em ordem crescente de preço da diária.
select titulo from jogos order by preco_diaria asc;
-- 7. Mostre os 5 clientes mais recentes cadastrados, ordenados pela data de nascimento.


select cliente_id, nome, data nascimento FROM(
	select cliente_id, nome, data_nascimento
    from clientes
    order by cliente_id desc
    limit 5) order by data_nascimento; 
    -- aqui o professor colocou esse from pra poder fazer como se fosse 2 order by na mesma pesquisa, por causa q n tem como colocar 2 order by um na frente do outro
    
    
    
-- 8. Calcule a quantidade de locações feitas por cada cliente.
select cli.nome, count(loc.cliente_id) from locacoes as loc right join clientes as cli on cli.cliente_id = loc.cliente_id group by cli.nome;
-- 9. Encontre os jogos mais alugados (com pelo menos 5 locações).
select j.titulo, count(l.jogo_id) from jogos j join locacoes l on j.jogo_id = l.jogo_id group by j.titulo having count(*) >=  -- ta errado corrigir
-- 10. Liste os métodos de pagamento e a soma total de valores pagos para cada método.

-- 11. Recupere os detalhes das locações, incluindo o nome do cliente e o título do jogo.

-- 12. Liste os endereços de todos os clientes, com seus respectivos nomes.

-- 13. Mostre todas as locações em que o status é 'Atrasada', incluindo os dados do cliente e o jogo alugado.

-- 14. Calcule o valor médio das diárias dos jogos.

-- 15. Determine o valor total arrecadado em pagamentos.

-- 16. Encontre o jogo mais caro no banco de dados.

-- 17. Liste os 3 jogos mais baratos disponíveis para locação.

-- 18. Mostre as 10 locações mais recentes, incluindo a data de locação e o status.

-- 19. Identifique os clientes que fizeram mais de 3 locações.

-- 20. Liste os jogos com preço médio diário acima de R$5 e que possuem mais de 2 locações.



