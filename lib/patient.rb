class Patient

  attr_accessor :name, :appointment, :doctor

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
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def doctors
    appointments.map{|appointment| appointment.doctor}
  end

end
