AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include('shared.lua')

ENT.m_fMaxYawSpeed = 200 -- Max turning speed
ENT.m_iClass = CLASS_CITIZEN_REBEL -- NPC Class

function ENT:Initialize()
    self.nick = "9doc"
    self:SetModel( "models/alyx.mdl" )
    self:SetHullType( HULL_HUMAN )
    self:SetHullSizeNormal()
    
    self:SetNPCState( NPC_STATE_IDLE )
    self:SetSolid( SOLID_BBOX )
    self:DropToFloor()

    self:SetHealth( 25 )
    self:CapabilitiesAdd( CAP_MOVE_GROUND )
end

function ENT:OnTakeDamage( dmginfo )
    
end