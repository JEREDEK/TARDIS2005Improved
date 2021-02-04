local PART={}
PART.ID = "coralcrank2"
PART.Name = "2005 TARDIS Crank 2"
PART.Model = "models/doctorwho1200/coral/crank2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 2

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/crank2.wav" ))
	end
end

TARDIS:AddPart(PART,e)