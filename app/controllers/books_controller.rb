class BooksController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
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