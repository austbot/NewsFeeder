class PostSerializer < ActiveModel::Serializer
  attributes  :content, :type
  belongs_to :user
  has_many :comments

  def type
    "Post"
  end
end
