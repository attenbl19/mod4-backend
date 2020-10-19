class UserSubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :subscription_id
end
