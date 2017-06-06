require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  # get '/hello' do
  #   "Hello World!"
  # end
  #
  # # This is a sample dynamic route.
  # get "/hello/:name" do
  #   @user_name = params[:name]
  #   "Hello #{@user_name}!"
  # end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end
  # A dynamic route starting with /multiply that accepts two params (num1 and num2) and returns the product of the two numbers.

  get "/multiply/:num1/:num2" do
    @multiply = params[:num1].to_i * params[:num2].to_i
    "#{@multiply}"
  end

end
#
# get '/medicines/:id' do
#   @medicine = all_the_medicines.select do |medicine|
#     medicine.id == params[:id]
#   end.first
#   erb :'/medicines/show.html'
# end
