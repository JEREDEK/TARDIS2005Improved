local PART={}
PART.ID = "coralbswitch2"
PART.Name = "2005 TARDIS Blue Switch 2"
PART.Model = "models/doctorwho1200/coral/blueswitch2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 7

if SERVER then
	function PART:Initialize()
        self:SetUseType( SIMPLE_USE )
	end
	function PART:Use()
		self:EmitSound( Sound( "doctorwho1200/coral/plasticswitch.wav" ))
		if ( self:GetOn() ) then
			self:SetMaterial("$basetexture","models/doctorwho1200/coral/plasticswitch")
                self.exterior:ToggleDoor()
		else
			self:SetMaterial("$basetexture","models/doctorwho1200/coral/plasticswitchon")
            self.exterior:ToggleDoor()
		end
	end
end

TARDIS:AddPart(PART,e)