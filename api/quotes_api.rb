require 'grape'
require 'json'

class QuotesAPI < Grape::API
  format :json

  get :today do
    {
      id: "4",
      quote: "Nu mai merge!",
      author: "Karl A. Menniger",
      date: "04/01/2015"
    }
  end
end
