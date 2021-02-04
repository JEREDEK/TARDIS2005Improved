local PART={}
PART.ID = "coralbutton"
PART.Name = "2005 TARDIS Button"
PART.Model = "models/doctorwho1200/coral/button.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use(ply)
		self:EmitSound( Sound( "doctorwho1200/coral/button.wav" ))
        self.exterior:FastReturnJer(ply)
	end
end

TARDIS:AddPart(PART,e)