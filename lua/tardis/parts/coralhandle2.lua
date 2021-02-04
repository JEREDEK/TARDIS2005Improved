local PART={}
PART.ID = "coralhandle2"
PART.Name = "2005 TARDIS Handle 2"
PART.Model = "models/doctorwho1200/coral/handle2.mdl"
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