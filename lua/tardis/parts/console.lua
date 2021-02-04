-- The console

local PART={}
PART.ID = "console"
PART.Name = "The Console"
PART.AutoSetup = true
PART.Collision = true

if SERVER then	
	function PART:Initialize()
		timer.Simple(0.1, function () --wait a bit, so that there are no "missing references"
			self.exterior:SetData("stutter", true, true) 
			self.exterior:SetData("stutter", false, true) -- disable the stutter
			self.exterior:SetData("InFlight", true, true)
			self.exterior:SetData("InFlight", false, true) -- Put out the flight mode
			-- you would think that just disabling it would work,
			-- but NOOO, gmod is quirky like that
		end)
	end

	function PART:Use(ply)
		if ply:IsPlayer() and (not ply:GetTardisData("thirdperson")) and CurTime()>ply:GetTardisData("outsidecool", 0) then
			self.exterior:PlayerThirdPerson(ply,true)
		end
	end

	function PART:PhysicsCollide(colData, collider)
		self.exterior:CallHook("PhysicsCollide", colData, collider)
	end

	function PART:OnTakeDamage(dmginfo)
		if self.exterior:CallHook("ShouldTakeDamage",dmginfo)==false then return end
		self.exterior:CallHook("OnTakeDamage", dmginfo)
	end

end

TARDIS:AddPart(PART)