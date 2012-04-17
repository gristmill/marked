class Document
  include MongoMapper::Document

  key :contents, String

  validates_presence_of :contents
end
