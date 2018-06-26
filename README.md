# Trabalho Qualidade de software

### grupo
- Vítor passos Pontes matricula: 13/0137421
- Renan rocha reboredo matricula: 13/0131865

Nosso grupo optou pelo trabalho 2 no qual foi desenvolvido um sistema de software com enfoque em teste. Para isso utilizamos da linguagem rails com framework ruby on rails. O código se encontra em 'app/models' para os modelos de dado, 'app/controllers' para as controladoras que recebem as requisições e 'app/views' para os htmls que serão gerados. Os testes se encontram na pasta 'spec/' sendo 'spec/models' os testes de unidade, 'spec/controllers' os de integração e 'specs/feature' para testes de sistema e smoke test, maiores explicações no plano de teste.

## Acessando o sistema
Caso ruby, bundler e postgres estejam instalados e configurados para subir o servidor é necessário executar os seguintes comandos
```
bundle install
rails db:create
rails db:migrate
rails server
```
O ultimo comando irá rodar o servidor. Devido a complexidade de configurar o ambiente o grupo hospedou o sistema num servidor que pode ser acessado pelo link "https://estante-virtual-qs.herokuapp.com".

A documentação pode ser acessada em "https://estante-virtual-qs.herokuapp.com/docs/index.html" ou localmente abrindo o arquivo "public/docs/index.html" em um browser. Nessa página no fim do menu esquerdo se encontram os arquivos "plano_de_teste", "plano_desenvolvimento" e "processo_desenvolvimento" como especificados pelo trabalho. Na seção do menu "Class and module index" é possivel acessar as classes do suas respectivas documentações. Também é possivel acessar o relatório da cobertura de testes em "https://estante-virtual-qs.herokuapp.com/coverage/index.html"


# Artefatos comprovando as atividades
Na pasta "plans/artifacts" se encontram as imagens, documentos e relatórios que comprovam suas respectivas atividades:

- "ci-cd.png" Print do serviço circleCi que nos permite fazer integração e entrega continua. Os itens verdes obtiveram sucesso na suite de teste e realizam um deploy. Os itens vermelhos falharam a teste suite, analise estática e não sofreram deploy. Cada execução gera relatórios de testes sucedidos e quebras de padrão que ficam armazenados no circleCI.
- "historico-builds.png" é um gráfico gerado pelo circleCI que nos permite analisar o tempo das builds e a taxa de sucesso
- "sprint-qs.png" é um imagem que demonstra a utilização do ferramenta trello e como as histórias de usuário foram divididas em sprints.
- "pullrequest.png" mostra um pullrequest feito durante o desenvolvimento para revisão de código.
- "estante-virtual-db.png" é uma imagem representativa da modelagem de banco de dados.
