class BoardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_board, only: [:show, :edit, :update, :destroy]


  respond_to :html, :json, :js

  def index
    @boards = current_user.boards.all
  end 

  def show
  end 

  def new 
    @board = Board.new
  end 

  def edit
  end 

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id
    @board.save
    respond_with(@board)
  end 

  def update
    @board.update(board_params)
    flash[:notice] = 'Board was successfully updated.'
    respond_with(@board)
  end 

  def destroy
    @board.destroy
    redirect_to boards_url, notice: 'Board was successfully destroyed.'
  end 

  private
    def set_board
      @board = Board.find(params[:id])
    end 

    def board_params
      params.require(:board).permit(:title, :user_id) 
    end 
end
 
