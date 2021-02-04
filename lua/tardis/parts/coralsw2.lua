local PART={}
PART.ID = "coralsw2"
PART.Name = "2005 TARDIS Small Wheel 2"
PART.Model = "models/doctorwho1200/coral/smallwheel.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 2

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/smallwheel.wav" ))
	end
end

TARDIS:AddPart(PART,e)