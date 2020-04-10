class FreeBed < ApplicationRecord
	belongs_to :hospital

	# validates :number, inclusion: { in: 0..1000 }
end
