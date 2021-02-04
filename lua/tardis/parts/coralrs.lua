local PART={}
PART.ID = "coralrs"
PART.Name = "2005 TARDIS Rotary Switch"
PART.Model = "models/doctorwho1200/coral/rotaryswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/rotaryswitch.wav" ))
	end
end

TARDIS:AddPart(PART,e)