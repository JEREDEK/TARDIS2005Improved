local PART={}
PART.ID = "coralswitch2"
PART.Name = "2005 TARDIS Switch 2"
PART.Model = "models/doctorwho1200/coral/switch2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 4

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/toggle.wav" ))
	end
end

TARDIS:AddPart(PART,e)