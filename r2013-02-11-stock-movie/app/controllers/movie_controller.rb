class MovieController < ApplicationController

  def get_rating_img(rating_string)
    rating_string = 'Unrated' if (rating_string == 'N/A')
    "/assets/Rating_#{rating_string}.png"
  end

  def index
    if params[:title]
      movie_title = params[:title].split.join('+')
      url = "http://www.omdbapi.com/?t=#{movie_title}"
      html = HTTParty.get(url)
      @result = JSON(html)
      @result['rating_img'] = get_rating_img(@result['Rated'])
    end
  end

  def search_movie
    url = '/movie/'+params[:title].split.join('+')
    redirect_to(url)
  end

end

