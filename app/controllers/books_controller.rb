# frozen_string_literal: true

# Classe controladora responsável pelas ações das resenhas
class BooksController < ApplicationController
  # Renderiza o form de criação de livro
  def new
    @book = Book.new
  end

  # Cadastra o livro no banco de dados
  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to @book, notice: "Livro foi cadastrado com sucesso"
    else
      render :new
    end
  end

  # Deleta o livro especificado pelo parametro :id se pertencer ao usuário logado
  def destroy
    book = Book.find(params[:id])

    if (book.user == current_user) && book.destroy
      redirect_to shelf_path, success: "Livro deletado com sucesso"
    else
      redirect_to shelf_path, error: "Ops! parece que ocorreu um erro"
    end
  end

  # Exibe livro pelo param :id
  def show
    @book = Book.find(params[:id])
  end

  # Busca livros do usuario logado e renderiza estante do usuário
  def shelf
    @books = current_user.books
  end

  # Renderiza formulário de busca de livros
  def search
  end

  # Busca livros pelo titulo e renderiza a lista de livros disponiveis encontrados
  def list_search
    @books = Book.where(tradable: true).where("title LIKE ?", "%#{params[:title]}%")
  end

  # Define atributo :tradable do livro com true
  def setup_trade
    book = Book.find(params[:id])
    book.tradable = true

    if book.save
      redirect_to shelf_path, success: "Livro foi disponibilizado para troca"
    else
      redirect_to shelf_path, error: "Ops! parece que ocorreu um erro"
    end
  end

  # Define atributo do livro :tradable como falso
  def remove_trade
    book = Book.find(params[:id])
    book.tradable = false

    if book.save
      redirect_to shelf_path, success: "Livro foi removido de trocas"
    else
      redirect_to shelf_path, error: "Ops! parece que ocorreu um erro"
    end
  end

  private

  # Filtro que impede uma requisição com parametros que não desejamos para login
  def book_params
    params.require(:book).permit(:title, :author, :publication_date, :code, :genre)
  end
end
