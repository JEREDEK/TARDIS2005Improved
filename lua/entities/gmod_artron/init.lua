--The artron absouber, server sided initialisation file
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()
	self:SetModel("models/props_lab/reciever01b.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS) 
	self:SetSolid(SOLID_VPHYSICS)

	self:SetName("ArtronAbsorber")

	self:SetUseType(SIMPLE_USE)
	
	local phys = self:GetPhysicsObject()

	if (phys:IsValid()) then
		phys:Wake()
	end
end

function ENT:Use(ply)
	local on = not self:GetCanTelep()
	self:SetCanTelep(on)
	if on then
		ply:ChatPrint("Artron Absorber disengaged.")
	else
		ply:ChatPrint("Artron Absorber engaged.")
	end
end