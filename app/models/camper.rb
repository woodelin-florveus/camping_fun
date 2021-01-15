class Camper < ApplicationRecord
    has_many :signups 
    has_many :activities, through: :signups

    # def all_activities
    #     self.signups.each do |signup|
    #         signup.activity_id.each do |activity|
    #             activity.name
    #         end
    #     end
    # end

end


#This is a test!#