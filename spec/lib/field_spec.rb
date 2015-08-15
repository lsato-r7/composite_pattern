require 'spec_helper'

RSpec.describe CompositePattern::Field do
  describe '#n_bits' do
    context 'when :n_bits keyword argument is specified' do
      it 'sets the accessor to the value specified' do
        field = CompositePattern::Field.new n_bits: 42
        expect(field.n_bits).to eql 42
      end
    end

    context ':n_bits keyword argument NOT passed with .new' do
      it 'sets the accesor to 0' do
        field = CompositePattern::Field.new
        expect(field.n_bits).to eql 0
      end
    end
  end

  describe '#n_bits=' do
    it 'sets the accesor to the given value' do
      field        = CompositePattern::Field.new
      field.n_bits = 31415
      expect(field.n_bits).to eql 31415
    end
  end

  describe '#build' do
    it 'raises an error if #build is called on Field' do
      field = CompositePattern::Field.new
      expect{field.build}.to \
        raise_error StandardError,
                    'Method build not implemented for abstract class'
    end
  end
end
