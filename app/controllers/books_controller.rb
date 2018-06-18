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

  def show
    @book = Book.find(params[:id])
  end

  def shelf
    @books = current_user.books
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :publication_date, :code, :genre)
  end
end
