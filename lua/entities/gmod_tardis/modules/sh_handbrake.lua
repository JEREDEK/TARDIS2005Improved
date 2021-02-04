-- Handbrake logic

if SERVER then
	function ENT:ToggleBrake()
        local on = not self:GetData("hand-state", false)
        self:SetData("hand-state", on, true)
    end
    --Here so you can just do ToggleBrake and not pull out your fUCkING hAiR 
    --THINKING WHAT TO SET IT TO

    ENT:AddHook("DataChanged", "hand-state", function(self,k,v)
        if k=="hand-state" then
            if v then
                
            else
                if self:GetData("vortex", false) then
                    util.ScreenShake(self.interior:GetPos(),5,100,20,700)
                    self:SetData("crashjer", true, true)
                    self:MatJer()
                    self:SetData("crashjer", false, true)
                    self:SetHADS(false)
                    self:TakeDamage(285, self, self)
                    self:SetHADS(true)
                    local console = self.interior:GetPart("console")
                    console:EmitSound( Sound("doctorwho1200/coral/explosion.wav"))
                    self:SetData("InFlight", false, true)
                    self:SetData("stutter", true, true)
                end
                --Toggle the brake. Dramatic crash if it's flying.
            end
        end
    end)
else
    
end