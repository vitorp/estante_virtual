# Plano de teste
## Introdução
O sistema estante virtual visa prover um meio virtual na web para trocas de livros. Apôs se cadastrarem
os usuários terão acesso a buscas que visam facilitar a troca do livro além de uma estante pessoal
para armazenar seus próprios livros.

## Objetivos de teste
Nesse projeto se utiliza a arquitetura MVC, logo os models, views e controllers são prioridades. Nessas camadas
deve ser alcançada uma cobertura de 80% na suite de teste para uma garantia de qualidade. Os testes devem garantir
a funcionalidade do sistema e de suas operações principais de acordo com as histórias de usuário e critérios de aceitação das mesmas.

## Procedimento de teste
Os testes serão divididos em duas etapas: Desenvolvimento e Entrega. Durante o desenvolvimento os testes serão realizados antes da implementação da funcionalidade seguindo a metodologia TDD. Esses testes terão caráter unitário e servem para garantia de qualidade, documentação e para guiar os desenvolvedores durante o processo de desenvolvimento. Ao final da implementação de uma funcionalidade além dos testes centrais deve-se possuir testes para os critérios de aceitação. Na segunda etapa ,a de Entrega, as histórias de usuário serão revisadas sobre a perspectiva de apresentação e integração.

## Smoke test, Testes de unidade, integração e sistema
Serão feitos testes de unidade para os models a fim de validar os dominios de aplicação. Teste de integraçao controller e model para validar as ações do sistema. As views não serão testadas em testes de unidade devido a sua volatilidade durante o desenvolvimento, mas sua renderização será testada em testes de sistema. Existirão tambem testes de sistema para as funcionalidades de busca e um smoke test de login. Mais testes de sistemas não serão possivel devido as restrições de tempo.

## Estratégia de teste
A estratégia utilizada será bottom-up, ou seja, testaremos primeiro os models depois os controllers. Escolhemos essa estratégia, pois a implementação dos models será simples então o desenvolvimento de stubs de models para testes de controller seria um esforço desnecessário.

## Ambiente de teste
Durante a etapa de desenvolvimento o ambiente de teste será o próprio computador do desenvolvedor. Para integração o ambiente de teste será o CircleCI que garante a execução dos testes e armazena os artefatos de teste e realizará a entrega continua caso a suite de teste não apresente erros.

## Localização dos Testes
Os testes utilizam o framework RSpec logo se encontra na pasta 'app/spec' e são subdivididos em pastas:
- app/spec/model: Testes de model que representam os testes de unidade desse sistema
- app/spec/controller: Testes de controller que representam os testes de integração
- app/spec/feature: Testes de sistema e smoke test

## Ferramentas utilizadas
A cobertura de teste será verificada com a ferramenta "simplecov" que gera relatórios do percentual de cobertura total do sistema e discriminada também.O Framework de teste utilizado será o "RSPEC" e para analise estática utilizaremos o "Rubocop". Todas essas ferramentas serão executadas na integração continua e com isso existirá um histórico de testes. Por ultimo os testes de integração realizados na entrega utilizarão o ambiente heroku para simulação de um deploy e acesso de usuário. Por último os smoke tests serão realizados utilizando "capybara".

## Artefatos gerados
- Cobertura de código
- Resultados de testes
- Analise estática
- Analise do CircleCi de sucesso e tempo de build

## Critérios para aprovação de testes
- Cobertura acima de 80%
- Casos de testes para critérios de aceitação
