class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

  validates :checkin, presence: true
  validates :checkout, presence: true

  #validates that you cannot make a reservation on your own listing

  #validates that a listing is available at checkin before making reservation 
  before_save :reservation_creation

  #validates that listing is available at checkout before making reservation
  before_save :reservation_creation


  private 
    def reservation_creation 

    end 
end
