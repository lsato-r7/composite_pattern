class CompositePattern::CompositeField < CompositePattern::Field
  attr_accessor :sub_fields

  def initialize(n_bits: nil)
    super(n_bits: n_bits)
    @sub_fields = []
  end

  def add_field(field:)
    sub_fields << field
  end

  def build
    string = ''
    @sub_fields.each { |f| string += f.build }
    string
  end
end
