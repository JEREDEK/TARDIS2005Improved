local PART={}
PART.ID = "coralflight"
PART.Name = "2005 TARDIS Flight Lever"
PART.Model = "models/doctorwho1200/coral/lever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use()
		self.exterior:ToggleFlight() -- Haha, TARDIS go YEET
		self:EmitSound( Sound( "doctorwho1200/coral/lever.wav" ))
	end
end

TARDIS:AddPart(PART,e)