local PART={}
PART.ID = "coralball"
PART.Name = "2005 TARDIS Ball"
PART.Model = "models/doctorwho1200/coral/ball.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.7

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/ball.wav" ))
	end
end

TARDIS:AddPart(PART,e)