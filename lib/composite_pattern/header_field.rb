require 'composite_pattern/constant'

class CompositePattern::HeaderField < CompositePattern::CompositeField
  def initialize(n_bits: nil)
    super(n_bits: n_bits)

    %w[
      protocol
    ].each do |name|
      add_field(field: CompositePattern::LeafField.new(n_bits: 32, field_name: name, value: protocol_constant))
    end
  end

  def field_type
    "bit#{n_bits}".to_sym
  end

  def protocol_constant
    CompositePattern::CONSTANT[:PROTOCOL][:VALUE]
  end
end
