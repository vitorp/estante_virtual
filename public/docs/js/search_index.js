var search_data = {"index":{"searchIndex":["applicationcontroller","applicationrecord","book","bookscontroller","review","reviewscontroller","user","userscontroller","welcomecontroller","book_count()","create()","create()","create()","current_user()","destroy()","home()","home()","index()","list_search()","login()","login_params()","login_user()","logout()","logout_user()","new()","new()","new()","remove_trade()","search()","search()","setup_trade()","shelf()","show()","show()","verify_logged_in()","readme","plano_de_teste","plano_desenvolvimento","processo_desenvolvimento"],"longSearchIndex":["applicationcontroller","applicationrecord","book","bookscontroller","review","reviewscontroller","user","userscontroller","welcomecontroller","book#book_count()","bookscontroller#create()","reviewscontroller#create()","userscontroller#create()","applicationcontroller#current_user()","bookscontroller#destroy()","userscontroller#home()","welcomecontroller#home()","userscontroller#index()","bookscontroller#list_search()","welcomecontroller#login()","welcomecontroller#login_params()","applicationcontroller#login_user()","welcomecontroller#logout()","applicationcontroller#logout_user()","bookscontroller#new()","reviewscontroller#new()","userscontroller#new()","bookscontroller#remove_trade()","bookscontroller#search()","userscontroller#search()","bookscontroller#setup_trade()","bookscontroller#shelf()","bookscontroller#show()","userscontroller#show()","applicationcontroller#verify_logged_in()","","","",""],"info":[["ApplicationController","","ApplicationController.html","","<p>Classe controladora base do sistema da qual todas as controladoras herdam\n"],["ApplicationRecord","","ApplicationRecord.html","","<p>Classe model base do sistema da qual todos models herdam\n"],["Book","","Book.html","","<p>Classe livro responsável pelas validações e relacionamentos dos objetos\nlivro\n"],["BooksController","","BooksController.html","","<p>Classe controladora responsável pelas ações das resenhas\n"],["Review","","Review.html","","<p>Classe livro responsável pelas validações e relacionamentos dos objetos\nlivro\n"],["ReviewsController","","ReviewsController.html","","<p>Classe controladora responsável pelas ações das resenhas\n"],["User","","User.html","","<p>Classe livro responsável pelas validações e relacionamentos dos objetos\nlivro\n"],["UsersController","","UsersController.html","","<p>Classe controlodora das ações de usuário\n"],["WelcomeController","","WelcomeController.html","","<p>Classe controladora responsável pelas ações de controle de acesso e ações\nde usuários não logados no …\n"],["book_count","Book","Book.html#method-i-book_count","()","<p>Validação da quantidade limite de livros pro usuário\n"],["create","BooksController","BooksController.html#method-i-create","()","<p>Cadastra o livro no banco de dados\n"],["create","ReviewsController","ReviewsController.html#method-i-create","()","<p>Cadastra nova resenha no banco de dados\n"],["create","UsersController","UsersController.html#method-i-create","()","<p>Adiciona usuário ao banco de dados\n"],["current_user","ApplicationController","ApplicationController.html#method-i-current_user","()","<p>Retorna usuário armazenado ou busca usuário pelo id armazenado na sessão\nRetorna nil caso nenhum usuário …\n"],["destroy","BooksController","BooksController.html#method-i-destroy","()","<p>Deleta o livro especificado pelo parametro :id se pertencer ao usuário\nlogado\n"],["home","UsersController","UsersController.html#method-i-home","()","<p>Renderiza a home do usuário\n"],["home","WelcomeController","WelcomeController.html#method-i-home","()","<p>Home do sistema primeira página que o usuário entra em contato\n"],["index","UsersController","UsersController.html#method-i-index","()","<p>Renderiza o form de busca por usuário\n"],["list_search","BooksController","BooksController.html#method-i-list_search","()","<p>Busca livros pelo titulo e renderiza a lista de livros disponiveis\nencontrados\n"],["login","WelcomeController","WelcomeController.html#method-i-login","()","<p>Ação que define o usuário atual de acordo com os parametros post\n"],["login_params","WelcomeController","WelcomeController.html#method-i-login_params","()","<p>Filtro que impede uma requisição com parametros que não desejamos para\nlogin\n"],["login_user","ApplicationController","ApplicationController.html#method-i-login_user","(user)","<p>Armazena id do usuário na sessão\n"],["logout","WelcomeController","WelcomeController.html#method-i-logout","()","<p>Termina sessão do usuário logado\n"],["logout_user","ApplicationController","ApplicationController.html#method-i-logout_user","()","<p>Remove usuário da sessão\n"],["new","BooksController","BooksController.html#method-i-new","()","<p>Renderiza o form de criação de livro\n"],["new","ReviewsController","ReviewsController.html#method-i-new","()","<p>Renderiza form de nova resenha\n"],["new","UsersController","UsersController.html#method-i-new","()","<p>Renderiza o form de criação de usuário\n"],["remove_trade","BooksController","BooksController.html#method-i-remove_trade","()","<p>Define atributo do livro :tradable como falso\n"],["search","BooksController","BooksController.html#method-i-search","()","<p>Renderiza formulário de busca de livros\n"],["search","UsersController","UsersController.html#method-i-search","()","<p>Busca usuário de acordo com o parametro :nickname\n"],["setup_trade","BooksController","BooksController.html#method-i-setup_trade","()","<p>Define atributo :tradable do livro com true\n"],["shelf","BooksController","BooksController.html#method-i-shelf","()","<p>Busca livros do usuario logado e renderiza estante do usuário\n"],["show","BooksController","BooksController.html#method-i-show","()","<p>Exibe livro pelo param :id\n"],["show","UsersController","UsersController.html#method-i-show","()","<p>Exibe detalhes do usuário de acordo com o parametro :id\n"],["verify_logged_in","ApplicationController","ApplicationController.html#method-i-verify_logged_in","()","<p>Hook executado antes de toda ação garantindo que o usuário está logado\n"],["README","","README_md.html","","<p>README\n<p>This README would normally document whatever steps are necessary to get\nthe\napplication up and ...\n"],["plano_de_teste","","plans/plano_de_teste_md.html","","<p>Plano de teste\n<p>Introdução\n<p>O sistema estante virtual visa prover um meio virtual na web para trocas de\nlivros. …\n"],["plano_desenvolvimento","","plans/plano_desenvolvimento_md.html","",""],["processo_desenvolvimento","","plans/processo_desenvolvimento_md.html","","<p>Processo de desenvolvimento\n<p>Esse processo de desenvolvimento é embasado na utilização de métodos ágeis\n…\n"]]}}