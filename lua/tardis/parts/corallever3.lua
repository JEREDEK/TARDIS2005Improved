local PART={}
PART.ID = "corallever3"
PART.Name = "2005 TARDIS Lever 3"
PART.Model = "models/doctorwho1200/coral/lever3.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

if SERVER then
	function PART:Use()
		if self.exterior:GetData("power-state", false) then
			
		else
			self.exterior:ToggleFloat()
		end
		if ( self:GetOn() ) then
			self:EmitSound( Sound( "doctorwho1200/coral/lever3off.wav" ))
		else
			self:EmitSound( Sound( "doctorwho1200/coral/lever3on.wav" ))
		end
	end
end

TARDIS:AddPart(PART,e)