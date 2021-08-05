class Artis < ApplicationRecord
validates :title, presence: true, length: {minimum:2, maximum: 10}
validates :description, presence: true, length: {minimum: 10, maximum: 500}
end