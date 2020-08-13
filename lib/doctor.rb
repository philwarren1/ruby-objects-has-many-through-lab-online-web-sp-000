class Doctor
  
  attr_accessor :patient, :appointments

@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
end

def save
  @@all << @name
end

def new_appointment(date, patient)
     @patient = patient
     appointment = Appointment.new(patient, date, self)
     @appointments << appointment
     appointment
  end
  
 def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
  

end