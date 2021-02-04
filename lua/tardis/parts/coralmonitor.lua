local PART={}
PART.ID = "coralmonitor"
PART.Name = "2005 TARDIS Monitor"
PART.Model = "models/doctorwho1200/coral/monitor.mdl"
PART.AutoSetup = true
PART.Collision = true

if SERVER then
	function PART:Use()
		
	end
end

TARDIS:AddPart(PART)