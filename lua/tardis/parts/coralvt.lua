local PART={}
PART.ID = "coralvt"
PART.Name = "2005 TARDIS Vector Tracker"
PART.Model = "models/doctorwho1200/coral/vectortracker.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/vectortracker.wav" ))
	end
end

TARDIS:AddPart(PART,e)