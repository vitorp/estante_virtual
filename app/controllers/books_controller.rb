# frozen_string_literal: true

class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to @book, notice: "Livro foi cadastrado com sucesso"
    else
      render :new
    end
  end

  def destroy
    book = Book.find(params[:id])

    if (book.user == current_user) && book.destroy
      redirect_to shelf_path, success: "Livro deletado com sucesso"
    else
      redirect_to shelf_path, error: "Ops! parece que ocorreu um erro"
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def shelf
    @books = current_user.books
  end

  def search
  end

  def list_search
    @books = Book.where(tradable: true).where("title LIKE ?", "%#{params[:title]}%")
  end

  def setup_trade
    book = Book.find(params[:id])
    book.tradable = true

    if book.save
      redirect_to shelf_path, success: "Livro foi disponibilizado para troca"
    else
      redirect_to shelf_path, error: "Ops! parece que ocorreu um erro"
    end
  end

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

  def book_params
    params.require(:book).permit(:title, :author, :publication_date, :code, :genre)
  end
end
