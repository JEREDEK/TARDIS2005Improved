if SERVER then
    function ENT:ToggleRepairJer()
        if not self:GetData("InFlight", false) then self:ToggleRepair() end
    end
	function ENT:TogglePowerJer()
        if not self:GetData("InFlight", false) then self:TogglePower() end
    end
    
    ENT:AddHook("Think", "repair-override2005", function(self)
        if self:GetData("repair-primed",false) and self:GetData("repair-shouldstart") and CurTime() > self:GetData("repair-delay") then
            self:SetData("repair-shouldstart", false)
            self:StartRepair()
        end

        if (self:GetData("repairing",false) and CurTime()>self:GetData("repair-time",0)) then
            self:FinishRepair()
            self:SetData("stutter", false, true)
        end
    end)
else
    
end