class FriendSerializer < ActiveModel::Serializer
  attributes :id, :name, :emails, :phones
end
