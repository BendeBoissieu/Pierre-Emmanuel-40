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
    @card = Card.new(card_params)

    @card.save
    redirect_to cards_path

  end

  private

  def card_params
    params.require(:card).permit(:title, :content, :name, :avatar, :photos, :pictures)
  end
end

