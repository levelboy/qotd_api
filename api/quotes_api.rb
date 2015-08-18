require 'grape'
require 'json'

class QuotesAPI < Grape::API
  format :json

  get :today do
    {
      id: "4",
      quote: "Listening is a magnetic and strange thing, a creative force. The friends who listen to us are the ones we move toward. When we are listened to, it creates us, makes us unfold and expand.",
      author: "Karl A. Menniger",
      date: "04/01/2015"
    }
  end
end
