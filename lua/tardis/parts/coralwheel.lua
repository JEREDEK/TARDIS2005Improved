local PART={}
PART.ID = "coralwheel"
PART.Name = "2005 TARDIS Wheel"
PART.Model = "models/doctorwho1200/coral/wheel.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 1.2

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/wheel.wav" ))
	end
end

TARDIS:AddPart(PART,e)