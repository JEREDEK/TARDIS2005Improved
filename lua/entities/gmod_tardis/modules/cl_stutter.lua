    -- Stutter  function
    -- Ah yes, the stutter function. The legendary option, the heart and soul of this addon,
    -- The one option that was added first, gave me the most BS, and lasted all the way to this day.
ENT:AddHook("DataChanged", "stutter", function(self,k,v)
    if not self.metadata.ID == "coralImp" then return end
    if k=="stutter" then
        if v then
            self.metadata.Exterior.Light.color = Color(255,150,20)
            self.metadata.Exterior.Teleport.SequenceSpeed = 0.6
            self.metadata.Exterior.Sounds.Teleport.demat = "doctorwho1200/coral/demat_stut.wav"
            self.metadata.Exterior.Sounds.FlightLoop = "doctorwho1200/coral/flight_loop_stut.wav"
            self.metadata.Exterior.Sounds.Teleport.mat = "doctorwho1200/coral/mat_stut.wav"
            if self.interior then
                self.interior.metadata.Interior.Light.color = Color(255,0,0)
                self.interior.metadata.Interior.Lights.seclight.color = Color(255,0,0)
                self.interior.metadata.Interior.Lights.seclight2.color = Color(255,0,0)
                self.interior.metadata.Interior.Sounds.Teleport.demat = "doctorwho1200/coral/demat_int_stut.wav"
                self.interior.metadata.Interior.Sounds.FlightLoop = "doctorwho1200/coral/flight_loop_stut.wav"
                self.interior.metadata.Interior.Sounds.Teleport.mat = "doctorwho1200/coral/mat_int_stut.wav"
            end
        else
            self.metadata.Exterior.Light.color = Color(255,240,160)
            self.metadata.Exterior.Teleport.SequenceSpeed = 0.85
            self.metadata.Exterior.Sounds.Teleport.demat = "doctorwho1200/coral/demat.wav"
            self.metadata.Exterior.Sounds.FlightLoop = "doctorwho1200/coral/flight_loop.wav"
            self.metadata.Exterior.Sounds.Teleport.mat = "doctorwho1200/coral/mat.wav"
            if self.interior then
                self.interior.metadata.Interior.Light.color = Color(10,150,70)
                self.interior.metadata.Interior.Lights.seclight.color = Color(200,150,0)
                self.interior.metadata.Interior.Lights.seclight2.color = Color(200,150,0)
                self.interior.metadata.Interior.Sounds.Teleport.demat = "doctorwho1200/coral/demat_int.wav"
                self.interior.metadata.Interior.Sounds.FlightLoop = "doctorwho1200/coral/flight_loop_int.wav"
                self.interior.metadata.Interior.Sounds.Teleport.mat = "doctorwho1200/coral/mat_int.wav"
            end
        end
        -- change sounds and lights accordingly
    end
end)