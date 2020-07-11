class Doctor

  attr_accessor :date

  @@all = []

  def initialize(name)
    @date = date
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)

  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map{|appointment| appointment.patient}

  end

end
