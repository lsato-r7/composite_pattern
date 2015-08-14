class CompositePattern::HeaderField < CompositePattern::CompositeField
  def initialize(n_bits: nil)
    super(n_bits: n_bits)
    %w[
      protocol
      command
      status
      flags
      flags2
      PIDHigh
      SecurityFeatures
    ].each do |name|
      add_field(field: CompositePattern::LeafField.new(value: name))
    end
  end
end
