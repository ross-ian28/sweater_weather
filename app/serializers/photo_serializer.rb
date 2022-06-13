class PhotoSerializer
  include JSONAPI::Serializer
  attributes :id, :picture
end
