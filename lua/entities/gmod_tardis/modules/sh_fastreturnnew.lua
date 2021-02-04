-- fastreturn logic, compatible with JEREDEK's changes

if SERVER then
    function ENT:FastReturnJer(ply)

        if self:GetData("vortex", false) then return end
        if not self:GetData("power-state", false) then return end
        local mypos = self:GetPos()
        local myposint = self.interior:GetPos()
        local sphents = ents.FindInSphere(mypos, 100)
        local sphentsint = ents.FindInSphere(myposint, 100)

        for i=1, table.Count(sphents) do
            if sphents[i]:GetClass() == "gmod_artron" then
                if sphents[i]:GetCanTelep() then

                else
                    local console = self.interior:GetPart("console")
                    console:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                    self:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                    util.ScreenShake(self.interior:GetPos(),5,100,5,700)
                    return 
                end
            end
        end
        for i=1, table.Count(sphentsint) do
            if sphentsint[i]:GetClass() == "gmod_artron" then
                if sphentsint[i]:GetCanTelep() then

                else
                    local console = self.interior:GetPart("console")
                    console:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                    self:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
                    util.ScreenShake(self.interior:GetPos(),5,100,5,700)
                    return 
                end
            end
        end
        --Same as in sh_teleportnew.lua, checks for the artron absorber and halts
        --fastreturn if necessary 

        if self:GetData("hand-state", false) then
        else
            local console = self.interior:GetPart("console")
            console:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
            self:EmitSound( Sound( "doctorwho1200/coral/demat_fail.wav" ))
            util.ScreenShake(self.interior:GetPos(),5,100,5,700)
            return 
        end
        --Don't let it go back if the brake is on.

        util.ScreenShake(self.interior:GetPos(),5,100,20,700)
        self:FastReturn()
        --Return if all went well
    end
end