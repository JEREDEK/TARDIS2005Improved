local PART={}
PART.ID = "coralinterior2"
PART.Name = "2005 TARDIS Interior 2"
PART.Model = "models/doctorwho1200/coral/interior2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.UseTransparencyFix = true

if CLIENT then
	function PART:Initialize()
	self.timerotor={}
	self.timerotor.pos=0
	self.timerotor.mode=1
	end

	function PART:Think()
		local exterior=self.exterior
		if (self.timerotor.pos>0 and not exterior:GetData("flight") or exterior:GetData("teleport") or exterior:GetData("vortex")) or (exterior:GetData("flight") or exterior:GetData("teleport") or exterior:GetData("vortex")) then
				if self.timerotor.pos==0 then
					self.timerotor.mode=1
				elseif self.timerotor.pos==1 and (exterior:GetData("flight") or exterior:GetData("teleport") or exterior:GetData("vortex")) then
					self.timerotor.pos=0
				end
				
			self.timerotor.pos=math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime()*0.45 )
			self:SetPoseParameter( "rotor", self.timerotor.pos )
		end
	end
end

TARDIS:AddPart(PART)