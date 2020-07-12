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

  def appointments
   Appointment.all.select{|aa| aa.doctor}
 end

 def patients
   appointments.collect{|appointment| appointment.date}
 end


  def self.all
    @@all
  end

end
