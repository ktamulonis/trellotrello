class ListsController < ApplicationController
  before_action :set_board
  before_action :set_list, only: [:edit, :update, :destroy]
  before_action :authenticate_user!


  def create
    @list = @board.lists.new list_params
    @list.user = current_user
    if @list.save
      redirect_to @board
    else
      flash[:error] = @list.errors.full_messages
      redirect_to @board
    end
  end

  def edit
  end 

  def update
    @list.update(list_params) 

    redirect_to @board
  end 


  def destroy
    @list.destroy

    redirect_to @board
  end


  private

  def list_params
    params.required(:list).permit(:title)
  end

  def set_list
  	@list = List.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id]) 
  end
end
