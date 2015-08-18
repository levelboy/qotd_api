require 'grape'
require 'json'

class QuotesAPI < Grape::API
  format :json

  get :today do
    json_object = JSON.parse(File.read('./resources/code_smells.json'))

    day_of_the_year = Date.today.yday()
    code_smell_id = day_of_the_year%json_object.length

    json_object[code_smell_id]
  end
end
