class CompositePattern::ProtocolField < CompositePattern::Field
  attr_reader :field_name
  attr_reader :value
  attr_reader :packet_factory

  def initialize( field_name:     '',
                  n_bits:         nil,
                  value:          nil,
                  packet_factory: nil)

    super(n_bits: n_bits)

    @packet_factory = packet_factory ||= BinData::Struct
    @value          = value
    self
  end

  def build

    factory = packet_factory.new(endian: :little,
                                 fields: [[field_type, field_name]])

    inst = factory.read value
    inst.to_binary_s
  end

  def field_type
    "bit#{n_bits}".to_sym
  end
end
