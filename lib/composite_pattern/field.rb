class CompositePattern::Field
  attr_accessor :n_bits

  def initialize(n_bits: nil)
    @n_bits = n_bits
  end

  def build
  end
end
