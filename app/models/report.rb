class Report < ApplicationRecord
    has_many :comments, dependent: :destroy
end
