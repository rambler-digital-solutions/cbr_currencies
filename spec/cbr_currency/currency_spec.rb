require 'spec_helper'

RSpec.describe CbrCurrency::Currency do
  let(:params) { { char_code: 'EUR', value: '62,60', title: 'Евро', nominal: '2' } }
  let(:currency) { CbrCurrency::Currency.new(params) }

  describe '.new' do
    subject { currency }

    it { expect(subject.char_code).to be_a_kind_of Symbol }
    it { expect(subject.value).to be_a_kind_of Float }
    it { expect(subject.value).to eq 31.3 }
  end
end
