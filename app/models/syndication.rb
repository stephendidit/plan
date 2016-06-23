class Syndication < ActiveRecord::Base

    scope :most_recent, -> (timestamp){ where(created_at: timestamp) }
    scope :slides, -> { where(name: 'tour_slides_descriptions.txt').where.not(body: 'Old Feed') }
    scope :urls, -> { where(name: 'tour_urls.txt').where.not(body: 'Old Feed') }

end
