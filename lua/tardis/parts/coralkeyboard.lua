local PART={}
PART.ID = "coralkeyboard"
PART.Name = "2005 TARDIS Keyboard"
PART.Model = "models/doctorwho1200/coral/keyboard.mdl"
PART.AutoSetup = true
PART.Collision = true

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/keyboard.wav" ))
	end
end

TARDIS:AddPart(PART,e)