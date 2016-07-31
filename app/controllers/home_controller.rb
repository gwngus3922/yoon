class HomeController < ApplicationController
  def index
    @index = Letter.all

   end
 
  def room
    @room = Letter.all
  end
  def create
            unless params[:username]!="0415" ||params[:title].blank?||params[:contents].blank?
    new_letter=Letter.new
    new_letter.username=params[:username]
    new_letter.title=params[:title]
    new_letter.contents=params[:contents]
    new_letter.save
     end
     redirect_to "/home/board"
end
  def board
    @board = Letter.all
end
def destroy
    unless params[:password1]!="0415"
 @one_post = Letter.find(params[:post_id])
 @one_post.destroy
 end
 redirect_to "/home/board"
end
end