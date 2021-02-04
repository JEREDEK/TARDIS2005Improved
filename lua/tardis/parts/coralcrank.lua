local PART={}
PART.ID = "coralcrank"
PART.Name = "2005 TARDIS Crank"
PART.Model = "models/doctorwho1200/coral/crank.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.8

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/crank.wav" ))
	end
end

TARDIS:AddPart(PART,e)