local PART={}
PART.ID = "coralkeyboard2"
PART.Name = "2005 TARDIS Keyboard 2"
PART.Model = "models/doctorwho1200/coral/keyboard2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 2

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/keyboard2.wav" ))
		self.exterior:ToggleLocked()
	end
end

TARDIS:AddPart(PART,e)