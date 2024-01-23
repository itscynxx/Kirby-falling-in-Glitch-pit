untyped

global function Kirby_Pit_Mod_Settings

void function Kirby_Pit_Mod_Settings()
{
    if ( !KIRBY_PIT_HAS_CALLBACK )
        return

    ModSettings_AddModTitle( "Kirby falling in Glitch pit" )

    ModSettings_AddModCategory( "Video size" )
    ModSettings_AddSetting( "kirby_pit_size", "Size of the kirby video (max 600)", "int" )
}