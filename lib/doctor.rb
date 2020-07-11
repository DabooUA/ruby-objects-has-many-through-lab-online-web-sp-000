class Doctor

  attr_accessor :date

  @@all = []

  def initialize

    save
  end

  def self.all
    @@all
  end

  def save
    @all << self
  end

  def new_appointment(date, Patient)
    Doctor.new()

  end

  def appointments

  end

end
