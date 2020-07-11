class Doctor

  attr_accessor :date

  @@all = []

  def initialize(date)
    @date = date
    save
  end

  def self.all
    @@all
  end

  def save
    @all << self
  end

  def new_appointment(date, Patient)
    Doctor.new(date, self, Patient)

  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def patients

  end

end
