require_relative 'data_mapper_setup'

class Tag

  include DataMapper::Resource

  property :id,     Serial
  property :tag,    String
  belongs_to :link, required: true

end