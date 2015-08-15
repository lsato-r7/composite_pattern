require 'spec_helper'

module CompositePattern
RSpec.describe LeafField do
  describe '#value' do
    context 'when :value keyword argument is specified' do
      it 'sets the accessor to the value specified' do
        field = LeafField.new value: 'is subjective'
        expect(field.value).to eql 'is subjective'
      end
    end

    context 'when :value keyword argument NOT passed with .new' do
      it 'sets the accesor to an empty string' do
        field = LeafField.new
        expect(field.value).to eql ''
      end
    end
  end

  describe '#build' do
    it 'builds a binary string' do
      structure_factory = StructureFactory.for field_type: :bit32, field_name: 'foo'
      field = LeafField.new n_bits: 32, value: '\xFFSMB'

      ap field.build.class
      ap '\xFFSMB'.class
    end
  end

  describe '#structure_factory' do
    it 'TODO: do we need to check anything here?'
  end

end
end
