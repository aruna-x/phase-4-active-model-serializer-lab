class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  belongs_to :author, serializer: PostAuthorSerializer

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
