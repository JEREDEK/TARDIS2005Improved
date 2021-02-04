local PART={}
PART.ID = "coralreg2"
PART.Name = "2005 TARDIS Regulators 2"
PART.Model = "models/doctorwho1200/coral/regulators2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.9

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/regulators.wav" ))
	end
end

TARDIS:AddPart(PART,e)