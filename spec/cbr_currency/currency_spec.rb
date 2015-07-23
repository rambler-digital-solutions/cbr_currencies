require 'spec_helper'

RSpec.describe CbrCurrency::Currency do
  let(:currency) { CbrCurrency::Currency.new(params) }

  describe '.new' do
    subject { currency }

    context 'when correct params passed' do
      context 'with full params' do
        let(:params) { { code: 'EUR', cost: '62,60', title: 'Евро', amount: '2', date: Date.today.to_s  } }

        it { expect(subject.code).to be_a_kind_of Symbol }
        it { expect(subject.rate).to eq 31.3 }
      end

      context 'without amount' do
        let(:params) { { code: 'EUR', cost: '62,60', title: 'Евро', date: Date.today.to_s  } }

        it { expect(subject.rate).to eq 62.60 }
      end
    end

    context 'with incorrect params' do
      context 'without date' do
        let(:params) { { code: 'EUR', cost: '62,60', title: 'Евро' } }

        it { expect {subject}.to raise_error(ArgumentError)  }
      end

      context 'with no date passed' do
        let(:params) { { code: 'EUR', cost: '62,60', title: 'Евро' } }

        it { expect {subject}.to raise_error(ArgumentError)  }
      end

      context 'with date is nil' do
        let(:params) { { code: 'EUR', cost: '62,60', title: 'Евро', date: nil } }

        it { expect {subject}.to raise_error(ArgumentError)  }
      end
    end
  end
end
