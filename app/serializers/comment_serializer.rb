class CommentSerializer < ActiveModel::Serializer
  attributes :content, :type
  belongs_to :user
  def type
    "Comment"
  end
end
