class AuthorContentSerializer < ActiveModel::Serializer
  attributes :content

  def content
    "#{self.object.content[0..39]}..."
  end
end
