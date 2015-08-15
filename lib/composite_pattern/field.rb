class CompositePattern::Field
  attr_accessor :n_bits

  def initialize(n_bits: 0)
    @n_bits = n_bits
  end

  def build
    raise StandardError, 'Method build not implemented for abstract class'
  end
end
