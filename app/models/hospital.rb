class Hospital < ApplicationRecord
	# belongs_to :owner, class_name: 'User'
  has_many :free_beds

	validates :name, presence: true
	validates :address, presence: true
	validates :status, presence: true, inclusion: { in: ['enabled', 'disabled'] }
	# accepts_nested_attributes_for :free_beds, allow_destroy: true

	geocoded_by :address
	after_validation :geocode, if: :will_save_change_to_address?
end
