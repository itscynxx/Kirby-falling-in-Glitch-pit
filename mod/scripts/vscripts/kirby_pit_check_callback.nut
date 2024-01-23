untyped

global function Kirby_Pit_UI_Init

void function Kirby_Pit_UI_Init()
{
    if ( KIRBY_PIT_HAS_CALLBACK )
        return
    else
        Callback_Warn()
}

void function Callback_Warn()
{
    if ( GetConVarInt( "kirby_pit_callback_remind" ) == 0 )
        return

    DialogData dialogData
   	dialogData.header = "Missing dependency!"

    dialogData.message = "Kirby falling in Glitch pit requires a dependency called Client Kill Callback to use it!\n\nInstall or enable Client Kill Callback in order to use Kirby falling in Glitch pit!"

    dialogData.image = $"ui/menu/common/dialog_error"

    AddDialogButton(dialogData, "Link to Client Kill Callback", void function(){
        LaunchExternalWebBrowser("https://northstar.thunderstore.io/package/S2Mods/ClientKillCallback/", WEBBROWSER_FLAG_FORCEEXTERNAL); ClientCommand("kirby_pit_callback_remind 0"); ClientCommand("uiscript_reset")
    })
	AddDialogButton( dialogData, "OK", void function(){ClientCommand("kirby_pit_callback_remind 0"); ClientCommand("uiscript_reset")})
    OpenDialog(dialogData)
}