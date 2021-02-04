local PART={}
PART.ID = "coralhandbrake"
PART.Name = "2005 TARDIS Handbrake"
PART.Model = "models/doctorwho1200/coral/handbrake.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 5

if SERVER then
	function PART:Use()
		self.exterior:ToggleBrake() -- see? it's so clean, and not messy, unlike the early addon
		if ( self:GetOn() ) then
			self:EmitSound( Sound( "doctorwho1200/coral/handbrakeon.wav" ))
		else
			self:EmitSound( Sound( "doctorwho1200/coral/handbrakeoff.wav" ))
		end
	end
end

TARDIS:AddPart(PART,e)