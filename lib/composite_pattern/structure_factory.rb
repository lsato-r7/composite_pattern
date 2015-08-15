module CompositePattern::StructureFactory
  class << self
    attr_accessor :endian, :field_type, :field_name

    def for(endian: :little, field_type:, field_name:)
      structure_factory = BinData::Struct.new(endian: :little,
                                              fields: [[field_type, field_name]])
      packet_structure  = structure_factory.new
    end
  end
end
