local PART={}
PART.ID = "coraldoorframe"
PART.Name = "2005 TARDIS Door Frame"
PART.Model = "models/doctorwho1200/coral/doorframe.mdl"
PART.AutoSetup = true

if SERVER then
	hook.Add("SkinChanged", "coral-doorframe", function(ent,i)
		if ent.TardisExterior then
			local coraldoorframe=ent:GetPart("coraldoorframe")
			if IsValid(coraldoorframe) then
				coraldoorframe:SetSkin(i)
			end
			if IsValid(ent.interior) then
				local coraldoorframe=ent.interior:GetPart("coraldoorframe")
				if IsValid(coraldoorframe) then
					coraldoorframe:SetSkin(i)
				end
			end
		end
	end)
end
-- no idea what this does, ask Win

TARDIS:AddPart(PART)