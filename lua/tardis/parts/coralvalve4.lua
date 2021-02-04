local PART={}
PART.ID = "coralvalve4"
PART.Name = "2005 TARDIS Valve 4"
PART.Model = "models/doctorwho1200/coral/valve4.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/valve.wav" ))
	end
end

TARDIS:AddPart(PART,e)