class BooksController < ApplicationController
 
  # 新規作成(画面内)
  def new
  @book = Book.new
  @books = Book.all
  end
  
  
  def index
    @books = Book.all
  end
  
  # 新規作成（コントローラ内)
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  def show
    @book = Book.find(params[:id])  
  end

  # 編集(edit&update)
  def edit
  end

  # ストロングパラメータ
   private

   def book_params
     params.require(:book).permit(:title, :body)
   end

# フォーム画面を表示する(get)
# フォーム(form_with)にデータを入力し、送信する(post)
# 送信内容をデータベースへ保存する(save)
# 保存した後に別のページに移動する(rediret_to)

end