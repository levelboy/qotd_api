require 'spec_helper'

RSpec.describe QuotesAPI, type: :controller do
  describe "GET '/today'" do

    subject { get 'today.json' }

    it 'is true' do
      expect(JSON.parse(subject.body)).to eq(JSON.parse({
        :id => "4",
        :quote => "Listening is a magnetic and strange thing, a creative force. The friends who listen to us are the ones we move toward. When we are listened to, it creates us, makes us unfold and expand.",
        :author => "Karl A. Menniger",
        :date => "04/01/2015"
      }.to_json))
    end
  end
end
