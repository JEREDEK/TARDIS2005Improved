local PART={}
PART.ID = "coralpump2"
PART.Name = "2005 TARDIS Pump 2"
PART.Model = "models/doctorwho1200/coral/pump2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.4

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/pump3.wav" ))
	end
end

TARDIS:AddPart(PART,e)