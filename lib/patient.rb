class Patient


  @@all = []

  def initialize

    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def new_appointment(date, doctor)

  end

end
