class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :category, :date, :amount
end
