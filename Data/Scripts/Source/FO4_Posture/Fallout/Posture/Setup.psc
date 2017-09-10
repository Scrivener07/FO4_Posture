Scriptname Fallout:Posture:Setup extends Papyrus:Project:Modules:Required
import Papyrus:Diagnostics:Log

UserLog Log


; Events
;---------------------------------------------

Event OnInitialize()
	Log = LogNew(Context.Title, self)
EndEvent


Event OnEnable()
	If (HasHolotape)
		WriteLine(Log, "Player already has a holotape." + Fallout_Posture_Holotape)
	Else
		Player.AddItem(Fallout_Posture_Holotape, 1, true)
		WriteLine(Log, "Added the holotape." + Fallout_Posture_Holotape)
	EndIf
EndEvent


; Properties
;---------------------------------------------

Group Properties
	Holotape Property Fallout_Posture_Holotape Auto Const Mandatory
EndGroup

Group Setup
	bool Property HasHolotape Hidden
		bool Function Get()
			return Player.GetItemCount(Fallout_Posture_Holotape) > 0
		EndFunction
	EndProperty
EndGroup
