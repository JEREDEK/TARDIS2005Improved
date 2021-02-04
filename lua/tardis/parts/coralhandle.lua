local PART={}
PART.ID = "coralhandle"
PART.Name = "2005 TARDIS Handle"
PART.Model = "models/doctorwho1200/coral/handle.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 4

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/handle.wav" ))
	end
end

TARDIS:AddPart(PART,e)