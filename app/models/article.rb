class Article < ApplicationRecord
  require 'json'
  require 'rest-client'

  def self.retrieve_article
    @url = "https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=#{ENV['NYTIMES_API_KEY']}"
    response = RestClient.get(@url)

    JSON.parse(response)["results"]
  end
end
