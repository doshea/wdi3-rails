class DogsController < ApplicationController
  def dogs
    #unless otherwise specific, will automatically go to assets/views/home/homepage.html.erb
  end

  def new
    redirect_to('/dogs')
  end

  def faq
    render 'home/faq'
  end

  def faq2
    render 'faq'
  end

end