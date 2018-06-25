## Processo de desenvolvimento
Esse processo de desenvolvimento é embasado na utilização de métodos ágeis e desenvolvimento com foco em teste para garantia de qualidade. Utilizando como maiores influências SCRUM e TDD (Test driven development) adaptamos as suas práticas e principios para melhor suprir nossas necessidades e alcançar nossos objetivos.

## Ciclo de desenvolvimento
O desenvolvimento será dividido em sprints semanais. Para isso será realizada uma reunião de sprint toda semana a fim de avaliar o que foi feito e planejar a próxima iteração. Através de um Kanban, as tarefas serão acompanhadas durante a semana em listas de BACKLOG, TO DO, DOING, REVIEW e DONE. As tarefas finalizadas se encontrarão na lista de aceitação, serão revisadas na reunião de sprint e movidas para DONE quando terminadas.

## Test Driven Development
A metodologia do TDD manterá o foco do desenvolvimento em testes. Os testes são feitos antes do código propriamente dito para garantir uma maior cobertura e incentivar os desenvolvedores a pensarem nos casos limites.

## Métodos para garantia de qualidade no processo de desenvolvimento
Para garantia da qualidade quando as tarefas foram elencadas atribui-se a elas critérios de aceitação, ou seja, requerimentos de qualidade e completude da tarefa. Esses critérios serão revisados na reunião de sprint e se satisfeitos a tarefa será movida para DONE, se não, voltará para o backlog ou TO DO. Além da funcionalidade, a qualidade do código será monitorada e antes da integração do código haverá uma revisão de código por um desenvolvedor diferente do autor.

## Ferramentas
- Versionamento de código    Git
- Integração Contínua        CircleCI / Github
- Entrega Contínua           CircleCI / Heroku
- Analisador estático        Rubocop
- Framework de testes        Rspec
- Cobertura de testes        Simplecov
