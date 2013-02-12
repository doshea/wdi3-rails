class StockController < ApplicationController

  def index
    if params[:symbol]
      @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:symbol])[params[:symbol]].lastTrade
    end
  end

  def search_stock
    url = "/stock/#{params[:symbol]}"
    redirect_to(url)
  end

end