require_relative 'config/environment'

class App < Sinatra::Base
  
  
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do 
    @sqr = params[:number].to_i * params[:number].to_i 
    "#{@sqr.to_s}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrs = params[:phrase]
    x = "#{@phrs * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
 
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end