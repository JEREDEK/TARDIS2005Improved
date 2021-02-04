local PART={}
PART.ID = "corallever"
PART.Name = "2005 TARDIS Lever"
PART.Model = "models/doctorwho1200/coral/lever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use(ply)
		self:EmitSound( Sound( "doctorwho1200/coral/lever.wav" ))
		local result = self.exterior:TogglePhyslock() or false
        ply:ChatPrint("Physics Lock ".. (result and "engaged" or "disengaged"))
	end
end

TARDIS:AddPart(PART,e)