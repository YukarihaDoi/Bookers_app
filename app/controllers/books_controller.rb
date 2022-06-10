class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/index'
  end
  
  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

# フォーム画面を表示する(get)
# フォーム(form_with)にデータを入力し、送信する(post)
# 送信内容をデータベースへ保存する(save)
# 保存した後に別のページに移動する(rediret_to)