class CompositePattern::LeafField < CompositePattern::Field
  attr_accessor :value

  def initialize(n_bits: nil, value: nil)
    super(n_bits: n_bits)
    @value = value
  end

  def build
    value
  end
end
