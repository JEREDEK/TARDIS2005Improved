-- Takeoff/landing with a little bit more life

ENT:AddHook("DataChanged", "crash", function(self,k,v)
    if k=="crash" then if v then end end
end)
--Here so that you can know if the TARDIS is crashing. There are probably better solutions.. 
--Too bad!

ENT:AddHook("Think", "CurTimeDelay", function(self)
    local time = self:GetData("2005-mat-override-time") 
    if time and CurTime() > time and self:GetData("vortex", false) then if self:GetData("vortex", false) then self:Mat() end end
end)
--Here to materialise after HADS triggered.

ENT:AddHook("CanDemat","2005Improved-OverrideDemat",function(self)
    if self.metadata.ID ~= "coralImproved" then return end 
    -- checks if the 2005Improved addon is the one currently loaded

    if self:GetData("vortex", false) then
        return
    end
    -- checks if it's in the vortex

    if not self:GetData("power-state", false) then
        return
    end
    -- check if power is enabled

    if self:GetData("hads-triggered") then
        util.ScreenShake(self.interior:GetPos(),5,100,20,700)
        self:SetData("2005-mat-override-time", CurTime() + 70)
        
        return
    end
    --materialise automatically after 70 seconds of HADS triggering

    local mypos = self:GetPos()
    local myposint = self.interior:GetPos()
    local sphents = ents.FindInSphere(mypos, 1000)
    local sphentsint = ents.FindInSphere(myposint, 1000)
    for i=1, table.Count(sphents) do
        if sphents[i]:GetClass() == "gmod_artron" then
            if sphents[i]:GetCanTelep() then

            else
                local console = self.interior:GetPart("console")
                console:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                self:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                util.ScreenShake(self.interior:GetPos(),5,100,5,700)
                return false
            end
        end
    end
    --check for an enabled artron absorber within 1000u (exterior)
    for i=1, table.Count(sphentsint) do
        if sphentsint[i]:GetClass() == "gmod_artron" then
            if sphentsint[i]:GetCanTelep() then

            else
                local console = self.interior:GetPart("console")
                console:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                self:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                util.ScreenShake(self.interior:GetPos(),5,100,5,700)
                return false
            end
        end
    end
    --check for an enabled artron absorber within 1000u (interior)

    if self:GetData("hand-state", false) then

    else
        local console = self.interior:GetPart("console")
        console:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
        self:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
        util.ScreenShake(self.interior:GetPos(),5,100,5,700)
        return false
    end
    -- check for a handbrake
    util.ScreenShake(self.interior:GetPos(),5,100,20,700)
    self:SetData("InFlight", true, true)
    return
    -- if everything passed, demat
end)

ENT:AddHook("CanMat","2005Improved-OverrideMat",function(self)
    if self.metadata.ID ~= "coralImproved" then return end
    -- checks if my addons is the one currently loaded
    if self:GetData("crashjer", false) then
        return true
    end
    -- Checks if the TARDIS is currently crashing. Helps with the handbrake, emergency protocols etc.

    if not self:GetData("vortex", false) then
        return false
    end
    -- checks if the TARDIS is in the vortex
        local mypos = self:GetData("demat-pos")
        local myposint = self.interior:GetPos()
        local sphents = ents.FindInSphere(mypos, 1000)
        local sphentsint = ents.FindInSphere(myposint, 1000)
        for i=1, table.Count(sphents) do
            if sphents[i]:GetClass() == "gmod_artron" then
                if sphents[i]:GetCanTelep() then

                else
                    local console = self.interior:GetPart("console")
                    console:EmitSound( Sound( "doctorwho1200/coral/stutterexplosion5.wav" ))
                    self:EmitSound( Sound( "doctorwho1200/coral/stutterexplosion5.wav" ))
                    util.ScreenShake(self.interior:GetPos(),5,100,5,700)
                    return false
                end
            end
        end
        --check for an enabled artron absorber within 1000u (exterior)
        for i=1, table.Count(sphentsint) do
            if sphentsint[i]:GetClass() == "gmod_artron" then
                if sphentsint[i]:GetCanTelep() then

                else
                    local console = self.interior:GetPart("console")
                    console:EmitSound( Sound( "doctorwho1200/coral/stutterexplosion5.wav" ))
                    self:EmitSound( Sound( "doctorwho1200/coral/stutterexplosion5.wav" ))
                    util.ScreenShake(self.interior:GetPos(),5,100,5,700)
                    return false
                end
            end
        end
        --check for an enabled artron absorber within 1000u (interior)

    util.ScreenShake(self.interior:GetPos(),5,100,20,700)
    timer.Simple(18, function() self:SetData("InFlight", false, true) end)
    return true
    --Mat if everything passed
end)

ENT:AddHook("DataChanged", "InFlight", function(self,k,v)
    if k=="InFlight" then
        if v then

        else

        end
    end
end)

if SERVER then
    function ENT:DematJer()
        self:Demat()
        
    end
    -- It's here in case i want to do some higher level stuff. No touchy!

    function ENT:MatJer()
        self:Mat()
        
    end
    -- It's here in case i want to do some higher level stuff. No touchy!

    function ENT:FinishRepair()
        self:EmitSound(self.metadata.Exterior.Sounds.RepairFinish)
        self:SetData("repairing", false, true)
        self:ChangeHealth(TARDIS:GetSetting("health-max"))
        self.interior:SetPower(true)
        self:SetLocked(false, nil, true)
        self:GetCreator():ChatPrint("Your TARDIS has finished self-repairing")
        self:FlashLight(1.5)
        self:SetFlight(false)
    end
    --Very, very bodgy! It will cause a crash later! Let Jędrzej know about this
else
    
end