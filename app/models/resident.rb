class Resident < ActiveRecord::Base
    has_many :activities
end