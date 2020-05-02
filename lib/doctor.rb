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
     resulting_array = []
     Appointment.all.each do |appointment|
       if appointment.doctor == self
         resulting_array << appointment
       end
     end
     resulting_array
   end

 def patients
   appointments.map{|appointment| appointment.patient}
 end


  def self.all
    @@all
  end

end
