require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # get  "/goodbye/:name" do
  #   @user_name = params[:name]
  #   "Goodbye, #{@user_name}."
  # end

  get "/reversename/:name" do 
    @reversename = params[:name].reverse
    "#{@reversename}"
 end


#  get  "/multiply/:num1/:num2" do
#   @multiply = params[:num1].to_i*params[:num2].to_i
#  "#{@multiply}"
# end

 get "/square/:number" do
  @square = params[:number].to_i*params[:number].to_i
  "#{@square}"
  end 




 get "/say/:number/:phrase" do 
 say = say.to_s
  @number = params[:number].to_i
  @phrase = params[:phrase]
  @number.times {say +="#{@phrase}\n"}
  say
   end


  get  "/say/:word1/:word2/:word3/:word4/:word5" do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end


get "/:operation/:number1/:number2" do
  @number_1 = params[:number1].to_i
  @number_2 = params[:number2].to_i
  if params[:operation] == "add"
    "#{@number_1+@number_2}"
  elsif params[:operation] == "subtract"
    "#{@number_1-@number_2}"
  elsif params[:operation] == "multiply"
    "#{@number_1*@number_2}"
  elsif params[:operation] == "divide"
    "#{@number_1/@number_2}"
  end
 end
end

