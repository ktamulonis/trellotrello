class CardsController < ApplicationController
  # before_action :set_board
  # before_action :set_list
  before_action :authenticate_user!
  
  
  def create
    @card = Card.new card_params
    @card.user = current_user

    @list = List.find(params[:card][:list_id])
    @board = Board.find(params[:card][:board_id])

    @card.list = @list
    @card.board = @board

    if @card.save
      redirect_to @board
    else
      flash[:error] = @list.errors.full_messages
      redirect_to @board
    end
  end

  def edit
  end 

  def update
    @card.update(card_params) 

    redirect_to @board
  end 


  def destroy
    @card.destroy

    redirect_to @board
  end


  private

  def card_params
    params.required(:card).permit(:title, :description)
  end

  def set_list
  	@list = List.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id]) 
  end
end
