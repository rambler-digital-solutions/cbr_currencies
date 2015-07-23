require 'spec_helper'

RSpec.describe CbrCurrency::Fetcher do

  describe '.fetch' do
    let(:fetcher) { CbrCurrency::Fetcher.new }
    subject { fetcher.call }
    before { stub_request(:get, /.*/).to_return(response) }

    context 'when response is ok' do
      context 'and xml structure is ok' do
        let(:response) { { body: load_fixture('cbr_response.xml') } }

        it { is_expected.not_to be_empty }
      end

      context 'and xml has no date' do
        let(:response) { { body: load_fixture('cbr_no_date_response.xml') } }

        it { expect { subject }.to raise_error(ArgumentError) }
      end
    end
  end
end
