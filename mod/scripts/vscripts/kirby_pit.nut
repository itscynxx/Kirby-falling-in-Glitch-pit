untyped

global function Kirby_Pit_MP_Init

void function Kirby_Pit_MP_Init()
{   
    if ( KIRBY_PIT_HAS_CALLBACK )
        AddCallback_OnPlayerKilled( PlayKirbyPitVideo )
}

void function PlayKirbyPitVideo( ObituaryCallbackParams inputParams )
{
    entity player = GetLocalClientPlayer()
    if ( inputParams.victim == player && inputParams.damageSourceId == 206 && GetMapName() == "mp_glitch" )
        PlayVideo( player )
}

void function PlayVideo( entity player )
{
    int vidsize = GetConVarInt( "kirby_pit_size" )
    player.ClientCommand( "playvideo kirby_pit " + vidsize + " " + vidsize )
}