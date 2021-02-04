--The artron absouber, shared file
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Artron Absorber"
ENT.Spawnable = true

ENT.Instructions= "Absorbs the Artron energy needed for the TADIS's engine, and thus it prevents it from taking off or landing"
ENT.AdminOnly = true
ENT.Category = "Doctor Who"
ENT.IconOverride = "materials/entities/artron.png"


function ENT:SetupDataTables()
 
	self:NetworkVar( "Bool", 1, "CanTelep" )
 
 end