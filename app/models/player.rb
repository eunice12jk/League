class Player < ApplicationRecord
	validates :First_name, :Last_name, presence: true
end
