class CalcController < ApplicationController
  def calculate
    case params['operator']
    when '+'
      @result = params['x'].to_i + params['y'].to_i
    when '-'
      @result = params['x'].to_i - params['y'].to_i
    else
      @result = nil
    end
  end

end