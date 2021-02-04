local PART={}
PART.ID = "coraltoggles"
PART.Name = "2005 TARDIS Toggles"
PART.Model = "models/doctorwho1200/coral/toggles.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.8

if SERVER then
	--not touchin dat shiet
	function PART:Use( ply )
        local exterior=self.exterior
	local extdoors=exterior:GetPart("door")
		if ( self:GetOn() ) then
			self:EmitSound( Sound( "doctorwho1200/coral/togglesoff.wav" ))
                        ply:ChatPrint("TARDIS Cloaking Circuit Deactivated")
		exterior:SetColor (Color(0,191,255,55))
		extdoors:SetColor (Color(0,191,255,55))
		exterior:EmitSound( Sound( "doctorwho1200/coral/uncloak.wav" ))
			timer.Create( "uncloaktimer" , 1 , 1 , function()
			exterior:SetColor (Color(255,255,255,255))
			exterior:SetRenderMode( RENDERMODE_NORMAL )
			extdoors:SetColor (Color(255,255,255,255))
			extdoors:SetRenderMode( RENDERMODE_NORMAL )
			end )
		else
			self:EmitSound( Sound( "doctorwho1200/coral/toggleson.wav" ))
                        ply:ChatPrint("TARDIS Cloaking Circuit Activated")
		exterior:SetRenderMode( RENDERMODE_TRANSALPHA )
		exterior:SetColor (Color(0,191,255,55))
		extdoors:SetRenderMode( RENDERMODE_TRANSALPHA )
		extdoors:SetColor (Color(0,191,255,55))
		exterior:EmitSound( Sound( "doctorwho1200/coral/cloak.wav" ))
			timer.Create( "cloaktimer" , 1 , 1 , function()
			exterior:SetRenderMode( RENDERMODE_TRANSALPHA )
			exterior:SetColor (Color(255,255,255,0))
			extdoors:SetRenderMode( RENDERMODE_TRANSALPHA )
			extdoors:SetColor (Color(255,255,255,0))

			end )
		end
	end
end

TARDIS:AddPart(PART,e)