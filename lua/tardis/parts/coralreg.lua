local PART={}
PART.ID = "coralreg"
PART.Name = "2005 TARDIS Regulators"
PART.Model = "models/doctorwho1200/coral/regulators.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 1

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/regulators.wav" ))
	end
end

TARDIS:AddPart(PART,e)