local PART={}
PART.ID = "coralphone"
PART.Name = "2005 TARDIS Phone"
PART.Model = "models/doctorwho1200/coral/phone.mdl"
PART.AutoSetup = true
PART.Collision = true

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/phone.wav" ))
	end
end

TARDIS:AddPart(PART,e)