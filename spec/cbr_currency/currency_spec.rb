require 'spec_helper'

RSpec.describe CbrCurrency::Currency do
  let(:params) { { char_code: 'EUR', value: '65,50', title: 'Евро', nominal: '1' } }
  let(:currency) { CbrCurrency::Currency.new(params) }

  describe '.new' do
    subject { currency }

    it { expect(subject.char_code).to be_a_kind_of Symbol }
    it { expect(subject.value).to be_a_kind_of Float }
    it { expect(subject.nominal).to be_a_kind_of Integer }
  end
end
