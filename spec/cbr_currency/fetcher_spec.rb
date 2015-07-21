require 'spec_helper'

RSpec.describe CbrCurrency::Fetcher do

  describe '.fetch' do
    subject { CbrCurrency::Fetcher.call }

    context 'when cbr response is ok' do
      let(:response) { { body: load_fixture('cbr_response.xml') } }
      before { stub_request(:get, /.*/).to_return(response) }

      it { is_expected.to be_a_kind_of Array }
    end

    context 'when cbr request timeout' do
      before { stub_request(:get, /.*/).to_raise(Timeout::Error) }

      it { is_expected.to be nil }
    end
  end
end
