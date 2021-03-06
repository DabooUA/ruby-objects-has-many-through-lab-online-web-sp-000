class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map{|appointment| appointment.patient}

  end

end
