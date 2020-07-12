class Doctor

attr_accessor :name

 @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end



  def new_appointment(date,patient)
    Appointment.new(self,patient,date)

  end

  def self.appointments
   Appointment.all.select{|aa| aa.doctor == self}
 end

 def patients
   appointments.collect{|appointment| appointment.patient}
 end


  def self.all
    @@all
  end

end
