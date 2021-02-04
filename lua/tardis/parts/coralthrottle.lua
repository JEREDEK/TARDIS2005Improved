local PART={}
PART.ID = "coralthrottle"
PART.Name = "2005 TARDIS Throttle"
PART.Model = "models/doctorwho1200/coral/throttle.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 5

if SERVER then
	function PART:Use(ply)
	self:EmitSound( Sound( "doctorwho1200/coral/throttle.wav" ))
	if (self.exterior:GetData("power-state")) then
		if ( self:GetOn() ) then
			if self.exterior:GetData("vortex") then
				self.exterior:MatJer()
			end
		else
			self.exterior:DematJer()
		end
	end
end
end

TARDIS:AddPart(PART,e)