local PART={}
PART.ID = "coralswitch"
PART.Name = "2005 TARDIS Switch"
PART.Model = "models/doctorwho1200/coral/switch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 5

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/toggle.wav" ))
        self.exterior:TogglePowerJer()
	end
end

TARDIS:AddPart(PART,e)