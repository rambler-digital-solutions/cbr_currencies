require 'spec_helper'

RSpec.describe CbrCurrency::Configuration do
  describe "#cbr_uri=" do
    let(:uri) { "www.example.com" }
    subject { CbrCurrency::Configuration.new }
    before { subject.cbr_uri = uri }

    it { expect(subject.cbr_uri).to eq uri }
  end
end