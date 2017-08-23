class UserSerializer < ActiveModel::Serializer
  attributes  :name, :type
  def type
    "User"
  end
end
