class User < ApplicationRecord
    has_many :subscriptions
    validates_uniqueness_of :email
    # has_secure_password
end
