require 'spec_helper'

RSpec.describe CompositePattern::CompositeField do
  describe '#n_bits' do
    context 'when n_bits is NOT specified for .new' do
      it 'n_bits is set to nil' do
        composite_field = CompositePattern::CompositeField.new
        expect(composite_field.n_bits).to be_nil
      end
    end

    context 'when n_bits is specified for .new' do
      it 'n_bits is set to nil' do
        composite_field = CompositePattern::CompositeField.new(n_bits: 64)
        expect(composite_field.n_bits).to eql 64
      end
    end
  end
end
