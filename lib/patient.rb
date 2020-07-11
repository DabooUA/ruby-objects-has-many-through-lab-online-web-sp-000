class Patient

  attr_accessor :name, :appointment, :doctor

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

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|appointment| appointment.patientd == self}
  end

  def doctors
    appointments.map{|appointment| appointment.doctor}
  end

end
