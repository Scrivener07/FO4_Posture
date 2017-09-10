Scriptname Fallout:Posture:WeaponLower extends Papyrus:Project:Modules:Required
import Papyrus:Diagnostics:Log

UserLog Log


; Events
;---------------------------------------------

Event OnInitialize()
	Log = LogNew(Context.Title, self)
EndEvent


Event OnEnable()
	Player.AddSpell(Fallout_Posture_Animation, false)
	WriteLine(Log, "Adding posture spell.")
EndEvent


Event OnDisable()
	Player.RemoveSpell(Fallout_Posture_Animation)
	WriteLine(Log, "Removing posture spell.")
EndEvent


; Properties
;---------------------------------------------

Group Properties
	Spell Property Fallout_Posture_Animation Auto Const Mandatory
EndGroup
