local PART={}
PART.ID = "coralpump"
PART.Name = "2005 TARDIS Pump"
PART.Model = "models/doctorwho1200/coral/pump.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.4

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/pump4.wav" ))
	end
end

TARDIS:AddPart(PART,e)