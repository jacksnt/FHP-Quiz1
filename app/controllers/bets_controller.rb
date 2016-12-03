class BetsController < ApplicationController
  def index
    @bets = Bet.all
  end

  def new
    @bet = Bet.new
  end

  def create
    Bet.create(bet_params)
    redirect_to bets_path
  end

  private

  def bet_params
    params.require(:bet).permit(:bet, :amount, :party, :status)
  end
end
