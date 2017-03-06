class Musicfestivals::Festival

  attr_accessor :name, :location, :dates

  def self.display_all
    #will return instances of festivals
  #  puts <<-DOC.gsub /^\s*/, ''
  #  1. Musink
  #  2. Starry Nites
  #  3. Beyond Wonderland
  #  DOC
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


end
