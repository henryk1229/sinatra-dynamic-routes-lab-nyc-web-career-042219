require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reverse = "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    @say_array = []
    @say = "#{@number}".to_i.times do |phrase|
    @say_array << "#{@phrase}"
    end
    @say_array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @add = params[:number1].to_i + params[:number2].to_i
    @subtract = params[:number1].to_i - params[:number2].to_i
    @multiply = params[:number1].to_i * params[:number2].to_i
    @divide = params[:number1].to_i / params[:number2].to_i

    if "#{@operation}" == "add"
      "#{@add}"
    elsif "#{@operation}" == "subtract"
      "#{@subtract}"
    elsif "#{@operation}" == "multiply"
      "#{@multiply}"
    elsif "#{@operation}" == "divide"
      "#{@divide}"
    end
  end



end
