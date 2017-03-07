class Musicfestivals::Festival

  attr_accessor :name, :location, :dates, :url

  def self.display_all
  #scrape festival website and return festivals based on requirements
    self.scrape_festivals
  end

  def scrape_festivals
  #go to festival site, find information, scrape information, instantiate festivals
    festivals = []
    festivals << self.scrape_fest
    [festivals]
  end

  def self.scrape_fest
    doc = Nokogiri::HTML(open("https://www.musicfestivalwizard.com/festival-guide/california/"))
    binding.pry
  end

#name = doc.css(".festivaltitle").text
#location = doc.css(".festivallocation").text
#dates = doc.css(".festivaldate").text
#more info -- doc.css("h2.singlefestlisting a").attribute("href").value  ?


end
