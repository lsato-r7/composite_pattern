module CompositePattern
class  LeafField < Field
  attr_reader :value, :structure_factory

  def initialize( n_bits: 0, value: '', structure_factory: nil)
    super(n_bits: n_bits)
    @value               = value
    @structure_factory ||= StructureFactory.for(field_type: :bit32,
                                                field_name: '')
  end

  def build
    structure_factory.read value
    structure_factory.to_binary_s
  end

  def field_type
    "bit#{n_bits}".to_sym
  end
end
end
