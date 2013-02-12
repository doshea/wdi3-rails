class HomeController < ApplicationController
  def index
  end

  def num_page
    @num = params['page']
    render 'num'
  end

  def num_page2
    render 'num'
  end
end