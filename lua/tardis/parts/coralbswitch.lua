local PART={}
PART.ID = "coralbswitch"
PART.Name = "2005 TARDIS Blue Switch"
PART.Model = "models/doctorwho1200/coral/blueswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 7

if SERVER then
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/plasticswitch.wav" ))
		if ( self:GetOn() ) then
			self:SetMaterial("$basetexture","models/doctorwho1200/coral/plasticswitch")
		else
			self:SetMaterial("$basetexture","models/doctorwho1200/coral/plasticswitchon")
		end
	end
end

TARDIS:AddPart(PART,e)