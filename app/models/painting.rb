class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.total_price
    self.all.inject(0) {|memo, painting| memo + painting.price}
  end

end
