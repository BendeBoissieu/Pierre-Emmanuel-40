class CardsController < ApplicationController
  def index
    @cards=Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def edit
    @card = Card.find(params[:id])
  end

  def create
    @cart = Cart.new(card_params)
      if @card.save
        @card_count = @cards.size
        redirect_to = cards_path
      else
        rende :new
  end

  private

  def card_params
    params.require(:card).permit(:title, :content, :name)
  end
end

