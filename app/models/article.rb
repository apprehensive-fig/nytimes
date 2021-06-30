class Article < ApplicationRecord
  require 'json'
  require 'rest-client'

  API_KEY = ENV['NYTIMES_API_KEY']
  response = RestClient.get("https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=#{API_KEY}")

  @articles = JSON.parse(response)
end
