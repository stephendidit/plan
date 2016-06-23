class SyndicationController < ApplicationController
  def initialize
    @syndications = Syndication.all
  end
  
  def tour_urls
    render './syndication/tour_urls.txt.erb', layout: false, content_type: 'text/plain'
  end

  def tour_slides_descriptions
    render './syndication/tour_slides_descriptions.txt.erb', layout: false, content_type: 'text/plain'
  end
end
