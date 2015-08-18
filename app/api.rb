module QOTD
  class API < Grape::API
    format :json

    mount ::QuotesAPI
  end
end
