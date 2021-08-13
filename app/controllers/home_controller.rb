class HomeController < ApplicationController
def index
  require "net/http"
  require "json"

  @url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=10&cmc_pro_api_key=9cf6fc41-c5ee-438f-ba4e-3ca8321bb932"
  @uri = URI(@url)
  @response = Net::HTTP.get(@uri)
  @coins = JSON.parse(@response)
end 

def about
end

end