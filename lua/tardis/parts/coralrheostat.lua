local PART={}
PART.ID = "coralrheostat"
PART.Name = "2005 TARDIS Rheostat"
PART.Model = "models/doctorwho1200/coral/rheostat.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.55

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/rheostat.wav" ))
	end
end

TARDIS:AddPart(PART,e)

-- it's the goDDAMN RHEOSTAT!!!!