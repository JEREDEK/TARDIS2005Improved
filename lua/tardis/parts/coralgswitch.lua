local PART={}
PART.ID = "coralgswitch"
PART.Name = "2005 TARDIS Green Switch"
PART.Model = "models/doctorwho1200/coral/greenswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 7

if SERVER then
	function PART:Use(ply)
		self:EmitSound( Sound( "doctorwho1200/coral/plasticswitch.wav" ))
		if ( self:GetOn() ) then
			self:SetMaterial("$basetexture","models/doctorwho1200/coral/plasticswitch")
			self.exterior:SetHADS(false)
			ply:ChatPrint("Disabled HADS")
		else
			self:SetMaterial("$basetexture","models/doctorwho1200/coral/plasticswitchon")
			self.exterior:SetHADS(true)
			ply:ChatPrint("Enabled HADS")
		end
	end
end

TARDIS:AddPart(PART,e)