class Appointment


  @@all = []

  def initialize("date", patient, doctor)

    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
