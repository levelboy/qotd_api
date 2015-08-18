require 'spec_helper'

RSpec.describe QuotesAPI, type: :controller do
  describe "GET '/today'" do
    let!(:code_smells) { JSON.parse(File.read('./resources/code_smells.json')) }

    subject { get '/today'}

    context 'when we are on the first day of the year' do
      before do
        Timecop.freeze(Date.new(2015, 1, 1))
      end

      after do
        Timecop.return
      end

      it 'returns the first code smell in the file' do
        expect(JSON.parse(subject.body)).to eq code_smells[1]
      end
    end

    context 'when we are on the second day of the year' do
      before do
        Timecop.freeze(Date.new(2015, 1, 30))
      end

      after do
        Timecop.return
      end

      it 'returns the last code smell in the file' do
        expect(JSON.parse(subject.body)).to eq code_smells[0]
      end

    end
  end
end
