require 'grape'
require 'json'

class QuotesAPI < Grape::API
  format :json

  get :today do
  end
end
