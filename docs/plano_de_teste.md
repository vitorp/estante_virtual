# Plano de teste
## Escopo
O sistema estante virtual visa prover um meio virtual na web para trocas de livros. Apôs se cadastrarem
os usuários terão acesso a buscas que visam facilitar a troca do livro além de uma estante pessoal
para armazenar seus próprios livros.

## Objetivos de teste
Nesse projeto se utiliza a arquitetura MVC, logo os models, views e controllers são prioridades. Nessas camadas
deve ser alcançada uma cobertura de 80% na suite de teste para uma garantia de qualidade. Os testes devem garantir
a funcionalidade do sistema e de suas operações principais de acordo com as histórias de usuário e critérios de aceitação das mesmas.

## Planejamento de teste
Os testes serão divididos em duas etapas: Desenvolvimento e Entrega(Datas especificadas no plano de desenvolvimento). Durante o desenvolvimento os testes serão realizados
antes da implementação da funcionalidade seguindo a metodologia TDD. Esses teste terão caráter unitário e servem para garantia de qualidade, documentação e para guiar os
desenvolvedores durante o processo de desenvolvimento. Ao final da implementação de uma funcionalidade além dos testes centrais deve-se possuir testes para os critérios
de aceitação. Na segunda etapa da Entrega as histórias de usuário serão revisadas manualmente em um ambiente de teste afim de testar a integração do sistema.

## Ferramentas utilizadas
A cobertura de teste será verificada com a ferramenta "simplecov" que gera relatórios do percentual de cobertura total do sistema e discriminada também.
O Framework de teste utilizado será o "RSPEC" e para analise estática utilizaremos o "Rubocop". Todas essas ferramentas serão executadas na integração
continua e com isso existirá um histórico de testes. Por ultimo os testes de integração realizados na entrega utilizarão o ambiente heroku para simulação
de um deploy e acesso de usuário.

## Critérios de avaliação
- Testes para model, view e controller
- Cobertura acima de 80%
- Casos de testes para critérios de aceitação
