# Processo de desenvolvimento
Esse processo de desenvolvimento é embasado na utilização de métodos ageis e desenvolvimento com foco em teste para garantia de qualidade. Utilizando como maiores influências SCRUM e TDD (Test driven devlopment) adaptamos as suas práticas e principios para melhor suprir nossas necessidades e alcançar nossos objetivos.

# Ciclo de desenvolvimento
O desenvolvimento será dividido em sprints semanais. Para isso será realizada uma reunião de sprint toda semana a fim de avaliar o que foi feito e planejar a próxima iteração. Através de um kan-ban as tarefas serão acompanhadas durante a semana em listas de BACKLOG, TO DO, DOING, aceitação e DONE. As tarefas finalizadas se encontrarão na lista de aceitação, serão revisadas na reunião de sprint e movidas para DONE quando terminadas.

# Test Driven Devlopment
A metodologia do TDD manterá o foco do desenvolvimento em testes. Os testes são feitos antes do código propriamente dito para garantir uma maior cobertura e incentivar os desenvolvedores a pensarem nos casos limites.

# Métodos para garantia de qualidade no processo de desenvolvimento
Para garantia da qualidade quando as tarefas foram elencadas atribui-se a elas critérios de aceitação, ou seja, requerimentos de qualidade e completude da tarefa. Esses critérios serão revisados na reunião de sprint e se satisfeitos a tarefa será movida para DONE, se não, voltará para o backlog ou TODO. Além da funcionalidade a qualidade do código será monitorada e na finalização de uma funcionalidade e antes da integração do código realizaremos uma revisão de código por um desenvolvedor diferente do autor.

# Fluxograma de desenvolvimento
Desenvolvimento de funcionalidade:
0. Marcar atividade e mover para DOING
1. Criar Branch para Desenvolvimento
2. Elaborar Testes para funcionalidade
3. Executar testes para falharem
4. Desenvolver funcionalidade
5. Passar Testes
6. Refatoração

Integração de código:
1. Autor cria pull request
2. Outro desenvolvedor revisa o código
3. Se negado autor realiza alterações
4. Se aceito código é integrado
