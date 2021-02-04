local PART={}
PART.ID = "coralsextant"
PART.Name = "2005 TARDIS Sextant"
PART.Model = "models/doctorwho1200/coral/sextant.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use(activator)
		self:EmitSound( Sound( "doctorwho1200/coral/sextant.wav" ))
		self.exterior:ToggleRepairJer()
	end
end

TARDIS:AddPart(PART,e)