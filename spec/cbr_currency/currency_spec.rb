require 'spec_helper'

RSpec.describe CbrCurrency::Currency do
  let(:currency) { CbrCurrency::Currency.new(params) }

  describe '.new' do
    subject { currency }

    context 'with correct params' do
      let(:params) { { code: 'EUR', cost: '62,60', title: 'Евро', amount: '2', date: Date.today  } }

      it { expect(subject.code).to be_a_kind_of Symbol }
      it { expect(subject.rate).to eq 31.3 }
    end
  end
end
