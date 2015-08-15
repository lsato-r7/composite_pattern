require 'spec_helper'

RSpec.describe CompositePattern::LeafField do
  describe '#value' do
    context 'when :value keyword argument is specified' do
      it 'sets the accessor to the value specified' do
        field = CompositePattern::LeafField.new value: 'is subjective'
        expect(field.value).to eql 'is subjective'
      end
    end

    context 'when :value keyword argument NOT passed with .new' do
      it 'sets the accesor to an empty string' do
        field = CompositePattern::LeafField.new
        expect(field.value).to eql ''
      end
    end
  end


  # context 'when :packet_factory keyword argument is specified' do
  #   it 'sets the accessor to the value specified' do
  #     field = CompositePattern::LeafField.new packet_factory: 'sounds fun'
  #     expect(field.packet_factory).to eql 'sounds fun'
  #   end
  # end

  # context 'when :packet_factory keyword argument NOT passed with .new' do
  #   it 'sets the accesor to BinData::Struct' do
  #     field = CompositePattern::LeafField.new
  #     expect(field.packet_factory).to eql BinData::Struct
  #   end
  # end
end
