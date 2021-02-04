local PART={}
PART.ID = "corallever2"
PART.Name = "2005 TARDIS Lever 2"
PART.Model = "models/doctorwho1200/coral/lever2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 5

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/lever2.wav" ))
                local exterior=self.exterior
			self.exterior:ToggleFastRemat()
	end
end

TARDIS:AddPart(PART,e)