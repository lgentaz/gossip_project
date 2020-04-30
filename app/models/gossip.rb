class Gossip < ApplicationRecord
    belongs_to :user
    has_many :goss_tags, dependent: :destroy
    has_many :tags, through: :goss_tags

end
