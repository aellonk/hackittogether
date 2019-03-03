class Trip < ApplicationRecord
  # t.string :location
  # t.string :category
  # t.string :title
  # t.string :description
  require "nokogiri"
  require "open-uri"

  def self.get_trips(destination)
      # destination = 'north-america';
      trips = []
      trip = {}
      html = 'https://www.volunteerhq.org/volunteer-abroad-programs/volunteer-in-' + destination
      doc = Nokogiri::HTML(open(html));
      doc.css("div.col-md-10.order-md-2.pl-lg-0").css("div.row").each do |des|
        link = des.css("div.card.card-shadowed.card-destination")
        descriptionCSS = des.css("div div.col-4.summary-icon  div")
        descriptions = []
        descriptionCSS.each.with_index do |a, i| 
          descriptions.push(a.text)
        end
        trip = {
            :title => link.css("div.card-title").css("a div.media-body").css(".media-heading")[0].text,
            :location => link.css("div.card-title").css("a div.media-body").css(".media-sub-heading")[0].text.strip,
            :img => link.css("img.hero-image").attr('src').value,
            :description =>  descriptions[0..2],
            :price => des.css(".card-body div.mb-3")[3].text.split.join(" "),
            :category => des.css(".card-body div.mb-3")[2].text.split[0]
        }
        trips << trip
      end
      trips
  end
end
