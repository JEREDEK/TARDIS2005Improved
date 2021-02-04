local PART={}
PART.ID = "coralbell"
PART.Name = "2005 TARDIS Bell"
PART.Model = "models/doctorwho1200/coral/bell.mdl"
PART.AutoSetup = true
PART.Collision = true

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/bell.wav" )) -- ding
	end
end

TARDIS:AddPart(PART,e)