class Artist

  attr_reader :name, :years_experience
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    # self.all.map {|artist| artist.years_experience}.sum
    self.all.inject(0) {|memo, artist| memo + artist.years_experience}
  end

  def self.most_prolific
    # self.all.inject {|memo,artist| (artist.paintings.length / artist.years_experience) > (memo.paintings.length / memo.years_experience ) ? artist : memo}
    self.all.max_by {|artist| artist.paintings.length / artist.years_experience}

  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end


end
